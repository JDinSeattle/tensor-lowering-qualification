#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout2 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout3 = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout4 = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
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
        llvm.func @iree_uk_mmt4d(!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32 attributes {hal.import.bitcode = true, hal.import.fields = ["processor_data"], llvm.bareptr = true}
        llvm.func @matmul_dispatch_0_matmul_Dx16x32_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(52239 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(16 : index) : i64
          %4 = llvm.mlir.constant(8 : i64) : i64
          %5 = llvm.mlir.constant(512 : index) : i64
          %6 = llvm.mlir.constant(dense<false> : vector<8xi1>) : vector<8xi1>
          %7 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %8 = llvm.mlir.constant(7 : index) : i64
          %9 = llvm.mlir.constant(6 : index) : i64
          %10 = llvm.mlir.constant(5 : index) : i64
          %11 = llvm.mlir.constant(4 : index) : i64
          %12 = llvm.mlir.constant(3 : index) : i64
          %13 = llvm.mlir.constant(64 : index) : i64
          %14 = llvm.mlir.constant(256 : index) : i64
          %15 = llvm.mlir.constant(-8 : index) : i64
          %16 = llvm.mlir.constant(0 : index) : i64
          %17 = llvm.mlir.constant(32 : i64) : i64
          %18 = llvm.mlir.constant(1 : index) : i64
          %19 = llvm.mlir.constant(32 : index) : i64
          %20 = llvm.mlir.constant(8 : i32) : i32
          %21 = llvm.mlir.constant(1 : i32) : i32
          %22 = llvm.mlir.constant(1537 : i32) : i32
          %23 = llvm.mlir.constant(2 : index) : i64
          %24 = llvm.mlir.constant(8 : index) : i64
          %25 = llvm.alloca %13 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.load %27 : !llvm.ptr -> i32
          %29 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %30 = llvm.load %29 : !llvm.ptr -> i32
          %31 = llvm.getelementptr %27[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %32 = llvm.load %31 : !llvm.ptr -> i32
          %33 = llvm.getelementptr %27[3] : (!llvm.ptr) -> !llvm.ptr, i32
          %34 = llvm.load %33 : !llvm.ptr -> i32
          %35 = llvm.zext %28 : i32 to i64
          %36 = llvm.zext %30 : i32 to i64
          %37 = llvm.shl %36, %17 : i64
          %38 = llvm.or %35, %37 : i64
          %39 = llvm.zext %32 : i32 to i64
          %40 = llvm.zext %34 : i32 to i64
          %41 = llvm.shl %40, %17 : i64
          %42 = llvm.or %39, %41 : i64
          %43 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.icmp "sle" %42, %16 : i64
          %46 = llvm.sub %16, %42 : i64
          %47 = llvm.sub %42, %18 : i64
          %48 = llvm.select %45, %46, %47 : i1, i64
          %49 = llvm.sdiv %48, %24 : i64
          %50 = llvm.sub %16, %49 : i64
          %51 = llvm.add %49, %18 : i64
          %52 = llvm.select %45, %50, %51 : i1, i64
          %53 = llvm.getelementptr %43[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %54 = llvm.load %53 : !llvm.ptr -> !llvm.ptr
          %55 = llvm.mul %38, %4 : i64
          %56 = llvm.udiv %55, %17 : i64
          %57 = llvm.getelementptr %54[%56] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%57, %11 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%16 : i64)
        ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb4
          %59 = llvm.icmp "slt" %58, %23 : i64
          llvm.cond_br %59, ^bb2(%16 : i64), ^bb5
        ^bb2(%60: i64):  // 2 preds: ^bb1, ^bb3
          %61 = llvm.icmp "slt" %60, %52 : i64
          llvm.cond_br %61, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %62 = llvm.mul %58, %14 overflow<nsw> : i64
          %63 = llvm.mul %60, %14 overflow<nsw> : i64
          %64 = llvm.add %63, %5 : i64
          %65 = llvm.getelementptr inbounds %arg0[4] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %66 = llvm.alloca %4 x i64 {alignment = 8 : i64} : (i64) -> !llvm.ptr
          %67 = llvm.load %65 : !llvm.ptr -> i64
          %68 = llvm.or %67, %0 : i64
          llvm.store %68, %66 : i64, !llvm.ptr
          %69 = llvm.getelementptr inbounds %65[1] : (!llvm.ptr) -> !llvm.ptr, i64
          %70 = llvm.load %69 : !llvm.ptr -> i64
          %71 = llvm.getelementptr inbounds %66[1] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %70, %71 : i64, !llvm.ptr
          %72 = llvm.getelementptr inbounds %65[2] : (!llvm.ptr) -> !llvm.ptr, i64
          %73 = llvm.load %72 : !llvm.ptr -> i64
          %74 = llvm.getelementptr inbounds %66[2] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %73, %74 : i64, !llvm.ptr
          %75 = llvm.getelementptr inbounds %65[3] : (!llvm.ptr) -> !llvm.ptr, i64
          %76 = llvm.load %75 : !llvm.ptr -> i64
          %77 = llvm.getelementptr inbounds %66[3] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %76, %77 : i64, !llvm.ptr
          %78 = llvm.getelementptr inbounds %65[4] : (!llvm.ptr) -> !llvm.ptr, i64
          %79 = llvm.load %78 : !llvm.ptr -> i64
          %80 = llvm.getelementptr inbounds %66[4] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %79, %80 : i64, !llvm.ptr
          %81 = llvm.getelementptr inbounds %65[5] : (!llvm.ptr) -> !llvm.ptr, i64
          %82 = llvm.load %81 : !llvm.ptr -> i64
          %83 = llvm.getelementptr inbounds %66[5] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %82, %83 : i64, !llvm.ptr
          %84 = llvm.getelementptr inbounds %65[6] : (!llvm.ptr) -> !llvm.ptr, i64
          %85 = llvm.load %84 : !llvm.ptr -> i64
          %86 = llvm.getelementptr inbounds %66[6] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %85, %86 : i64, !llvm.ptr
          %87 = llvm.getelementptr inbounds %65[7] : (!llvm.ptr) -> !llvm.ptr, i64
          %88 = llvm.load %87 : !llvm.ptr -> i64
          %89 = llvm.getelementptr inbounds %66[7] : (!llvm.ptr) -> !llvm.ptr, i64
          llvm.store %88, %89 : i64, !llvm.ptr
          %90 = llvm.call @iree_uk_mmt4d(%44, %62, %14, %44, %64, %14, %25, %16, %13, %18, %18, %19, %20, %20, %21, %22, %66) : (!llvm.ptr, i64, i64, !llvm.ptr, i64, i64, !llvm.ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, !llvm.ptr) -> i32
          %91 = llvm.mul %60, %24 overflow<nsw> : i64
          %92 = llvm.mul %60, %15 overflow<nsw> : i64
          %93 = llvm.add %92, %42 : i64
          %94 = llvm.icmp "slt" %93, %24 : i64
          %95 = llvm.select %94, %93, %24 : i1, i64
          %96 = llvm.mul %58, %24 overflow<nsw> : i64
          %97 = llvm.mul %16, %13 : i64
          %98 = llvm.add %97, %97 : i64
          %99 = llvm.mul %16, %24 : i64
          %100 = llvm.add %98, %99 : i64
          %101 = llvm.add %100, %16 : i64
          %102 = llvm.getelementptr %25[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %103 = llvm.load %102 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %104 = llvm.mul %18, %24 : i64
          %105 = llvm.add %98, %104 : i64
          %106 = llvm.add %105, %16 : i64
          %107 = llvm.getelementptr %25[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %109 = llvm.mul %23, %24 : i64
          %110 = llvm.add %98, %109 : i64
          %111 = llvm.add %110, %16 : i64
          %112 = llvm.getelementptr %25[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %113 = llvm.load %112 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %114 = llvm.mul %12, %24 : i64
          %115 = llvm.add %98, %114 : i64
          %116 = llvm.add %115, %16 : i64
          %117 = llvm.getelementptr %25[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %118 = llvm.load %117 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %119 = llvm.mul %11, %24 : i64
          %120 = llvm.add %98, %119 : i64
          %121 = llvm.add %120, %16 : i64
          %122 = llvm.getelementptr %25[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %123 = llvm.load %122 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %124 = llvm.mul %10, %24 : i64
          %125 = llvm.add %98, %124 : i64
          %126 = llvm.add %125, %16 : i64
          %127 = llvm.getelementptr %25[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %128 = llvm.load %127 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %129 = llvm.mul %9, %24 : i64
          %130 = llvm.add %98, %129 : i64
          %131 = llvm.add %130, %16 : i64
          %132 = llvm.getelementptr %25[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %133 = llvm.load %132 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %134 = llvm.mul %8, %24 : i64
          %135 = llvm.add %98, %134 : i64
          %136 = llvm.add %135, %16 : i64
          %137 = llvm.getelementptr %25[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %138 = llvm.load %137 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %139 = llvm.shufflevector %103, %108 [0, 8, 1, 9, 4, 12, 5, 13] : vector<8xf32> 
          %140 = llvm.shufflevector %103, %108 [2, 10, 3, 11, 6, 14, 7, 15] : vector<8xf32> 
          %141 = llvm.shufflevector %113, %118 [0, 8, 1, 9, 4, 12, 5, 13] : vector<8xf32> 
          %142 = llvm.shufflevector %113, %118 [2, 10, 3, 11, 6, 14, 7, 15] : vector<8xf32> 
          %143 = llvm.shufflevector %123, %128 [0, 8, 1, 9, 4, 12, 5, 13] : vector<8xf32> 
          %144 = llvm.shufflevector %123, %128 [2, 10, 3, 11, 6, 14, 7, 15] : vector<8xf32> 
          %145 = llvm.shufflevector %133, %138 [0, 8, 1, 9, 4, 12, 5, 13] : vector<8xf32> 
          %146 = llvm.shufflevector %133, %138 [2, 10, 3, 11, 6, 14, 7, 15] : vector<8xf32> 
          %147 = llvm.shufflevector %139, %141 [2, 3, 8, 9, 6, 7, 12, 13] : vector<8xf32> 
          %148 = llvm.shufflevector %140, %142 [2, 3, 8, 9, 6, 7, 12, 13] : vector<8xf32> 
          %149 = llvm.shufflevector %143, %145 [2, 3, 8, 9, 6, 7, 12, 13] : vector<8xf32> 
          %150 = llvm.shufflevector %144, %146 [2, 3, 8, 9, 6, 7, 12, 13] : vector<8xf32> 
          %151 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0xcc", "=x,x,x" %139, %147 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %152 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0x33", "=x,x,x" %141, %147 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %153 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0xcc", "=x,x,x" %140, %148 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %154 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0x33", "=x,x,x" %142, %148 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %155 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0xcc", "=x,x,x" %143, %149 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %156 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0x33", "=x,x,x" %145, %149 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %157 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0xcc", "=x,x,x" %144, %150 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %158 = llvm.inline_asm asm_dialect = intel "vblendps $0, $1, $2, 0x33", "=x,x,x" %146, %150 : (vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %159 = llvm.shufflevector %151, %155 [0, 1, 2, 3, 8, 9, 10, 11] : vector<8xf32> 
          %160 = llvm.shufflevector %152, %156 [0, 1, 2, 3, 8, 9, 10, 11] : vector<8xf32> 
          %161 = llvm.shufflevector %153, %157 [0, 1, 2, 3, 8, 9, 10, 11] : vector<8xf32> 
          %162 = llvm.shufflevector %154, %158 [0, 1, 2, 3, 8, 9, 10, 11] : vector<8xf32> 
          %163 = llvm.shufflevector %151, %155 [4, 5, 6, 7, 12, 13, 14, 15] : vector<8xf32> 
          %164 = llvm.shufflevector %152, %156 [4, 5, 6, 7, 12, 13, 14, 15] : vector<8xf32> 
          %165 = llvm.shufflevector %153, %157 [4, 5, 6, 7, 12, 13, 14, 15] : vector<8xf32> 
          %166 = llvm.shufflevector %154, %158 [4, 5, 6, 7, 12, 13, 14, 15] : vector<8xf32> 
          %167 = llvm.icmp "sgt" %95, %16 : i64
          %168 = llvm.select %167, %7, %6 : i1, vector<8xi1>
          %169 = llvm.icmp "sgt" %95, %18 : i64
          %170 = llvm.select %169, %7, %6 : i1, vector<8xi1>
          %171 = llvm.icmp "sgt" %95, %23 : i64
          %172 = llvm.select %171, %7, %6 : i1, vector<8xi1>
          %173 = llvm.icmp "sgt" %95, %12 : i64
          %174 = llvm.select %173, %7, %6 : i1, vector<8xi1>
          %175 = llvm.icmp "sgt" %95, %11 : i64
          %176 = llvm.select %175, %7, %6 : i1, vector<8xi1>
          %177 = llvm.icmp "sgt" %95, %10 : i64
          %178 = llvm.select %177, %7, %6 : i1, vector<8xi1>
          %179 = llvm.icmp "sgt" %95, %9 : i64
          %180 = llvm.select %179, %7, %6 : i1, vector<8xi1>
          %181 = llvm.icmp "sgt" %95, %8 : i64
          %182 = llvm.select %181, %7, %6 : i1, vector<8xi1>
          %183 = llvm.mul %91, %3 : i64
          %184 = llvm.add %183, %96 : i64
          %185 = llvm.getelementptr %57[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %159, %185, %168 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %186 = llvm.add %91, %18 : i64
          %187 = llvm.mul %186, %3 : i64
          %188 = llvm.add %187, %96 : i64
          %189 = llvm.getelementptr %57[%188] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %160, %189, %170 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %190 = llvm.add %91, %23 : i64
          %191 = llvm.mul %190, %3 : i64
          %192 = llvm.add %191, %96 : i64
          %193 = llvm.getelementptr %57[%192] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %161, %193, %172 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %194 = llvm.add %91, %12 : i64
          %195 = llvm.mul %194, %3 : i64
          %196 = llvm.add %195, %96 : i64
          %197 = llvm.getelementptr %57[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %162, %197, %174 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %198 = llvm.add %91, %11 : i64
          %199 = llvm.mul %198, %3 : i64
          %200 = llvm.add %199, %96 : i64
          %201 = llvm.getelementptr %57[%200] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %163, %201, %176 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %202 = llvm.add %91, %10 : i64
          %203 = llvm.mul %202, %3 : i64
          %204 = llvm.add %203, %96 : i64
          %205 = llvm.getelementptr %57[%204] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %164, %205, %178 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %206 = llvm.add %91, %9 : i64
          %207 = llvm.mul %206, %3 : i64
          %208 = llvm.add %207, %96 : i64
          %209 = llvm.getelementptr %57[%208] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %165, %209, %180 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %210 = llvm.add %91, %8 : i64
          %211 = llvm.mul %210, %3 : i64
          %212 = llvm.add %211, %96 : i64
          %213 = llvm.getelementptr %57[%212] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %166, %213, %182 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %214 = llvm.add %60, %18 : i64
          llvm.br ^bb2(%214 : i64)
        ^bb4:  // pred: ^bb2
          %215 = llvm.add %58, %18 : i64
          llvm.br ^bb1(%215 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  hal.executable private @_encoding_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @_encoding_0_encode_Dx32xf32_to_Dx32xf32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @_encoding_0_encode_Dx32xf32_to_Dx32xf32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi32>
          %2 = llvm.mlir.constant(256 : index) : i64
          %3 = llvm.mlir.constant(8 : i64) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(-8 : index) : i64
          %7 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %8 = llvm.mlir.constant(8 : index) : i64
          %9 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %10 = llvm.mlir.constant(1 : index) : i64
          %11 = llvm.mlir.constant(32 : index) : i64
          %12 = llvm.mlir.constant(32 : i64) : i64
          %13 = llvm.mlir.constant(0 : index) : i64
          %14 = llvm.mlir.constant(2048 : index) : i64
          %15 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %16 = llvm.extractvalue %15[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %17 = llvm.load %16 : !llvm.ptr -> i32
          %18 = llvm.getelementptr %16[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %19 = llvm.load %18 : !llvm.ptr -> i32
          %20 = llvm.zext %17 : i32 to i64
          %21 = llvm.zext %19 : i32 to i64
          %22 = llvm.shl %21, %12 : i64
          %23 = llvm.or %20, %22 : i64
          %24 = llvm.extractvalue %15[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %5 ["align"(%25, %4 : !llvm.ptr, i64)] : i1
          %26 = llvm.icmp "sle" %23, %13 : i64
          %27 = llvm.sub %13, %23 : i64
          %28 = llvm.sub %23, %10 : i64
          %29 = llvm.select %26, %27, %28 : i1, i64
          %30 = llvm.sdiv %29, %8 : i64
          %31 = llvm.sub %13, %30 : i64
          %32 = llvm.add %30, %10 : i64
          %33 = llvm.select %26, %31, %32 : i1, i64
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.getelementptr %35[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %14, %3 : i64
          %39 = llvm.udiv %38, %12 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%40, %4 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%13 : i64)
        ^bb1(%41: i64):  // 2 preds: ^bb0, ^bb10
          %42 = llvm.icmp "slt" %41, %33 : i64
          llvm.cond_br %42, ^bb2, ^bb11
        ^bb2:  // pred: ^bb1
          %43 = llvm.mul %41, %8 overflow<nsw> : i64
          %44 = llvm.mul %41, %6 overflow<nsw> : i64
          %45 = llvm.add %44, %23 : i64
          %46 = llvm.icmp "slt" %45, %8 : i64
          %47 = llvm.select %46, %45, %8 : i1, i64
          llvm.br ^bb3(%13 : i64)
        ^bb3(%48: i64):  // 2 preds: ^bb2, ^bb9
          %49 = llvm.icmp "slt" %48, %11 : i64
          llvm.cond_br %49, ^bb4, ^bb10
        ^bb4:  // pred: ^bb3
          %50 = llvm.trunc %47 : i64 to i32
          %51 = llvm.insertelement %50, %1[%0 : i32] : vector<8xi32>
          %52 = llvm.shufflevector %51, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %53 = llvm.icmp "sgt" %52, %9 : vector<8xi32>
          llvm.br ^bb5(%13, %7 : i64, vector<8xf32>)
        ^bb5(%54: i64, %55: vector<8xf32>):  // 2 preds: ^bb4, ^bb8
          %56 = llvm.icmp "slt" %54, %8 : i64
          llvm.cond_br %56, ^bb6, ^bb9
        ^bb6:  // pred: ^bb5
          %57 = llvm.extractelement %53[%54 : i64] : vector<8xi1>
          llvm.cond_br %57, ^bb7, ^bb8(%55 : vector<8xf32>)
        ^bb7:  // pred: ^bb6
          %58 = llvm.add %43, %54 : i64
          %59 = llvm.mul %58, %11 overflow<nsw, nuw> : i64
          %60 = llvm.add %59, %48 overflow<nsw, nuw> : i64
          %61 = llvm.getelementptr inbounds|nuw %25[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %62 = llvm.load %61 : !llvm.ptr -> f32
          %63 = llvm.insertelement %62, %55[%54 : i64] : vector<8xf32>
          llvm.br ^bb8(%63 : vector<8xf32>)
        ^bb8(%64: vector<8xf32>):  // 2 preds: ^bb6, ^bb7
          %65 = llvm.add %54, %10 : i64
          llvm.br ^bb5(%65, %64 : i64, vector<8xf32>)
        ^bb9:  // pred: ^bb5
          %66 = llvm.mul %41, %2 : i64
          %67 = llvm.mul %48, %8 : i64
          %68 = llvm.add %66, %67 : i64
          %69 = llvm.add %68, %13 : i64
          %70 = llvm.add %69, %13 : i64
          %71 = llvm.getelementptr %40[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %55, %71 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %72 = llvm.add %48, %10 : i64
          llvm.br ^bb3(%72 : i64)
        ^bb10:  // pred: ^bb3
          %73 = llvm.add %41, %10 : i64
          llvm.br ^bb1(%73 : i64)
        ^bb11:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  hal.executable private @_encoding_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @_encoding_1_encode_32x16xf32_to_32x16xf32 ordinal(0) layout(#pipeline_layout2) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.func @_encoding_1_encode_32x16xf32_to_32x16xf32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(256 : index) : i64
          %2 = llvm.mlir.constant(64 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(16 : index) : i64
          %5 = llvm.mlir.constant(8 : index) : i64
          %6 = llvm.mlir.constant(1 : index) : i64
          %7 = llvm.mlir.constant(32 : index) : i64
          %8 = llvm.mlir.constant(2 : index) : i64
          %9 = llvm.mlir.constant(0 : index) : i64
          %10 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %11 = llvm.extractvalue %10[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %12 = llvm.load %11 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%12, %2 : !llvm.ptr, i64)] : i1
          %13 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %14 = llvm.extractvalue %13[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %15 = llvm.getelementptr %14[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%16, %2 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%9 : i64)
        ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb5
          %18 = llvm.icmp "slt" %17, %8 : i64
          llvm.cond_br %18, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %19 = llvm.mul %17, %5 overflow<nsw> : i64
          llvm.br ^bb3(%9 : i64)
        ^bb3(%20: i64):  // 2 preds: ^bb2, ^bb4
          %21 = llvm.icmp "slt" %20, %7 : i64
          llvm.cond_br %21, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %22 = llvm.mul %20, %4 : i64
          %23 = llvm.add %22, %19 : i64
          %24 = llvm.getelementptr %12[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %25 = llvm.load %24 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %26 = llvm.mul %17, %1 : i64
          %27 = llvm.mul %20, %5 : i64
          %28 = llvm.add %26, %27 : i64
          %29 = llvm.add %28, %9 : i64
          %30 = llvm.add %29, %9 : i64
          %31 = llvm.getelementptr %16[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %25, %31 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %32 = llvm.add %20, %6 : i64
          llvm.br ^bb3(%32 : i64)
        ^bb5:  // pred: ^bb3
          %33 = llvm.add %17, %6 : i64
          llvm.br ^bb1(%33 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1024 = arith.constant 1024 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c8 = arith.constant 8 : index
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
    %4 = arith.ceildivsi %0, %c8 : index
    %5 = arith.muli %4, %c1024 overflow<nsw> : index
    %6 = arith.muli %0, %c64 : index
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%6} => !stream.timepoint
    %7 = arith.addi %5, %c2048 : index
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%7} => !stream.timepoint
    %8 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %9 = arith.index_castui %0 : index to i64
    %10 = arith.index_castui %0 : index to i32
    %11 = arith.shrui %9, %c32_i64 : i64
    %12 = arith.trunci %11 : i64 to i32
    %13 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%8) => with(%2 as %arg2: !stream.resource<external>{%1}, %3 as %arg3: !stream.resource<external>{%c2048}, %result as %arg4: !stream.resource<external>{%6}, %result_0 as %arg5: !stream.resource<transient>{%7}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @_encoding_0::@embedded_elf_x86_64::@_encoding_0_encode_Dx32xf32_to_Dx32xf32[%0](%10, %12 : i32, i32) {
          ro %arg2[%c0 for %1] : !stream.resource<external>{%1},
          wo %arg5[%c0 for %7] : !stream.resource<transient>{%7}
        }
        stream.cmd.dispatch @_encoding_1::@embedded_elf_x86_64::@_encoding_1_encode_32x16xf32_to_32x16xf32 {
          ro %arg3[%c0 for %c2048] : !stream.resource<external>{%c2048},
          wo %arg5[%c0 for %7] : !stream.resource<transient>{%7}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_Dx16x32_f32[%0](%c0_i32, %c0_i32, %10, %12 : i32, i32, i32, i32) {
        ro %arg5[%c0 for %7] : !stream.resource<transient>{%7},
        wo %arg4[%c0 for %6] : !stream.resource<external>{%6}
      }
    } => !stream.timepoint
    %14 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%13) => %result_0 : !stream.resource<transient>{%7} => !stream.timepoint
    %15 = stream.timepoint.await %14 => %result : !stream.resource<external>{%6}
    %16 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %15 : tensor<?x16xf32>{%0} in !stream.resource<external>{%6} -> !hal.buffer_view
    util.return %16 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_Dx16_f32 ordinal(0) layout(#pipeline_layout3) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
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
      hal.executable.export public @fragment_dispatch_1_reduction_Dx16_f32 ordinal(0) layout(#pipeline_layout4) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
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
          %11 = llvm.mlir.constant(8 : i64) : i64
          %12 = llvm.mlir.constant(64 : index) : i64
          %13 = llvm.mlir.constant(true) : i1
          %14 = llvm.mlir.constant(7 : index) : i64
          %15 = llvm.mlir.constant(6 : index) : i64
          %16 = llvm.mlir.constant(5 : index) : i64
          %17 = llvm.mlir.constant(4 : index) : i64
          %18 = llvm.mlir.constant(3 : index) : i64
          %19 = llvm.mlir.constant(2 : index) : i64
          %20 = llvm.mlir.constant(1 : index) : i64
          %21 = llvm.mlir.constant(dense<false> : vector<8xi1>) : vector<8xi1>
          %22 = llvm.mlir.constant(dense<true> : vector<8xi1>) : vector<8xi1>
          %23 = llvm.mlir.poison : vector<8xf32>
          %24 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %25 = llvm.mlir.constant(dense<0.000000e+00> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %26 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %27 = llvm.mlir.constant(8 : index) : i64
          %28 = llvm.mlir.constant(16 : index) : i64
          %29 = llvm.mlir.constant(32 : i64) : i64
          %30 = llvm.mlir.constant(0 : index) : i64
          %31 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %32 = llvm.extractvalue %31[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %33 = llvm.load %32 : !llvm.ptr -> i32
          %34 = llvm.getelementptr %32[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %35 = llvm.load %34 : !llvm.ptr -> i32
          %36 = llvm.getelementptr %32[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %37 = llvm.load %36 : !llvm.ptr -> i32
          %38 = llvm.getelementptr %32[3] : (!llvm.ptr) -> !llvm.ptr, i32
          %39 = llvm.load %38 : !llvm.ptr -> i32
          %40 = llvm.zext %33 : i32 to i64
          %41 = llvm.zext %35 : i32 to i64
          %42 = llvm.shl %41, %29 : i64
          %43 = llvm.or %40, %42 : i64
          %44 = llvm.zext %37 : i32 to i64
          %45 = llvm.zext %39 : i32 to i64
          %46 = llvm.shl %45, %29 : i64
          %47 = llvm.or %44, %46 : i64
          %48 = llvm.extractvalue %31[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %49 = llvm.getelementptr %48[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %50 = llvm.load %49 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %13 ["align"(%50, %12 : !llvm.ptr, i64)] : i1
          %51 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %52 = llvm.extractvalue %51[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %53 = llvm.load %52 : !llvm.ptr -> !llvm.ptr
          %54 = llvm.mul %43, %11 : i64
          %55 = llvm.udiv %54, %29 : i64
          %56 = llvm.getelementptr %53[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%56, %17 : !llvm.ptr, i64)] : i1
          %57 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %58 = llvm.extractvalue %57[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %59 = llvm.getelementptr %58[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %60 = llvm.load %59 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %13 ["align"(%60, %12 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%30 : i64)
        ^bb1(%61: i64):  // 2 preds: ^bb0, ^bb5
          %62 = llvm.icmp "slt" %61, %47 : i64
          llvm.cond_br %62, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %63 = llvm.sub %47, %61 : i64
          %64 = llvm.icmp "slt" %63, %27 : i64
          %65 = llvm.select %64, %63, %27 : i1, i64
          %66 = llvm.trunc %65 : i64 to i32
          %67 = llvm.insertelement %66, %10[%9 : i32] : vector<8xi32>
          %68 = llvm.shufflevector %67, %10 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %69 = llvm.icmp "sgt" %68, %24 : vector<8xi32>
          %70 = llvm.getelementptr %60[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %26, %70, %69 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %71 = llvm.icmp "sgt" %65, %30 : i64
          %72 = llvm.select %71, %22, %21 : i1, vector<8xi1>
          %73 = llvm.icmp "sgt" %65, %20 : i64
          %74 = llvm.select %73, %22, %21 : i1, vector<8xi1>
          %75 = llvm.icmp "sgt" %65, %19 : i64
          %76 = llvm.select %75, %22, %21 : i1, vector<8xi1>
          %77 = llvm.icmp "sgt" %65, %18 : i64
          %78 = llvm.select %77, %22, %21 : i1, vector<8xi1>
          %79 = llvm.icmp "sgt" %65, %17 : i64
          %80 = llvm.select %79, %22, %21 : i1, vector<8xi1>
          %81 = llvm.icmp "sgt" %65, %16 : i64
          %82 = llvm.select %81, %22, %21 : i1, vector<8xi1>
          %83 = llvm.icmp "sgt" %65, %15 : i64
          %84 = llvm.select %83, %22, %21 : i1, vector<8xi1>
          %85 = llvm.icmp "sgt" %65, %14 : i64
          %86 = llvm.select %85, %22, %21 : i1, vector<8xi1>
          %87 = llvm.intr.masked.load %70, %69, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          llvm.br ^bb3(%30, %87 : i64, vector<8xf32>)
        ^bb3(%88: i64, %89: vector<8xf32>):  // 2 preds: ^bb2, ^bb4
          %90 = llvm.icmp "slt" %88, %28 : i64
          llvm.cond_br %90, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %91 = llvm.mul %61, %28 : i64
          %92 = llvm.add %91, %88 : i64
          %93 = llvm.getelementptr %56[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %94 = llvm.intr.masked.load %93, %72, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %95 = llvm.add %61, %20 : i64
          %96 = llvm.mul %95, %28 : i64
          %97 = llvm.add %96, %88 : i64
          %98 = llvm.getelementptr %56[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %99 = llvm.intr.masked.load %98, %74, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %100 = llvm.add %61, %19 : i64
          %101 = llvm.mul %100, %28 : i64
          %102 = llvm.add %101, %88 : i64
          %103 = llvm.getelementptr %56[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.intr.masked.load %103, %76, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %105 = llvm.add %61, %18 : i64
          %106 = llvm.mul %105, %28 : i64
          %107 = llvm.add %106, %88 : i64
          %108 = llvm.getelementptr %56[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.intr.masked.load %108, %78, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %110 = llvm.add %61, %17 : i64
          %111 = llvm.mul %110, %28 : i64
          %112 = llvm.add %111, %88 : i64
          %113 = llvm.getelementptr %56[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.intr.masked.load %113, %80, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %115 = llvm.add %61, %16 : i64
          %116 = llvm.mul %115, %28 : i64
          %117 = llvm.add %116, %88 : i64
          %118 = llvm.getelementptr %56[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.intr.masked.load %118, %82, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %120 = llvm.add %61, %15 : i64
          %121 = llvm.mul %120, %28 : i64
          %122 = llvm.add %121, %88 : i64
          %123 = llvm.getelementptr %56[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.intr.masked.load %123, %84, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %125 = llvm.add %61, %14 : i64
          %126 = llvm.mul %125, %28 : i64
          %127 = llvm.add %126, %88 : i64
          %128 = llvm.getelementptr %56[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.intr.masked.load %128, %86, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %130 = llvm.getelementptr %50[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %131 = llvm.load %130 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %132 = llvm.fadd %94, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %133 = llvm.fadd %99, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %134 = llvm.fadd %104, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %135 = llvm.fadd %109, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %136 = llvm.fadd %114, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %137 = llvm.fadd %119, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %138 = llvm.fadd %124, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %139 = llvm.fadd %129, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %140 = llvm.extractvalue %25[0] : !llvm.array<8 x vector<8xf32>> 
          %141 = llvm.fcmp "ugt" %132, %140 : vector<8xf32>
          %142 = llvm.extractvalue %25[1] : !llvm.array<8 x vector<8xf32>> 
          %143 = llvm.fcmp "ugt" %133, %142 : vector<8xf32>
          %144 = llvm.extractvalue %25[2] : !llvm.array<8 x vector<8xf32>> 
          %145 = llvm.fcmp "ugt" %134, %144 : vector<8xf32>
          %146 = llvm.extractvalue %25[3] : !llvm.array<8 x vector<8xf32>> 
          %147 = llvm.fcmp "ugt" %135, %146 : vector<8xf32>
          %148 = llvm.extractvalue %25[4] : !llvm.array<8 x vector<8xf32>> 
          %149 = llvm.fcmp "ugt" %136, %148 : vector<8xf32>
          %150 = llvm.extractvalue %25[5] : !llvm.array<8 x vector<8xf32>> 
          %151 = llvm.fcmp "ugt" %137, %150 : vector<8xf32>
          %152 = llvm.extractvalue %25[6] : !llvm.array<8 x vector<8xf32>> 
          %153 = llvm.fcmp "ugt" %138, %152 : vector<8xf32>
          %154 = llvm.extractvalue %25[7] : !llvm.array<8 x vector<8xf32>> 
          %155 = llvm.fcmp "ugt" %139, %154 : vector<8xf32>
          %156 = llvm.select %141, %132, %140 : vector<8xi1>, vector<8xf32>
          %157 = llvm.select %143, %133, %142 : vector<8xi1>, vector<8xf32>
          %158 = llvm.select %145, %134, %144 : vector<8xi1>, vector<8xf32>
          %159 = llvm.select %147, %135, %146 : vector<8xi1>, vector<8xf32>
          %160 = llvm.select %149, %136, %148 : vector<8xi1>, vector<8xf32>
          %161 = llvm.select %151, %137, %150 : vector<8xi1>, vector<8xf32>
          %162 = llvm.select %153, %138, %152 : vector<8xi1>, vector<8xf32>
          %163 = llvm.select %155, %139, %154 : vector<8xi1>, vector<8xf32>
          %164 = llvm.fcmp "uno" %140, %140 : vector<8xf32>
          %165 = llvm.fcmp "uno" %142, %142 : vector<8xf32>
          %166 = llvm.fcmp "uno" %144, %144 : vector<8xf32>
          %167 = llvm.fcmp "uno" %146, %146 : vector<8xf32>
          %168 = llvm.fcmp "uno" %148, %148 : vector<8xf32>
          %169 = llvm.fcmp "uno" %150, %150 : vector<8xf32>
          %170 = llvm.fcmp "uno" %152, %152 : vector<8xf32>
          %171 = llvm.fcmp "uno" %154, %154 : vector<8xf32>
          %172 = llvm.select %164, %140, %156 : vector<8xi1>, vector<8xf32>
          %173 = llvm.select %165, %142, %157 : vector<8xi1>, vector<8xf32>
          %174 = llvm.select %166, %144, %158 : vector<8xi1>, vector<8xf32>
          %175 = llvm.select %167, %146, %159 : vector<8xi1>, vector<8xf32>
          %176 = llvm.select %168, %148, %160 : vector<8xi1>, vector<8xf32>
          %177 = llvm.select %169, %150, %161 : vector<8xi1>, vector<8xf32>
          %178 = llvm.select %170, %152, %162 : vector<8xi1>, vector<8xf32>
          %179 = llvm.select %171, %154, %163 : vector<8xi1>, vector<8xf32>
          %180 = llvm.extractelement %89[%8 : i64] : vector<8xf32>
          %181 = "llvm.intr.vp.reduce.fadd"(%180, %172, %72, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %182 = llvm.extractelement %89[%6 : i64] : vector<8xf32>
          %183 = "llvm.intr.vp.reduce.fadd"(%182, %173, %74, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %184 = llvm.extractelement %89[%5 : i64] : vector<8xf32>
          %185 = "llvm.intr.vp.reduce.fadd"(%184, %174, %76, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %186 = llvm.extractelement %89[%4 : i64] : vector<8xf32>
          %187 = "llvm.intr.vp.reduce.fadd"(%186, %175, %78, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %188 = llvm.extractelement %89[%3 : i64] : vector<8xf32>
          %189 = "llvm.intr.vp.reduce.fadd"(%188, %176, %80, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %190 = llvm.extractelement %89[%2 : i64] : vector<8xf32>
          %191 = "llvm.intr.vp.reduce.fadd"(%190, %177, %82, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %192 = llvm.extractelement %89[%1 : i64] : vector<8xf32>
          %193 = "llvm.intr.vp.reduce.fadd"(%192, %178, %84, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %194 = llvm.extractelement %89[%0 : i64] : vector<8xf32>
          %195 = "llvm.intr.vp.reduce.fadd"(%194, %179, %86, %7) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %196 = llvm.insertelement %181, %23[%8 : i64] : vector<8xf32>
          %197 = llvm.insertelement %183, %196[%6 : i64] : vector<8xf32>
          %198 = llvm.insertelement %185, %197[%5 : i64] : vector<8xf32>
          %199 = llvm.insertelement %187, %198[%4 : i64] : vector<8xf32>
          %200 = llvm.insertelement %189, %199[%3 : i64] : vector<8xf32>
          %201 = llvm.insertelement %191, %200[%2 : i64] : vector<8xf32>
          %202 = llvm.insertelement %193, %201[%1 : i64] : vector<8xf32>
          %203 = llvm.insertelement %195, %202[%0 : i64] : vector<8xf32>
          %204 = llvm.add %88, %27 : i64
          llvm.br ^bb3(%204, %203 : i64, vector<8xf32>)
        ^bb5:  // pred: ^bb3
          llvm.intr.masked.store %89, %70, %69 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %205 = llvm.add %61, %27 : i64
          llvm.br ^bb1(%205 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %9 : i32
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c1024 = arith.constant 1024 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c8 = arith.constant 8 : index
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
    %5 = arith.ceildivsi %0, %c8 : index
    %6 = arith.muli %5, %c1024 overflow<nsw> : index
    %7 = arith.muli %0, %c64 : index
    %8 = arith.muli %0, %c4 : index
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%8} => !stream.timepoint
    %9 = arith.addi %6, %c2048 : index
    %10 = arith.addi %9, %7 : index
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%10} => !stream.timepoint
    %11 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %12 = arith.index_castui %0 : index to i64
    %13 = arith.index_castui %0 : index to i32
    %14 = arith.shrui %12, %c32_i64 : i64
    %15 = arith.trunci %14 : i64 to i32
    %16 = arith.index_castui %9 : index to i64
    %17 = arith.index_castui %9 : index to i32
    %18 = arith.shrui %16, %c32_i64 : i64
    %19 = arith.trunci %18 : i64 to i32
    %20 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%11) => with(%2 as %arg3: !stream.resource<external>{%1}, %3 as %arg4: !stream.resource<external>{%c2048}, %4 as %arg5: !stream.resource<external>{%c64}, %result as %arg6: !stream.resource<external>{%8}, %result_0 as %arg7: !stream.resource<transient>{%10}) {
      stream.cmd.concurrent {
        stream.cmd.dispatch @_encoding_0::@embedded_elf_x86_64::@_encoding_0_encode_Dx32xf32_to_Dx32xf32[%0](%13, %15 : i32, i32) {
          ro %arg3[%c0 for %1] : !stream.resource<external>{%1},
          wo %arg7[%c0 for %10] : !stream.resource<transient>{%10}
        }
        stream.cmd.dispatch @_encoding_1::@embedded_elf_x86_64::@_encoding_1_encode_32x16xf32_to_32x16xf32 {
          ro %arg4[%c0 for %c2048] : !stream.resource<external>{%c2048},
          wo %arg7[%c0 for %10] : !stream.resource<transient>{%10}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_Dx16x32_f32[%0](%17, %19, %13, %15 : i32, i32, i32, i32) {
        ro %arg7[%c0 for %10] : !stream.resource<transient>{%10},
        wo %arg7[%c0 for %10] : !stream.resource<transient>{%10}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_Dx16_f32[%0](%17, %19, %13, %15 : i32, i32, i32, i32) {
        ro %arg7[%c0 for %10] : !stream.resource<transient>{%10},
        ro %arg5[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg6[%c0 for %8] : !stream.resource<external>{%8}
      }
    } => !stream.timepoint
    %21 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%20) => %result_0 : !stream.resource<transient>{%10} => !stream.timepoint
    %22 = stream.timepoint.await %21 => %result : !stream.resource<external>{%8}
    %23 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %22 : tensor<?xf32>{%0} in !stream.resource<external>{%8} -> !hal.buffer_view
    util.return %23 : !hal.buffer_view
  }
}
