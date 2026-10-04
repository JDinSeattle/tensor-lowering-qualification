hal.executable public @_encoding_0 {
  hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @_encoding_0_encode_Dx32xf32_to_Dx32xf32 ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1, %arg1)
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @_encoding_0_encode_Dx32xf32_to_Dx32xf32() {
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
        %7 = arith.extui %0 : i32 to i64
        %8 = arith.extui %1 : i32 to i64
        %9 = arith.shli %8, %c32_i64 : i64
        %10 = arith.ori %7, %9 : i64
        %11 = arith.index_castui %10 : i64 to index
        %12:2 = util.assume.int 
            %6<umin = 0, umax = 9007199254740991>, 
            %11<umin = 0, umax = 9007199254740991>
          : index, index
        %13 = iree_tensor_ext.dispatch.workload.ordinal %12#0, 0 : index
        %14 = iree_tensor_ext.dispatch.workload.ordinal %12#1, 0 : index
        %15 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%13}
        %16 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c2048) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xf32, #iree_encoding.layout<[#iree_cpu.cpu_encoding_resolver<configuration = {encoding_info = {innerDimsPos = [0, 1], innerTileSizes = [8, 1], outerDimsPerm = [0, 1]}}>]>>>{%14}
        %17 = iree_tensor_ext.dispatch.tensor.load %15, offsets = [0, 0], sizes = [%13, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%13} -> tensor<?x32xf32>
        %18 = iree_encoding.set_encoding %17 : tensor<?x32xf32> -> tensor<?x32xf32, #iree_encoding.layout<[#iree_cpu.cpu_encoding_resolver<configuration = {encoding_info = {innerDimsPos = [0, 1], innerTileSizes = [8, 1], outerDimsPerm = [0, 1]}}>]>>
        iree_tensor_ext.dispatch.tensor.store %18, %16, offsets = [0, 0], sizes = [%14, 32], strides = [1, 1] : tensor<?x32xf32, #iree_encoding.layout<[#iree_cpu.cpu_encoding_resolver<configuration = {encoding_info = {innerDimsPos = [0, 1], innerTileSizes = [8, 1], outerDimsPerm = [0, 1]}}>]>> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xf32, #iree_encoding.layout<[#iree_cpu.cpu_encoding_resolver<configuration = {encoding_info = {innerDimsPos = [0, 1], innerTileSizes = [8, 1], outerDimsPerm = [0, 1]}}>]>>>{%14}
        return
      }
    }
  }
}
