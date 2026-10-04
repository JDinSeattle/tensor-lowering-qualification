#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @matmul_dispatch_0_matmul_1x16x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_matmul_1x16x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<1xf32>
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(7 : index) : i64
          %6 = llvm.mlir.constant(6 : index) : i64
          %7 = llvm.mlir.constant(5 : index) : i64
          %8 = llvm.mlir.constant(4 : index) : i64
          %9 = llvm.mlir.constant(3 : index) : i64
          %10 = llvm.mlir.constant(2 : index) : i64
          %11 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %12 = llvm.mlir.constant(1 : index) : i64
          %13 = llvm.mlir.constant(16 : index) : i64
          %14 = llvm.mlir.constant(8 : index) : i64
          %15 = llvm.mlir.constant(32 : index) : i64
          %16 = llvm.mlir.constant(0 : index) : i64
          %17 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %18 = llvm.extractvalue %17[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.getelementptr %25[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %27 = llvm.load %26 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%16 : i64)
        ^bb1(%28: i64):  // 2 preds: ^bb0, ^bb4
          %29 = llvm.icmp "slt" %28, %13 : i64
          llvm.cond_br %29, ^bb2(%16, %11 : i64, vector<1xf32>), ^bb5
        ^bb2(%30: i64, %31: vector<1xf32>):  // 2 preds: ^bb1, ^bb3
          %32 = llvm.icmp "slt" %30, %15 : i64
          llvm.cond_br %32, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %33 = llvm.mul %30, %13 : i64
          %34 = llvm.add %33, %28 : i64
          %35 = llvm.getelementptr %23[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %36 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %37 = llvm.add %30, %12 : i64
          %38 = llvm.mul %37, %13 : i64
          %39 = llvm.add %38, %28 : i64
          %40 = llvm.getelementptr %23[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %41 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %42 = llvm.add %30, %10 : i64
          %43 = llvm.mul %42, %13 : i64
          %44 = llvm.add %43, %28 : i64
          %45 = llvm.getelementptr %23[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %46 = llvm.load %45 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %47 = llvm.add %30, %9 : i64
          %48 = llvm.mul %47, %13 : i64
          %49 = llvm.add %48, %28 : i64
          %50 = llvm.getelementptr %23[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %51 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %52 = llvm.add %30, %8 : i64
          %53 = llvm.mul %52, %13 : i64
          %54 = llvm.add %53, %28 : i64
          %55 = llvm.getelementptr %23[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %56 = llvm.load %55 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %57 = llvm.add %30, %7 : i64
          %58 = llvm.mul %57, %13 : i64
          %59 = llvm.add %58, %28 : i64
          %60 = llvm.getelementptr %23[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %61 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %62 = llvm.add %30, %6 : i64
          %63 = llvm.mul %62, %13 : i64
          %64 = llvm.add %63, %28 : i64
          %65 = llvm.getelementptr %23[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %66 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %67 = llvm.add %30, %5 : i64
          %68 = llvm.mul %67, %13 : i64
          %69 = llvm.add %68, %28 : i64
          %70 = llvm.getelementptr %23[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %71 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %72 = llvm.mul %16, %15 overflow<nsw, nuw> : i64
          %73 = llvm.add %72, %30 overflow<nsw, nuw> : i64
          %74 = llvm.getelementptr inbounds|nuw %19[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %75 = llvm.load %74 : !llvm.ptr -> f32
          %76 = llvm.insertelement %75, %2[%1 : i32] : vector<1xf32>
          %77 = llvm.intr.fmuladd(%36, %76, %31) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %78 = llvm.add %72, %37 overflow<nsw, nuw> : i64
          %79 = llvm.getelementptr inbounds|nuw %19[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %80 = llvm.load %79 : !llvm.ptr -> f32
          %81 = llvm.insertelement %80, %2[%1 : i32] : vector<1xf32>
          %82 = llvm.intr.fmuladd(%41, %81, %77) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %83 = llvm.add %72, %42 overflow<nsw, nuw> : i64
          %84 = llvm.getelementptr inbounds|nuw %19[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 : !llvm.ptr -> f32
          %86 = llvm.insertelement %85, %2[%1 : i32] : vector<1xf32>
          %87 = llvm.intr.fmuladd(%46, %86, %82) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %88 = llvm.add %72, %47 overflow<nsw, nuw> : i64
          %89 = llvm.getelementptr inbounds|nuw %19[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %90 = llvm.load %89 : !llvm.ptr -> f32
          %91 = llvm.insertelement %90, %2[%1 : i32] : vector<1xf32>
          %92 = llvm.intr.fmuladd(%51, %91, %87) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %93 = llvm.add %72, %52 overflow<nsw, nuw> : i64
          %94 = llvm.getelementptr inbounds|nuw %19[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %95 = llvm.load %94 : !llvm.ptr -> f32
          %96 = llvm.insertelement %95, %2[%1 : i32] : vector<1xf32>
          %97 = llvm.intr.fmuladd(%56, %96, %92) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %98 = llvm.add %72, %57 overflow<nsw, nuw> : i64
          %99 = llvm.getelementptr inbounds|nuw %19[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 : !llvm.ptr -> f32
          %101 = llvm.insertelement %100, %2[%1 : i32] : vector<1xf32>
          %102 = llvm.intr.fmuladd(%61, %101, %97) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %103 = llvm.add %72, %62 overflow<nsw, nuw> : i64
          %104 = llvm.getelementptr inbounds|nuw %19[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %105 = llvm.load %104 : !llvm.ptr -> f32
          %106 = llvm.insertelement %105, %2[%1 : i32] : vector<1xf32>
          %107 = llvm.intr.fmuladd(%66, %106, %102) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %108 = llvm.add %72, %67 overflow<nsw, nuw> : i64
          %109 = llvm.getelementptr inbounds|nuw %19[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 : !llvm.ptr -> f32
          %111 = llvm.insertelement %110, %2[%1 : i32] : vector<1xf32>
          %112 = llvm.intr.fmuladd(%71, %111, %107) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %113 = llvm.add %30, %14 : i64
          llvm.br ^bb2(%113, %112 : i64, vector<1xf32>)
        ^bb4:  // pred: ^bb2
          %114 = llvm.extractelement %31[%0 : i64] : vector<1xf32>
          %115 = llvm.mul %16, %13 overflow<nsw, nuw> : i64
          %116 = llvm.add %115, %28 overflow<nsw, nuw> : i64
          %117 = llvm.getelementptr inbounds|nuw %27[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %114, %117 : f32, !llvm.ptr
          %118 = llvm.add %28, %12 : i64
          llvm.br ^bb1(%118 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<1x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<1x16xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c1, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<1x32xf32> in !stream.resource<external>{%c128}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<32x16xf32> in !stream.resource<external>{%c2048}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c64} => !stream.timepoint
    %2 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg2: !stream.resource<external>{%c128}, %1 as %arg3: !stream.resource<external>{%c2048}, %result as %arg4: !stream.resource<external>{%c64}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_1x16x32_f32 {
        ro %arg2[%c0 for %c128] : !stream.resource<external>{%c128},
        ro %arg3[%c0 for %c2048] : !stream.resource<external>{%c2048},
        wo %arg4[%c0 for %c64] : !stream.resource<external>{%c64}
      }
    } => !stream.timepoint
    %3 = stream.timepoint.await %2 => %result : !stream.resource<external>{%c64}
    %4 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %3 : tensor<1x16xf32> in !stream.resource<external>{%c64} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_16_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @bias_relu_dispatch_0_elementwise_16_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(64 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %4 = llvm.mlir.constant(8 : index) : i64
          %5 = llvm.mlir.constant(16 : index) : i64
          %6 = llvm.mlir.constant(0 : index) : i64
          %7 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %8 = llvm.extractvalue %7[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %9 = llvm.load %8 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%9, %1 : !llvm.ptr, i64)] : i1
          %10 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %11 = llvm.extractvalue %10[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %12 = llvm.getelementptr %11[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %13 = llvm.load %12 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%13, %1 : !llvm.ptr, i64)] : i1
          %14 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %15 = llvm.extractvalue %14[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %16 = llvm.getelementptr %15[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %17 = llvm.load %16 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%17, %1 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%6 : i64)
        ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb2
          %19 = llvm.icmp "slt" %18, %5 : i64
          llvm.cond_br %19, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %20 = llvm.getelementptr %9[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %21 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %22 = llvm.getelementptr %13[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %23 = llvm.load %22 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %24 = llvm.fadd %21, %23 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %25 = llvm.fcmp "ugt" %24, %3 : vector<8xf32>
          %26 = llvm.select %25, %24, %3 : vector<8xi1>, vector<8xf32>
          %27 = llvm.fcmp "uno" %3, %3 : vector<8xf32>
          %28 = llvm.select %27, %3, %26 : vector<8xi1>, vector<8xf32>
          %29 = llvm.getelementptr %17[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %28, %29 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %30 = llvm.add %18, %4 : i64
          llvm.br ^bb1(%30 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<1x16xf32>, %input1: tensor<16xf32>) -> (%output0: tensor<1x16xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c1, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<1x16xf32> in !stream.resource<external>{%c64}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c16]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<16xf32> in !stream.resource<external>{%c64}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c64} => !stream.timepoint
    %2 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg2: !stream.resource<external>{%c64}, %1 as %arg3: !stream.resource<external>{%c64}, %result as %arg4: !stream.resource<external>{%c64}) {
      stream.cmd.dispatch @bias_relu_dispatch_0::@embedded_elf_x86_64::@bias_relu_dispatch_0_elementwise_16_f32 {
        ro %arg2[%c0 for %c64] : !stream.resource<external>{%c64},
        ro %arg3[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg4[%c0 for %c64] : !stream.resource<external>{%c64}
      }
    } => !stream.timepoint
    %3 = stream.timepoint.await %2 => %result : !stream.resource<external>{%c64}
    %4 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %3 : tensor<1x16xf32> in !stream.resource<external>{%c64} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  hal.executable private @row_sum_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @row_sum_dispatch_0_reduction_16_f32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @row_sum_dispatch_0_reduction_16_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<1xf32>
          %2 = llvm.mlir.constant(0 : i64) : i64
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %6 = llvm.mlir.constant(8 : index) : i64
          %7 = llvm.mlir.constant(16 : index) : i64
          %8 = llvm.mlir.constant(0 : index) : i64
          %9 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %10 = llvm.extractvalue %9[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %11 = llvm.load %10 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%11, %3 : !llvm.ptr, i64)] : i1
          %12 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %13 = llvm.extractvalue %12[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %14 = llvm.getelementptr %13[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %15 = llvm.load %14 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%15, %3 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%8, %5 : i64, vector<1xf32>)
        ^bb1(%16: i64, %17: vector<1xf32>):  // 2 preds: ^bb0, ^bb2
          %18 = llvm.icmp "slt" %16, %7 : i64
          llvm.cond_br %18, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %19 = llvm.getelementptr %11[%16] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %20 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %21 = llvm.extractelement %17[%2 : i64] : vector<1xf32>
          %22 = "llvm.intr.vector.reduce.fadd"(%21, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %23 = llvm.insertelement %22, %1[%0 : i32] : vector<1xf32>
          %24 = llvm.add %16, %6 : i64
          llvm.br ^bb1(%24, %23 : i64, vector<1xf32>)
        ^bb3:  // pred: ^bb1
          %25 = llvm.extractelement %17[%2 : i64] : vector<1xf32>
          llvm.store %25, %15 : f32, !llvm.ptr
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<1x16xf32>) -> (%output0: tensor<1xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c1, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<1x16xf32> in !stream.resource<external>{%c64}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c4} => !stream.timepoint
    %1 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg1: !stream.resource<external>{%c64}, %result as %arg2: !stream.resource<external>{%c4}) {
      stream.cmd.dispatch @row_sum_dispatch_0::@embedded_elf_x86_64::@row_sum_dispatch_0_reduction_16_f32 {
        ro %arg1[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg2[%c0 for %c4] : !stream.resource<external>{%c4}
      }
    } => !stream.timepoint
    %2 = stream.timepoint.await %1 => %result : !stream.resource<external>{%c4}
    %3 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %2 : tensor<1xf32> in !stream.resource<external>{%c4} -> !hal.buffer_view
    util.return %3 : !hal.buffer_view
  }
  hal.executable private @fragment_dispatch_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @fragment_dispatch_1_reduction_16_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @fragment_dispatch_1_reduction_16_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<1xf32>
          %2 = llvm.mlir.constant(0 : i64) : i64
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %6 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %7 = llvm.mlir.constant(8 : index) : i64
          %8 = llvm.mlir.constant(16 : index) : i64
          %9 = llvm.mlir.constant(0 : index) : i64
          %10 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %11 = llvm.extractvalue %10[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %12 = llvm.load %11 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%12, %3 : !llvm.ptr, i64)] : i1
          %13 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %14 = llvm.extractvalue %13[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %15 = llvm.getelementptr %14[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%16, %3 : !llvm.ptr, i64)] : i1
          %17 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %18 = llvm.extractvalue %17[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %19 = llvm.getelementptr %18[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %20 = llvm.load %19 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%9, %5 : i64, vector<1xf32>)
        ^bb1(%21: i64, %22: vector<1xf32>):  // 2 preds: ^bb0, ^bb2
          %23 = llvm.icmp "slt" %21, %8 : i64
          llvm.cond_br %23, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %24 = llvm.getelementptr %12[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %25 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %26 = llvm.getelementptr %16[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %27 = llvm.load %26 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %28 = llvm.extractelement %22[%2 : i64] : vector<1xf32>
          %29 = llvm.fadd %25, %27 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %30 = llvm.fcmp "ugt" %29, %6 : vector<8xf32>
          %31 = llvm.select %30, %29, %6 : vector<8xi1>, vector<8xf32>
          %32 = llvm.fcmp "uno" %6, %6 : vector<8xf32>
          %33 = llvm.select %32, %6, %31 : vector<8xi1>, vector<8xf32>
          %34 = "llvm.intr.vector.reduce.fadd"(%28, %33) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %35 = llvm.insertelement %34, %1[%0 : i32] : vector<1xf32>
          %36 = llvm.add %21, %7 : i64
          llvm.br ^bb1(%36, %35 : i64, vector<1xf32>)
        ^bb3:  // pred: ^bb1
          %37 = llvm.extractelement %22[%2 : i64] : vector<1xf32>
          llvm.store %37, %20 : f32, !llvm.ptr
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<1x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<1xf32>)"}} {
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c1, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<1x32xf32> in !stream.resource<external>{%c128}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<32x16xf32> in !stream.resource<external>{%c2048}
    hal.buffer_view.assert<%arg2 : !hal.buffer_view> message("input2") shape([%c16]) type(%element_type_f32) encoding(%dense_row_major)
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg2 : !hal.buffer_view -> tensor<16xf32> in !stream.resource<external>{%c64}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c4} => !stream.timepoint
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c64} => !stream.timepoint
    %3 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %4 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%3) => with(%0 as %arg3: !stream.resource<external>{%c128}, %1 as %arg4: !stream.resource<external>{%c2048}, %2 as %arg5: !stream.resource<external>{%c64}, %result as %arg6: !stream.resource<external>{%c4}, %result_0 as %arg7: !stream.resource<transient>{%c64}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_1x16x32_f32 {
        ro %arg3[%c0 for %c128] : !stream.resource<external>{%c128},
        ro %arg4[%c0 for %c2048] : !stream.resource<external>{%c2048},
        wo %arg7[%c0 for %c64] : !stream.resource<transient>{%c64}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_16_f32 {
        ro %arg7[%c0 for %c64] : !stream.resource<transient>{%c64},
        ro %arg5[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg6[%c0 for %c4] : !stream.resource<external>{%c4}
      }
    } => !stream.timepoint
    %5 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%4) => %result_0 : !stream.resource<transient>{%c64} => !stream.timepoint
    %6 = stream.timepoint.await %5 => %result : !stream.resource<external>{%c4}
    %7 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %6 : tensor<1xf32> in !stream.resource<external>{%c4} -> !hal.buffer_view
    util.return %7 : !hal.buffer_view
  }
}
