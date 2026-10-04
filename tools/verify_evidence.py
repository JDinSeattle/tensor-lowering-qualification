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
if not (report['status'] == 'passed'):
    raise ValueError("evidence contract failed: report['status'] == 'passed'")
manifest = report["manifest"]
entries = ["matmul", "bias_relu", "row_sum", "fragment"]
expected = {(s["id"], b, e, c, k) for s in manifest["shapes"] for b in s["batches"]
            for e, c, k in itertools.product(entries, manifest["configurations"],
                                              ["normal", "zero", "cancellation", "special"])}
actual = {(r["shape"], r["batch"], r["entry"], r["config"], r["kind"]) for r in report["correctness"]}
if not (actual == expected and len(actual) == len(report['correctness'])):
    raise ValueError("evidence contract failed: actual == expected and len(actual) == len(report['correctness'])")
if not (all((r['max_error_over_bound'] <= 1 and r['repetitions'] == 4 for r in report['correctness']))):
    raise ValueError("evidence contract failed: all((r['max_error_over_bound'] <= 1 and r['repetitions'] == 4 for r in report['correctness']))")
timing_keys = {(s["id"], b, e) for s in manifest["shapes"] for b in s["batches"] for e in entries}
if not ({(r['shape'], r['batch'], r['entry']) for r in report['timings']} == timing_keys):
    raise ValueError("evidence contract failed: {(r['shape'], r['batch'], r['entry']) for r in report['timings']} == timing_keys")
paired = {(r["shape"], r["batch"], r["entry"]): r for r in report["paired"]}
for row in report["timings"]:
    raw = paired[(row["shape"], row["batch"], row["entry"])]
    if not (len(raw['orders']) >= 5):
        raise ValueError("evidence contract failed: len(raw['orders']) >= 5")
    for config in manifest["configurations"]:
        values = raw["latency_ns"][config]
        if not (len(values) == len(raw['orders']) and min(values) > 0):
            raise ValueError("evidence contract failed: len(values) == len(raw['orders']) and min(values) > 0")
        if not (statistics.median(values) == row[f'{config}_median_ns']):
            raise ValueError("evidence contract failed: statistics.median(values) == row[f'{config}_median_ns']")
    if not (row['speedup'] == row['untiled_median_ns'] / row['tiled_median_ns']):
        raise ValueError("evidence contract failed: row['speedup'] == row['untiled_median_ns'] / row['tiled_median_ns']")
expected_cold = {(*key, config) for key in timing_keys for config in manifest["configurations"]}
if not ({(r['shape'], r['batch'], r['entry'], r['config']) for r in report['cold']} == expected_cold):
    raise ValueError("evidence contract failed: {(r['shape'], r['batch'], r['entry'], r['config']) for r in report['cold']} == expected_cold")
if not (len(report['compilations']) == len(manifest['shapes']) * len(manifest['configurations'])):
    raise ValueError("evidence contract failed: len(report['compilations']) == len(manifest['shapes']) * len(manifest['configurations'])")
for record in report["compilations"]:
    artifact = root / "artifacts" / f"{record['shape']}-{record['config']}" / "module.vmfb"
    if not (hashlib.sha256(artifact.read_bytes()).hexdigest() == record['artifact_sha256']):
        raise ValueError("evidence contract failed: hashlib.sha256(artifact.read_bytes()).hexdigest() == record['artifact_sha256']")
    if not (len(list((artifact.parent / 'phases').glob('*.mlir'))) >= 10):
        raise ValueError("evidence contract failed: len(list((artifact.parent / 'phases').glob('*.mlir'))) >= 10")
    if not (list((artifact.parent / 'executables').glob('*.s'))):
        raise ValueError("evidence contract failed: list((artifact.parent / 'executables').glob('*.s'))")
if not (not report['mapping_regression'][1]['exit_leak_warning']):
    raise ValueError("evidence contract failed: not report['mapping_regression'][1]['exit_leak_warning']")
print(f"Verified {len(checksums)} files, {len(actual)} numerical cases, {len(timing_keys)} paired workloads, {len(expected_cold)} cold starts")
