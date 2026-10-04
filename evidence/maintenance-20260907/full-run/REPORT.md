# CPU tensor lowering qualification

Run: 2026-09-07T23:28:10.700458+00:00. Compiler/runtime: IREE 3.11.0. Driver: local-sync.

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
| tiny / 1 | matmul | 12.49 | 13.21 | 0.945× |
| tiny / 1 | bias_relu | 12.25 | 12.24 | 1.001× |
| tiny / 1 | row_sum | 11.01 | 11.02 | 0.999× |
| tiny / 1 | fragment | 14.00 | 14.08 | 0.995× |
| tail / 7 | matmul | 13.43 | 13.58 | 0.989× |
| tail / 7 | bias_relu | 12.21 | 12.11 | 1.008× |
| tail / 7 | row_sum | 10.72 | 10.76 | 0.996× |
| tail / 7 | fragment | 14.59 | 14.24 | 1.025× |
| aligned / 64 | matmul | 53.96 | 16.93 | 3.187× |
| aligned / 64 | bias_relu | 13.19 | 13.24 | 0.996× |
| aligned / 64 | row_sum | 11.22 | 11.20 | 1.002× |
| aligned / 64 | fragment | 55.26 | 17.61 | 3.138× |
| dynamic / 1 | matmul | 13.62 | 14.91 | 0.913× |
| dynamic / 1 | bias_relu | 12.94 | 12.99 | 0.996× |
| dynamic / 1 | row_sum | 11.79 | 11.69 | 1.008× |
| dynamic / 1 | fragment | 15.13 | 15.92 | 0.950× |
| dynamic / 7 | matmul | 14.15 | 14.77 | 0.958× |
| dynamic / 7 | bias_relu | 13.07 | 13.07 | 1.000× |
| dynamic / 7 | row_sum | 11.51 | 11.44 | 1.006× |
| dynamic / 7 | fragment | 15.88 | 15.70 | 1.012× |
| dynamic / 64 | matmul | 21.93 | 16.99 | 1.291× |
| dynamic / 64 | bias_relu | 13.54 | 13.74 | 0.986× |
| dynamic / 64 | row_sum | 11.71 | 11.69 | 1.002× |
| dynamic / 64 | fragment | 23.33 | 17.87 | 1.305× |

Geometric mean speedup: 1.114×.
Worst tiled/untiled latency ratio: 1.095×. All regressions are retained.

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
