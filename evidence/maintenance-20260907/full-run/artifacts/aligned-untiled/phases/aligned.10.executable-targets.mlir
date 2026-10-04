#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @matmul_dispatch_0_matmul_64x32x64_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_matmul_64x32x64_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<1xf32>
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(7 : index) : i64
          %5 = llvm.mlir.constant(6 : index) : i64
          %6 = llvm.mlir.constant(5 : index) : i64
          %7 = llvm.mlir.constant(4 : index) : i64
          %8 = llvm.mlir.constant(3 : index) : i64
          %9 = llvm.mlir.constant(2 : index) : i64
          %10 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %11 = llvm.mlir.constant(1 : index) : i64
          %12 = llvm.mlir.constant(32 : index) : i64
          %13 = llvm.mlir.constant(8 : index) : i64
          %14 = llvm.mlir.constant(64 : index) : i64
          %15 = llvm.mlir.constant(0 : index) : i64
          %16 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %17 = llvm.extractvalue %16[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %18 = llvm.load %17 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%18, %14 : !llvm.ptr, i64)] : i1
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.getelementptr %20[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%22, %14 : !llvm.ptr, i64)] : i1
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.getelementptr %24[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %26 = llvm.load %25 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%26, %14 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%15 : i64)
        ^bb1(%27: i64):  // 2 preds: ^bb0, ^bb6
          %28 = llvm.icmp "slt" %27, %14 : i64
          llvm.cond_br %28, ^bb2(%15 : i64), ^bb7
        ^bb2(%29: i64):  // 2 preds: ^bb1, ^bb5
          %30 = llvm.icmp "slt" %29, %12 : i64
          llvm.cond_br %30, ^bb3(%15, %10 : i64, vector<1xf32>), ^bb6
        ^bb3(%31: i64, %32: vector<1xf32>):  // 2 preds: ^bb2, ^bb4
          %33 = llvm.icmp "slt" %31, %14 : i64
          llvm.cond_br %33, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %34 = llvm.mul %31, %12 : i64
          %35 = llvm.add %34, %29 : i64
          %36 = llvm.getelementptr %22[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %37 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %38 = llvm.add %31, %11 : i64
          %39 = llvm.mul %38, %12 : i64
          %40 = llvm.add %39, %29 : i64
          %41 = llvm.getelementptr %22[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %42 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %43 = llvm.add %31, %9 : i64
          %44 = llvm.mul %43, %12 : i64
          %45 = llvm.add %44, %29 : i64
          %46 = llvm.getelementptr %22[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %47 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %48 = llvm.add %31, %8 : i64
          %49 = llvm.mul %48, %12 : i64
          %50 = llvm.add %49, %29 : i64
          %51 = llvm.getelementptr %22[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %52 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %53 = llvm.add %31, %7 : i64
          %54 = llvm.mul %53, %12 : i64
          %55 = llvm.add %54, %29 : i64
          %56 = llvm.getelementptr %22[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %58 = llvm.add %31, %6 : i64
          %59 = llvm.mul %58, %12 : i64
          %60 = llvm.add %59, %29 : i64
          %61 = llvm.getelementptr %22[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %63 = llvm.add %31, %5 : i64
          %64 = llvm.mul %63, %12 : i64
          %65 = llvm.add %64, %29 : i64
          %66 = llvm.getelementptr %22[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %68 = llvm.add %31, %4 : i64
          %69 = llvm.mul %68, %12 : i64
          %70 = llvm.add %69, %29 : i64
          %71 = llvm.getelementptr %22[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %72 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %73 = llvm.mul %27, %14 overflow<nsw, nuw> : i64
          %74 = llvm.add %73, %31 overflow<nsw, nuw> : i64
          %75 = llvm.getelementptr inbounds|nuw %18[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %76 = llvm.load %75 : !llvm.ptr -> f32
          %77 = llvm.insertelement %76, %2[%1 : i32] : vector<1xf32>
          %78 = llvm.intr.fmuladd(%37, %77, %32) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %79 = llvm.add %73, %38 overflow<nsw, nuw> : i64
          %80 = llvm.getelementptr inbounds|nuw %18[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %81 = llvm.load %80 : !llvm.ptr -> f32
          %82 = llvm.insertelement %81, %2[%1 : i32] : vector<1xf32>
          %83 = llvm.intr.fmuladd(%42, %82, %78) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %84 = llvm.add %73, %43 overflow<nsw, nuw> : i64
          %85 = llvm.getelementptr inbounds|nuw %18[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %86 = llvm.load %85 : !llvm.ptr -> f32
          %87 = llvm.insertelement %86, %2[%1 : i32] : vector<1xf32>
          %88 = llvm.intr.fmuladd(%47, %87, %83) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %89 = llvm.add %73, %48 overflow<nsw, nuw> : i64
          %90 = llvm.getelementptr inbounds|nuw %18[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %91 = llvm.load %90 : !llvm.ptr -> f32
          %92 = llvm.insertelement %91, %2[%1 : i32] : vector<1xf32>
          %93 = llvm.intr.fmuladd(%52, %92, %88) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %94 = llvm.add %73, %53 overflow<nsw, nuw> : i64
          %95 = llvm.getelementptr inbounds|nuw %18[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %96 = llvm.load %95 : !llvm.ptr -> f32
          %97 = llvm.insertelement %96, %2[%1 : i32] : vector<1xf32>
          %98 = llvm.intr.fmuladd(%57, %97, %93) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %99 = llvm.add %73, %58 overflow<nsw, nuw> : i64
          %100 = llvm.getelementptr inbounds|nuw %18[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %101 = llvm.load %100 : !llvm.ptr -> f32
          %102 = llvm.insertelement %101, %2[%1 : i32] : vector<1xf32>
          %103 = llvm.intr.fmuladd(%62, %102, %98) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %104 = llvm.add %73, %63 overflow<nsw, nuw> : i64
          %105 = llvm.getelementptr inbounds|nuw %18[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %106 = llvm.load %105 : !llvm.ptr -> f32
          %107 = llvm.insertelement %106, %2[%1 : i32] : vector<1xf32>
          %108 = llvm.intr.fmuladd(%67, %107, %103) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %109 = llvm.add %73, %68 overflow<nsw, nuw> : i64
          %110 = llvm.getelementptr inbounds|nuw %18[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %111 = llvm.load %110 : !llvm.ptr -> f32
          %112 = llvm.insertelement %111, %2[%1 : i32] : vector<1xf32>
          %113 = llvm.intr.fmuladd(%72, %112, %108) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %114 = llvm.add %31, %13 : i64
          llvm.br ^bb3(%114, %113 : i64, vector<1xf32>)
        ^bb5:  // pred: ^bb3
          %115 = llvm.extractelement %32[%0 : i64] : vector<1xf32>
          %116 = llvm.mul %27, %12 overflow<nsw, nuw> : i64
          %117 = llvm.add %116, %29 overflow<nsw, nuw> : i64
          %118 = llvm.getelementptr inbounds|nuw %26[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %115, %118 : f32, !llvm.ptr
          %119 = llvm.add %29, %11 : i64
          llvm.br ^bb2(%119 : i64)
        ^bb6:  // pred: ^bb2
          %120 = llvm.add %27, %11 : i64
          llvm.br ^bb1(%120 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>) -> (%output0: tensor<64x32xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c8192 = arith.constant 8192 : index
    %c16384 = arith.constant 16384 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c64, %c64]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<64x64xf32> in !stream.resource<external>{%c16384}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c64, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<64x32xf32> in !stream.resource<external>{%c8192}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c8192} => !stream.timepoint
    %2 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg2: !stream.resource<external>{%c16384}, %1 as %arg3: !stream.resource<external>{%c8192}, %result as %arg4: !stream.resource<external>{%c8192}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_64x32x64_f32 {
        ro %arg2[%c0 for %c16384] : !stream.resource<external>{%c16384},
        ro %arg3[%c0 for %c8192] : !stream.resource<external>{%c8192},
        wo %arg4[%c0 for %c8192] : !stream.resource<external>{%c8192}
      }
    } => !stream.timepoint
    %3 = stream.timepoint.await %2 => %result : !stream.resource<external>{%c8192}
    %4 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %3 : tensor<64x32xf32> in !stream.resource<external>{%c8192} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_64x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @bias_relu_dispatch_0_elementwise_64x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(true) : i1
          %2 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %3 = llvm.mlir.constant(8 : index) : i64
          %4 = llvm.mlir.constant(1 : index) : i64
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(0 : index) : i64
          %8 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %9 = llvm.extractvalue %8[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %10 = llvm.load %9 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %1 ["align"(%10, %6 : !llvm.ptr, i64)] : i1
          %11 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %12 = llvm.extractvalue %11[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %13 = llvm.getelementptr %12[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %14 = llvm.load %13 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %1 ["align"(%14, %6 : !llvm.ptr, i64)] : i1
          %15 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %16 = llvm.extractvalue %15[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %17 = llvm.getelementptr %16[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %18 = llvm.load %17 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %1 ["align"(%18, %6 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%7 : i64)
        ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb4
          %20 = llvm.icmp "slt" %19, %6 : i64
          llvm.cond_br %20, ^bb2(%7 : i64), ^bb5
        ^bb2(%21: i64):  // 2 preds: ^bb1, ^bb3
          %22 = llvm.icmp "slt" %21, %5 : i64
          llvm.cond_br %22, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %23 = llvm.mul %19, %5 : i64
          %24 = llvm.add %23, %21 : i64
          %25 = llvm.getelementptr %10[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %26 = llvm.load %25 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %27 = llvm.getelementptr %14[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %28 = llvm.load %27 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %29 = llvm.fadd %26, %28 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %30 = llvm.fcmp "ugt" %29, %2 : vector<8xf32>
          %31 = llvm.select %30, %29, %2 : vector<8xi1>, vector<8xf32>
          %32 = llvm.fcmp "uno" %2, %2 : vector<8xf32>
          %33 = llvm.select %32, %2, %31 : vector<8xi1>, vector<8xf32>
          %34 = llvm.getelementptr %18[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %33, %34 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %35 = llvm.add %21, %3 : i64
          llvm.br ^bb2(%35 : i64)
        ^bb4:  // pred: ^bb2
          %36 = llvm.add %19, %4 : i64
          llvm.br ^bb1(%36 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<64x32xf32>, %input1: tensor<32xf32>) -> (%output0: tensor<64x32xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c128 = arith.constant 128 : index
    %c8192 = arith.constant 8192 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c64, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<64x32xf32> in !stream.resource<external>{%c8192}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<32xf32> in !stream.resource<external>{%c128}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c8192} => !stream.timepoint
    %2 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg2: !stream.resource<external>{%c8192}, %1 as %arg3: !stream.resource<external>{%c128}, %result as %arg4: !stream.resource<external>{%c8192}) {
      stream.cmd.dispatch @bias_relu_dispatch_0::@embedded_elf_x86_64::@bias_relu_dispatch_0_elementwise_64x32_f32 {
        ro %arg2[%c0 for %c8192] : !stream.resource<external>{%c8192},
        ro %arg3[%c0 for %c128] : !stream.resource<external>{%c128},
        wo %arg4[%c0 for %c8192] : !stream.resource<external>{%c8192}
      }
    } => !stream.timepoint
    %3 = stream.timepoint.await %2 => %result : !stream.resource<external>{%c8192}
    %4 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %3 : tensor<64x32xf32> in !stream.resource<external>{%c8192} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  hal.executable private @row_sum_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @row_sum_dispatch_0_reduction_64x32_f32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @row_sum_dispatch_0_reduction_64x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xf32>
          %2 = llvm.mlir.constant(7 : i64) : i64
          %3 = llvm.mlir.constant(6 : i64) : i64
          %4 = llvm.mlir.constant(5 : i64) : i64
          %5 = llvm.mlir.constant(4 : i64) : i64
          %6 = llvm.mlir.constant(3 : i64) : i64
          %7 = llvm.mlir.constant(2 : i64) : i64
          %8 = llvm.mlir.constant(1 : i64) : i64
          %9 = llvm.mlir.constant(0 : i64) : i64
          %10 = llvm.mlir.constant(true) : i1
          %11 = llvm.mlir.constant(7 : index) : i64
          %12 = llvm.mlir.constant(6 : index) : i64
          %13 = llvm.mlir.constant(5 : index) : i64
          %14 = llvm.mlir.constant(4 : index) : i64
          %15 = llvm.mlir.constant(3 : index) : i64
          %16 = llvm.mlir.constant(2 : index) : i64
          %17 = llvm.mlir.constant(1 : index) : i64
          %18 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %19 = llvm.mlir.constant(64 : index) : i64
          %20 = llvm.mlir.constant(8 : index) : i64
          %21 = llvm.mlir.constant(32 : index) : i64
          %22 = llvm.mlir.constant(0 : index) : i64
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %10 ["align"(%25, %19 : !llvm.ptr, i64)] : i1
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %10 ["align"(%29, %19 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%22 : i64)
        ^bb1(%30: i64):  // 2 preds: ^bb0, ^bb4
          %31 = llvm.icmp "slt" %30, %19 : i64
          llvm.cond_br %31, ^bb2(%22, %18 : i64, vector<8xf32>), ^bb5
        ^bb2(%32: i64, %33: vector<8xf32>):  // 2 preds: ^bb1, ^bb3
          %34 = llvm.icmp "slt" %32, %21 : i64
          llvm.cond_br %34, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %35 = llvm.mul %30, %21 : i64
          %36 = llvm.add %35, %32 : i64
          %37 = llvm.getelementptr %25[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %38 = llvm.load %37 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %39 = llvm.add %30, %17 : i64
          %40 = llvm.mul %39, %21 : i64
          %41 = llvm.add %40, %32 : i64
          %42 = llvm.getelementptr %25[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %43 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %44 = llvm.add %30, %16 : i64
          %45 = llvm.mul %44, %21 : i64
          %46 = llvm.add %45, %32 : i64
          %47 = llvm.getelementptr %25[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %48 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %49 = llvm.add %30, %15 : i64
          %50 = llvm.mul %49, %21 : i64
          %51 = llvm.add %50, %32 : i64
          %52 = llvm.getelementptr %25[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %54 = llvm.add %30, %14 : i64
          %55 = llvm.mul %54, %21 : i64
          %56 = llvm.add %55, %32 : i64
          %57 = llvm.getelementptr %25[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %59 = llvm.add %30, %13 : i64
          %60 = llvm.mul %59, %21 : i64
          %61 = llvm.add %60, %32 : i64
          %62 = llvm.getelementptr %25[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %63 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %64 = llvm.add %30, %12 : i64
          %65 = llvm.mul %64, %21 : i64
          %66 = llvm.add %65, %32 : i64
          %67 = llvm.getelementptr %25[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %68 = llvm.load %67 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %69 = llvm.add %30, %11 : i64
          %70 = llvm.mul %69, %21 : i64
          %71 = llvm.add %70, %32 : i64
          %72 = llvm.getelementptr %25[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %74 = llvm.extractelement %33[%9 : i64] : vector<8xf32>
          %75 = "llvm.intr.vector.reduce.fadd"(%74, %38) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %76 = llvm.extractelement %33[%8 : i64] : vector<8xf32>
          %77 = "llvm.intr.vector.reduce.fadd"(%76, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %78 = llvm.extractelement %33[%7 : i64] : vector<8xf32>
          %79 = "llvm.intr.vector.reduce.fadd"(%78, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %80 = llvm.extractelement %33[%6 : i64] : vector<8xf32>
          %81 = "llvm.intr.vector.reduce.fadd"(%80, %53) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %82 = llvm.extractelement %33[%5 : i64] : vector<8xf32>
          %83 = "llvm.intr.vector.reduce.fadd"(%82, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %84 = llvm.extractelement %33[%4 : i64] : vector<8xf32>
          %85 = "llvm.intr.vector.reduce.fadd"(%84, %63) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %86 = llvm.extractelement %33[%3 : i64] : vector<8xf32>
          %87 = "llvm.intr.vector.reduce.fadd"(%86, %68) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %88 = llvm.extractelement %33[%2 : i64] : vector<8xf32>
          %89 = "llvm.intr.vector.reduce.fadd"(%88, %73) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %90 = llvm.insertelement %75, %1[%9 : i64] : vector<8xf32>
          %91 = llvm.insertelement %77, %90[%8 : i64] : vector<8xf32>
          %92 = llvm.insertelement %79, %91[%7 : i64] : vector<8xf32>
          %93 = llvm.insertelement %81, %92[%6 : i64] : vector<8xf32>
          %94 = llvm.insertelement %83, %93[%5 : i64] : vector<8xf32>
          %95 = llvm.insertelement %85, %94[%4 : i64] : vector<8xf32>
          %96 = llvm.insertelement %87, %95[%3 : i64] : vector<8xf32>
          %97 = llvm.insertelement %89, %96[%2 : i64] : vector<8xf32>
          %98 = llvm.add %32, %20 : i64
          llvm.br ^bb2(%98, %97 : i64, vector<8xf32>)
        ^bb4:  // pred: ^bb2
          %99 = llvm.getelementptr %29[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %33, %99 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %100 = llvm.add %30, %20 : i64
          llvm.br ^bb1(%100 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<64x32xf32>) -> (%output0: tensor<64xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c256 = arith.constant 256 : index
    %c8192 = arith.constant 8192 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c64, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<64x32xf32> in !stream.resource<external>{%c8192}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c256} => !stream.timepoint
    %1 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg1: !stream.resource<external>{%c8192}, %result as %arg2: !stream.resource<external>{%c256}) {
      stream.cmd.dispatch @row_sum_dispatch_0::@embedded_elf_x86_64::@row_sum_dispatch_0_reduction_64x32_f32 {
        ro %arg1[%c0 for %c8192] : !stream.resource<external>{%c8192},
        wo %arg2[%c0 for %c256] : !stream.resource<external>{%c256}
      }
    } => !stream.timepoint
    %2 = stream.timepoint.await %1 => %result : !stream.resource<external>{%c256}
    %3 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %2 : tensor<64xf32> in !stream.resource<external>{%c256} -> !hal.buffer_view
    util.return %3 : !hal.buffer_view
  }
  hal.executable private @fragment_dispatch_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @fragment_dispatch_1_reduction_64x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @fragment_dispatch_1_reduction_64x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xf32>
          %2 = llvm.mlir.constant(7 : i64) : i64
          %3 = llvm.mlir.constant(6 : i64) : i64
          %4 = llvm.mlir.constant(5 : i64) : i64
          %5 = llvm.mlir.constant(4 : i64) : i64
          %6 = llvm.mlir.constant(3 : i64) : i64
          %7 = llvm.mlir.constant(2 : i64) : i64
          %8 = llvm.mlir.constant(1 : i64) : i64
          %9 = llvm.mlir.constant(0 : i64) : i64
          %10 = llvm.mlir.constant(true) : i1
          %11 = llvm.mlir.constant(7 : index) : i64
          %12 = llvm.mlir.constant(6 : index) : i64
          %13 = llvm.mlir.constant(5 : index) : i64
          %14 = llvm.mlir.constant(4 : index) : i64
          %15 = llvm.mlir.constant(3 : index) : i64
          %16 = llvm.mlir.constant(2 : index) : i64
          %17 = llvm.mlir.constant(1 : index) : i64
          %18 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %19 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %20 = llvm.mlir.constant(64 : index) : i64
          %21 = llvm.mlir.constant(8 : index) : i64
          %22 = llvm.mlir.constant(32 : index) : i64
          %23 = llvm.mlir.constant(0 : index) : i64
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.load %25 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %10 ["align"(%26, %20 : !llvm.ptr, i64)] : i1
          %27 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %28 = llvm.extractvalue %27[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.getelementptr %28[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %10 ["align"(%30, %20 : !llvm.ptr, i64)] : i1
          %31 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %32 = llvm.extractvalue %31[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %33 = llvm.getelementptr %32[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %34 = llvm.load %33 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %10 ["align"(%34, %20 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%23 : i64)
        ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb4
          %36 = llvm.icmp "slt" %35, %20 : i64
          llvm.cond_br %36, ^bb2(%23, %19 : i64, vector<8xf32>), ^bb5
        ^bb2(%37: i64, %38: vector<8xf32>):  // 2 preds: ^bb1, ^bb3
          %39 = llvm.icmp "slt" %37, %22 : i64
          llvm.cond_br %39, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %40 = llvm.mul %35, %22 : i64
          %41 = llvm.add %40, %37 : i64
          %42 = llvm.getelementptr %26[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %43 = llvm.load %42 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %44 = llvm.add %35, %17 : i64
          %45 = llvm.mul %44, %22 : i64
          %46 = llvm.add %45, %37 : i64
          %47 = llvm.getelementptr %26[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %48 = llvm.load %47 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %49 = llvm.add %35, %16 : i64
          %50 = llvm.mul %49, %22 : i64
          %51 = llvm.add %50, %37 : i64
          %52 = llvm.getelementptr %26[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %54 = llvm.add %35, %15 : i64
          %55 = llvm.mul %54, %22 : i64
          %56 = llvm.add %55, %37 : i64
          %57 = llvm.getelementptr %26[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %59 = llvm.add %35, %14 : i64
          %60 = llvm.mul %59, %22 : i64
          %61 = llvm.add %60, %37 : i64
          %62 = llvm.getelementptr %26[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %63 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %64 = llvm.add %35, %13 : i64
          %65 = llvm.mul %64, %22 : i64
          %66 = llvm.add %65, %37 : i64
          %67 = llvm.getelementptr %26[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %68 = llvm.load %67 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %69 = llvm.add %35, %12 : i64
          %70 = llvm.mul %69, %22 : i64
          %71 = llvm.add %70, %37 : i64
          %72 = llvm.getelementptr %26[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %74 = llvm.add %35, %11 : i64
          %75 = llvm.mul %74, %22 : i64
          %76 = llvm.add %75, %37 : i64
          %77 = llvm.getelementptr %26[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %79 = llvm.getelementptr %30[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %80 = llvm.load %79 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %81 = llvm.fadd %43, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %82 = llvm.fadd %48, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %83 = llvm.fadd %53, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %84 = llvm.fadd %58, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %85 = llvm.fadd %63, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %86 = llvm.fadd %68, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %87 = llvm.fadd %73, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %88 = llvm.fadd %78, %80 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %89 = llvm.extractvalue %18[0] : !llvm.array<8 x vector<8xf32>> 
          %90 = llvm.fcmp "ugt" %81, %89 : vector<8xf32>
          %91 = llvm.extractvalue %18[1] : !llvm.array<8 x vector<8xf32>> 
          %92 = llvm.fcmp "ugt" %82, %91 : vector<8xf32>
          %93 = llvm.extractvalue %18[2] : !llvm.array<8 x vector<8xf32>> 
          %94 = llvm.fcmp "ugt" %83, %93 : vector<8xf32>
          %95 = llvm.extractvalue %18[3] : !llvm.array<8 x vector<8xf32>> 
          %96 = llvm.fcmp "ugt" %84, %95 : vector<8xf32>
          %97 = llvm.extractvalue %18[4] : !llvm.array<8 x vector<8xf32>> 
          %98 = llvm.fcmp "ugt" %85, %97 : vector<8xf32>
          %99 = llvm.extractvalue %18[5] : !llvm.array<8 x vector<8xf32>> 
          %100 = llvm.fcmp "ugt" %86, %99 : vector<8xf32>
          %101 = llvm.extractvalue %18[6] : !llvm.array<8 x vector<8xf32>> 
          %102 = llvm.fcmp "ugt" %87, %101 : vector<8xf32>
          %103 = llvm.extractvalue %18[7] : !llvm.array<8 x vector<8xf32>> 
          %104 = llvm.fcmp "ugt" %88, %103 : vector<8xf32>
          %105 = llvm.select %90, %81, %89 : vector<8xi1>, vector<8xf32>
          %106 = llvm.select %92, %82, %91 : vector<8xi1>, vector<8xf32>
          %107 = llvm.select %94, %83, %93 : vector<8xi1>, vector<8xf32>
          %108 = llvm.select %96, %84, %95 : vector<8xi1>, vector<8xf32>
          %109 = llvm.select %98, %85, %97 : vector<8xi1>, vector<8xf32>
          %110 = llvm.select %100, %86, %99 : vector<8xi1>, vector<8xf32>
          %111 = llvm.select %102, %87, %101 : vector<8xi1>, vector<8xf32>
          %112 = llvm.select %104, %88, %103 : vector<8xi1>, vector<8xf32>
          %113 = llvm.fcmp "uno" %89, %89 : vector<8xf32>
          %114 = llvm.fcmp "uno" %91, %91 : vector<8xf32>
          %115 = llvm.fcmp "uno" %93, %93 : vector<8xf32>
          %116 = llvm.fcmp "uno" %95, %95 : vector<8xf32>
          %117 = llvm.fcmp "uno" %97, %97 : vector<8xf32>
          %118 = llvm.fcmp "uno" %99, %99 : vector<8xf32>
          %119 = llvm.fcmp "uno" %101, %101 : vector<8xf32>
          %120 = llvm.fcmp "uno" %103, %103 : vector<8xf32>
          %121 = llvm.select %113, %89, %105 : vector<8xi1>, vector<8xf32>
          %122 = llvm.select %114, %91, %106 : vector<8xi1>, vector<8xf32>
          %123 = llvm.select %115, %93, %107 : vector<8xi1>, vector<8xf32>
          %124 = llvm.select %116, %95, %108 : vector<8xi1>, vector<8xf32>
          %125 = llvm.select %117, %97, %109 : vector<8xi1>, vector<8xf32>
          %126 = llvm.select %118, %99, %110 : vector<8xi1>, vector<8xf32>
          %127 = llvm.select %119, %101, %111 : vector<8xi1>, vector<8xf32>
          %128 = llvm.select %120, %103, %112 : vector<8xi1>, vector<8xf32>
          %129 = llvm.extractelement %38[%9 : i64] : vector<8xf32>
          %130 = "llvm.intr.vector.reduce.fadd"(%129, %121) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %131 = llvm.extractelement %38[%8 : i64] : vector<8xf32>
          %132 = "llvm.intr.vector.reduce.fadd"(%131, %122) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %133 = llvm.extractelement %38[%7 : i64] : vector<8xf32>
          %134 = "llvm.intr.vector.reduce.fadd"(%133, %123) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %135 = llvm.extractelement %38[%6 : i64] : vector<8xf32>
          %136 = "llvm.intr.vector.reduce.fadd"(%135, %124) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %137 = llvm.extractelement %38[%5 : i64] : vector<8xf32>
          %138 = "llvm.intr.vector.reduce.fadd"(%137, %125) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %139 = llvm.extractelement %38[%4 : i64] : vector<8xf32>
          %140 = "llvm.intr.vector.reduce.fadd"(%139, %126) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %141 = llvm.extractelement %38[%3 : i64] : vector<8xf32>
          %142 = "llvm.intr.vector.reduce.fadd"(%141, %127) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %143 = llvm.extractelement %38[%2 : i64] : vector<8xf32>
          %144 = "llvm.intr.vector.reduce.fadd"(%143, %128) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %145 = llvm.insertelement %130, %1[%9 : i64] : vector<8xf32>
          %146 = llvm.insertelement %132, %145[%8 : i64] : vector<8xf32>
          %147 = llvm.insertelement %134, %146[%7 : i64] : vector<8xf32>
          %148 = llvm.insertelement %136, %147[%6 : i64] : vector<8xf32>
          %149 = llvm.insertelement %138, %148[%5 : i64] : vector<8xf32>
          %150 = llvm.insertelement %140, %149[%4 : i64] : vector<8xf32>
          %151 = llvm.insertelement %142, %150[%3 : i64] : vector<8xf32>
          %152 = llvm.insertelement %144, %151[%2 : i64] : vector<8xf32>
          %153 = llvm.add %37, %21 : i64
          llvm.br ^bb2(%153, %152 : i64, vector<8xf32>)
        ^bb4:  // pred: ^bb2
          %154 = llvm.getelementptr %34[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %38, %154 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %155 = llvm.add %35, %21 : i64
          llvm.br ^bb1(%155 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>, %input2: tensor<32xf32>) -> (%output0: tensor<64xf32>)"}} {
    %c256 = arith.constant 256 : index
    %c0 = arith.constant 0 : index
    %c128 = arith.constant 128 : index
    %c8192 = arith.constant 8192 : index
    %c16384 = arith.constant 16384 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c64, %c64]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<64x64xf32> in !stream.resource<external>{%c16384}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c64, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<64x32xf32> in !stream.resource<external>{%c8192}
    hal.buffer_view.assert<%arg2 : !hal.buffer_view> message("input2") shape([%c32]) type(%element_type_f32) encoding(%dense_row_major)
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg2 : !hal.buffer_view -> tensor<32xf32> in !stream.resource<external>{%c128}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c256} => !stream.timepoint
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c8192} => !stream.timepoint
    %3 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %4 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%3) => with(%0 as %arg3: !stream.resource<external>{%c16384}, %1 as %arg4: !stream.resource<external>{%c8192}, %2 as %arg5: !stream.resource<external>{%c128}, %result as %arg6: !stream.resource<external>{%c256}, %result_0 as %arg7: !stream.resource<transient>{%c8192}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_64x32x64_f32 {
        ro %arg3[%c0 for %c16384] : !stream.resource<external>{%c16384},
        ro %arg4[%c0 for %c8192] : !stream.resource<external>{%c8192},
        wo %arg7[%c0 for %c8192] : !stream.resource<transient>{%c8192}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_64x32_f32 {
        ro %arg7[%c0 for %c8192] : !stream.resource<transient>{%c8192},
        ro %arg5[%c0 for %c128] : !stream.resource<external>{%c128},
        wo %arg6[%c0 for %c256] : !stream.resource<external>{%c256}
      }
    } => !stream.timepoint
    %5 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%4) => %result_0 : !stream.resource<transient>{%c8192} => !stream.timepoint
    %6 = stream.timepoint.await %5 => %result : !stream.resource<external>{%c256}
    %7 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %6 : tensor<64xf32> in !stream.resource<external>{%c256} -> !hal.buffer_view
    util.return %7 : !hal.buffer_view
  }
}
