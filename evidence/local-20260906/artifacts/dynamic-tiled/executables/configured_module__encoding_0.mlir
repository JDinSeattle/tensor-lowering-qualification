hal.executable public @_encoding_0 {
  hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @_encoding_0_encode_Dx32xf32_to_Dx32xf32 ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1, %arg1)
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @_encoding_0_encode_Dx32xf32_to_Dx32xf32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
        %cst = arith.constant 0.000000e+00 : f32
        %c32_i64 = arith.constant 32 : i64
        %c0 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = arith.extui %0 : i32 to i64
        %3 = arith.extui %1 : i32 to i64
        %4 = arith.shli %3, %c32_i64 : i64
        %5 = arith.ori %2, %4 : i64
        %6 = arith.index_castui %5 : i64 to index
        %7:2 = util.assume.int 
            %6<umin = 0, umax = 9007199254740991>, 
            %6<umin = 0, umax = 9007199254740991>
          : index, index
        %8 = iree_tensor_ext.dispatch.workload.ordinal %7#0, 0 : index
        %9 = iree_tensor_ext.dispatch.workload.ordinal %7#1, 0 : index
        %10 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%8}
        %11 = affine.apply affine_map<()[s0] -> (s0 ceildiv 8)>()[%9]
        %12 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c2048) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32x8x1xf32>>{%11}
        %13 = iree_tensor_ext.dispatch.tensor.load %10, offsets = [0, 0], sizes = [%8, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%8} -> tensor<?x32xf32>
        %14 = affine.apply affine_map<()[s0] -> (s0 ceildiv 8)>()[%8]
        %15 = tensor.empty(%14) : tensor<?x32x8x1xf32>
        %pack = linalg.pack %13 padding_value(%cst : f32) outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [8, 1] into %15 {lowering_config = #iree_cpu.lowering_config<distribution = [8, 32], vector_common_parallel = [1, 1]>} : tensor<?x32xf32> -> tensor<?x32x8x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %12, offsets = [0, 0, 0, 0], sizes = [%11, 32, 8, 1], strides = [1, 1, 1, 1] : tensor<?x32x8x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32x8x1xf32>>{%11}
        return
      }
    }
  }
}
