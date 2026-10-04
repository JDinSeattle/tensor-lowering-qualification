#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout2 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
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
        llvm.func @iree_uk_mmt4d(!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32 attributes {hal.import.bitcode = true, hal.import.fields = ["processor_data"], llvm.bareptr = true}
        llvm.func @matmul_dispatch_0_matmul_64x32x64_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(52239 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(32 : index) : i64
          %4 = llvm.mlir.constant(8 : i64) : i64
          %5 = llvm.mlir.constant(32 : i64) : i64
          %6 = llvm.mlir.constant(4096 : index) : i64
          %7 = llvm.mlir.constant(512 : index) : i64
          %8 = llvm.mlir.constant(7 : index) : i64
          %9 = llvm.mlir.constant(6 : index) : i64
          %10 = llvm.mlir.constant(5 : index) : i64
          %11 = llvm.mlir.constant(3 : index) : i64
          %12 = llvm.mlir.constant(2 : index) : i64
          %13 = llvm.mlir.constant(0 : index) : i64
          %14 = llvm.mlir.constant(8 : index) : i64
          %15 = llvm.mlir.constant(1 : index) : i64
          %16 = llvm.mlir.constant(64 : index) : i64
          %17 = llvm.mlir.constant(8 : i32) : i32
          %18 = llvm.mlir.constant(1 : i32) : i32
          %19 = llvm.mlir.constant(1537 : i32) : i32
          %20 = llvm.mlir.constant(4 : index) : i64
          %21 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %22 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %23 = llvm.extractvalue %22[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.load %23 : !llvm.ptr -> i32
          %25 = llvm.zext %24 : i32 to i64
          %26 = llvm.extractvalue %22[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.load %26 : !llvm.ptr -> !llvm.ptr
          %28 = llvm.getelementptr %26[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          %30 = llvm.mul %25, %4 : i64
          %31 = llvm.udiv %30, %5 : i64
          %32 = llvm.getelementptr %29[%31] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%32, %16 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%13 : i64)
        ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb5
          %34 = llvm.icmp "slt" %33, %20 : i64
          llvm.cond_br %34, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %35 = llvm.mul %33, %14 overflow<nsw> : i64
          llvm.br ^bb3(%13 : i64)
        ^bb3(%36: i64):  // 2 preds: ^bb2, ^bb4
          %37 = llvm.icmp "slt" %36, %14 : i64
          llvm.cond_br %37, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %38 = llvm.mul %33, %7 overflow<nsw> : i64
          %39 = llvm.add %38, %6 : i64
          %40 = llvm.mul %36, %7 overflow<nsw> : i64
          %41 = llvm.getelementptr inbounds %arg0[4] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %42 = llvm.alloca %4 x i64 {alignment = 8 : i64} : (i64) -> !llvm.ptr
          %43 = llvm.load %41 : !llvm.ptr -> i64
          %44 = llvm.or %43, %0 : i64
          llvm.store %44, %42 : i64, !llvm.ptr
          %45 = llvm.getelementptr inbounds %41[1] : (!llvm.ptr) -> !llvm.ptr, i64
          %46 = llvm.load %45 : !llvm.ptr -> i64
          %47 = llvm.getelementptr inbounds %42[1] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %46, %47 : i64, !llvm.ptr
          %48 = llvm.getelementptr inbounds %41[2] : (!llvm.ptr) -> !llvm.ptr, i64
          %49 = llvm.load %48 : !llvm.ptr -> i64
          %50 = llvm.getelementptr inbounds %42[2] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %49, %50 : i64, !llvm.ptr
          %51 = llvm.getelementptr inbounds %41[3] : (!llvm.ptr) -> !llvm.ptr, i64
          %52 = llvm.load %51 : !llvm.ptr -> i64
          %53 = llvm.getelementptr inbounds %42[3] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %52, %53 : i64, !llvm.ptr
          %54 = llvm.getelementptr inbounds %41[4] : (!llvm.ptr) -> !llvm.ptr, i64
          %55 = llvm.load %54 : !llvm.ptr -> i64
          %56 = llvm.getelementptr inbounds %42[4] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %55, %56 : i64, !llvm.ptr
          %57 = llvm.getelementptr inbounds %41[5] : (!llvm.ptr) -> !llvm.ptr, i64
          %58 = llvm.load %57 : !llvm.ptr -> i64
          %59 = llvm.getelementptr inbounds %42[5] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %58, %59 : i64, !llvm.ptr
          %60 = llvm.getelementptr inbounds %41[6] : (!llvm.ptr) -> !llvm.ptr, i64
          %61 = llvm.load %60 : !llvm.ptr -> i64
          %62 = llvm.getelementptr inbounds %42[6] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %61, %62 : i64, !llvm.ptr
          %63 = llvm.getelementptr inbounds %41[7] : (!llvm.ptr) -> !llvm.ptr, i64
          %64 = llvm.load %63 : !llvm.ptr -> i64
          %65 = llvm.getelementptr inbounds %42[7] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %64, %65 : i64, !llvm.ptr
          %66 = llvm.call @iree_uk_mmt4d(%27, %39, %7, %27, %40, %7, %21, %13, %16, %15, %15, %16, %17, %17, %18, %19, %42) : (!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32
          %67 = llvm.mul %13, %16 : i64
          %68 = llvm.add %67, %67 : i64
          %69 = llvm.mul %13, %14 : i64
          %70 = llvm.add %68, %69 : i64
          %71 = llvm.add %70, %13 : i64
          %72 = llvm.getelementptr %21[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %74 = llvm.mul %15, %14 : i64
          %75 = llvm.add %68, %74 : i64
          %76 = llvm.add %75, %13 : i64
          %77 = llvm.getelementptr %21[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %79 = llvm.mul %12, %14 : i64
          %80 = llvm.add %68, %79 : i64
          %81 = llvm.add %80, %13 : i64
          %82 = llvm.getelementptr %21[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %84 = llvm.mul %11, %14 : i64
          %85 = llvm.add %68, %84 : i64
          %86 = llvm.add %85, %13 : i64
          %87 = llvm.getelementptr %21[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %88 = llvm.load %87 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %89 = llvm.mul %20, %14 : i64
          %90 = llvm.add %68, %89 : i64
          %91 = llvm.add %90, %13 : i64
          %92 = llvm.getelementptr %21[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %94 = llvm.mul %10, %14 : i64
          %95 = llvm.add %68, %94 : i64
          %96 = llvm.add %95, %13 : i64
          %97 = llvm.getelementptr %21[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %98 = llvm.load %97 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %99 = llvm.mul %9, %14 : i64
          %100 = llvm.add %68, %99 : i64
          %101 = llvm.add %100, %13 : i64
          %102 = llvm.getelementptr %21[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %103 = llvm.load %102 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %104 = llvm.mul %8, %14 : i64
          %105 = llvm.add %68, %104 : i64
          %106 = llvm.add %105, %13 : i64
          %107 = llvm.getelementptr %21[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %109 = llvm.shufflevector %73, %78 [0, 8, 1, 9, 4, 12, 5, 13] : vector<8xf32> 
          %110 = llvm.shufflevector %73, %78 [2, 10, 3, 11, 6, 14, 7, 15] : vector<8xf32> 
          %111 = llvm.shufflevector %83, %88 [0, 8, 1, 9, 4, 12, 5, 13] : vector<8xf32> 
          %112 = llvm.shufflevector %83, %88 [2, 10, 3, 11, 6, 14, 7, 15] : vector<8xf32> 
          %113 = llvm.shufflevector %93, %98 [0, 8, 1, 9, 4, 12, 5, 13] : vector<8xf32> 
          %114 = llvm.shufflevector %93, %98 [2, 10, 3, 11, 6, 14, 7, 15] : vector<8xf32> 
          %115 = llvm.shufflevector %103, %108 [0, 8, 1, 9, 4, 12, 5, 13] : vector<8xf32> 
          %116 = llvm.shufflevector %103, %108 [2, 10, 3, 11, 6, 14, 7, 15] : vector<8xf32> 
          %117 = llvm.shufflevector %109, %111 [2, 3, 8, 9, 6, 7, 12, 13] : vector<8xf32> 
          %118 = llvm.shufflevector %110, %112 [2, 3, 8, 9, 6, 7, 12, 13] : vector<8xf32> 
          %119 = llvm.shufflevector %113, %115 [2, 3, 8, 9, 6, 7, 12, 13] : vector<8xf32> 
          %120 = llvm.shufflevector %114, %116 [2, 3, 8, 9, 6, 7, 12, 13] : vector<8xf32> 
          %121 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0xcc", "=x,x,x" %109, %117 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %122 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0x33", "=x,x,x" %111, %117 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %123 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0xcc", "=x,x,x" %110, %118 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %124 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0x33", "=x,x,x" %112, %118 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %125 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0xcc", "=x,x,x" %113, %119 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %126 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0x33", "=x,x,x" %115, %119 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %127 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0xcc", "=x,x,x" %114, %120 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %128 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0x33", "=x,x,x" %116, %120 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %129 = llvm.shufflevector %121, %125 [0, 1, 2, 3, 8, 9, 10, 11] : vector<8xf32> 
          %130 = llvm.shufflevector %122, %126 [0, 1, 2, 3, 8, 9, 10, 11] : vector<8xf32> 
          %131 = llvm.shufflevector %123, %127 [0, 1, 2, 3, 8, 9, 10, 11] : vector<8xf32> 
          %132 = llvm.shufflevector %124, %128 [0, 1, 2, 3, 8, 9, 10, 11] : vector<8xf32> 
          %133 = llvm.shufflevector %121, %125 [4, 5, 6, 7, 12, 13, 14, 15] : vector<8xf32> 
          %134 = llvm.shufflevector %122, %126 [4, 5, 6, 7, 12, 13, 14, 15] : vector<8xf32> 
          %135 = llvm.shufflevector %123, %127 [4, 5, 6, 7, 12, 13, 14, 15] : vector<8xf32> 
          %136 = llvm.shufflevector %124, %128 [4, 5, 6, 7, 12, 13, 14, 15] : vector<8xf32> 
          %137 = llvm.mul %36, %14 overflow<nsw> : i64
          %138 = llvm.mul %137, %3 : i64
          %139 = llvm.add %138, %35 : i64
          %140 = llvm.getelementptr %32[%139] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %129, %140 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %141 = llvm.add %137, %15 : i64
          %142 = llvm.mul %141, %3 : i64
          %143 = llvm.add %142, %35 : i64
          %144 = llvm.getelementptr %32[%143] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %130, %144 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %145 = llvm.add %137, %12 : i64
          %146 = llvm.mul %145, %3 : i64
          %147 = llvm.add %146, %35 : i64
          %148 = llvm.getelementptr %32[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %131, %148 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %149 = llvm.add %137, %11 : i64
          %150 = llvm.mul %149, %3 : i64
          %151 = llvm.add %150, %35 : i64
          %152 = llvm.getelementptr %32[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %132, %152 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %153 = llvm.add %137, %20 : i64
          %154 = llvm.mul %153, %3 : i64
          %155 = llvm.add %154, %35 : i64
          %156 = llvm.getelementptr %32[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %133, %156 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %157 = llvm.add %137, %10 : i64
          %158 = llvm.mul %157, %3 : i64
          %159 = llvm.add %158, %35 : i64
          %160 = llvm.getelementptr %32[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %134, %160 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %161 = llvm.add %137, %9 : i64
          %162 = llvm.mul %161, %3 : i64
          %163 = llvm.add %162, %35 : i64
          %164 = llvm.getelementptr %32[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %135, %164 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %165 = llvm.add %137, %8 : i64
          %166 = llvm.mul %165, %3 : i64
          %167 = llvm.add %166, %35 : i64
          %168 = llvm.getelementptr %32[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %136, %168 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %169 = llvm.add %36, %15 : i64
          llvm.br ^bb3(%169 : i64)
        ^bb5:  // pred: ^bb3
          %170 = llvm.add %33, %15 : i64
          llvm.br ^bb1(%170 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  hal.executable private @_encoding_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @_encoding_0_encode_64x64xf32_to_64x64xf32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @_encoding_0_encode_64x64xf32_to_64x64xf32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(7 : i64) : i64
          %2 = llvm.mlir.constant(6 : i64) : i64
          %3 = llvm.mlir.constant(5 : i64) : i64
          %4 = llvm.mlir.constant(4 : i64) : i64
          %5 = llvm.mlir.constant(3 : i64) : i64
          %6 = llvm.mlir.constant(2 : i64) : i64
          %7 = llvm.mlir.constant(1 : i64) : i64
          %8 = llvm.mlir.poison : vector<8xf32>
          %9 = llvm.mlir.constant(0 : i64) : i64
          %10 = llvm.mlir.constant(512 : index) : i64
          %11 = llvm.mlir.constant(true) : i1
          %12 = llvm.mlir.constant(7 : index) : i64
          %13 = llvm.mlir.constant(6 : index) : i64
          %14 = llvm.mlir.constant(5 : index) : i64
          %15 = llvm.mlir.constant(4 : index) : i64
          %16 = llvm.mlir.constant(3 : index) : i64
          %17 = llvm.mlir.constant(2 : index) : i64
          %18 = llvm.mlir.constant(1 : index) : i64
          %19 = llvm.mlir.constant(64 : index) : i64
          %20 = llvm.mlir.constant(8 : index) : i64
          %21 = llvm.mlir.constant(0 : index) : i64
          %22 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %23 = llvm.extractvalue %22[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.load %23 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %11 ["align"(%24, %19 : !llvm.ptr, i64)] : i1
          %25 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %26 = llvm.extractvalue %25[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.getelementptr %26[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %11 ["align"(%28, %19 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%21 : i64)
        ^bb1(%29: i64):  // 2 preds: ^bb0, ^bb4
          %30 = llvm.icmp "slt" %29, %20 : i64
          llvm.cond_br %30, ^bb2(%21 : i64), ^bb5
        ^bb2(%31: i64):  // 2 preds: ^bb1, ^bb3
          %32 = llvm.icmp "slt" %31, %19 : i64
          llvm.cond_br %32, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %33 = llvm.mul %29, %20 overflow<nsw> : i64
          %34 = llvm.mul %33, %19 : i64
          %35 = llvm.add %34, %31 : i64
          %36 = llvm.getelementptr %24[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %37 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %38 = llvm.add %33, %18 : i64
          %39 = llvm.mul %38, %19 : i64
          %40 = llvm.add %39, %31 : i64
          %41 = llvm.getelementptr %24[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %42 = llvm.load %41 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %43 = llvm.add %33, %17 : i64
          %44 = llvm.mul %43, %19 : i64
          %45 = llvm.add %44, %31 : i64
          %46 = llvm.getelementptr %24[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %47 = llvm.load %46 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %48 = llvm.add %33, %16 : i64
          %49 = llvm.mul %48, %19 : i64
          %50 = llvm.add %49, %31 : i64
          %51 = llvm.getelementptr %24[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %52 = llvm.load %51 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %53 = llvm.add %33, %15 : i64
          %54 = llvm.mul %53, %19 : i64
          %55 = llvm.add %54, %31 : i64
          %56 = llvm.getelementptr %24[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %58 = llvm.add %33, %14 : i64
          %59 = llvm.mul %58, %19 : i64
          %60 = llvm.add %59, %31 : i64
          %61 = llvm.getelementptr %24[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %63 = llvm.add %33, %13 : i64
          %64 = llvm.mul %63, %19 : i64
          %65 = llvm.add %64, %31 : i64
          %66 = llvm.getelementptr %24[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %68 = llvm.add %33, %12 : i64
          %69 = llvm.mul %68, %19 : i64
          %70 = llvm.add %69, %31 : i64
          %71 = llvm.getelementptr %24[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %72 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %73 = llvm.extractelement %37[%9 : i64] : vector<1xf32>
          %74 = llvm.extractelement %42[%9 : i64] : vector<1xf32>
          %75 = llvm.extractelement %47[%9 : i64] : vector<1xf32>
          %76 = llvm.extractelement %52[%9 : i64] : vector<1xf32>
          %77 = llvm.extractelement %57[%9 : i64] : vector<1xf32>
          %78 = llvm.extractelement %62[%9 : i64] : vector<1xf32>
          %79 = llvm.extractelement %67[%9 : i64] : vector<1xf32>
          %80 = llvm.extractelement %72[%9 : i64] : vector<1xf32>
          %81 = llvm.insertelement %73, %8[%9 : i64] : vector<8xf32>
          %82 = llvm.insertelement %74, %81[%7 : i64] : vector<8xf32>
          %83 = llvm.insertelement %75, %82[%6 : i64] : vector<8xf32>
          %84 = llvm.insertelement %76, %83[%5 : i64] : vector<8xf32>
          %85 = llvm.insertelement %77, %84[%4 : i64] : vector<8xf32>
          %86 = llvm.insertelement %78, %85[%3 : i64] : vector<8xf32>
          %87 = llvm.insertelement %79, %86[%2 : i64] : vector<8xf32>
          %88 = llvm.insertelement %80, %87[%1 : i64] : vector<8xf32>
          %89 = llvm.mul %29, %10 : i64
          %90 = llvm.mul %31, %20 : i64
          %91 = llvm.add %89, %90 : i64
          %92 = llvm.add %91, %21 : i64
          %93 = llvm.add %92, %21 : i64
          %94 = llvm.getelementptr %28[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %88, %94 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %95 = llvm.add %31, %18 : i64
          llvm.br ^bb2(%95 : i64)
        ^bb4:  // pred: ^bb2
          %96 = llvm.add %29, %18 : i64
          llvm.br ^bb1(%96 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @_encoding_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @_encoding_1_encode_64x32xf32_to_64x32xf32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @_encoding_1_encode_64x32xf32_to_64x32xf32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(512 : index) : i64
          %2 = llvm.mlir.constant(8 : i64) : i64
          %3 = llvm.mlir.constant(32 : i64) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(8 : index) : i64
          %7 = llvm.mlir.constant(1 : index) : i64
          %8 = llvm.mlir.constant(64 : index) : i64
          %9 = llvm.mlir.constant(4 : index) : i64
          %10 = llvm.mlir.constant(0 : index) : i64
          %11 = llvm.mlir.constant(16384 : index) : i64
          %12 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %13 = llvm.extractvalue %12[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %14 = llvm.load %13 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %4 ["align"(%14, %8 : !llvm.ptr, i64)] : i1
          %15 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %16 = llvm.extractvalue %15[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %17 = llvm.getelementptr %16[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %18 = llvm.load %17 : !llvm.ptr -> !llvm.ptr
          %19 = llvm.mul %11, %2 : i64
          %20 = llvm.udiv %19, %3 : i64
          %21 = llvm.getelementptr %18[%20] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%21, %8 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%10 : i64)
        ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb5
          %23 = llvm.icmp "slt" %22, %9 : i64
          llvm.cond_br %23, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %24 = llvm.mul %22, %6 overflow<nsw> : i64
          llvm.br ^bb3(%10 : i64)
        ^bb3(%25: i64):  // 2 preds: ^bb2, ^bb4
          %26 = llvm.icmp "slt" %25, %8 : i64
          llvm.cond_br %26, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %27 = llvm.mul %25, %5 : i64
          %28 = llvm.add %27, %24 : i64
          %29 = llvm.getelementptr %14[%28] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %30 = llvm.load %29 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %31 = llvm.mul %22, %1 : i64
          %32 = llvm.mul %25, %6 : i64
          %33 = llvm.add %31, %32 : i64
          %34 = llvm.add %33, %10 : i64
          %35 = llvm.add %34, %10 : i64
          %36 = llvm.getelementptr %21[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %30, %36 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %37 = llvm.add %25, %7 : i64
          llvm.br ^bb3(%37 : i64)
        ^bb5:  // pred: ^bb3
          %38 = llvm.add %22, %7 : i64
          llvm.br ^bb1(%38 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>) -> (%output0: tensor<64x32xf32>)"}} {
    %c0_i32 = arith.constant 0 : i32
    %c24576 = arith.constant 24576 : index
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
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c24576} => !stream.timepoint
    %2 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %3 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%2) => with(%0 as %arg2: !stream.resource<external>{%c16384}, %1 as %arg3: !stream.resource<external>{%c8192}, %result as %arg4: !stream.resource<external>{%c8192}, %result_0 as %arg5: !stream.resource<transient>{%c24576}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @_encoding_0::@embedded_elf_x86_64::@_encoding_0_encode_64x64xf32_to_64x64xf32 {
          ro %arg2[%c0 for %c16384] : !stream.resource<external>{%c16384},
          wo %arg5[%c0 for %c24576] : !stream.resource<transient>{%c24576}
        }
        stream.cmd.dispatch @_encoding_1::@embedded_elf_x86_64::@_encoding_1_encode_64x32xf32_to_64x32xf32 {
          ro %arg3[%c0 for %c8192] : !stream.resource<external>{%c8192},
          wo %arg5[%c0 for %c24576] : !stream.resource<transient>{%c24576}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_64x32x64_f32(%c0_i32 : i32) {
        ro %arg5[%c0 for %c24576] : !stream.resource<transient>{%c24576},
        wo %arg4[%c0 for %c8192] : !stream.resource<external>{%c8192}
      }
    } => !stream.timepoint
    %4 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%3) => %result_0 : !stream.resource<transient>{%c24576} => !stream.timepoint
    %5 = stream.timepoint.await %4 => %result : !stream.resource<external>{%c8192}
    %6 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %5 : tensor<64x32xf32> in !stream.resource<external>{%c8192} -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_64x32_f32 ordinal(0) layout(#pipeline_layout2) count(%arg0: !hal.device) -> (index, index, index) {
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
      hal.executable.export public @fragment_dispatch_1_reduction_64x32_f32 ordinal(0) layout(#pipeline_layout2) count(%arg0: !hal.device) -> (index, index, index) {
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
          %11 = llvm.mlir.constant(8 : i64) : i64
          %12 = llvm.mlir.constant(32 : i64) : i64
          %13 = llvm.mlir.constant(7 : index) : i64
          %14 = llvm.mlir.constant(6 : index) : i64
          %15 = llvm.mlir.constant(5 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %21 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %22 = llvm.mlir.constant(64 : index) : i64
          %23 = llvm.mlir.constant(8 : index) : i64
          %24 = llvm.mlir.constant(32 : index) : i64
          %25 = llvm.mlir.constant(24576 : index) : i64
          %26 = llvm.mlir.constant(0 : index) : i64
          %27 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %28 = llvm.extractvalue %27[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          %30 = llvm.mul %25, %11 : i64
          %31 = llvm.udiv %30, %12 : i64
          %32 = llvm.getelementptr %29[%31] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %10 ["align"(%32, %22 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.getelementptr %34[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %36 = llvm.load %35 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %10 ["align"(%36, %22 : !llvm.ptr, i64)] : i1
          %37 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %38 = llvm.extractvalue %37[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %39 = llvm.getelementptr %38[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %40 = llvm.load %39 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %10 ["align"(%40, %22 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%26 : i64)
        ^bb1(%41: i64):  // 2 preds: ^bb0, ^bb4
          %42 = llvm.icmp "slt" %41, %22 : i64
          llvm.cond_br %42, ^bb2(%26, %21 : i64, vector<8xf32>), ^bb5
        ^bb2(%43: i64, %44: vector<8xf32>):  // 2 preds: ^bb1, ^bb3
          %45 = llvm.icmp "slt" %43, %24 : i64
          llvm.cond_br %45, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %46 = llvm.mul %41, %24 : i64
          %47 = llvm.add %46, %43 : i64
          %48 = llvm.getelementptr %32[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %49 = llvm.load %48 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %50 = llvm.add %41, %19 : i64
          %51 = llvm.mul %50, %24 : i64
          %52 = llvm.add %51, %43 : i64
          %53 = llvm.getelementptr %32[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %54 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %55 = llvm.add %41, %18 : i64
          %56 = llvm.mul %55, %24 : i64
          %57 = llvm.add %56, %43 : i64
          %58 = llvm.getelementptr %32[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %59 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %60 = llvm.add %41, %17 : i64
          %61 = llvm.mul %60, %24 : i64
          %62 = llvm.add %61, %43 : i64
          %63 = llvm.getelementptr %32[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %65 = llvm.add %41, %16 : i64
          %66 = llvm.mul %65, %24 : i64
          %67 = llvm.add %66, %43 : i64
          %68 = llvm.getelementptr %32[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %69 = llvm.load %68 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %70 = llvm.add %41, %15 : i64
          %71 = llvm.mul %70, %24 : i64
          %72 = llvm.add %71, %43 : i64
          %73 = llvm.getelementptr %32[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %74 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %75 = llvm.add %41, %14 : i64
          %76 = llvm.mul %75, %24 : i64
          %77 = llvm.add %76, %43 : i64
          %78 = llvm.getelementptr %32[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %79 = llvm.load %78 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %80 = llvm.add %41, %13 : i64
          %81 = llvm.mul %80, %24 : i64
          %82 = llvm.add %81, %43 : i64
          %83 = llvm.getelementptr %32[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %84 = llvm.load %83 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %85 = llvm.getelementptr %36[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %86 = llvm.load %85 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %87 = llvm.fadd %49, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %88 = llvm.fadd %54, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %89 = llvm.fadd %59, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %90 = llvm.fadd %64, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %91 = llvm.fadd %69, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %92 = llvm.fadd %74, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %93 = llvm.fadd %79, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %94 = llvm.fadd %84, %86 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %95 = llvm.extractvalue %20[0] : !llvm.array<8 x vector<8xf32>> 
          %96 = llvm.fcmp "ugt" %87, %95 : vector<8xf32>
          %97 = llvm.extractvalue %20[1] : !llvm.array<8 x vector<8xf32>> 
          %98 = llvm.fcmp "ugt" %88, %97 : vector<8xf32>
          %99 = llvm.extractvalue %20[2] : !llvm.array<8 x vector<8xf32>> 
          %100 = llvm.fcmp "ugt" %89, %99 : vector<8xf32>
          %101 = llvm.extractvalue %20[3] : !llvm.array<8 x vector<8xf32>> 
          %102 = llvm.fcmp "ugt" %90, %101 : vector<8xf32>
          %103 = llvm.extractvalue %20[4] : !llvm.array<8 x vector<8xf32>> 
          %104 = llvm.fcmp "ugt" %91, %103 : vector<8xf32>
          %105 = llvm.extractvalue %20[5] : !llvm.array<8 x vector<8xf32>> 
          %106 = llvm.fcmp "ugt" %92, %105 : vector<8xf32>
          %107 = llvm.extractvalue %20[6] : !llvm.array<8 x vector<8xf32>> 
          %108 = llvm.fcmp "ugt" %93, %107 : vector<8xf32>
          %109 = llvm.extractvalue %20[7] : !llvm.array<8 x vector<8xf32>> 
          %110 = llvm.fcmp "ugt" %94, %109 : vector<8xf32>
          %111 = llvm.select %96, %87, %95 : vector<8xi1>, vector<8xf32>
          %112 = llvm.select %98, %88, %97 : vector<8xi1>, vector<8xf32>
          %113 = llvm.select %100, %89, %99 : vector<8xi1>, vector<8xf32>
          %114 = llvm.select %102, %90, %101 : vector<8xi1>, vector<8xf32>
          %115 = llvm.select %104, %91, %103 : vector<8xi1>, vector<8xf32>
          %116 = llvm.select %106, %92, %105 : vector<8xi1>, vector<8xf32>
          %117 = llvm.select %108, %93, %107 : vector<8xi1>, vector<8xf32>
          %118 = llvm.select %110, %94, %109 : vector<8xi1>, vector<8xf32>
          %119 = llvm.fcmp "uno" %95, %95 : vector<8xf32>
          %120 = llvm.fcmp "uno" %97, %97 : vector<8xf32>
          %121 = llvm.fcmp "uno" %99, %99 : vector<8xf32>
          %122 = llvm.fcmp "uno" %101, %101 : vector<8xf32>
          %123 = llvm.fcmp "uno" %103, %103 : vector<8xf32>
          %124 = llvm.fcmp "uno" %105, %105 : vector<8xf32>
          %125 = llvm.fcmp "uno" %107, %107 : vector<8xf32>
          %126 = llvm.fcmp "uno" %109, %109 : vector<8xf32>
          %127 = llvm.select %119, %95, %111 : vector<8xi1>, vector<8xf32>
          %128 = llvm.select %120, %97, %112 : vector<8xi1>, vector<8xf32>
          %129 = llvm.select %121, %99, %113 : vector<8xi1>, vector<8xf32>
          %130 = llvm.select %122, %101, %114 : vector<8xi1>, vector<8xf32>
          %131 = llvm.select %123, %103, %115 : vector<8xi1>, vector<8xf32>
          %132 = llvm.select %124, %105, %116 : vector<8xi1>, vector<8xf32>
          %133 = llvm.select %125, %107, %117 : vector<8xi1>, vector<8xf32>
          %134 = llvm.select %126, %109, %118 : vector<8xi1>, vector<8xf32>
          %135 = llvm.extractelement %44[%9 : i64] : vector<8xf32>
          %136 = "llvm.intr.vector.reduce.fadd"(%135, %127) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %137 = llvm.extractelement %44[%8 : i64] : vector<8xf32>
          %138 = "llvm.intr.vector.reduce.fadd"(%137, %128) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %139 = llvm.extractelement %44[%7 : i64] : vector<8xf32>
          %140 = "llvm.intr.vector.reduce.fadd"(%139, %129) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %141 = llvm.extractelement %44[%6 : i64] : vector<8xf32>
          %142 = "llvm.intr.vector.reduce.fadd"(%141, %130) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %143 = llvm.extractelement %44[%5 : i64] : vector<8xf32>
          %144 = "llvm.intr.vector.reduce.fadd"(%143, %131) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %145 = llvm.extractelement %44[%4 : i64] : vector<8xf32>
          %146 = "llvm.intr.vector.reduce.fadd"(%145, %132) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %147 = llvm.extractelement %44[%3 : i64] : vector<8xf32>
          %148 = "llvm.intr.vector.reduce.fadd"(%147, %133) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %149 = llvm.extractelement %44[%2 : i64] : vector<8xf32>
          %150 = "llvm.intr.vector.reduce.fadd"(%149, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, vector<8xf32>) -> f32
          %151 = llvm.insertelement %136, %1[%9 : i64] : vector<8xf32>
          %152 = llvm.insertelement %138, %151[%8 : i64] : vector<8xf32>
          %153 = llvm.insertelement %140, %152[%7 : i64] : vector<8xf32>
          %154 = llvm.insertelement %142, %153[%6 : i64] : vector<8xf32>
          %155 = llvm.insertelement %144, %154[%5 : i64] : vector<8xf32>
          %156 = llvm.insertelement %146, %155[%4 : i64] : vector<8xf32>
          %157 = llvm.insertelement %148, %156[%3 : i64] : vector<8xf32>
          %158 = llvm.insertelement %150, %157[%2 : i64] : vector<8xf32>
          %159 = llvm.add %43, %23 : i64
          llvm.br ^bb2(%159, %158 : i64, vector<8xf32>)
        ^bb4:  // pred: ^bb2
          %160 = llvm.getelementptr %40[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %44, %160 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %161 = llvm.add %41, %23 : i64
          llvm.br ^bb1(%161 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>, %input2: tensor<32xf32>) -> (%output0: tensor<64xf32>)"}} {
    %c24576_i32 = arith.constant 24576 : i32
    %c32768 = arith.constant 32768 : index
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
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%c32768} => !stream.timepoint
    %3 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %4 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%3) => with(%0 as %arg3: !stream.resource<external>{%c16384}, %1 as %arg4: !stream.resource<external>{%c8192}, %2 as %arg5: !stream.resource<external>{%c128}, %result as %arg6: !stream.resource<external>{%c256}, %result_0 as %arg7: !stream.resource<transient>{%c32768}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @_encoding_0::@embedded_elf_x86_64::@_encoding_0_encode_64x64xf32_to_64x64xf32 {
          ro %arg3[%c0 for %c16384] : !stream.resource<external>{%c16384},
          wo %arg7[%c0 for %c32768] : !stream.resource<transient>{%c32768}
        }
        stream.cmd.dispatch @_encoding_1::@embedded_elf_x86_64::@_encoding_1_encode_64x32xf32_to_64x32xf32 {
          ro %arg4[%c0 for %c8192] : !stream.resource<external>{%c8192},
          wo %arg7[%c0 for %c32768] : !stream.resource<transient>{%c32768}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_64x32x64_f32(%c24576_i32 : i32) {
        ro %arg7[%c0 for %c32768] : !stream.resource<transient>{%c32768},
        wo %arg7[%c0 for %c32768] : !stream.resource<transient>{%c32768}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_64x32_f32 {
        ro %arg7[%c0 for %c32768] : !stream.resource<transient>{%c32768},
        ro %arg5[%c0 for %c128] : !stream.resource<external>{%c128},
        wo %arg6[%c0 for %c256] : !stream.resource<external>{%c256}
      }
    } => !stream.timepoint
    %5 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%4) => %result_0 : !stream.resource<transient>{%c32768} => !stream.timepoint
    %6 = stream.timepoint.await %5 => %result : !stream.resource<external>{%c256}
    %7 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %6 : tensor<64xf32> in !stream.resource<external>{%c256} -> !hal.buffer_view
    util.return %7 : !hal.buffer_view
  }
}
