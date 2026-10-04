hal.executable public @matmul_dispatch_0 {
  hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @matmul_dispatch_0_matmul_1x16x32_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_0_matmul_1x16x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
        %cst = arith.constant 0.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %c128 = arith.constant 128 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 0, umax = 0>, <umin = 2176, umax = 2176, udiv = 2176>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x32x1x1xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c128) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x8x1xf32>>
        %5 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x16xf32>>
        %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0, 0], sizes = [1, 32, 1, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x32x1x1xf32>> -> tensor<1x32x1x1xf32>
        %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0, 0, 0], sizes = [2, 32, 8, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x8x1xf32>> -> tensor<2x32x8x1xf32>
        %8 = tensor.empty() : tensor<1x2x1x8xf32>
        %9 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 1, 8]>} ins(%cst : f32) outs(%8 : tensor<1x2x1x8xf32>) -> tensor<1x2x1x8xf32>
        %10 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 2, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 1, 8, 0], vector_reduction = [0, 0, 1, 0, 0, 1]>} ins(%6, %7 : tensor<1x32x1x1xf32>, tensor<2x32x8x1xf32>) outs(%9 : tensor<1x2x1x8xf32>) -> tensor<1x2x1x8xf32>
        %11 = tensor.empty() : tensor<1x16xf32>
        %unpack = linalg.unpack %10 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [1, 8] into %11 {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1]>} : tensor<1x2x1x8xf32> -> tensor<1x16xf32>
        iree_tensor_ext.dispatch.tensor.store %unpack, %5, offsets = [0, 0], sizes = [1, 16], strides = [1, 1] : tensor<1x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x16xf32>>
        return
      }
    }
  }
}
