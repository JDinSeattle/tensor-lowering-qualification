#!/usr/bin/env python3
"""Verify evidence integrity, declared coverage and arithmetic from raw samples."""
import argparse
import hashlib
import itertools
import json
from pathlib import Path
import statistics

parser = argparse.ArgumentParser()
parser.add_argument("evidence", type=Path)
args = parser.parse_args()
root = args.evidence
checksums = json.loads((root / "checksums.json").read_text())
for relative, expected in checksums.items():
    path = root / relative
    if not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != expected:
        raise SystemExit(f"hash mismatch or missing file: {relative}")
report = json.loads((root / "summary.json").read_text())
assert report["status"] == "passed"
manifest = report["manifest"]
entries = ["matmul", "bias_relu", "row_sum", "fragment"]
expected = {(s["id"], b, e, c, k) for s in manifest["shapes"] for b in s["batches"]
            for e, c, k in itertools.product(entries, manifest["configurations"],
                                              ["normal", "zero", "cancellation", "special"])}
actual = {(r["shape"], r["batch"], r["entry"], r["config"], r["kind"]) for r in report["correctness"]}
assert actual == expected and len(actual) == len(report["correctness"])
assert all(r["max_error_over_bound"] <= 1 and r["repetitions"] == 4 for r in report["correctness"])
timing_keys = {(s["id"], b, e) for s in manifest["shapes"] for b in s["batches"] for e in entries}
assert {(r["shape"], r["batch"], r["entry"]) for r in report["timings"]} == timing_keys
paired = {(r["shape"], r["batch"], r["entry"]): r for r in report["paired"]}
for row in report["timings"]:
    raw = paired[(row["shape"], row["batch"], row["entry"])]
    assert len(raw["orders"]) >= 5
    for config in manifest["configurations"]:
        values = raw["latency_ns"][config]
        assert len(values) == len(raw["orders"]) and min(values) > 0
        assert statistics.median(values) == row[f"{config}_median_ns"]
    assert row["speedup"] == row["untiled_median_ns"] / row["tiled_median_ns"]
expected_cold = {(*key, config) for key in timing_keys for config in manifest["configurations"]}
assert {(r["shape"], r["batch"], r["entry"], r["config"]) for r in report["cold"]} == expected_cold
assert len(report["compilations"]) == len(manifest["shapes"]) * len(manifest["configurations"])
for record in report["compilations"]:
    artifact = root / "artifacts" / f"{record['shape']}-{record['config']}" / "module.vmfb"
    assert hashlib.sha256(artifact.read_bytes()).hexdigest() == record["artifact_sha256"]
    assert len(list((artifact.parent / "phases").glob("*.mlir"))) >= 10
    assert list((artifact.parent / "executables").glob("*.s"))
assert not report["mapping_regression"][1]["exit_leak_warning"]
print(f"Verified {len(checksums)} files, {len(actual)} numerical cases, {len(timing_keys)} paired workloads, {len(expected_cold)} cold starts")
