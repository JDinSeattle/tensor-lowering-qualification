# CPU qualification refresh — 2026-09-07

The current source and dependency pins were inspected, and the full local CPU qualification
was repeated with 61 paired samples per configuration/workload. The result is 24 passing
pytest tests, 192 numerical cases with four executions each, 24 paired workloads and
48 fresh-process cold-start observations. Every command exited successfully; see
[validation receipt](../evidence/maintenance-20260907/validation.json) and
[full report](../evidence/maintenance-20260907/full-run/REPORT.md).

The new shared i9-13900K cohort measured 1.114× geometric mean API speedup for tiled versus
untiled execution and 1.095× worst tiled/untiled latency ratio. The original cohort remains
1.108× / 1.136×. These compare compiler configuration choices, not this documentation/bank
maintenance change. API time includes Python/ABI, input handling and output copy; process
RSS includes the runtime and Python. No kernel-only or production-performance claim applies.
The mapping diagnostic reproducer was rerun in both modes; buffer-copy retained the same
numerical outputs without the recorded upstream-path exit warnings.

[IREE 3.11.0](https://github.com/iree-org/iree/releases/tag/v3.11.0), released 2026-03-19,
remains the matched compiler/runtime stable pin. The 2026-09-07 release feed contains
3.12.0 release candidates. Current code uses a version-sensitive private `_buffer_view`
mapping path and a synchronous CPU device; moving to a new runtime would require repeating
ownership, lifetime and numerical qualification. No dependency upgrade was justified here.

The portfolio [market review](../../D-bounded-pass-selection/docs/market-review-20260907.md)
prioritized frozen-experiment integrity in project D because existing bank projects already
cover general backend scheduling and deployment. B retains its distinctive MLIR-to-runtime
numerical/lifecycle scope. B's implementation is unchanged; new validation, documentation
and bank records are local only. The old GitHub CI result was inspected from retained evidence,
not rerun remotely. No GPU, cloud, production or accepted upstream contribution is claimed.

The older standalone B checksum verifier still relies on normal Python assertions; the
optimization-safe semantic validator added to D has not been ported to B. This refresh runs
B's existing verifier without `-O`. Concurrent qualification roots and process-tree
containment are also outside B's current contract.
