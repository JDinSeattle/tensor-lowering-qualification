# What data tiling changes

The retained `artifacts/aligned-{untiled,tiled}` directories contain both sides
of the experiment for M=64, K=64, N=32. Follow these files in order:

1. `phases/aligned.1.input.mlir`: standard Linalg on tensors. Function arguments
   provide X, W and bias; zero fill only initializes accumulators.
2. `phases/aligned.5.dispatch-creation.mlir`: the tiled path attaches matmul
   operand encodings and emits `flow.tensor.encode`. The untiled path has no
   corresponding operand packing. The network's matmul and epilogue remain
   runtime dependent.
3. `executables/configured_module_matmul_dispatch_0.mlir`: the untiled kernel
   selects `CPUDoubleTilingExpert`, keeps `linalg.matmul`, and records
   `vector_common_parallel = [1,1,0]`, `vector_reduction = [0,0,8]`.
   The tiled version lowers encoded operands to an mmt4d kernel. Additional
   encoding dispatches and pack operations account for the layout work.
4. `executables/*.codegen.ll`, `*.optimized.ll`, and `*.s`: the code crosses
   LLVM lowering and produces x86 assembly. Both configurations use the host's
   Raptor Lake capabilities (including AVX2/FMA); the configuration change is
   data layout/codegen strategy, not a different target ISA.
5. `module.vmfb`: the same artifacts measured by the runtime workers. Their
   hashes match the compile records in `summary.json`.

The complete assembly changes in all four modules; for example the aligned module
has 2712 untiled versus 3116 tiled assembly lines. These counts are only evidence
that generated code differs; debug directives, wrappers and helpers contribute.
They are not an optimization metric or a proof of semantic equivalence.

In the recorded paired run, aligned matmul API latency changes from 57.27 µs to
18.34 µs, and its network fragment from 57.32 µs to 18.65 µs. The 1×32×16 and
dynamic-7 matmuls regress. Packing work and extra dispatches are plausible overhead
sources for small shapes; this is an inference from the IR and size-dependent
measurements, not a hardware-counter attribution. Elementwise/reduction entry
points change little, as expected for a matmul-focused layout choice.

The complete numerical gate is independent of these textual comparisons. Passing
the gate validates the recorded workload set; it does not prove every possible
input or every compiler transformation correct.
