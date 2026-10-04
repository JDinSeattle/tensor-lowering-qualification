module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>]> : !hal.device
  hal.executable private @matmul_dispatch_0 {
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
  util.global private mutable @matmul_dispatch_0_embedded_elf_x86_64_matmul_dispatch_0_matmul_1x16x32_f32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c4608 = arith.constant 4608 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c4608}
    util.global.store %buffer, @matmul_dispatch_0_embedded_elf_x86_64_matmul_dispatch_0_matmul_1x16x32_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @matmul_dispatch_0_embedded_elf_x86_64_matmul_dispatch_0_matmul_1x16x32_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %c2176_i32 = arith.constant 2176 : i32
    %matmul_dispatch_0_embedded_elf_x86_64_matmul_dispatch_0_matmul_1x16x32_f32_buffer = util.global.load @matmul_dispatch_0_embedded_elf_x86_64_matmul_dispatch_0_matmul_1x16x32_f32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c2240 = arith.constant 2240 : index
    %c2304 = arith.constant 2304 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_1x16x32_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@matmul_dispatch_0) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_1x16x32_f32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c2176_i32]) bindings([
        (%matmul_dispatch_0_embedded_elf_x86_64_matmul_dispatch_0_matmul_1x16x32_f32_buffer : !hal.buffer)[%c0, %c2240], 
        (%matmul_dispatch_0_embedded_elf_x86_64_matmul_dispatch_0_matmul_1x16x32_f32_buffer : !hal.buffer)[%c2304, %c2240]
      ]) flags("None")
      hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    }
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %1 = util.null : !hal.fence
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%1) signal(%fence) commands(%cmd) flags("None")
    %c-1_i32 = arith.constant -1 : i32
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
