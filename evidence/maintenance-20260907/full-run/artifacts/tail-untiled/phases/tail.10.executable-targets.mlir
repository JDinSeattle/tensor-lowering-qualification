#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @matmul_dispatch_0_matmul_7x17x33_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_matmul_7x17x33_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<1xf32>
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(33 : index) : i64
          %6 = llvm.mlir.constant(6 : index) : i64
          %7 = llvm.mlir.constant(5 : index) : i64
          %8 = llvm.mlir.constant(4 : index) : i64
          %9 = llvm.mlir.constant(3 : index) : i64
          %10 = llvm.mlir.constant(2 : index) : i64
          %11 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %12 = llvm.mlir.constant(32 : index) : i64
          %13 = llvm.mlir.constant(1 : index) : i64
          %14 = llvm.mlir.constant(17 : index) : i64
          %15 = llvm.mlir.constant(7 : index) : i64
          %16 = llvm.mlir.constant(8 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %19 = llvm.extractvalue %18[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %20 = llvm.load %19 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
          %21 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %22 = llvm.extractvalue %21[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %23 = llvm.getelementptr %22[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %24 = llvm.load %23 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
          %25 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %26 = llvm.extractvalue %25[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.getelementptr %26[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%28, %3 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%17 : i64)
        ^bb1(%29: i64):  // 2 preds: ^bb0, ^bb6
          %30 = llvm.icmp "slt" %29, %15 : i64
          llvm.cond_br %30, ^bb2(%17 : i64), ^bb7
        ^bb2(%31: i64):  // 2 preds: ^bb1, ^bb5
          %32 = llvm.icmp "slt" %31, %14 : i64
          llvm.cond_br %32, ^bb3(%17, %11 : i64, vector<1xf32>), ^bb6
        ^bb3(%33: i64, %34: vector<1xf32>):  // 2 preds: ^bb2, ^bb4
          %35 = llvm.icmp "slt" %33, %12 : i64
          llvm.cond_br %35, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %36 = llvm.mul %33, %14 : i64
          %37 = llvm.add %36, %31 : i64
          %38 = llvm.getelementptr %24[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %39 = llvm.load %38 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %40 = llvm.add %33, %13 : i64
          %41 = llvm.mul %40, %14 : i64
          %42 = llvm.add %41, %31 : i64
          %43 = llvm.getelementptr %24[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %44 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %45 = llvm.add %33, %10 : i64
          %46 = llvm.mul %45, %14 : i64
          %47 = llvm.add %46, %31 : i64
          %48 = llvm.getelementptr %24[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %49 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %50 = llvm.add %33, %9 : i64
          %51 = llvm.mul %50, %14 : i64
          %52 = llvm.add %51, %31 : i64
          %53 = llvm.getelementptr %24[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %54 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %55 = llvm.add %33, %8 : i64
          %56 = llvm.mul %55, %14 : i64
          %57 = llvm.add %56, %31 : i64
          %58 = llvm.getelementptr %24[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %59 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %60 = llvm.add %33, %7 : i64
          %61 = llvm.mul %60, %14 : i64
          %62 = llvm.add %61, %31 : i64
          %63 = llvm.getelementptr %24[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %65 = llvm.add %33, %6 : i64
          %66 = llvm.mul %65, %14 : i64
          %67 = llvm.add %66, %31 : i64
          %68 = llvm.getelementptr %24[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %69 = llvm.load %68 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %70 = llvm.add %33, %15 : i64
          %71 = llvm.mul %70, %14 : i64
          %72 = llvm.add %71, %31 : i64
          %73 = llvm.getelementptr %24[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %74 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %75 = llvm.mul %29, %5 overflow<nsw, nuw> : i64
          %76 = llvm.add %75, %33 overflow<nsw, nuw> : i64
          %77 = llvm.getelementptr inbounds|nuw %20[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %78 = llvm.load %77 : !llvm.ptr -> f32
          %79 = llvm.insertelement %78, %2[%1 : i32] : vector<1xf32>
          %80 = llvm.intr.fmuladd(%39, %79, %34) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %81 = llvm.add %75, %40 overflow<nsw, nuw> : i64
          %82 = llvm.getelementptr inbounds|nuw %20[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %83 = llvm.load %82 : !llvm.ptr -> f32
          %84 = llvm.insertelement %83, %2[%1 : i32] : vector<1xf32>
          %85 = llvm.intr.fmuladd(%44, %84, %80) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %86 = llvm.add %75, %45 overflow<nsw, nuw> : i64
          %87 = llvm.getelementptr inbounds|nuw %20[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %88 = llvm.load %87 : !llvm.ptr -> f32
          %89 = llvm.insertelement %88, %2[%1 : i32] : vector<1xf32>
          %90 = llvm.intr.fmuladd(%49, %89, %85) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %91 = llvm.add %75, %50 overflow<nsw, nuw> : i64
          %92 = llvm.getelementptr inbounds|nuw %20[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 : !llvm.ptr -> f32
          %94 = llvm.insertelement %93, %2[%1 : i32] : vector<1xf32>
          %95 = llvm.intr.fmuladd(%54, %94, %90) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %96 = llvm.add %75, %55 overflow<nsw, nuw> : i64
          %97 = llvm.getelementptr inbounds|nuw %20[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %98 = llvm.load %97 : !llvm.ptr -> f32
          %99 = llvm.insertelement %98, %2[%1 : i32] : vector<1xf32>
          %100 = llvm.intr.fmuladd(%59, %99, %95) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %101 = llvm.add %75, %60 overflow<nsw, nuw> : i64
          %102 = llvm.getelementptr inbounds|nuw %20[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %103 = llvm.load %102 : !llvm.ptr -> f32
          %104 = llvm.insertelement %103, %2[%1 : i32] : vector<1xf32>
          %105 = llvm.intr.fmuladd(%64, %104, %100) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %106 = llvm.add %75, %65 overflow<nsw, nuw> : i64
          %107 = llvm.getelementptr inbounds|nuw %20[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 : !llvm.ptr -> f32
          %109 = llvm.insertelement %108, %2[%1 : i32] : vector<1xf32>
          %110 = llvm.intr.fmuladd(%69, %109, %105) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %111 = llvm.add %75, %70 overflow<nsw, nuw> : i64
          %112 = llvm.getelementptr inbounds|nuw %20[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %113 = llvm.load %112 : !llvm.ptr -> f32
          %114 = llvm.insertelement %113, %2[%1 : i32] : vector<1xf32>
          %115 = llvm.intr.fmuladd(%74, %114, %110) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %116 = llvm.add %33, %16 : i64
          llvm.br ^bb3(%116, %115 : i64, vector<1xf32>)
        ^bb5:  // pred: ^bb3
          %117 = llvm.mul %12, %14 : i64
          %118 = llvm.add %117, %31 : i64
          %119 = llvm.getelementptr %24[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %121 = llvm.mul %29, %5 overflow<nsw, nuw> : i64
          %122 = llvm.add %121, %12 overflow<nsw, nuw> : i64
          %123 = llvm.getelementptr inbounds|nuw %20[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 : !llvm.ptr -> f32
          %125 = llvm.insertelement %124, %2[%1 : i32] : vector<1xf32>
          %126 = llvm.intr.fmuladd(%120, %125, %34) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %127 = llvm.extractelement %126[%0 : i64] : vector<1xf32>
          %128 = llvm.mul %29, %14 overflow<nsw, nuw> : i64
          %129 = llvm.add %128, %31 overflow<nsw, nuw> : i64
          %130 = llvm.getelementptr inbounds|nuw %28[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %127, %130 : f32, !llvm.ptr
          %131 = llvm.add %31, %13 : i64
          llvm.br ^bb2(%131 : i64)
        ^bb6:  // pred: ^bb2
          %132 = llvm.add %29, %13 : i64
          llvm.br ^bb1(%132 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>) -> (%output0: tensor<7x17xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c476 = arith.constant 476 : index
    %c2244 = arith.constant 2244 : index
    %c924 = arith.constant 924 : index
    %c17 = arith.constant 17 : index
    %c33 = arith.constant 33 : index
    %c7 = arith.constant 7 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c7, %c33]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<7x33xf32> in !stream.resource<external>{%c924}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c33, %c17]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<33x17xf32> in !stream.resource<external>{%c2244}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c476} => !stream.timepoint
    %2 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg2: !stream.resource<external>{%c924}, %1 as %arg3: !stream.resource<external>{%c2244}, %result as %arg4: !stream.resource<external>{%c476}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_7x17x33_f32 {
        ro %arg2[%c0 for %c924] : !stream.resource<external>{%c924},
        ro %arg3[%c0 for %c2244] : !stream.resource<external>{%c2244},
        wo %arg4[%c0 for %c476] : !stream.resource<external>{%c476}
      }
    } => !stream.timepoint
    %3 = stream.timepoint.await %2 => %result : !stream.resource<external>{%c476}
    %4 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %3 : tensor<7x17xf32> in !stream.resource<external>{%c476} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_7x17_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @bias_relu_dispatch_0_elementwise_7x17_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi32>
          %2 = llvm.mlir.constant(64 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.poison : vector<8xf32>
          %5 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %6 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %7 = llvm.mlir.constant(8 : index) : i64
          %8 = llvm.mlir.constant(1 : index) : i64
          %9 = llvm.mlir.constant(17 : index) : i64
          %10 = llvm.mlir.constant(7 : index) : i64
          %11 = llvm.mlir.constant(0 : index) : i64
          %12 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %13 = llvm.extractvalue %12[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %14 = llvm.load %13 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%14, %2 : !llvm.ptr, i64)] : i1
          %15 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %16 = llvm.extractvalue %15[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %17 = llvm.getelementptr %16[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %18 = llvm.load %17 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%18, %2 : !llvm.ptr, i64)] : i1
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.getelementptr %20[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%22, %2 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%11 : i64)
        ^bb1(%23: i64):  // 2 preds: ^bb0, ^bb4
          %24 = llvm.icmp "slt" %23, %10 : i64
          llvm.cond_br %24, ^bb2(%11 : i64), ^bb5
        ^bb2(%25: i64):  // 2 preds: ^bb1, ^bb3
          %26 = llvm.icmp "slt" %25, %9 : i64
          llvm.cond_br %26, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %27 = llvm.sub %9, %25 : i64
          %28 = llvm.icmp "slt" %27, %7 : i64
          %29 = llvm.select %28, %27, %7 : i1, i64
          %30 = llvm.trunc %29 : i64 to i32
          %31 = llvm.insertelement %30, %1[%0 : i32] : vector<8xi32>
          %32 = llvm.shufflevector %31, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %33 = llvm.icmp "sgt" %32, %5 : vector<8xi32>
          %34 = llvm.mul %23, %9 : i64
          %35 = llvm.add %34, %25 : i64
          %36 = llvm.getelementptr %14[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %37 = llvm.intr.masked.load %36, %33, %4 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %38 = llvm.getelementptr %18[%25] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %39 = llvm.intr.masked.load %38, %33, %4 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %40 = llvm.fadd %37, %39 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %41 = llvm.fcmp "ugt" %40, %6 : vector<8xf32>
          %42 = llvm.select %41, %40, %6 : vector<8xi1>, vector<8xf32>
          %43 = llvm.fcmp "uno" %6, %6 : vector<8xf32>
          %44 = llvm.select %43, %6, %42 : vector<8xi1>, vector<8xf32>
          %45 = llvm.getelementptr %22[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %44, %45, %33 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %46 = llvm.add %25, %7 : i64
          llvm.br ^bb2(%46 : i64)
        ^bb4:  // pred: ^bb2
          %47 = llvm.add %23, %8 : i64
          llvm.br ^bb1(%47 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<7x17xf32>, %input1: tensor<17xf32>) -> (%output0: tensor<7x17xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c68 = arith.constant 68 : index
    %c476 = arith.constant 476 : index
    %c17 = arith.constant 17 : index
    %c7 = arith.constant 7 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c7, %c17]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<7x17xf32> in !stream.resource<external>{%c476}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c17]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<17xf32> in !stream.resource<external>{%c68}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c476} => !stream.timepoint
    %2 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg2: !stream.resource<external>{%c476}, %1 as %arg3: !stream.resource<external>{%c68}, %result as %arg4: !stream.resource<external>{%c476}) {
      stream.cmd.dispatch @bias_relu_dispatch_0::@embedded_elf_x86_64::@bias_relu_dispatch_0_elementwise_7x17_f32 {
        ro %arg2[%c0 for %c476] : !stream.resource<external>{%c476},
        ro %arg3[%c0 for %c68] : !stream.resource<external>{%c68},
        wo %arg4[%c0 for %c476] : !stream.resource<external>{%c476}
      }
    } => !stream.timepoint
    %3 = stream.timepoint.await %2 => %result : !stream.resource<external>{%c476}
    %4 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %3 : tensor<7x17xf32> in !stream.resource<external>{%c476} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  hal.executable private @row_sum_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @row_sum_dispatch_0_reduction_7x17_f32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @row_sum_dispatch_0_reduction_7x17_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.poison : vector<1xf32>
          %1 = llvm.mlir.constant(8 : i32) : i32
          %2 = llvm.mlir.constant(0 : i64) : i64
          %3 = llvm.mlir.constant(0 : i32) : i32
          %4 = llvm.mlir.poison : vector<8xi32>
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.poison : vector<8xf32>
          %8 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %9 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %10 = llvm.mlir.constant(1 : index) : i64
          %11 = llvm.mlir.constant(7 : index) : i64
          %12 = llvm.mlir.constant(8 : index) : i64
          %13 = llvm.mlir.constant(17 : index) : i64
          %14 = llvm.mlir.constant(0 : index) : i64
          %15 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %16 = llvm.extractvalue %15[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %17 = llvm.load %16 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%17, %5 : !llvm.ptr, i64)] : i1
          %18 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %19 = llvm.extractvalue %18[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %20 = llvm.getelementptr %19[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %21 = llvm.load %20 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%21, %5 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%14 : i64)
        ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb4
          %23 = llvm.icmp "slt" %22, %11 : i64
          llvm.cond_br %23, ^bb2(%14, %9 : i64, vector<1xf32>), ^bb5
        ^bb2(%24: i64, %25: vector<1xf32>):  // 2 preds: ^bb1, ^bb3
          %26 = llvm.icmp "slt" %24, %13 : i64
          llvm.cond_br %26, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %27 = llvm.sub %13, %24 : i64
          %28 = llvm.icmp "slt" %27, %12 : i64
          %29 = llvm.select %28, %27, %12 : i1, i64
          %30 = llvm.trunc %29 : i64 to i32
          %31 = llvm.insertelement %30, %4[%3 : i32] : vector<8xi32>
          %32 = llvm.shufflevector %31, %4 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %33 = llvm.icmp "sgt" %32, %8 : vector<8xi32>
          %34 = llvm.mul %22, %13 : i64
          %35 = llvm.add %34, %24 : i64
          %36 = llvm.getelementptr %17[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %37 = llvm.intr.masked.load %36, %33, %7 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %38 = llvm.extractelement %25[%2 : i64] : vector<1xf32>
          %39 = "llvm.intr.vp.reduce.fadd"(%38, %37, %33, %1) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %40 = llvm.insertelement %39, %0[%3 : i32] : vector<1xf32>
          %41 = llvm.add %24, %12 : i64
          llvm.br ^bb2(%41, %40 : i64, vector<1xf32>)
        ^bb4:  // pred: ^bb2
          %42 = llvm.extractelement %25[%2 : i64] : vector<1xf32>
          %43 = llvm.getelementptr inbounds|nuw %21[%22] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %42, %43 : f32, !llvm.ptr
          %44 = llvm.add %22, %10 : i64
          llvm.br ^bb1(%44 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %3 : i32
        }
      }
    }
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<7x17xf32>) -> (%output0: tensor<7xf32>)"}} {
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c476 = arith.constant 476 : index
    %c17 = arith.constant 17 : index
    %c7 = arith.constant 7 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c7, %c17]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<7x17xf32> in !stream.resource<external>{%c476}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c28} => !stream.timepoint
    %1 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg1: !stream.resource<external>{%c476}, %result as %arg2: !stream.resource<external>{%c28}) {
      stream.cmd.dispatch @row_sum_dispatch_0::@embedded_elf_x86_64::@row_sum_dispatch_0_reduction_7x17_f32 {
        ro %arg1[%c0 for %c476] : !stream.resource<external>{%c476},
        wo %arg2[%c0 for %c28] : !stream.resource<external>{%c28}
      }
    } => !stream.timepoint
    %2 = stream.timepoint.await %1 => %result : !stream.resource<external>{%c28}
    %3 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %2 : tensor<7xf32> in !stream.resource<external>{%c28} -> !hal.buffer_view
    util.return %3 : !hal.buffer_view
  }
  hal.executable private @fragment_dispatch_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @fragment_dispatch_1_reduction_7x17_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @fragment_dispatch_1_reduction_7x17_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.poison : vector<1xf32>
          %1 = llvm.mlir.constant(8 : i32) : i32
          %2 = llvm.mlir.constant(0 : i64) : i64
          %3 = llvm.mlir.constant(0 : i32) : i32
          %4 = llvm.mlir.poison : vector<8xi32>
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.poison : vector<8xf32>
          %8 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %9 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %10 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %11 = llvm.mlir.constant(1 : index) : i64
          %12 = llvm.mlir.constant(7 : index) : i64
          %13 = llvm.mlir.constant(8 : index) : i64
          %14 = llvm.mlir.constant(17 : index) : i64
          %15 = llvm.mlir.constant(0 : index) : i64
          %16 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %17 = llvm.extractvalue %16[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %18 = llvm.load %17 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%18, %5 : !llvm.ptr, i64)] : i1
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.getelementptr %20[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%22, %5 : !llvm.ptr, i64)] : i1
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.getelementptr %24[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %26 = llvm.load %25 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%15 : i64)
        ^bb1(%27: i64):  // 2 preds: ^bb0, ^bb4
          %28 = llvm.icmp "slt" %27, %12 : i64
          llvm.cond_br %28, ^bb2(%15, %10 : i64, vector<1xf32>), ^bb5
        ^bb2(%29: i64, %30: vector<1xf32>):  // 2 preds: ^bb1, ^bb3
          %31 = llvm.icmp "slt" %29, %14 : i64
          llvm.cond_br %31, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %32 = llvm.sub %14, %29 : i64
          %33 = llvm.icmp "slt" %32, %13 : i64
          %34 = llvm.select %33, %32, %13 : i1, i64
          %35 = llvm.trunc %34 : i64 to i32
          %36 = llvm.insertelement %35, %4[%3 : i32] : vector<8xi32>
          %37 = llvm.shufflevector %36, %4 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %38 = llvm.icmp "sgt" %37, %8 : vector<8xi32>
          %39 = llvm.mul %27, %14 : i64
          %40 = llvm.add %39, %29 : i64
          %41 = llvm.getelementptr %18[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %42 = llvm.intr.masked.load %41, %38, %7 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %43 = llvm.getelementptr %22[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %44 = llvm.intr.masked.load %43, %38, %7 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %45 = llvm.fadd %42, %44 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %46 = llvm.fcmp "ugt" %45, %9 : vector<8xf32>
          %47 = llvm.select %46, %45, %9 : vector<8xi1>, vector<8xf32>
          %48 = llvm.fcmp "uno" %9, %9 : vector<8xf32>
          %49 = llvm.select %48, %9, %47 : vector<8xi1>, vector<8xf32>
          %50 = llvm.extractelement %30[%2 : i64] : vector<1xf32>
          %51 = "llvm.intr.vp.reduce.fadd"(%50, %49, %38, %1) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %52 = llvm.insertelement %51, %0[%3 : i32] : vector<1xf32>
          %53 = llvm.add %29, %13 : i64
          llvm.br ^bb2(%53, %52 : i64, vector<1xf32>)
        ^bb4:  // pred: ^bb2
          %54 = llvm.extractelement %30[%2 : i64] : vector<1xf32>
          %55 = llvm.getelementptr inbounds|nuw %26[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %54, %55 : f32, !llvm.ptr
          %56 = llvm.add %27, %11 : i64
          llvm.br ^bb1(%56 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %3 : i32
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>, %input2: tensor<17xf32>) -> (%output0: tensor<7xf32>)"}} {
    %c512 = arith.constant 512 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %c68 = arith.constant 68 : index
    %c2244 = arith.constant 2244 : index
    %c924 = arith.constant 924 : index
    %c17 = arith.constant 17 : index
    %c33 = arith.constant 33 : index
    %c7 = arith.constant 7 : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c7, %c33]) type(%element_type_f32) encoding(%dense_row_major)
    %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<7x33xf32> in !stream.resource<external>{%c924}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c33, %c17]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<33x17xf32> in !stream.resource<external>{%c2244}
    hal.buffer_view.assert<%arg2 : !hal.buffer_view> message("input2") shape([%c17]) type(%element_type_f32) encoding(%dense_row_major)
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg2 : !hal.buffer_view -> tensor<17xf32> in !stream.resource<external>{%c68}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%c28} => !stream.timepoint
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c512} => !stream.timepoint
    %3 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %4 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%3) => with(%0 as %arg3: !stream.resource<external>{%c924}, %1 as %arg4: !stream.resource<external>{%c2244}, %2 as %arg5: !stream.resource<external>{%c68}, %result as %arg6: !stream.resource<external>{%c28}, %result_0 as %arg7: !stream.resource<transient>{%c512}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_7x17x33_f32 {
        ro %arg3[%c0 for %c924] : !stream.resource<external>{%c924},
        ro %arg4[%c0 for %c2244] : !stream.resource<external>{%c2244},
        wo %arg7[%c0 for %c512] : !stream.resource<transient>{%c512}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_7x17_f32 {
        ro %arg7[%c0 for %c512] : !stream.resource<transient>{%c512},
        ro %arg5[%c0 for %c68] : !stream.resource<external>{%c68},
        wo %arg6[%c0 for %c28] : !stream.resource<external>{%c28}
      }
    } => !stream.timepoint
    %5 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%4) => %result_0 : !stream.resource<transient>{%c512} => !stream.timepoint
    %6 = stream.timepoint.await %5 => %result : !stream.resource<external>{%c28}
    %7 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %6 : tensor<7xf32> in !stream.resource<external>{%c28} -> !hal.buffer_view
    util.return %7 : !hal.buffer_view
  }
}
