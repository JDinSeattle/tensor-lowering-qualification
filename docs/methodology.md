# Qualification contract

The source of truth is `manifest.json`, `requirements.lock`, the versioned input MLIR,
and the full source/command/hash record in each run's `summary.json`.

## Numerical comparisons

Operands are stored as float32. NumPy casts them to float64 before the reference
matmul, addition, and reduction. The reference is the mathematical expression
`sum(max(X @ W + bias, 0), axis=1)` and each primitive independently.
It does not call IREE or reuse generated target code.

Normal, zero, and special-value cases require finite error at most
`2e-5 + 2e-5 * abs(reference)`. NaN, positive-infinity, and negative-infinity
masks must agree exactly. Signed zeros compare numerically. NaN payload/sign and
floating-point exception flags are outside the contract.

Cancellation-stress inputs scale alternating entries by ±1024. A uniform relative
error limit is poorly conditioned when large products cancel. These cases use
the maximum of the above abs/rel bound and an independently computed forward bound:

- `u = 2^-24`, `gamma(n) = n*u / (1-n*u)`.
- Matmul: `gamma(2K) * (abs(X) @ abs(W))`. This covers separate multiply/add and FMA.
- Row sum: `gamma(N) * sum(abs(A), axis=1)`.
- Bias + ReLU: `u * (abs(A) + abs(bias))`; ReLU is 1-Lipschitz.
- Fragment: propagate the matmul bound through bias addition, then through ReLU,
  then add the reduction's bound over the possible activation magnitudes.

This is for finite normal float32 arithmetic without overflow/underflow; it is
not a bound on arbitrary IEEE corner cases. Special values are tested separately.
The seeded stress data are far from float32 overflow/subnormal ranges. Four local
cases exceed the simple abs/rel bound but pass the forward bound; `max_error_over_absrel`
and `max_error_over_bound` preserve that distinction. A test deliberately feeds
wrong outputs to verify the gate rejects them. A bound is computed from inputs,
never increased to fit an observed result.

Every numerical case runs four times; outputs must agree across repetitions and
inputs must remain unchanged. All configurations pass correctness before timing.
Each timed output is also checked after the timer stops.

## Timing

Each shape/configuration compiles in a fresh compiler process. `wall_ns` includes
compiler process start and evidence dumping; it is an instrumented compilation
cost, not an uninstrumented compiler benchmark. Only one compile is measured per
configuration, so small compile-time differences are descriptive.

The runtime is `local-sync`, with codegen distribution disabled, one pinned CPU,
and `OPENBLAS_NUM_THREADS=OMP_NUM_THREADS=MKL_NUM_THREADS=1`. The timed entry point
includes adapter validation, NumPy operand handling, synchronous VM invocation,
and an owned host output copy. Inputs are generated once per workload. Neither
the independent reference nor comparison is inside the timed interval.

After eight warmups per configuration, 61 paired trials use a seeded randomized
configuration order. Both variants see the same operands, trial counts, process,
and CPU. Raw durations and every order are retained, including outliers. The
reported ratio is untiled median / tiled median, with the geometric mean across
24 equally weighted workloads. This is a small-workload API latency study, where
Python/binding overhead often dominates. The i9-13900K host runs other processes;
frequency and thermal conditions are not locked. The results support this one
cohort, not a significance or cross-machine claim.

Cold observations use one fresh process per workload/configuration (48 total).
Runtime/NumPy import, VM module loading, and first invocation are separate clocks.
The outer process wall time also includes input generation and reference checks,
so it is explicitly not summed into a 'cold kernel latency'.

Memory is Linux `ru_maxrss` in KiB, the fresh process's high-water resident set
including the interpreter and libraries. It is not incremental tensor memory,
peak live HAL allocation, or leak proof. The output mapping finding is established
by a controlled process-exit diagnostic comparison, not by the small RSS difference.

## Reproducibility and exclusions

Each run binds compiler output, package versions, CPU features, options, seed,
source hashes, VMFB checksum, and worker requests. All intermediate artifacts are
retained and checksummed. Artifact hashes establish provenance, not semantic correctness;
the real-runtime numerical gate provides the latter within this finite test scope.

No pass implementation is modified. `tests/test_runtime.py` is a local dynamic
shape e2e candidate; `tools/repro_runtime_mapping.py` is a local binding candidate.
No runtime-version mismatch matrix, asynchronous device path, GPU path, arbitrary
model importer, or multi-thread shared-context guarantee is claimed.
