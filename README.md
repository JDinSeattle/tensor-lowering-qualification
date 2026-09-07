# Tensor Lowering Qualification

A reproducible IREE/MLIR-to-CPU qualification project: numerical contracts, observable lowering,
runtime failure diagnosis, and paired measurements of data tiling. All operands enter at runtime.

**Measured on an i9-13900K:** 192 numerical cases × 4 executions passed, covering matmul,
bias/ReLU, row reduction, and a combined network fragment. Static tiny/aligned/tail shapes and
three dynamic batch sizes execute through real IREE VMFBs and the `local-sync` CPU runtime.
The [recorded report](evidence/local-20260906/REPORT.md) includes 24 paired workloads and 48
fresh-process cold-start/memory observations. [24 automated tests](tests/) also pass locally.

Data tiling produced a **1.108× geometric mean application-API speedup** in this single shared-host
run, with **1.136× worst latency regression**. The aligned matmul and fragment improved about 3.1×,
while some small/dynamic cases regressed. This is not a kernel-only benchmark or a universal speedup claim.

```mermaid
flowchart LR
    A[Shape and numerical manifest] --> B[Standard Linalg MLIR]
    B --> C[IREE verification and lowering]
    C --> D[VMFB + LLVM IR + assembly]
    D --> E[Real local-sync CPU runtime]
    E --> F[Float64 reference + special-value masks]
    F --> G[Paired timing and fresh-process memory]
```

## Reproduce

Linux x86-64, Python 3.12, and a C compiler are sufficient for the pinned binary wheels.
No GPU or LLVM source build is required. About 150 MB of wheel downloads and 12 MB of evidence
are needed. The compiler targets your host; the checked-in binaries target Raptor Lake and should
be regenerated before execution on a different CPU.

```bash
python3.12 -m venv .venv
.venv/bin/python -m pip install -r requirements.lock
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 .venv/bin/python -m pytest -q
PYTHONPATH=src .venv/bin/python -m tensor_qualification.qualify \
  --output .work/my-run --samples 61
.venv/bin/python tools/verify_evidence.py .work/my-run
```

`uv venv --python 3.12 .venv` and `uv pip sync --python .venv/bin/python requirements.lock`
are equivalent installation options. An evidence output directory must be empty. CPU affinity defaults
to the first allowed logical CPU and is recorded; `--cpu N` selects another allowed core.
`--target-cpu generic` is useful for portable CI. All runtime workers use one CPU and single-thread
NumPy; the compiler disables runtime work distribution.

To verify the recorded evidence without IREE or NumPy:

```bash
python3 tools/verify_evidence.py evidence/local-20260906
```

## What is qualified

| Dimension | Coverage |
|---|---|
| Static M/K/N | 1/32/16, 7/33/17, 64/64/32 |
| Dynamic M, fixed K/N | M=1,7,64; K=32, N=16 |
| Operands | float32, C-contiguous, positive batch; weights supplied per invocation |
| Numeric cases | Normal, zeros, cancellation stress, NaN/+Inf/−Inf |
| Configurations | `--iree-opt-data-tiling=false/true`, identical remaining options |
| Runtime regressions | Repeated calls, input immutability, output ownership, corrupt VMFB rejection |
| Invalid inputs | Wrong shape/dtype/arity, strided array, invalid batch, malformed static matmul IR |
| Evidence | Exact commands, input/code hashes, all phase IR, ELF/VMFB, raw paired samples, cold/RSS |

Strided arrays and zero-sized batches are explicitly outside the adapter contract and rejected with
diagnostics. Compiler/runtime package versions are both 3.11.0. No compiler pass was changed.
The complete numerical and timing definitions are in [methodology](docs/methodology.md).

## Engineering findings

- **IR to execution:** [lowering analysis](docs/lowering.md) traces data encoding, dispatches,
  `linalg.mmt4d`, LLVM lowering, and target assembly. The measured computation remains dependent
  on runtime inputs; tests also change operands and verify changed outputs.
- **Runtime binding candidate:** 100 calls through the pinned wheel's `to_host()` path produce
  200 leaked-instance and 100 keep-alive diagnostics at process exit. A buffer-protocol copy
  produces the same outputs with no such warnings. The [minimal reproducer](tools/repro_runtime_mapping.py)
  and both stderr logs are retained. This is a local qualification finding, not an upstream accepted fix.
- **Numerical conditioning:** four stress cases exceed the simple `2e-5` absolute/relative criterion.
  They satisfy the independent forward-error bound derived in [methodology](docs/methodology.md).
  Both ratios are reported; the original violations are not discarded.

The adapter accesses the pinned runtime's `_buffer_view` for synchronous host mapping. This is a
deliberate compatibility dependency, tested for output ownership and mapping lifetime. It does not
support asynchronous devices. A future runtime update requires rerunning the qualification.

The historical `tools/smoke.py` / `evidence/smoke.json` record the first three-case experiment and its
original high-level mapping path. Use the full command above for the delivered qualification.

## Portfolio use

See [interview notes and evidence-backed resume bullets](docs/interview.md). Focus on correctness,
diagnostic reasoning, and optimization tradeoffs. No upstream submission, production deployment,
GPU execution, or general IREE memory-safety claim is implied.

Original project code and retained IREE/LLVM-generated artifacts use Apache-2.0 WITH LLVM-exception;
see [LICENSE](LICENSE) and [NOTICE](NOTICE).
