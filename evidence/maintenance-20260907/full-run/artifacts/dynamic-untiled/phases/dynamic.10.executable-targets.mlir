#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @matmul_dispatch_0_matmul_Dx16x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @matmul_dispatch_0_matmul_Dx16x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
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
          %12 = llvm.mlir.constant(16 : index) : i64
          %13 = llvm.mlir.constant(64 : index) : i64
          %14 = llvm.mlir.constant(8 : index) : i64
          %15 = llvm.mlir.constant(32 : index) : i64
          %16 = llvm.mlir.constant(32 : i64) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %19 = llvm.extractvalue %18[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %20 = llvm.load %19 : !llvm.ptr -> i32
          %21 = llvm.getelementptr %19[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %22 = llvm.load %21 : !llvm.ptr -> i32
          %23 = llvm.zext %20 : i32 to i64
          %24 = llvm.zext %22 : i32 to i64
          %25 = llvm.shl %24, %16 : i64
          %26 = llvm.or %23, %25 : i64
          %27 = llvm.extractvalue %18[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%29, %13 : !llvm.ptr, i64)] : i1
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%32, %13 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.getelementptr %34[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %36 = llvm.load %35 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%36, %13 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%17 : i64)
        ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb10
          %38 = llvm.icmp "slt" %37, %26 : i64
          llvm.cond_br %38, ^bb2, ^bb11
        ^bb2:  // pred: ^bb1
          %39 = llvm.sub %26, %37 : i64
          %40 = llvm.icmp "slt" %39, %13 : i64
          %41 = llvm.select %40, %39, %13 : i1, i64
          llvm.br ^bb3(%17 : i64)
        ^bb3(%42: i64):  // 2 preds: ^bb2, ^bb9
          %43 = llvm.icmp "slt" %42, %41 : i64
          llvm.cond_br %43, ^bb4, ^bb10
        ^bb4:  // pred: ^bb3
          %44 = llvm.add %42, %37 : i64
          llvm.br ^bb5(%17 : i64)
        ^bb5(%45: i64):  // 2 preds: ^bb4, ^bb8
          %46 = llvm.icmp "slt" %45, %12 : i64
          llvm.cond_br %46, ^bb6(%17, %10 : i64, vector<1xf32>), ^bb9
        ^bb6(%47: i64, %48: vector<1xf32>):  // 2 preds: ^bb5, ^bb7
          %49 = llvm.icmp "slt" %47, %15 : i64
          llvm.cond_br %49, ^bb7, ^bb8
        ^bb7:  // pred: ^bb6
          %50 = llvm.mul %47, %12 : i64
          %51 = llvm.add %50, %45 : i64
          %52 = llvm.getelementptr %29[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %54 = llvm.add %47, %11 : i64
          %55 = llvm.mul %54, %12 : i64
          %56 = llvm.add %55, %45 : i64
          %57 = llvm.getelementptr %29[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %59 = llvm.add %47, %9 : i64
          %60 = llvm.mul %59, %12 : i64
          %61 = llvm.add %60, %45 : i64
          %62 = llvm.getelementptr %29[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %63 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %64 = llvm.add %47, %8 : i64
          %65 = llvm.mul %64, %12 : i64
          %66 = llvm.add %65, %45 : i64
          %67 = llvm.getelementptr %29[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %68 = llvm.load %67 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %69 = llvm.add %47, %7 : i64
          %70 = llvm.mul %69, %12 : i64
          %71 = llvm.add %70, %45 : i64
          %72 = llvm.getelementptr %29[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %74 = llvm.add %47, %6 : i64
          %75 = llvm.mul %74, %12 : i64
          %76 = llvm.add %75, %45 : i64
          %77 = llvm.getelementptr %29[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %79 = llvm.add %47, %5 : i64
          %80 = llvm.mul %79, %12 : i64
          %81 = llvm.add %80, %45 : i64
          %82 = llvm.getelementptr %29[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %84 = llvm.add %47, %4 : i64
          %85 = llvm.mul %84, %12 : i64
          %86 = llvm.add %85, %45 : i64
          %87 = llvm.getelementptr %29[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %88 = llvm.load %87 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %89 = llvm.mul %44, %15 overflow<nsw, nuw> : i64
          %90 = llvm.add %89, %47 overflow<nsw, nuw> : i64
          %91 = llvm.getelementptr inbounds|nuw %32[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 : !llvm.ptr -> f32
          %93 = llvm.insertelement %92, %2[%1 : i32] : vector<1xf32>
          %94 = llvm.intr.fmuladd(%53, %93, %48) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %95 = llvm.add %89, %54 overflow<nsw, nuw> : i64
          %96 = llvm.getelementptr inbounds|nuw %32[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 : !llvm.ptr -> f32
          %98 = llvm.insertelement %97, %2[%1 : i32] : vector<1xf32>
          %99 = llvm.intr.fmuladd(%58, %98, %94) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %100 = llvm.add %89, %59 overflow<nsw, nuw> : i64
          %101 = llvm.getelementptr inbounds|nuw %32[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 : !llvm.ptr -> f32
          %103 = llvm.insertelement %102, %2[%1 : i32] : vector<1xf32>
          %104 = llvm.intr.fmuladd(%63, %103, %99) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %105 = llvm.add %89, %64 overflow<nsw, nuw> : i64
          %106 = llvm.getelementptr inbounds|nuw %32[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.load %106 : !llvm.ptr -> f32
          %108 = llvm.insertelement %107, %2[%1 : i32] : vector<1xf32>
          %109 = llvm.intr.fmuladd(%68, %108, %104) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %110 = llvm.add %89, %69 overflow<nsw, nuw> : i64
          %111 = llvm.getelementptr inbounds|nuw %32[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.load %111 : !llvm.ptr -> f32
          %113 = llvm.insertelement %112, %2[%1 : i32] : vector<1xf32>
          %114 = llvm.intr.fmuladd(%73, %113, %109) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %115 = llvm.add %89, %74 overflow<nsw, nuw> : i64
          %116 = llvm.getelementptr inbounds|nuw %32[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 : !llvm.ptr -> f32
          %118 = llvm.insertelement %117, %2[%1 : i32] : vector<1xf32>
          %119 = llvm.intr.fmuladd(%78, %118, %114) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %120 = llvm.add %89, %79 overflow<nsw, nuw> : i64
          %121 = llvm.getelementptr inbounds|nuw %32[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 : !llvm.ptr -> f32
          %123 = llvm.insertelement %122, %2[%1 : i32] : vector<1xf32>
          %124 = llvm.intr.fmuladd(%83, %123, %119) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %125 = llvm.add %89, %84 overflow<nsw, nuw> : i64
          %126 = llvm.getelementptr inbounds|nuw %32[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %127 = llvm.load %126 : !llvm.ptr -> f32
          %128 = llvm.insertelement %127, %2[%1 : i32] : vector<1xf32>
          %129 = llvm.intr.fmuladd(%88, %128, %124) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %130 = llvm.add %47, %14 : i64
          llvm.br ^bb6(%130, %129 : i64, vector<1xf32>)
        ^bb8:  // pred: ^bb6
          %131 = llvm.extractelement %48[%0 : i64] : vector<1xf32>
          %132 = llvm.mul %44, %12 overflow<nsw, nuw> : i64
          %133 = llvm.add %132, %45 overflow<nsw, nuw> : i64
          %134 = llvm.getelementptr inbounds|nuw %36[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %131, %134 : f32, !llvm.ptr
          %135 = llvm.add %45, %11 : i64
          llvm.br ^bb5(%135 : i64)
        ^bb9:  // pred: ^bb5
          %136 = llvm.add %42, %11 : i64
          llvm.br ^bb3(%136 : i64)
        ^bb10:  // pred: ^bb3
          %137 = llvm.add %37, %13 : i64
          llvm.br ^bb1(%137 : i64)
        ^bb11:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%0, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = arith.muli %0, %c128 : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<?x32xf32>{%0} in !stream.resource<external>{%1}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %3 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<32x16xf32> in !stream.resource<external>{%c2048}
    %4 = arith.muli %0, %c64 : index
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%4} => !stream.timepoint
    %5 = arith.index_castui %0 : index to i64
    %6 = arith.index_castui %0 : index to i32
    %7 = arith.shrui %5, %c32_i64 : i64
    %8 = arith.trunci %7 : i64 to i32
    %9 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%2 as %arg2: !stream.resource<external>{%1}, %3 as %arg3: !stream.resource<external>{%c2048}, %result as %arg4: !stream.resource<external>{%4}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_Dx16x32_f32[%0](%6, %8 : i32, i32) {
        ro %arg2[%c0 for %1] : !stream.resource<external>{%1},
        ro %arg3[%c0 for %c2048] : !stream.resource<external>{%c2048},
        wo %arg4[%c0 for %4] : !stream.resource<external>{%4}
      }
    } => !stream.timepoint
    %10 = stream.timepoint.await %9 => %result : !stream.resource<external>{%4}
    %11 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %10 : tensor<?x16xf32>{%0} in !stream.resource<external>{%4} -> !hal.buffer_view
    util.return %11 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_Dx16_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @bias_relu_dispatch_0_elementwise_Dx16_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(64 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %4 = llvm.mlir.constant(8 : index) : i64
          %5 = llvm.mlir.constant(1 : index) : i64
          %6 = llvm.mlir.constant(16 : index) : i64
          %7 = llvm.mlir.constant(32 : i64) : i64
          %8 = llvm.mlir.constant(0 : index) : i64
          %9 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %10 = llvm.extractvalue %9[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %11 = llvm.load %10 : !llvm.ptr -> i32
          %12 = llvm.getelementptr %10[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %13 = llvm.load %12 : !llvm.ptr -> i32
          %14 = llvm.zext %11 : i32 to i64
          %15 = llvm.zext %13 : i32 to i64
          %16 = llvm.shl %15, %7 : i64
          %17 = llvm.or %14, %16 : i64
          %18 = llvm.extractvalue %9[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %19 = llvm.getelementptr %18[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %20 = llvm.load %19 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%20, %1 : !llvm.ptr, i64)] : i1
          %21 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %22 = llvm.extractvalue %21[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.getelementptr %25[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %27 = llvm.load %26 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%27, %1 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%8 : i64)
        ^bb1(%28: i64):  // 2 preds: ^bb0, ^bb4
          %29 = llvm.icmp "slt" %28, %17 : i64
          llvm.cond_br %29, ^bb2(%8 : i64), ^bb5
        ^bb2(%30: i64):  // 2 preds: ^bb1, ^bb3
          %31 = llvm.icmp "slt" %30, %6 : i64
          llvm.cond_br %31, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %32 = llvm.mul %28, %6 : i64
          %33 = llvm.add %32, %30 : i64
          %34 = llvm.getelementptr %23[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %35 = llvm.load %34 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %36 = llvm.getelementptr %20[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %37 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %38 = llvm.fadd %35, %37 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %39 = llvm.fcmp "ugt" %38, %3 : vector<8xf32>
          %40 = llvm.select %39, %38, %3 : vector<8xi1>, vector<8xf32>
          %41 = llvm.fcmp "uno" %3, %3 : vector<8xf32>
          %42 = llvm.select %41, %3, %40 : vector<8xi1>, vector<8xf32>
          %43 = llvm.getelementptr %27[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %42, %43 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %44 = llvm.add %30, %4 : i64
          llvm.br ^bb2(%44 : i64)
        ^bb4:  // pred: ^bb2
          %45 = llvm.add %28, %5 : i64
          llvm.br ^bb1(%45 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<?x16xf32>, %input1: tensor<16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%0, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = arith.muli %0, %c64 : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<?x16xf32>{%0} in !stream.resource<external>{%1}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c16]) type(%element_type_f32) encoding(%dense_row_major)
    %3 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<16xf32> in !stream.resource<external>{%c64}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%1} => !stream.timepoint
    %4 = arith.index_castui %0 : index to i64
    %5 = arith.index_castui %0 : index to i32
    %6 = arith.shrui %4, %c32_i64 : i64
    %7 = arith.trunci %6 : i64 to i32
    %8 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%2 as %arg2: !stream.resource<external>{%1}, %3 as %arg3: !stream.resource<external>{%c64}, %result as %arg4: !stream.resource<external>{%1}) {
      stream.cmd.dispatch @bias_relu_dispatch_0::@embedded_elf_x86_64::@bias_relu_dispatch_0_elementwise_Dx16_f32[%0](%5, %7 : i32, i32) {
        ro %arg2[%c0 for %1] : !stream.resource<external>{%1},
        ro %arg3[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg4[%c0 for %1] : !stream.resource<external>{%1}
      }
    } => !stream.timepoint
    %9 = stream.timepoint.await %8 => %result : !stream.resource<external>{%1}
    %10 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %9 : tensor<?x16xf32>{%0} in !stream.resource<external>{%1} -> !hal.buffer_view
    util.return %10 : !hal.buffer_view
  }
  hal.executable private @row_sum_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @row_sum_dispatch_0_reduction_Dx16_f32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @row_sum_dispatch_0_reduction_Dx16_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(7 : i64) : i64
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.constant(8 : i32) : i32
          %8 = llvm.mlir.constant(0 : i64) : i64
          %9 = llvm.mlir.constant(0 : i32) : i32
          %10 = llvm.mlir.poison : vector<8xi32>
          %11 = llvm.mlir.constant(64 : index) : i64
          %12 = llvm.mlir.constant(true) : i1
          %13 = llvm.mlir.constant(7 : index) : i64
          %14 = llvm.mlir.constant(6 : index) : i64
          %15 = llvm.mlir.constant(5 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(dense<false> : vector<8xi1>) : vector<8xi1>
          %21 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %22 = llvm.mlir.poison : vector<8xf32>
          %23 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %24 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %25 = llvm.mlir.constant(8 : index) : i64
          %26 = llvm.mlir.constant(16 : index) : i64
          %27 = llvm.mlir.constant(32 : i64) : i64
          %28 = llvm.mlir.constant(0 : index) : i64
          %29 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %30 = llvm.extractvalue %29[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> i32
          %32 = llvm.getelementptr %30[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %33 = llvm.load %32 : !llvm.ptr -> i32
          %34 = llvm.zext %31 : i32 to i64
          %35 = llvm.zext %33 : i32 to i64
          %36 = llvm.shl %35, %27 : i64
          %37 = llvm.or %34, %36 : i64
          %38 = llvm.extractvalue %29[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %39 = llvm.load %38 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
          %40 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %41 = llvm.extractvalue %40[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.getelementptr %41[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %12 ["align"(%43, %11 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%28 : i64)
        ^bb1(%44: i64):  // 2 preds: ^bb0, ^bb5
          %45 = llvm.icmp "slt" %44, %37 : i64
          llvm.cond_br %45, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %46 = llvm.sub %37, %44 : i64
          %47 = llvm.icmp "slt" %46, %25 : i64
          %48 = llvm.select %47, %46, %25 : i1, i64
          %49 = llvm.trunc %48 : i64 to i32
          %50 = llvm.insertelement %49, %10[%9 : i32] : vector<8xi32>
          %51 = llvm.shufflevector %50, %10 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %52 = llvm.icmp "sgt" %51, %23 : vector<8xi32>
          %53 = llvm.getelementptr %43[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %24, %53, %52 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %54 = llvm.icmp "sgt" %48, %28 : i64
          %55 = llvm.select %54, %21, %20 : i1, vector<8xi1>
          %56 = llvm.icmp "sgt" %48, %19 : i64
          %57 = llvm.select %56, %21, %20 : i1, vector<8xi1>
          %58 = llvm.icmp "sgt" %48, %18 : i64
          %59 = llvm.select %58, %21, %20 : i1, vector<8xi1>
          %60 = llvm.icmp "sgt" %48, %17 : i64
          %61 = llvm.select %60, %21, %20 : i1, vector<8xi1>
          %62 = llvm.icmp "sgt" %48, %16 : i64
          %63 = llvm.select %62, %21, %20 : i1, vector<8xi1>
          %64 = llvm.icmp "sgt" %48, %15 : i64
          %65 = llvm.select %64, %21, %20 : i1, vector<8xi1>
          %66 = llvm.icmp "sgt" %48, %14 : i64
          %67 = llvm.select %66, %21, %20 : i1, vector<8xi1>
          %68 = llvm.icmp "sgt" %48, %13 : i64
          %69 = llvm.select %68, %21, %20 : i1, vector<8xi1>
          %70 = llvm.intr.masked.load %53, %52, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          llvm.br ^bb3(%28, %70 : i64, vector<8xf32>)
        ^bb3(%71: i64, %72: vector<8xf32>):  // 2 preds: ^bb2, ^bb4
          %73 = llvm.icmp "slt" %71, %26 : i64
          llvm.cond_br %73, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %74 = llvm.mul %44, %26 : i64
          %75 = llvm.add %74, %71 : i64
          %76 = llvm.getelementptr %39[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.intr.masked.load %76, %55, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %78 = llvm.add %44, %19 : i64
          %79 = llvm.mul %78, %26 : i64
          %80 = llvm.add %79, %71 : i64
          %81 = llvm.getelementptr %39[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.intr.masked.load %81, %57, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %83 = llvm.add %44, %18 : i64
          %84 = llvm.mul %83, %26 : i64
          %85 = llvm.add %84, %71 : i64
          %86 = llvm.getelementptr %39[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %87 = llvm.intr.masked.load %86, %59, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %88 = llvm.add %44, %17 : i64
          %89 = llvm.mul %88, %26 : i64
          %90 = llvm.add %89, %71 : i64
          %91 = llvm.getelementptr %39[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.intr.masked.load %91, %61, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %93 = llvm.add %44, %16 : i64
          %94 = llvm.mul %93, %26 : i64
          %95 = llvm.add %94, %71 : i64
          %96 = llvm.getelementptr %39[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.intr.masked.load %96, %63, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %98 = llvm.add %44, %15 : i64
          %99 = llvm.mul %98, %26 : i64
          %100 = llvm.add %99, %71 : i64
          %101 = llvm.getelementptr %39[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.intr.masked.load %101, %65, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %103 = llvm.add %44, %14 : i64
          %104 = llvm.mul %103, %26 : i64
          %105 = llvm.add %104, %71 : i64
          %106 = llvm.getelementptr %39[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.intr.masked.load %106, %67, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %108 = llvm.add %44, %13 : i64
          %109 = llvm.mul %108, %26 : i64
          %110 = llvm.add %109, %71 : i64
          %111 = llvm.getelementptr %39[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.intr.masked.load %111, %69, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %113 = llvm.extractelement %72[%8 : i64] : vector<8xf32>
          %114 = "llvm.intr.vp.reduce.fadd"(%113, %77, %55, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %115 = llvm.extractelement %72[%6 : i64] : vector<8xf32>
          %116 = "llvm.intr.vp.reduce.fadd"(%115, %82, %57, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %117 = llvm.extractelement %72[%5 : i64] : vector<8xf32>
          %118 = "llvm.intr.vp.reduce.fadd"(%117, %87, %59, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %119 = llvm.extractelement %72[%4 : i64] : vector<8xf32>
          %120 = "llvm.intr.vp.reduce.fadd"(%119, %92, %61, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %121 = llvm.extractelement %72[%3 : i64] : vector<8xf32>
          %122 = "llvm.intr.vp.reduce.fadd"(%121, %97, %63, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %123 = llvm.extractelement %72[%2 : i64] : vector<8xf32>
          %124 = "llvm.intr.vp.reduce.fadd"(%123, %102, %65, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %125 = llvm.extractelement %72[%1 : i64] : vector<8xf32>
          %126 = "llvm.intr.vp.reduce.fadd"(%125, %107, %67, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %127 = llvm.extractelement %72[%0 : i64] : vector<8xf32>
          %128 = "llvm.intr.vp.reduce.fadd"(%127, %112, %69, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %129 = llvm.insertelement %114, %22[%8 : i64] : vector<8xf32>
          %130 = llvm.insertelement %116, %129[%6 : i64] : vector<8xf32>
          %131 = llvm.insertelement %118, %130[%5 : i64] : vector<8xf32>
          %132 = llvm.insertelement %120, %131[%4 : i64] : vector<8xf32>
          %133 = llvm.insertelement %122, %132[%3 : i64] : vector<8xf32>
          %134 = llvm.insertelement %124, %133[%2 : i64] : vector<8xf32>
          %135 = llvm.insertelement %126, %134[%1 : i64] : vector<8xf32>
          %136 = llvm.insertelement %128, %135[%0 : i64] : vector<8xf32>
          %137 = llvm.add %71, %25 : i64
          llvm.br ^bb3(%137, %136 : i64, vector<8xf32>)
        ^bb5:  // pred: ^bb3
          llvm.intr.masked.store %72, %53, %52 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %138 = llvm.add %44, %25 : i64
          llvm.br ^bb1(%138 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %9 : i32
        }
      }
    }
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<?x16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%0, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = arith.muli %0, %c64 : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<?x16xf32>{%0} in !stream.resource<external>{%1}
    %3 = arith.muli %0, %c4 : index
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%3} => !stream.timepoint
    %4 = arith.index_castui %0 : index to i64
    %5 = arith.index_castui %0 : index to i32
    %6 = arith.shrui %4, %c32_i64 : i64
    %7 = arith.trunci %6 : i64 to i32
    %8 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%2 as %arg1: !stream.resource<external>{%1}, %result as %arg2: !stream.resource<external>{%3}) {
      stream.cmd.dispatch @row_sum_dispatch_0::@embedded_elf_x86_64::@row_sum_dispatch_0_reduction_Dx16_f32[%0](%5, %7 : i32, i32) {
        ro %arg1[%c0 for %1] : !stream.resource<external>{%1},
        wo %arg2[%c0 for %3] : !stream.resource<external>{%3}
      }
    } => !stream.timepoint
    %9 = stream.timepoint.await %8 => %result : !stream.resource<external>{%3}
    %10 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %9 : tensor<?xf32>{%0} in !stream.resource<external>{%3} -> !hal.buffer_view
    util.return %10 : !hal.buffer_view
  }
  hal.executable private @fragment_dispatch_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @fragment_dispatch_1_reduction_Dx16_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @fragment_dispatch_1_reduction_Dx16_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(7 : i64) : i64
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.constant(8 : i32) : i32
          %8 = llvm.mlir.constant(0 : i64) : i64
          %9 = llvm.mlir.constant(0 : i32) : i32
          %10 = llvm.mlir.poison : vector<8xi32>
          %11 = llvm.mlir.constant(64 : index) : i64
          %12 = llvm.mlir.constant(true) : i1
          %13 = llvm.mlir.constant(7 : index) : i64
          %14 = llvm.mlir.constant(6 : index) : i64
          %15 = llvm.mlir.constant(5 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(dense<false> : vector<8xi1>) : vector<8xi1>
          %21 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %22 = llvm.mlir.poison : vector<8xf32>
          %23 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %24 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %25 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %26 = llvm.mlir.constant(8 : index) : i64
          %27 = llvm.mlir.constant(16 : index) : i64
          %28 = llvm.mlir.constant(32 : i64) : i64
          %29 = llvm.mlir.constant(0 : index) : i64
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> i32
          %33 = llvm.getelementptr %31[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %34 = llvm.load %33 : !llvm.ptr -> i32
          %35 = llvm.zext %32 : i32 to i64
          %36 = llvm.zext %34 : i32 to i64
          %37 = llvm.shl %36, %28 : i64
          %38 = llvm.or %35, %37 : i64
          %39 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %40 = llvm.getelementptr %39[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %41 = llvm.load %40 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
          %42 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %43 = llvm.extractvalue %42[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
          %45 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %46 = llvm.extractvalue %45[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %47 = llvm.getelementptr %46[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %48 = llvm.load %47 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%29 : i64)
        ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb5
          %50 = llvm.icmp "slt" %49, %38 : i64
          llvm.cond_br %50, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %51 = llvm.sub %38, %49 : i64
          %52 = llvm.icmp "slt" %51, %26 : i64
          %53 = llvm.select %52, %51, %26 : i1, i64
          %54 = llvm.trunc %53 : i64 to i32
          %55 = llvm.insertelement %54, %10[%9 : i32] : vector<8xi32>
          %56 = llvm.shufflevector %55, %10 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %57 = llvm.icmp "sgt" %56, %23 : vector<8xi32>
          %58 = llvm.getelementptr %48[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %25, %58, %57 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %59 = llvm.icmp "sgt" %53, %29 : i64
          %60 = llvm.select %59, %21, %20 : i1, vector<8xi1>
          %61 = llvm.icmp "sgt" %53, %19 : i64
          %62 = llvm.select %61, %21, %20 : i1, vector<8xi1>
          %63 = llvm.icmp "sgt" %53, %18 : i64
          %64 = llvm.select %63, %21, %20 : i1, vector<8xi1>
          %65 = llvm.icmp "sgt" %53, %17 : i64
          %66 = llvm.select %65, %21, %20 : i1, vector<8xi1>
          %67 = llvm.icmp "sgt" %53, %16 : i64
          %68 = llvm.select %67, %21, %20 : i1, vector<8xi1>
          %69 = llvm.icmp "sgt" %53, %15 : i64
          %70 = llvm.select %69, %21, %20 : i1, vector<8xi1>
          %71 = llvm.icmp "sgt" %53, %14 : i64
          %72 = llvm.select %71, %21, %20 : i1, vector<8xi1>
          %73 = llvm.icmp "sgt" %53, %13 : i64
          %74 = llvm.select %73, %21, %20 : i1, vector<8xi1>
          %75 = llvm.intr.masked.load %58, %57, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          llvm.br ^bb3(%29, %75 : i64, vector<8xf32>)
        ^bb3(%76: i64, %77: vector<8xf32>):  // 2 preds: ^bb2, ^bb4
          %78 = llvm.icmp "slt" %76, %27 : i64
          llvm.cond_br %78, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %79 = llvm.mul %49, %27 : i64
          %80 = llvm.add %79, %76 : i64
          %81 = llvm.getelementptr %44[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.intr.masked.load %81, %60, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %83 = llvm.add %49, %19 : i64
          %84 = llvm.mul %83, %27 : i64
          %85 = llvm.add %84, %76 : i64
          %86 = llvm.getelementptr %44[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %87 = llvm.intr.masked.load %86, %62, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %88 = llvm.add %49, %18 : i64
          %89 = llvm.mul %88, %27 : i64
          %90 = llvm.add %89, %76 : i64
          %91 = llvm.getelementptr %44[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.intr.masked.load %91, %64, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %93 = llvm.add %49, %17 : i64
          %94 = llvm.mul %93, %27 : i64
          %95 = llvm.add %94, %76 : i64
          %96 = llvm.getelementptr %44[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.intr.masked.load %96, %66, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %98 = llvm.add %49, %16 : i64
          %99 = llvm.mul %98, %27 : i64
          %100 = llvm.add %99, %76 : i64
          %101 = llvm.getelementptr %44[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.intr.masked.load %101, %68, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %103 = llvm.add %49, %15 : i64
          %104 = llvm.mul %103, %27 : i64
          %105 = llvm.add %104, %76 : i64
          %106 = llvm.getelementptr %44[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.intr.masked.load %106, %70, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %108 = llvm.add %49, %14 : i64
          %109 = llvm.mul %108, %27 : i64
          %110 = llvm.add %109, %76 : i64
          %111 = llvm.getelementptr %44[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.intr.masked.load %111, %72, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %113 = llvm.add %49, %13 : i64
          %114 = llvm.mul %113, %27 : i64
          %115 = llvm.add %114, %76 : i64
          %116 = llvm.getelementptr %44[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.intr.masked.load %116, %74, %22 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %118 = llvm.getelementptr %41[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %120 = llvm.fadd %82, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %121 = llvm.fadd %87, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %122 = llvm.fadd %92, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %123 = llvm.fadd %97, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %124 = llvm.fadd %102, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %125 = llvm.fadd %107, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %126 = llvm.fadd %112, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %127 = llvm.fadd %117, %119 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %128 = llvm.extractvalue %24[0] : !llvm.array<8 x vector<8xf32>> 
          %129 = llvm.fcmp "ugt" %120, %128 : vector<8xf32>
          %130 = llvm.extractvalue %24[1] : !llvm.array<8 x vector<8xf32>> 
          %131 = llvm.fcmp "ugt" %121, %130 : vector<8xf32>
          %132 = llvm.extractvalue %24[2] : !llvm.array<8 x vector<8xf32>> 
          %133 = llvm.fcmp "ugt" %122, %132 : vector<8xf32>
          %134 = llvm.extractvalue %24[3] : !llvm.array<8 x vector<8xf32>> 
          %135 = llvm.fcmp "ugt" %123, %134 : vector<8xf32>
          %136 = llvm.extractvalue %24[4] : !llvm.array<8 x vector<8xf32>> 
          %137 = llvm.fcmp "ugt" %124, %136 : vector<8xf32>
          %138 = llvm.extractvalue %24[5] : !llvm.array<8 x vector<8xf32>> 
          %139 = llvm.fcmp "ugt" %125, %138 : vector<8xf32>
          %140 = llvm.extractvalue %24[6] : !llvm.array<8 x vector<8xf32>> 
          %141 = llvm.fcmp "ugt" %126, %140 : vector<8xf32>
          %142 = llvm.extractvalue %24[7] : !llvm.array<8 x vector<8xf32>> 
          %143 = llvm.fcmp "ugt" %127, %142 : vector<8xf32>
          %144 = llvm.select %129, %120, %128 : vector<8xi1>, vector<8xf32>
          %145 = llvm.select %131, %121, %130 : vector<8xi1>, vector<8xf32>
          %146 = llvm.select %133, %122, %132 : vector<8xi1>, vector<8xf32>
          %147 = llvm.select %135, %123, %134 : vector<8xi1>, vector<8xf32>
          %148 = llvm.select %137, %124, %136 : vector<8xi1>, vector<8xf32>
          %149 = llvm.select %139, %125, %138 : vector<8xi1>, vector<8xf32>
          %150 = llvm.select %141, %126, %140 : vector<8xi1>, vector<8xf32>
          %151 = llvm.select %143, %127, %142 : vector<8xi1>, vector<8xf32>
          %152 = llvm.fcmp "uno" %128, %128 : vector<8xf32>
          %153 = llvm.fcmp "uno" %130, %130 : vector<8xf32>
          %154 = llvm.fcmp "uno" %132, %132 : vector<8xf32>
          %155 = llvm.fcmp "uno" %134, %134 : vector<8xf32>
          %156 = llvm.fcmp "uno" %136, %136 : vector<8xf32>
          %157 = llvm.fcmp "uno" %138, %138 : vector<8xf32>
          %158 = llvm.fcmp "uno" %140, %140 : vector<8xf32>
          %159 = llvm.fcmp "uno" %142, %142 : vector<8xf32>
          %160 = llvm.select %152, %128, %144 : vector<8xi1>, vector<8xf32>
          %161 = llvm.select %153, %130, %145 : vector<8xi1>, vector<8xf32>
          %162 = llvm.select %154, %132, %146 : vector<8xi1>, vector<8xf32>
          %163 = llvm.select %155, %134, %147 : vector<8xi1>, vector<8xf32>
          %164 = llvm.select %156, %136, %148 : vector<8xi1>, vector<8xf32>
          %165 = llvm.select %157, %138, %149 : vector<8xi1>, vector<8xf32>
          %166 = llvm.select %158, %140, %150 : vector<8xi1>, vector<8xf32>
          %167 = llvm.select %159, %142, %151 : vector<8xi1>, vector<8xf32>
          %168 = llvm.extractelement %77[%8 : i64] : vector<8xf32>
          %169 = "llvm.intr.vp.reduce.fadd"(%168, %160, %60, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %170 = llvm.extractelement %77[%6 : i64] : vector<8xf32>
          %171 = "llvm.intr.vp.reduce.fadd"(%170, %161, %62, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %172 = llvm.extractelement %77[%5 : i64] : vector<8xf32>
          %173 = "llvm.intr.vp.reduce.fadd"(%172, %162, %64, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %174 = llvm.extractelement %77[%4 : i64] : vector<8xf32>
          %175 = "llvm.intr.vp.reduce.fadd"(%174, %163, %66, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %176 = llvm.extractelement %77[%3 : i64] : vector<8xf32>
          %177 = "llvm.intr.vp.reduce.fadd"(%176, %164, %68, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %178 = llvm.extractelement %77[%2 : i64] : vector<8xf32>
          %179 = "llvm.intr.vp.reduce.fadd"(%178, %165, %70, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %180 = llvm.extractelement %77[%1 : i64] : vector<8xf32>
          %181 = "llvm.intr.vp.reduce.fadd"(%180, %166, %72, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %182 = llvm.extractelement %77[%0 : i64] : vector<8xf32>
          %183 = "llvm.intr.vp.reduce.fadd"(%182, %167, %74, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %184 = llvm.insertelement %169, %22[%8 : i64] : vector<8xf32>
          %185 = llvm.insertelement %171, %184[%6 : i64] : vector<8xf32>
          %186 = llvm.insertelement %173, %185[%5 : i64] : vector<8xf32>
          %187 = llvm.insertelement %175, %186[%4 : i64] : vector<8xf32>
          %188 = llvm.insertelement %177, %187[%3 : i64] : vector<8xf32>
          %189 = llvm.insertelement %179, %188[%2 : i64] : vector<8xf32>
          %190 = llvm.insertelement %181, %189[%1 : i64] : vector<8xf32>
          %191 = llvm.insertelement %183, %190[%0 : i64] : vector<8xf32>
          %192 = llvm.add %76, %26 : i64
          llvm.br ^bb3(%192, %191 : i64, vector<8xf32>)
        ^bb5:  // pred: ^bb3
          llvm.intr.masked.store %77, %58, %57 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %193 = llvm.add %49, %26 : i64
          llvm.br ^bb1(%193 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %9 : i32
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%0, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = arith.muli %0, %c128 : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<?x32xf32>{%0} in !stream.resource<external>{%1}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %3 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<32x16xf32> in !stream.resource<external>{%c2048}
    hal.buffer_view.assert<%arg2 : !hal.buffer_view> message("input2") shape([%c16]) type(%element_type_f32) encoding(%dense_row_major)
    %4 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg2 : !hal.buffer_view -> tensor<16xf32> in !stream.resource<external>{%c64}
    %5 = arith.muli %0, %c64 : index
    %6 = arith.muli %0, %c4 : index
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%6} => !stream.timepoint
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%5} => !stream.timepoint
    %7 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %8 = arith.index_castui %0 : index to i64
    %9 = arith.index_castui %0 : index to i32
    %10 = arith.shrui %8, %c32_i64 : i64
    %11 = arith.trunci %10 : i64 to i32
    %12 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%7) => with(%2 as %arg3: !stream.resource<external>{%1}, %3 as %arg4: !stream.resource<external>{%c2048}, %4 as %arg5: !stream.resource<external>{%c64}, %result as %arg6: !stream.resource<external>{%6}, %result_0 as %arg7: !stream.resource<transient>{%5}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_Dx16x32_f32[%0](%9, %11 : i32, i32) {
        ro %arg3[%c0 for %1] : !stream.resource<external>{%1},
        ro %arg4[%c0 for %c2048] : !stream.resource<external>{%c2048},
        wo %arg7[%c0 for %5] : !stream.resource<transient>{%5}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_Dx16_f32[%0](%9, %11 : i32, i32) {
        ro %arg7[%c0 for %5] : !stream.resource<transient>{%5},
        ro %arg5[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg6[%c0 for %6] : !stream.resource<external>{%6}
      }
    } => !stream.timepoint
    %13 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%12) => %result_0 : !stream.resource<transient>{%5} => !stream.timepoint
    %14 = stream.timepoint.await %13 => %result : !stream.resource<external>{%6}
    %15 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %14 : tensor<?xf32>{%0} in !stream.resource<external>{%6} -> !hal.buffer_view
    util.return %15 : !hal.buffer_view
  }
}
