"""Compile, gate, measure, and retain a self-contained qualification bundle."""
import argparse
from datetime import datetime, timezone
import hashlib
import importlib.metadata
import json
import os
from pathlib import Path
import platform
import shutil
import statistics
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[2]


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def write_json(path, data):
    Path(path).write_text(json.dumps(data, indent=2, allow_nan=False) + "\n")


def run_worker(output, stem, job, env):
    path = output / "jobs" / f"{stem}.json"
    write_json(path, job)
    started = time.perf_counter_ns()
    proc = subprocess.run([sys.executable, "-m", "tensor_qualification.worker", str(path)],
                          capture_output=True, text=True, env=env, timeout=120)
    wall_ns = time.perf_counter_ns() - started
    (output / "logs" / f"{stem}.stdout").write_text(proc.stdout)
    (output / "logs" / f"{stem}.stderr").write_text(proc.stderr)
    if proc.returncode or "nanobind: leaked" in proc.stderr:
        raise RuntimeError(f"worker {stem} failed: {proc.returncode}; inspect logs")
    data = json.loads(proc.stdout)
    data["fresh_process_wall_ns"] = wall_ns
    return data


def report_markdown(report):
    lines = ["# CPU tensor lowering qualification", "",
             f"Run: {report['run_utc']}. Compiler/runtime: IREE 3.11.0. Driver: local-sync.", "",
             f"{len(report['correctness'])} numerical cases passed; each executed four times.",
             "Normal/zero/special cases use atol=rtol=2e-5 with exact special-value masks.",
             "Cancellation stress additionally uses a result-independent float32 forward-error bound.",
             "Raw abs/rel violations are retained in correctness.json.", "",
             "Hot metric includes contract checks, NumPy-to-runtime input transfer, synchronous VM execution,",
             "and copying the output to owned NumPy memory. It is an application API latency, not kernel-only time.",
             "Input seed, CPU affinity, single-thread environment, warmups, and randomized paired order are identical.",
             "The machine is shared; clocks are not locked. These small kernels are binding-overhead sensitive.", "",
             "| Shape / batch | Entry | Untiled median µs | Tiled median µs | Untiled / tiled |",
             "|---|---|---:|---:|---:|"]
    for row in report["timings"]:
        lines.append(f"| {row['shape']} / {row['batch']} | {row['entry']} | {row['untiled_median_ns']/1000:.2f} | {row['tiled_median_ns']/1000:.2f} | {row['speedup']:.3f}× |")
    lines += ["", f"Geometric mean speedup: {report['geomean_speedup']:.3f}×.",
              f"Worst tiled/untiled latency ratio: {report['worst_latency_ratio']:.3f}×. All regressions are retained.",
              "", "## Compilation and cold start", "",
              "Compilation wall time is recorded per VMFB, separately from fresh-process runtime imports, module load,",
              "first call, and warmed samples. peak_process_rss_kib is Linux process high-water RSS from a fresh worker",
              "including Python, NumPy and IREE; it is not tensor allocator peak or an incremental allocation estimate.",
              "", "## Evidence", "", "- `summary.json`: versions, source hashes, compile options, latencies, cold/memory records.",
              "- `correctness.json`: finite error bounds, NaN counts, repeated-execution results.",
              "- `artifacts/`: VMFBs, all compilation-phase MLIR, LLVM IR, assembly, ELF, compile logs.",
              "- `jobs/` and `logs/`: exact worker requests and stdout/stderr.",
              "- `mapping-regression.json`: controlled comparison of the upstream output mapping path and local adapter.",
              "- `checksums.json`: SHA-256 for every retained evidence file (excluding itself).", "",
              "No compiler pass was modified; therefore no pass-fix claim is made. A runtime binding regression candidate",
              "and a dynamic tensor e2e test candidate are included locally, without an upstream submission or acceptance claim."]
    return "\n".join(lines) + "\n"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, default=ROOT / "evidence" / "local")
    parser.add_argument("--target-cpu", default="host")
    parser.add_argument("--cpu", type=int, default=min(os.sched_getaffinity(0)))
    parser.add_argument("--samples", type=int, default=61)
    args = parser.parse_args()
    if args.samples < 5:
        parser.error("at least five paired samples are required")
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=True)
    if any(output.iterdir()):
        parser.error("output directory must be empty to preserve previous evidence")
    for subdir in ("jobs", "logs", "artifacts"):
        (output / subdir).mkdir()
    manifest = json.loads((ROOT / "manifest.json").read_text())
    env = dict(os.environ, OPENBLAS_NUM_THREADS="1", OMP_NUM_THREADS="1", MKL_NUM_THREADS="1",
               PYTHONPATH=str(ROOT / "src"))
    compiler = str(Path(sys.executable).parent / "iree-compile")
    version = subprocess.check_output([compiler, "--version"], text=True)
    packages = {name: importlib.metadata.version(name) for name in
                ("iree-base-compiler", "iree-base-runtime", "numpy")}
    if packages["iree-base-compiler"] != "3.11.0" or packages["iree-base-runtime"] != "3.11.0":
        raise RuntimeError("This qualification requires compiler and runtime 3.11.0")
    report = {"run_utc": datetime.now(timezone.utc).isoformat(), "compiler": version,
              "packages": packages, "platform": platform.platform(), "python": sys.version,
              "cpu_affinity": args.cpu, "target_cpu": args.target_cpu,
              "cpuinfo": Path("/proc/cpuinfo").read_text().split("\n\n")[0],
              "thread_environment": {k: env[k] for k in ("OPENBLAS_NUM_THREADS", "OMP_NUM_THREADS", "MKL_NUM_THREADS")},
              "manifest": manifest, "compilations": [], "correctness": [], "cold": [], "paired": [], "timings": []}
    report["source_sha256"] = {str(p.relative_to(ROOT)): digest(p) for p in
                               sorted([ROOT / "manifest.json", ROOT / "requirements.lock", ROOT / "pyproject.toml"] +
                                      list((ROOT / "inputs").glob("*.mlir")) + list((ROOT / "src").rglob("*.py")))}
    all_artifacts = {}
    # Compile every configuration before runtime qualification or measurement.
    for shape in manifest["shapes"]:
        artifacts = {}
        for config, flags in manifest["configurations"].items():
            location = output / "artifacts" / f"{shape['id']}-{config}"
            location.mkdir()
            binary = location / "module.vmfb"
            command = [compiler, str(ROOT / shape["input"]), "--iree-hal-target-backends=llvm-cpu",
                       f"--iree-llvmcpu-target-cpu={args.target_cpu}", "--iree-llvmcpu-disable-distribution",
                       "--iree-llvmcpu-number-of-threads=1", *flags,
                       f"--dump-compilation-phases-to={location / 'phases'}",
                       f"--iree-hal-dump-executable-files-to={location / 'executables'}", "-o", str(binary)]
            start = time.perf_counter_ns()
            proc = subprocess.run(command, capture_output=True, text=True, env=env, timeout=300)
            compile_ns = time.perf_counter_ns() - start
            (location / "compile.stdout").write_text(proc.stdout)
            (location / "compile.stderr").write_text(proc.stderr)
            if proc.returncode:
                raise RuntimeError(f"compile failed for {shape['id']}/{config}")
            record = {"shape": shape["id"], "config": config, "command": command,
                      "wall_ns": compile_ns, "artifact_sha256": digest(binary), "artifact_bytes": binary.stat().st_size}
            report["compilations"].append(record)
            artifacts[config] = str(binary)
            print(f"compiled {shape['id']}/{config}", flush=True)
        all_artifacts[shape["id"]] = artifacts
    for shape in manifest["shapes"]:
        base_job = {"cpu": args.cpu, "seed": manifest["seed"], "shape": shape,
                    "artifacts": all_artifacts[shape["id"]], "samples": args.samples}
        result = run_worker(output, f"{shape['id']}-correctness", dict(base_job, mode="correctness"), env)
        report["correctness"].extend(result["cases"])
        print(f"correctness {shape['id']}: {len(result['cases'])} cases", flush=True)
    write_json(output / "correctness.json", report["correctness"])
    # All shapes/configs pass numerics before any performance experiment begins.
    for shape in manifest["shapes"]:
        base_job = {"cpu": args.cpu, "seed": manifest["seed"], "shape": shape,
                    "artifacts": all_artifacts[shape["id"]], "samples": args.samples}
        for batch in shape["batches"]:
            for name in ("matmul", "bias_relu", "row_sum", "fragment"):
                for config, artifact in base_job["artifacts"].items():
                    stem = f"{shape['id']}-{batch}-{name}-{config}-cold"
                    result = run_worker(output, stem, dict(base_job, mode="cold", batch=batch,
                                                          entry=name, artifact=artifact), env)
                    report["cold"].append(dict(result, shape=shape["id"], batch=batch, entry=name, config=config))
        result = run_worker(output, f"{shape['id']}-paired", dict(base_job, mode="paired"), env)
        report["paired"].extend(result["measurements"])
        for row in result["measurements"]:
            medians = {config: statistics.median(times) for config, times in row["latency_ns"].items()}
            report["timings"].append({"shape": row["shape"], "batch": row["batch"], "entry": row["entry"],
                                      "untiled_median_ns": medians["untiled"], "tiled_median_ns": medians["tiled"],
                                      "speedup": medians["untiled"] / medians["tiled"]})
        print(f"measured {shape['id']}", flush=True)
    import math
    report["geomean_speedup"] = math.exp(statistics.mean(math.log(row["speedup"]) for row in report["timings"]))
    report["worst_latency_ratio"] = max(1 / row["speedup"] for row in report["timings"])
    regression = []
    for mode in ("to-host", "buffer-copy"):
        command = [sys.executable, str(ROOT / "tools/repro_runtime_mapping.py"),
                   all_artifacts["dynamic"]["tiled"], "--mode", mode]
        proc = subprocess.run(command, capture_output=True, text=True, env=env, timeout=60)
        (output / "logs" / f"mapping-{mode}.stderr").write_text(proc.stderr)
        (output / "logs" / f"mapping-{mode}.stdout").write_text(proc.stdout)
        if proc.returncode or (mode == "buffer-copy" and "nanobind: leaked" in proc.stderr):
            raise RuntimeError(f"mapping regression {mode} failed")
        regression.append({"command": command, "returncode": proc.returncode,
                           "exit_leak_warning": "nanobind: leaked" in proc.stderr, **json.loads(proc.stdout)})
    write_json(output / "mapping-regression.json", regression)
    report["mapping_regression"] = regression
    report["status"] = "passed"
    write_json(output / "summary.json", report)
    (output / "REPORT.md").write_text(report_markdown(report))
    write_json(output / "checksums.json", {str(p.relative_to(output)): digest(p) for p in sorted(output.rglob("*")) if p.is_file()})
    print(f"PASS {len(report['correctness'])} cases; report: {output / 'REPORT.md'}", flush=True)


if __name__ == "__main__":
    main()
