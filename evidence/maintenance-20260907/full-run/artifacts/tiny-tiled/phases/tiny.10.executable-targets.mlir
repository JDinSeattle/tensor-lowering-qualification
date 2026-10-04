#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout2 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
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
        llvm.func @iree_uk_mmt4d(!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32 attributes {hal.import.bitcode = true, hal.import.fields = ["processor_data"], llvm.bareptr = true}
        llvm.func @matmul_dispatch_0_matmul_1x16x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(52239 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.constant(64 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(16 : index) : i64
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.constant(256 : index) : i64
          %8 = llvm.mlir.constant(8 : index) : i64
          %9 = llvm.mlir.constant(0 : index) : i64
          %10 = llvm.mlir.constant(1 : index) : i64
          %11 = llvm.mlir.constant(32 : index) : i64
          %12 = llvm.mlir.constant(1 : i32) : i32
          %13 = llvm.mlir.constant(8 : i32) : i32
          %14 = llvm.mlir.constant(1537 : i32) : i32
          %15 = llvm.mlir.constant(2 : index) : i64
          %16 = llvm.alloca %8 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %17 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %18 = llvm.extractvalue %17[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %19 = llvm.load %18 : !llvm.ptr -> i32
          %20 = llvm.zext %19 : i32 to i64
          %21 = llvm.extractvalue %17[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
          %23 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %24 = llvm.load %23 : !llvm.ptr -> !llvm.ptr
          %25 = llvm.mul %20, %5 : i64
          %26 = llvm.udiv %25, %6 : i64
          %27 = llvm.getelementptr %24[%26] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%27, %2 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%9 : i64)
        ^bb1(%28: i64):  // 2 preds: ^bb0, ^bb2
          %29 = llvm.icmp "slt" %28, %15 : i64
          llvm.cond_br %29, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %30 = llvm.mul %28, %7 overflow<nsw> : i64
          %31 = llvm.add %30, %11 : i64
          %32 = llvm.getelementptr inbounds %arg0[4] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %33 = llvm.alloca %5 x i64 {alignment = 8 : i64} : (i64) -> !llvm.ptr
          %34 = llvm.load %32 : !llvm.ptr -> i64
          %35 = llvm.or %34, %0 : i64
          llvm.store %35, %33 : i64, !llvm.ptr
          %36 = llvm.getelementptr inbounds %32[1] : (!llvm.ptr) -> !llvm.ptr, i64
          %37 = llvm.load %36 : !llvm.ptr -> i64
          %38 = llvm.getelementptr inbounds %33[1] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %37, %38 : i64, !llvm.ptr
          %39 = llvm.getelementptr inbounds %32[2] : (!llvm.ptr) -> !llvm.ptr, i64
          %40 = llvm.load %39 : !llvm.ptr -> i64
          %41 = llvm.getelementptr inbounds %33[2] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %40, %41 : i64, !llvm.ptr
          %42 = llvm.getelementptr inbounds %32[3] : (!llvm.ptr) -> !llvm.ptr, i64
          %43 = llvm.load %42 : !llvm.ptr -> i64
          %44 = llvm.getelementptr inbounds %33[3] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %43, %44 : i64, !llvm.ptr
          %45 = llvm.getelementptr inbounds %32[4] : (!llvm.ptr) -> !llvm.ptr, i64
          %46 = llvm.load %45 : !llvm.ptr -> i64
          %47 = llvm.getelementptr inbounds %33[4] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %46, %47 : i64, !llvm.ptr
          %48 = llvm.getelementptr inbounds %32[5] : (!llvm.ptr) -> !llvm.ptr, i64
          %49 = llvm.load %48 : !llvm.ptr -> i64
          %50 = llvm.getelementptr inbounds %33[5] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %49, %50 : i64, !llvm.ptr
          %51 = llvm.getelementptr inbounds %32[6] : (!llvm.ptr) -> !llvm.ptr, i64
          %52 = llvm.load %51 : !llvm.ptr -> i64
          %53 = llvm.getelementptr inbounds %33[6] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %52, %53 : i64, !llvm.ptr
          %54 = llvm.getelementptr inbounds %32[7] : (!llvm.ptr) -> !llvm.ptr, i64
          %55 = llvm.load %54 : !llvm.ptr -> i64
          %56 = llvm.getelementptr inbounds %33[7] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %55, %56 : i64, !llvm.ptr
          %57 = llvm.call @iree_uk_mmt4d(%22, %9, %11, %22, %31, %7, %16, %9, %8, %10, %10, %11, %12, %13, %12, %14, %33) : (!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32
          %58 = llvm.mul %28, %8 overflow<nsw> : i64
          %59 = llvm.mul %9, %8 : i64
          %60 = llvm.add %59, %59 : i64
          %61 = llvm.add %60, %59 : i64
          %62 = llvm.add %61, %9 : i64
          %63 = llvm.getelementptr %16[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %65 = llvm.mul %9, %4 : i64
          %66 = llvm.add %65, %58 : i64
          %67 = llvm.getelementptr %27[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %64, %67 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %68 = llvm.add %28, %10 : i64
          llvm.br ^bb1(%68 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  hal.executable private @_encoding_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @_encoding_0_encode_1x32xf32_to_1x32xf32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @_encoding_0_encode_1x32xf32_to_1x32xf32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(64 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(32 : index) : i64
          %4 = llvm.mlir.constant(1 : index) : i64
          %5 = llvm.mlir.constant(0 : index) : i64
          %6 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %7 = llvm.extractvalue %6[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %8 = llvm.load %7 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%8, %1 : !llvm.ptr, i64)] : i1
          %9 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %10 = llvm.extractvalue %9[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %11 = llvm.getelementptr %10[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %12 = llvm.load %11 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %2 ["align"(%12, %1 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%5 : i64)
        ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb2
          %14 = llvm.icmp "slt" %13, %3 : i64
          llvm.cond_br %14, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %15 = llvm.mul %5, %3 overflow<nsw, nuw> : i64
          %16 = llvm.add %15, %13 overflow<nsw, nuw> : i64
          %17 = llvm.getelementptr inbounds|nuw %8[%16] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %18 = llvm.load %17 : !llvm.ptr -> f32
          %19 = llvm.add %16, %5 overflow<nsw, nuw> : i64
          %20 = llvm.add %19, %5 overflow<nsw, nuw> : i64
          %21 = llvm.getelementptr inbounds|nuw %12[%20] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %18, %21 : f32, !llvm.ptr
          %22 = llvm.add %13, %4 : i64
          llvm.br ^bb1(%22 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @_encoding_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @_encoding_1_encode_32x16xf32_to_32x16xf32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @_encoding_1_encode_32x16xf32_to_32x16xf32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(256 : index) : i64
          %2 = llvm.mlir.constant(8 : i64) : i64
          %3 = llvm.mlir.constant(32 : i64) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(16 : index) : i64
          %7 = llvm.mlir.constant(8 : index) : i64
          %8 = llvm.mlir.constant(1 : index) : i64
          %9 = llvm.mlir.constant(32 : index) : i64
          %10 = llvm.mlir.constant(2 : index) : i64
          %11 = llvm.mlir.constant(0 : index) : i64
          %12 = llvm.mlir.constant(128 : index) : i64
          %13 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %14 = llvm.extractvalue %13[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %15 = llvm.load %14 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %5 ["align"(%15, %4 : !llvm.ptr, i64)] : i1
          %16 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %17 = llvm.extractvalue %16[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %18 = llvm.getelementptr %17[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
          %20 = llvm.mul %12, %2 : i64
          %21 = llvm.udiv %20, %3 : i64
          %22 = llvm.getelementptr %19[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%22, %4 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%11 : i64)
        ^bb1(%23: i64):  // 2 preds: ^bb0, ^bb5
          %24 = llvm.icmp "slt" %23, %10 : i64
          llvm.cond_br %24, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %25 = llvm.mul %23, %7 overflow<nsw> : i64
          llvm.br ^bb3(%11 : i64)
        ^bb3(%26: i64):  // 2 preds: ^bb2, ^bb4
          %27 = llvm.icmp "slt" %26, %9 : i64
          llvm.cond_br %27, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %28 = llvm.mul %26, %6 : i64
          %29 = llvm.add %28, %25 : i64
          %30 = llvm.getelementptr %15[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %31 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %32 = llvm.mul %23, %1 : i64
          %33 = llvm.mul %26, %7 : i64
          %34 = llvm.add %32, %33 : i64
          %35 = llvm.add %34, %11 : i64
          %36 = llvm.add %35, %11 : i64
          %37 = llvm.getelementptr %22[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %31, %37 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %38 = llvm.add %26, %8 : i64
          llvm.br ^bb3(%38 : i64)
        ^bb5:  // pred: ^bb3
          %39 = llvm.add %23, %8 : i64
          llvm.br ^bb1(%39 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<1x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<1x16xf32>)"}} {
    %c0_i32 = arith.constant 0 : i32
    %c2176 = arith.constant 2176 : index
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
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c2176} => !stream.timepoint
    %2 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %3 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%2) => with(%0 as %arg2: !stream.resource<external>{%c128}, %1 as %arg3: !stream.resource<external>{%c2048}, %result as %arg4: !stream.resource<external>{%c64}, %result_0 as %arg5: !stream.resource<transient>{%c2176}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @_encoding_0::@embedded_elf_x86_64::@_encoding_0_encode_1x32xf32_to_1x32xf32 {
          ro %arg2[%c0 for %c128] : !stream.resource<external>{%c128},
          wo %arg5[%c0 for %c2176] : !stream.resource<transient>{%c2176}
        }
        stream.cmd.dispatch @_encoding_1::@embedded_elf_x86_64::@_encoding_1_encode_32x16xf32_to_32x16xf32 {
          ro %arg3[%c0 for %c2048] : !stream.resource<external>{%c2048},
          wo %arg5[%c0 for %c2176] : !stream.resource<transient>{%c2176}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_1x16x32_f32(%c0_i32 : i32) {
        ro %arg5[%c0 for %c2176] : !stream.resource<transient>{%c2176},
        wo %arg4[%c0 for %c64] : !stream.resource<external>{%c64}
      }
    } => !stream.timepoint
    %4 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%3) => %result_0 : !stream.resource<transient>{%c2176} => !stream.timepoint
    %5 = stream.timepoint.await %4 => %result : !stream.resource<external>{%c64}
    %6 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %5 : tensor<1x16xf32> in !stream.resource<external>{%c64} -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_16_f32 ordinal(0) layout(#pipeline_layout2) count(%arg0: !hal.device) -> (index, index, index) {
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
      hal.executable.export public @fragment_dispatch_1_reduction_16_f32 ordinal(0) layout(#pipeline_layout2) count(%arg0: !hal.device) -> (index, index, index) {
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
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %8 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %9 = llvm.mlir.constant(8 : index) : i64
          %10 = llvm.mlir.constant(16 : index) : i64
          %11 = llvm.mlir.constant(2176 : index) : i64
          %12 = llvm.mlir.constant(0 : index) : i64
          %13 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %14 = llvm.extractvalue %13[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %15 = llvm.load %14 : !llvm.ptr -> !llvm.ptr
          %16 = llvm.mul %11, %5 : i64
          %17 = llvm.udiv %16, %6 : i64
          %18 = llvm.getelementptr %15[%17] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.getelementptr %20[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%22, %3 : !llvm.ptr, i64)] : i1
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.getelementptr %24[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %26 = llvm.load %25 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%12, %7 : i64, vector<1xf32>)
        ^bb1(%27: i64, %28: vector<1xf32>):  // 2 preds: ^bb0, ^bb2
          %29 = llvm.icmp "slt" %27, %10 : i64
          llvm.cond_br %29, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %30 = llvm.getelementptr %18[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %31 = llvm.load %30 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %32 = llvm.getelementptr %22[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %33 = llvm.load %32 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %34 = llvm.extractelement %28[%2 : i64] : vector<1xf32>
          %35 = llvm.fadd %31, %33 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %36 = llvm.fcmp "ugt" %35, %8 : vector<8xf32>
          %37 = llvm.select %36, %35, %8 : vector<8xi1>, vector<8xf32>
          %38 = llvm.fcmp "uno" %8, %8 : vector<8xf32>
          %39 = llvm.select %38, %8, %37 : vector<8xi1>, vector<8xf32>
          %40 = "llvm.intr.vector.reduce.fadd"(%34, %39) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %41 = llvm.insertelement %40, %1[%0 : i32] : vector<1xf32>
          %42 = llvm.add %27, %9 : i64
          llvm.br ^bb1(%42, %41 : i64, vector<1xf32>)
        ^bb3:  // pred: ^bb1
          %43 = llvm.extractelement %28[%2 : i64] : vector<1xf32>
          llvm.store %43, %26 : f32, !llvm.ptr
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<1x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<1xf32>)"}} {
    %c2176_i32 = arith.constant 2176 : i32
    %c2240 = arith.constant 2240 : index
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
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c2240} => !stream.timepoint
    %3 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %4 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%3) => with(%0 as %arg3: !stream.resource<external>{%c128}, %1 as %arg4: !stream.resource<external>{%c2048}, %2 as %arg5: !stream.resource<external>{%c64}, %result as %arg6: !stream.resource<external>{%c4}, %result_0 as %arg7: !stream.resource<transient>{%c2240}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @_encoding_0::@embedded_elf_x86_64::@_encoding_0_encode_1x32xf32_to_1x32xf32 {
          ro %arg3[%c0 for %c128] : !stream.resource<external>{%c128},
          wo %arg7[%c0 for %c2240] : !stream.resource<transient>{%c2240}
        }
        stream.cmd.dispatch @_encoding_1::@embedded_elf_x86_64::@_encoding_1_encode_32x16xf32_to_32x16xf32 {
          ro %arg4[%c0 for %c2048] : !stream.resource<external>{%c2048},
          wo %arg7[%c0 for %c2240] : !stream.resource<transient>{%c2240}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_1x16x32_f32(%c2176_i32 : i32) {
        ro %arg7[%c0 for %c2240] : !stream.resource<transient>{%c2240},
        wo %arg7[%c0 for %c2240] : !stream.resource<transient>{%c2240}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_16_f32 {
        ro %arg7[%c0 for %c2240] : !stream.resource<transient>{%c2240},
        ro %arg5[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg6[%c0 for %c4] : !stream.resource<external>{%c4}
      }
    } => !stream.timepoint
    %5 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%4) => %result_0 : !stream.resource<transient>{%c2240} => !stream.timepoint
    %6 = stream.timepoint.await %5 => %result : !stream.resource<external>{%c4}
    %7 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %6 : tensor<1xf32> in !stream.resource<external>{%c4} -> !hal.buffer_view
    util.return %7 : !hal.buffer_view
  }
}
