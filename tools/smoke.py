#!/usr/bin/env python3
"""Initial real-runtime validation. The full qualification adds measurements."""
import hashlib
import json
import pathlib
import subprocess
import time
import iree.runtime as rt
import numpy as np

ROOT = pathlib.Path(__file__).resolve().parents[1]
def main():
    work = ROOT / '.work'
    work.mkdir(exist_ok=True)
    binary = work / 'fragment.vmfb'
    compiler = pathlib.Path(__import__('sys').executable).parent / 'iree-compile'
    command = [str(compiler), str(ROOT / 'inputs/fragment.mlir'),
               '--iree-hal-target-backends=llvm-cpu', '--iree-llvmcpu-target-cpu=host',
               '-o', str(binary)]
    start = time.perf_counter()
    proc = subprocess.run(command, capture_output=True, text=True, check=True)
    compile_s = time.perf_counter() - start
    module = rt.load_vm_flatbuffer(binary.read_bytes(), driver='local-sync')
    rng = np.random.default_rng(20260906)
    rows = []
    for batch in [1, 7, 64]:
        x = rng.normal(size=(batch, 32)).astype(np.float32)
        w = rng.normal(size=(32, 16)).astype(np.float32)
        bias = rng.normal(size=(16,)).astype(np.float32)
        # Float64 accumulation independently bounds f32 reduction and matmul error.
        ref = np.maximum(x.astype(np.float64) @ w.astype(np.float64) + bias, 0).sum(axis=1)
        result = np.asarray(module.fragment(x, w, bias).to_host())
        np.testing.assert_allclose(result, ref, rtol=2e-5, atol=2e-5)
        rows.append({'batch': batch, 'max_abs_error': float(np.max(np.abs(result-ref))),
                     'passed': True})
    report = {'status': 'initial smoke only; full qualification pending',
              'compiler': subprocess.check_output([str(compiler), '--version'], text=True),
              'command': command, 'compile_seconds': compile_s, 'driver': 'local-sync',
              'artifact_sha256': hashlib.sha256(binary.read_bytes()).hexdigest(),
              'cases': rows, 'compile_stderr': proc.stderr}
    path = ROOT / 'evidence/smoke.json'
    path.write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(rows, indent=2))
if __name__ == '__main__':
    main()
