#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout2 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
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
        llvm.func @iree_uk_mmt4d(!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32 attributes {hal.import.bitcode = true, hal.import.fields = ["processor_data"], llvm.bareptr = true}
        llvm.func @matmul_dispatch_0_matmul_7x17x33_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(52239 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(272 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.constant(6 : index) : i64
          %8 = llvm.mlir.constant(5 : index) : i64
          %9 = llvm.mlir.constant(4 : index) : i64
          %10 = llvm.mlir.constant(2 : index) : i64
          %11 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %12 = llvm.mlir.constant(64 : index) : i64
          %13 = llvm.mlir.constant(264 : index) : i64
          %14 = llvm.mlir.constant(17 : index) : i64
          %15 = llvm.mlir.constant(-8 : index) : i64
          %16 = llvm.mlir.constant(8 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.mlir.constant(1 : index) : i64
          %19 = llvm.mlir.constant(33 : index) : i64
          %20 = llvm.mlir.constant(8 : i32) : i32
          %21 = llvm.mlir.constant(1 : i32) : i32
          %22 = llvm.mlir.constant(1537 : i32) : i32
          %23 = llvm.mlir.constant(3 : index) : i64
          %24 = llvm.alloca %12 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %25 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %26 = llvm.extractvalue %25[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.load %26 : !llvm.ptr -> i32
          %28 = llvm.zext %27 : i32 to i64
          %29 = llvm.extractvalue %25[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          %31 = llvm.getelementptr %29[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          %33 = llvm.mul %28, %5 : i64
          %34 = llvm.udiv %33, %6 : i64
          %35 = llvm.getelementptr %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%35, %12 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%17 : i64)
        ^bb1(%36: i64):  // 2 preds: ^bb0, ^bb2
          %37 = llvm.icmp "slt" %36, %23 : i64
          llvm.cond_br %37, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %38 = llvm.mul %36, %13 overflow<nsw> : i64
          %39 = llvm.add %38, %3 : i64
          %40 = llvm.getelementptr inbounds %arg0[4] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %41 = llvm.alloca %5 x i64 {alignment = 8 : i64} : (i64) -> !llvm.ptr
          %42 = llvm.load %40 : !llvm.ptr -> i64
          %43 = llvm.or %42, %0 : i64
          llvm.store %43, %41 : i64, !llvm.ptr
          %44 = llvm.getelementptr inbounds %40[1] : (!llvm.ptr) -> !llvm.ptr, i64
          %45 = llvm.load %44 : !llvm.ptr -> i64
          %46 = llvm.getelementptr inbounds %41[1] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %45, %46 : i64, !llvm.ptr
          %47 = llvm.getelementptr inbounds %40[2] : (!llvm.ptr) -> !llvm.ptr, i64
          %48 = llvm.load %47 : !llvm.ptr -> i64
          %49 = llvm.getelementptr inbounds %41[2] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %48, %49 : i64, !llvm.ptr
          %50 = llvm.getelementptr inbounds %40[3] : (!llvm.ptr) -> !llvm.ptr, i64
          %51 = llvm.load %50 : !llvm.ptr -> i64
          %52 = llvm.getelementptr inbounds %41[3] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %51, %52 : i64, !llvm.ptr
          %53 = llvm.getelementptr inbounds %40[4] : (!llvm.ptr) -> !llvm.ptr, i64
          %54 = llvm.load %53 : !llvm.ptr -> i64
          %55 = llvm.getelementptr inbounds %41[4] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %54, %55 : i64, !llvm.ptr
          %56 = llvm.getelementptr inbounds %40[5] : (!llvm.ptr) -> !llvm.ptr, i64
          %57 = llvm.load %56 : !llvm.ptr -> i64
          %58 = llvm.getelementptr inbounds %41[5] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %57, %58 : i64, !llvm.ptr
          %59 = llvm.getelementptr inbounds %40[6] : (!llvm.ptr) -> !llvm.ptr, i64
          %60 = llvm.load %59 : !llvm.ptr -> i64
          %61 = llvm.getelementptr inbounds %41[6] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %60, %61 : i64, !llvm.ptr
          %62 = llvm.getelementptr inbounds %40[7] : (!llvm.ptr) -> !llvm.ptr, i64
          %63 = llvm.load %62 : !llvm.ptr -> i64
          %64 = llvm.getelementptr inbounds %41[7] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %63, %64 : i64, !llvm.ptr
          %65 = llvm.call @iree_uk_mmt4d(%30, %17, %13, %30, %39, %13, %24, %17, %12, %18, %18, %19, %20, %20, %21, %22, %41) : (!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32
          %66 = llvm.mul %36, %16 overflow<nsw> : i64
          %67 = llvm.mul %36, %15 overflow<nsw> : i64
          %68 = llvm.add %67, %14 : i64
          %69 = llvm.icmp "slt" %68, %16 : i64
          %70 = llvm.select %69, %68, %16 : i1, i64
          %71 = llvm.mul %17, %12 : i64
          %72 = llvm.add %71, %71 : i64
          %73 = llvm.mul %17, %16 : i64
          %74 = llvm.add %72, %73 : i64
          %75 = llvm.add %74, %17 : i64
          %76 = llvm.getelementptr %24[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %78 = llvm.mul %18, %16 : i64
          %79 = llvm.add %72, %78 : i64
          %80 = llvm.add %79, %17 : i64
          %81 = llvm.getelementptr %24[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.load %81 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %83 = llvm.mul %10, %16 : i64
          %84 = llvm.add %72, %83 : i64
          %85 = llvm.add %84, %17 : i64
          %86 = llvm.getelementptr %24[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %87 = llvm.load %86 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %88 = llvm.mul %23, %16 : i64
          %89 = llvm.add %72, %88 : i64
          %90 = llvm.add %89, %17 : i64
          %91 = llvm.getelementptr %24[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %93 = llvm.mul %9, %16 : i64
          %94 = llvm.add %72, %93 : i64
          %95 = llvm.add %94, %17 : i64
          %96 = llvm.getelementptr %24[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %98 = llvm.mul %8, %16 : i64
          %99 = llvm.add %72, %98 : i64
          %100 = llvm.add %99, %17 : i64
          %101 = llvm.getelementptr %24[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %103 = llvm.mul %7, %16 : i64
          %104 = llvm.add %72, %103 : i64
          %105 = llvm.add %104, %17 : i64
          %106 = llvm.getelementptr %24[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.load %106 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %108 = llvm.trunc %70 : i64 to i32
          %109 = llvm.insertelement %108, %2[%1 : i32] : vector<8xi32>
          %110 = llvm.shufflevector %109, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %111 = llvm.icmp "sgt" %110, %11 : vector<8xi32>
          %112 = llvm.mul %17, %14 : i64
          %113 = llvm.add %112, %66 : i64
          %114 = llvm.getelementptr %35[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %77, %114, %111 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %115 = llvm.mul %18, %14 : i64
          %116 = llvm.add %115, %66 : i64
          %117 = llvm.getelementptr %35[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %82, %117, %111 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %118 = llvm.mul %10, %14 : i64
          %119 = llvm.add %118, %66 : i64
          %120 = llvm.getelementptr %35[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %87, %120, %111 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %121 = llvm.mul %23, %14 : i64
          %122 = llvm.add %121, %66 : i64
          %123 = llvm.getelementptr %35[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %92, %123, %111 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %124 = llvm.mul %9, %14 : i64
          %125 = llvm.add %124, %66 : i64
          %126 = llvm.getelementptr %35[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %97, %126, %111 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %127 = llvm.mul %8, %14 : i64
          %128 = llvm.add %127, %66 : i64
          %129 = llvm.getelementptr %35[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %102, %129, %111 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %130 = llvm.mul %7, %14 : i64
          %131 = llvm.add %130, %66 : i64
          %132 = llvm.getelementptr %35[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %107, %132, %111 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %133 = llvm.add %36, %18 : i64
          llvm.br ^bb1(%133 : i64)
        ^bb3:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  hal.executable private @_encoding_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @_encoding_0_encode_7x33xf32_to_7x33xf32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @_encoding_0_encode_7x33xf32_to_7x33xf32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(264 : index) : i64
          %2 = llvm.mlir.constant(64 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(7 : index) : i64
          %5 = llvm.mlir.constant(8 : index) : i64
          %6 = llvm.mlir.constant(0 : index) : i64
          %7 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %8 = llvm.mlir.constant(1 : index) : i64
          %9 = llvm.mlir.constant(33 : index) : i64
          %10 = llvm.alloca %5 x f32 {alignment = 32 : i64} : (i64) -> !llvm.ptr
          %11 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %12 = llvm.extractvalue %11[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %13 = llvm.load %12 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%13, %2 : !llvm.ptr, i64)] : i1
          %14 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %15 = llvm.extractvalue %14[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %16 = llvm.getelementptr %15[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %17 = llvm.load %16 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%17, %2 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%6 : i64)
        ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb6
          %19 = llvm.icmp "slt" %18, %9 : i64
          llvm.cond_br %19, ^bb2(%6 : i64), ^bb7
        ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb3
          %21 = llvm.icmp "slt" %20, %5 : i64
          llvm.cond_br %21, ^bb3, ^bb4(%6 : i64)
        ^bb3:  // pred: ^bb2
          %22 = llvm.getelementptr inbounds|nuw %10[%20] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %7, %22 : f32, !llvm.ptr
          %23 = llvm.add %20, %8 : i64
          llvm.br ^bb2(%23 : i64)
        ^bb4(%24: i64):  // 2 preds: ^bb2, ^bb5
          %25 = llvm.icmp "slt" %24, %4 : i64
          llvm.cond_br %25, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %26 = llvm.mul %24, %9 overflow<nsw, nuw> : i64
          %27 = llvm.add %26, %18 overflow<nsw, nuw> : i64
          %28 = llvm.getelementptr inbounds|nuw %13[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %29 = llvm.load %28 : !llvm.ptr -> f32
          %30 = llvm.getelementptr inbounds|nuw %10[%24] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %29, %30 : f32, !llvm.ptr
          %31 = llvm.add %24, %8 : i64
          llvm.br ^bb4(%31 : i64)
        ^bb6:  // pred: ^bb4
          %32 = llvm.load %10 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %33 = llvm.mul %6, %1 : i64
          %34 = llvm.mul %18, %5 : i64
          %35 = llvm.add %33, %34 : i64
          %36 = llvm.add %35, %6 : i64
          %37 = llvm.add %36, %6 : i64
          %38 = llvm.getelementptr %17[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %32, %38 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %39 = llvm.add %18, %8 : i64
          llvm.br ^bb1(%39 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @_encoding_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @_encoding_1_encode_33x17xf32_to_33x17xf32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @_encoding_1_encode_33x17xf32_to_33x17xf32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi32>
          %2 = llvm.mlir.constant(264 : index) : i64
          %3 = llvm.mlir.constant(8 : i64) : i64
          %4 = llvm.mlir.constant(32 : i64) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(17 : index) : i64
          %8 = llvm.mlir.constant(-8 : index) : i64
          %9 = llvm.mlir.constant(8 : index) : i64
          %10 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %11 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %12 = llvm.mlir.constant(1 : index) : i64
          %13 = llvm.mlir.constant(33 : index) : i64
          %14 = llvm.mlir.constant(3 : index) : i64
          %15 = llvm.mlir.constant(0 : index) : i64
          %16 = llvm.mlir.constant(1088 : index) : i64
          %17 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %18 = llvm.extractvalue %17[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%19, %5 : !llvm.ptr, i64)] : i1
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
          %24 = llvm.mul %16, %3 : i64
          %25 = llvm.udiv %24, %4 : i64
          %26 = llvm.getelementptr %23[%25] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%15 : i64)
        ^bb1(%27: i64):  // 2 preds: ^bb0, ^bb5
          %28 = llvm.icmp "slt" %27, %14 : i64
          llvm.cond_br %28, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %29 = llvm.mul %27, %9 overflow<nsw> : i64
          %30 = llvm.mul %27, %8 overflow<nsw> : i64
          %31 = llvm.add %30, %7 : i64
          %32 = llvm.icmp "slt" %31, %9 : i64
          %33 = llvm.select %32, %31, %9 : i1, i64
          llvm.br ^bb3(%15 : i64)
        ^bb3(%34: i64):  // 2 preds: ^bb2, ^bb4
          %35 = llvm.icmp "slt" %34, %13 : i64
          llvm.cond_br %35, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %36 = llvm.trunc %33 : i64 to i32
          %37 = llvm.insertelement %36, %1[%0 : i32] : vector<8xi32>
          %38 = llvm.shufflevector %37, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %39 = llvm.icmp "sgt" %38, %11 : vector<8xi32>
          %40 = llvm.mul %34, %7 : i64
          %41 = llvm.add %40, %29 : i64
          %42 = llvm.getelementptr %19[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %43 = llvm.intr.masked.load %42, %39, %10 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %44 = llvm.mul %27, %2 : i64
          %45 = llvm.mul %34, %9 : i64
          %46 = llvm.add %44, %45 : i64
          %47 = llvm.add %46, %15 : i64
          %48 = llvm.add %47, %15 : i64
          %49 = llvm.getelementptr %26[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %43, %49 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %50 = llvm.add %34, %12 : i64
          llvm.br ^bb3(%50 : i64)
        ^bb5:  // pred: ^bb3
          %51 = llvm.add %27, %12 : i64
          llvm.br ^bb1(%51 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>) -> (%output0: tensor<7x17xf32>)"}} {
    %c0_i32 = arith.constant 0 : i32
    %c4288 = arith.constant 4288 : index
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
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c4288} => !stream.timepoint
    %2 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %3 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%2) => with(%0 as %arg2: !stream.resource<external>{%c924}, %1 as %arg3: !stream.resource<external>{%c2244}, %result as %arg4: !stream.resource<external>{%c476}, %result_0 as %arg5: !stream.resource<transient>{%c4288}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @_encoding_0::@embedded_elf_x86_64::@_encoding_0_encode_7x33xf32_to_7x33xf32 {
          ro %arg2[%c0 for %c924] : !stream.resource<external>{%c924},
          wo %arg5[%c0 for %c4288] : !stream.resource<transient>{%c4288}
        }
        stream.cmd.dispatch @_encoding_1::@embedded_elf_x86_64::@_encoding_1_encode_33x17xf32_to_33x17xf32 {
          ro %arg3[%c0 for %c2244] : !stream.resource<external>{%c2244},
          wo %arg5[%c0 for %c4288] : !stream.resource<transient>{%c4288}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_7x17x33_f32(%c0_i32 : i32) {
        ro %arg5[%c0 for %c4288] : !stream.resource<transient>{%c4288},
        wo %arg4[%c0 for %c476] : !stream.resource<external>{%c476}
      }
    } => !stream.timepoint
    %4 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%3) => %result_0 : !stream.resource<transient>{%c4288} => !stream.timepoint
    %5 = stream.timepoint.await %4 => %result : !stream.resource<external>{%c476}
    %6 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %5 : tensor<7x17xf32> in !stream.resource<external>{%c476} -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_7x17_f32 ordinal(0) layout(#pipeline_layout2) count(%arg0: !hal.device) -> (index, index, index) {
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
      hal.executable.export public @fragment_dispatch_1_reduction_7x17_f32 ordinal(0) layout(#pipeline_layout2) count(%arg0: !hal.device) -> (index, index, index) {
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
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.poison : vector<8xf32>
          %10 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %11 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %12 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %13 = llvm.mlir.constant(1 : index) : i64
          %14 = llvm.mlir.constant(7 : index) : i64
          %15 = llvm.mlir.constant(8 : index) : i64
          %16 = llvm.mlir.constant(17 : index) : i64
          %17 = llvm.mlir.constant(4288 : index) : i64
          %18 = llvm.mlir.constant(0 : index) : i64
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.load %20 : !llvm.ptr -> !llvm.ptr
          %22 = llvm.mul %17, %7 : i64
          %23 = llvm.udiv %22, %8 : i64
          %24 = llvm.getelementptr %21[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%24, %5 : !llvm.ptr, i64)] : i1
          %25 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %26 = llvm.extractvalue %25[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.getelementptr %26[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
          %29 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %30 = llvm.extractvalue %29[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.getelementptr %30[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%18 : i64)
        ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb4
          %34 = llvm.icmp "slt" %33, %14 : i64
          llvm.cond_br %34, ^bb2(%18, %12 : i64, vector<1xf32>), ^bb5
        ^bb2(%35: i64, %36: vector<1xf32>):  // 2 preds: ^bb1, ^bb3
          %37 = llvm.icmp "slt" %35, %16 : i64
          llvm.cond_br %37, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %38 = llvm.sub %16, %35 : i64
          %39 = llvm.icmp "slt" %38, %15 : i64
          %40 = llvm.select %39, %38, %15 : i1, i64
          %41 = llvm.trunc %40 : i64 to i32
          %42 = llvm.insertelement %41, %4[%3 : i32] : vector<8xi32>
          %43 = llvm.shufflevector %42, %4 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %44 = llvm.icmp "sgt" %43, %10 : vector<8xi32>
          %45 = llvm.mul %33, %16 : i64
          %46 = llvm.add %45, %35 : i64
          %47 = llvm.getelementptr %24[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %48 = llvm.intr.masked.load %47, %44, %9 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %49 = llvm.getelementptr %28[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %50 = llvm.intr.masked.load %49, %44, %9 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %51 = llvm.fadd %48, %50 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %52 = llvm.fcmp "ugt" %51, %11 : vector<8xf32>
          %53 = llvm.select %52, %51, %11 : vector<8xi1>, vector<8xf32>
          %54 = llvm.fcmp "uno" %11, %11 : vector<8xf32>
          %55 = llvm.select %54, %11, %53 : vector<8xi1>, vector<8xf32>
          %56 = llvm.extractelement %36[%2 : i64] : vector<1xf32>
          %57 = "llvm.intr.vp.reduce.fadd"(%56, %55, %44, %1) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %58 = llvm.insertelement %57, %0[%3 : i32] : vector<1xf32>
          %59 = llvm.add %35, %15 : i64
          llvm.br ^bb2(%59, %58 : i64, vector<1xf32>)
        ^bb4:  // pred: ^bb2
          %60 = llvm.extractelement %36[%2 : i64] : vector<1xf32>
          %61 = llvm.getelementptr inbounds|nuw %32[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %60, %61 : f32, !llvm.ptr
          %62 = llvm.add %33, %13 : i64
          llvm.br ^bb1(%62 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %3 : i32
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>, %input2: tensor<17xf32>) -> (%output0: tensor<7xf32>)"}} {
    %c4288_i32 = arith.constant 4288 : i32
    %c4800 = arith.constant 4800 : index
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
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c4800} => !stream.timepoint
    %3 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %4 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%3) => with(%0 as %arg3: !stream.resource<external>{%c924}, %1 as %arg4: !stream.resource<external>{%c2244}, %2 as %arg5: !stream.resource<external>{%c68}, %result as %arg6: !stream.resource<external>{%c28}, %result_0 as %arg7: !stream.resource<transient>{%c4800}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @_encoding_0::@embedded_elf_x86_64::@_encoding_0_encode_7x33xf32_to_7x33xf32 {
          ro %arg3[%c0 for %c924] : !stream.resource<external>{%c924},
          wo %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800}
        }
        stream.cmd.dispatch @_encoding_1::@embedded_elf_x86_64::@_encoding_1_encode_33x17xf32_to_33x17xf32 {
          ro %arg4[%c0 for %c2244] : !stream.resource<external>{%c2244},
          wo %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_7x17x33_f32(%c4288_i32 : i32) {
        ro %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800},
        wo %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_7x17_f32 {
        ro %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800},
        ro %arg5[%c0 for %c68] : !stream.resource<external>{%c68},
        wo %arg6[%c0 for %c28] : !stream.resource<external>{%c28}
      }
    } => !stream.timepoint
    %5 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%4) => %result_0 : !stream.resource<transient>{%c4800} => !stream.timepoint
    %6 = stream.timepoint.await %5 => %result : !stream.resource<external>{%c28}
    %7 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %6 : tensor<7xf32> in !stream.resource<external>{%c28} -> !hal.buffer_view
    util.return %7 : !hal.buffer_view
  }
}
