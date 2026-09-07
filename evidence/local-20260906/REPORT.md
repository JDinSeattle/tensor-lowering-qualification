# CPU tensor lowering qualification

Run: 2026-09-07T03:08:25.417542+00:00. Compiler/runtime: IREE 3.11.0. Driver: local-sync.

192 numerical cases passed; each executed four times.
Normal/zero/special cases use atol=rtol=2e-5 with exact special-value masks.
Cancellation stress additionally uses a result-independent float32 forward-error bound.
Raw abs/rel violations are retained in correctness.json.

Hot metric includes contract checks, NumPy-to-runtime input transfer, synchronous VM execution,
and copying the output to owned NumPy memory. It is an application API latency, not kernel-only time.
Input seed, CPU affinity, single-thread environment, warmups, and randomized paired order are identical.
The machine is shared; clocks are not locked. These small kernels are binding-overhead sensitive.

| Shape / batch | Entry | Untiled median µs | Tiled median µs | Untiled / tiled |
|---|---|---:|---:|---:|
| tiny / 1 | matmul | 13.18 | 13.85 | 0.952× |
| tiny / 1 | bias_relu | 12.65 | 12.53 | 1.009× |
| tiny / 1 | row_sum | 11.44 | 11.55 | 0.991× |
| tiny / 1 | fragment | 17.57 | 18.15 | 0.968× |
| tail / 7 | matmul | 14.16 | 14.37 | 0.985× |
| tail / 7 | bias_relu | 12.64 | 12.63 | 1.001× |
| tail / 7 | row_sum | 11.10 | 11.03 | 1.006× |
| tail / 7 | fragment | 15.00 | 14.72 | 1.020× |
| aligned / 64 | matmul | 57.27 | 18.34 | 3.124× |
| aligned / 64 | bias_relu | 13.58 | 13.59 | 0.999× |
| aligned / 64 | row_sum | 11.89 | 11.90 | 0.999× |
| aligned / 64 | fragment | 57.32 | 18.65 | 3.073× |
| dynamic / 1 | matmul | 13.89 | 15.11 | 0.919× |
| dynamic / 1 | bias_relu | 13.15 | 13.18 | 0.998× |
| dynamic / 1 | row_sum | 12.19 | 12.12 | 1.006× |
| dynamic / 1 | fragment | 21.63 | 23.63 | 0.915× |
| dynamic / 7 | matmul | 18.19 | 20.66 | 0.880× |
| dynamic / 7 | bias_relu | 17.49 | 16.20 | 1.080× |
| dynamic / 7 | row_sum | 12.69 | 12.49 | 1.016× |
| dynamic / 7 | fragment | 17.28 | 17.87 | 0.967× |
| dynamic / 64 | matmul | 24.54 | 20.04 | 1.225× |
| dynamic / 64 | bias_relu | 21.38 | 20.96 | 1.020× |
| dynamic / 64 | row_sum | 18.57 | 18.45 | 1.007× |
| dynamic / 64 | fragment | 39.03 | 29.45 | 1.325× |

Geometric mean speedup: 1.108×.
Worst tiled/untiled latency ratio: 1.136×. All regressions are retained.

## Compilation and cold start

Compilation wall time is recorded per VMFB, separately from fresh-process runtime imports, module load,
first call, and warmed samples. peak_process_rss_kib is Linux process high-water RSS from a fresh worker
including Python, NumPy and IREE; it is not tensor allocator peak or an incremental allocation estimate.

## Evidence

- `summary.json`: versions, source hashes, compile options, latencies, cold/memory records.
- `correctness.json`: finite error bounds, NaN counts, repeated-execution results.
- `artifacts/`: VMFBs, all compilation-phase MLIR, LLVM IR, assembly, ELF, compile logs.
- `jobs/` and `logs/`: exact worker requests and stdout/stderr.
- `mapping-regression.json`: controlled comparison of the upstream output mapping path and local adapter.
- `checksums.json`: SHA-256 for every retained evidence file (excluding itself).

No compiler pass was modified; therefore no pass-fix claim is made. A runtime binding regression candidate
and a dynamic tensor e2e test candidate are included locally, without an upstream submission or acceptance claim.
