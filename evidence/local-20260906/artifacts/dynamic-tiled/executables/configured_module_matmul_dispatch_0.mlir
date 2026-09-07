hal.executable public @matmul_dispatch_0 {
  hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @matmul_dispatch_0_matmul_Dx16x32_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_0_matmul_Dx16x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
        %c32_i64 = arith.constant 32 : i64
        %cst = arith.constant 0.000000e+00 : f32
        %c2048 = arith.constant 2048 : index
        %c0 = arith.constant 0 : index
        %0 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(3) : i32
        %4 = arith.extui %0 : i32 to i64
        %5 = arith.extui %1 : i32 to i64
        %6 = arith.shli %5, %c32_i64 : i64
        %7 = arith.ori %4, %6 : i64
        %8 = arith.index_castui %7 : i64 to index
        %9 = arith.extui %2 : i32 to i64
        %10 = arith.extui %3 : i32 to i64
        %11 = arith.shli %10, %c32_i64 : i64
        %12 = arith.ori %9, %11 : i64
        %13 = arith.index_castui %12 : i64 to index
        %14:2 = util.assume.int 
            %8[<umin = 0, umax = 0>, <umin = 2048, umax = 1152921504606849024>], 
            %13<umin = 0, umax = 9007199254740991>
          : index, index
        %15 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x8x1xf32>>
        %16 = iree_tensor_ext.dispatch.workload.ordinal %14#1, 0 : index
        %17 = affine.apply affine_map<()[s0] -> (s0 ceildiv 8)>()[%16]
        %18 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2048) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32x8x1xf32>>{%17}
        %19 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%14#0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%16}
        %20 = iree_tensor_ext.dispatch.tensor.load %18, offsets = [0, 0, 0, 0], sizes = [%17, 32, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32x8x1xf32>>{%17} -> tensor<?x32x8x1xf32>
        %21 = iree_tensor_ext.dispatch.tensor.load %15, offsets = [0, 0, 0, 0], sizes = [2, 32, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x8x1xf32>> -> tensor<2x32x8x1xf32>
        %22 = tensor.empty(%17) : tensor<2x?x8x8xf32>
        %23 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8, 8]>} ins(%cst : f32) outs(%22 : tensor<2x?x8x8xf32>) -> tensor<2x?x8x8xf32>
        %24 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [2, 128, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 8, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 1]>} ins(%21, %20 : tensor<2x32x8x1xf32>, tensor<?x32x8x1xf32>) outs(%23 : tensor<2x?x8x8xf32>) -> tensor<2x?x8x8xf32>
        %25 = tensor.empty(%16) : tensor<?x16xf32>
        %unpack = linalg.unpack %24 outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [8, 8] into %25 {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1]>} : tensor<2x?x8x8xf32> -> tensor<?x16xf32>
        iree_tensor_ext.dispatch.tensor.store %unpack, %19, offsets = [0, 0], sizes = [%16, 16], strides = [1, 1] : tensor<?x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%16}
        return
      }
    }
  }
}
