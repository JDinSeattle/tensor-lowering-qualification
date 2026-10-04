#encoding = #iree_encoding.layout<[#iree_cpu.cpu_encoding_resolver<configuration = {encoding_info = {innerDimsPos = [0, 1], innerTileSizes = [8, 1], outerDimsPerm = [0, 1]}}>]>
#encoding1 = #iree_encoding.layout<[#iree_cpu.cpu_encoding_resolver<configuration = {encoding_info = {innerDimsPos = [1, 0], innerTileSizes = [8, 1], outerDimsPerm = [1, 0]}}>]>
#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
#map5 = affine_map<(d0, d1) -> (d0)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
#encoding2 = #iree_encoding.encoding<operand_index = 0 : index, op_type = matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [7, 17, 33]>
#encoding3 = #iree_encoding.encoding<operand_index = 1 : index, op_type = matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [7, 17, 33]>
#encoding4 = #iree_encoding.encoding<operand_index = 2 : index, op_type = matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [7, 17, 33]>
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  stream.executable private @matmul_dispatch_0 {
    stream.executable.export public @matmul_dispatch_0_matmul_7x17x33_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_0_matmul_7x17x33_f32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}, %arg2: i32) {
        %c1088 = arith.constant 1088 : index
        %c0 = arith.constant 0 : index
        %cst = arith.constant 0.000000e+00 : f32
        %0 = arith.index_castui %arg2 : i32 to index
        %1 = util.assume.int %0[<umin = 0, umax = 0>, <umin = 4288, umax = 4288, udiv = 4288>] : index
        %2 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x33xf32, #encoding>>
        %3 = stream.binding.subspan %arg0[%c1088] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<33x17xf32, #encoding1>>
        %4 = stream.binding.subspan %arg1[%1] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x17xf32>>
        %5 = iree_tensor_ext.dispatch.tensor.load %2, offsets = [0, 0], sizes = [7, 33], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x33xf32, #encoding>> -> tensor<7x33xf32, #encoding2>
        %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0], sizes = [33, 17], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<33x17xf32, #encoding1>> -> tensor<33x17xf32, #encoding3>
        %7 = tensor.empty() : tensor<7x17xf32, #encoding4>
        %8 = linalg.fill ins(%cst : f32) outs(%7 : tensor<7x17xf32, #encoding4>) -> tensor<7x17xf32, #encoding4>
        %9 = linalg.matmul ins(%5, %6 : tensor<7x33xf32, #encoding2>, tensor<33x17xf32, #encoding3>) outs(%8 : tensor<7x17xf32, #encoding4>) -> tensor<7x17xf32, #encoding4>
        %10 = iree_encoding.unset_encoding %9 : tensor<7x17xf32, #encoding4> -> tensor<7x17xf32>
        iree_tensor_ext.dispatch.tensor.store %10, %4, offsets = [0, 0], sizes = [7, 17], strides = [1, 1] : tensor<7x17xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x17xf32>>
        return
      }
    }
  }
  stream.executable private @_encoding_0 {
    stream.executable.export public @_encoding_0_encode_7x33xf32_to_7x33xf32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @_encoding_0_encode_7x33xf32_to_7x33xf32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}) {
        %c0 = arith.constant 0 : index
        %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x33xf32>>
        %1 = stream.binding.subspan %arg1[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x33xf32, #encoding>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [7, 33], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x33xf32>> -> tensor<7x33xf32>
        %3 = iree_encoding.set_encoding %2 : tensor<7x33xf32> -> tensor<7x33xf32, #encoding>
        iree_tensor_ext.dispatch.tensor.store %3, %1, offsets = [0, 0], sizes = [7, 33], strides = [1, 1] : tensor<7x33xf32, #encoding> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x33xf32, #encoding>>
        return
      }
    }
  }
  stream.executable private @_encoding_1 {
    stream.executable.export public @_encoding_1_encode_33x17xf32_to_33x17xf32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @_encoding_1_encode_33x17xf32_to_33x17xf32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}) {
        %c0 = arith.constant 0 : index
        %c1088 = arith.constant 1088 : index
        %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<33x17xf32>>
        %1 = stream.binding.subspan %arg1[%c1088] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<33x17xf32, #encoding1>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [33, 17], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<33x17xf32>> -> tensor<33x17xf32>
        %3 = iree_encoding.set_encoding %2 : tensor<33x17xf32> -> tensor<33x17xf32, #encoding1>
        iree_tensor_ext.dispatch.tensor.store %3, %1, offsets = [0, 0], sizes = [33, 17], strides = [1, 1] : tensor<33x17xf32, #encoding1> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<33x17xf32, #encoding1>>
        return
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
        stream.cmd.dispatch @_encoding_0::@_encoding_0_encode_7x33xf32_to_7x33xf32 {
          ro %arg2[%c0 for %c924] : !stream.resource<external>{%c924},
          wo %arg5[%c0 for %c4288] : !stream.resource<transient>{%c4288}
        }
        stream.cmd.dispatch @_encoding_1::@_encoding_1_encode_33x17xf32_to_33x17xf32 {
          ro %arg3[%c0 for %c2244] : !stream.resource<external>{%c2244},
          wo %arg5[%c0 for %c4288] : !stream.resource<transient>{%c4288}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@matmul_dispatch_0_matmul_7x17x33_f32(%c0_i32 : i32) {
        ro %arg5[%c0 for %c4288] : !stream.resource<transient>{%c4288},
        wo %arg4[%c0 for %c476] : !stream.resource<external>{%c476}
      }
    } => !stream.timepoint
    %4 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%3) => %result_0 : !stream.resource<transient>{%c4288} => !stream.timepoint
    %5 = stream.timepoint.await %4 => %result : !stream.resource<external>{%c476}
    %6 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %5 : tensor<7x17xf32> in !stream.resource<external>{%c476} -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
  stream.executable private @bias_relu_dispatch_0 {
    stream.executable.export public @bias_relu_dispatch_0_elementwise_7x17_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @bias_relu_dispatch_0_elementwise_7x17_f32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}, %arg2: !stream.binding {stream.alignment = 64 : index}) {
        %cst = arith.constant 0.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x17xf32>>
        %1 = stream.binding.subspan %arg1[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<17xf32>>
        %2 = stream.binding.subspan %arg2[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x17xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [7, 17], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x17xf32>> -> tensor<7x17xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0], sizes = [17], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<17xf32>> -> tensor<17xf32>
        %5 = tensor.empty() : tensor<7x17xf32>
        %6 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%3, %4 : tensor<7x17xf32>, tensor<17xf32>) outs(%5 : tensor<7x17xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %7 = arith.addf %in, %in_0 : f32
          %8 = arith.maximumf %7, %cst : f32
          linalg.yield %8 : f32
        } -> tensor<7x17xf32>
        iree_tensor_ext.dispatch.tensor.store %6, %2, offsets = [0, 0], sizes = [7, 17], strides = [1, 1] : tensor<7x17xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x17xf32>>
        return
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
      stream.cmd.dispatch @bias_relu_dispatch_0::@bias_relu_dispatch_0_elementwise_7x17_f32 {
        ro %arg2[%c0 for %c476] : !stream.resource<external>{%c476},
        ro %arg3[%c0 for %c68] : !stream.resource<external>{%c68},
        wo %arg4[%c0 for %c476] : !stream.resource<external>{%c476}
      }
    } => !stream.timepoint
    %3 = stream.timepoint.await %2 => %result : !stream.resource<external>{%c476}
    %4 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %3 : tensor<7x17xf32> in !stream.resource<external>{%c476} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  stream.executable private @row_sum_dispatch_0 {
    stream.executable.export public @row_sum_dispatch_0_reduction_7x17_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @row_sum_dispatch_0_reduction_7x17_f32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}) {
        %cst = arith.constant 0.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x17xf32>>
        %1 = stream.binding.subspan %arg1[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [7, 17], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x17xf32>> -> tensor<7x17xf32>
        %3 = tensor.empty() : tensor<7xf32>
        %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<7xf32>) -> tensor<7xf32>
        %5 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "reduction"]} ins(%2 : tensor<7x17xf32>) outs(%4 : tensor<7xf32>) {
        ^bb0(%in: f32, %out: f32):
          %6 = arith.addf %in, %out : f32
          linalg.yield %6 : f32
        } -> tensor<7xf32>
        iree_tensor_ext.dispatch.tensor.store %5, %1, offsets = [0], sizes = [7], strides = [1] : tensor<7xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7xf32>>
        return
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
      stream.cmd.dispatch @row_sum_dispatch_0::@row_sum_dispatch_0_reduction_7x17_f32 {
        ro %arg1[%c0 for %c476] : !stream.resource<external>{%c476},
        wo %arg2[%c0 for %c28] : !stream.resource<external>{%c28}
      }
    } => !stream.timepoint
    %2 = stream.timepoint.await %1 => %result : !stream.resource<external>{%c28}
    %3 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %2 : tensor<7xf32> in !stream.resource<external>{%c28} -> !hal.buffer_view
    util.return %3 : !hal.buffer_view
  }
  stream.executable private @fragment_dispatch_1 {
    stream.executable.export public @fragment_dispatch_1_reduction_7x17_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @fragment_dispatch_1_reduction_7x17_f32(%arg0: !stream.binding {stream.alignment = 64 : index}, %arg1: !stream.binding {stream.alignment = 64 : index}, %arg2: !stream.binding {stream.alignment = 64 : index}) {
        %cst = arith.constant 0.000000e+00 : f32
        %c4288 = arith.constant 4288 : index
        %c0 = arith.constant 0 : index
        %0 = stream.binding.subspan %arg0[%c4288] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x17xf32>>
        %1 = stream.binding.subspan %arg1[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<17xf32>>
        %2 = stream.binding.subspan %arg2[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [7, 17], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x17xf32>> -> tensor<7x17xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0], sizes = [17], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<17xf32>> -> tensor<17xf32>
        %5 = tensor.empty() : tensor<7xf32>
        %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<7xf32>) -> tensor<7xf32>
        %7 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "reduction"]} ins(%3, %4 : tensor<7x17xf32>, tensor<17xf32>) outs(%6 : tensor<7xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %8 = arith.addf %in, %in_0 : f32
          %9 = arith.maximumf %8, %cst : f32
          %10 = arith.addf %9, %out : f32
          linalg.yield %10 : f32
        } -> tensor<7xf32>
        iree_tensor_ext.dispatch.tensor.store %7, %2, offsets = [0], sizes = [7], strides = [1] : tensor<7xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7xf32>>
        return
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
        stream.cmd.dispatch @_encoding_0::@_encoding_0_encode_7x33xf32_to_7x33xf32 {
          ro %arg3[%c0 for %c924] : !stream.resource<external>{%c924},
          wo %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800}
        }
        stream.cmd.dispatch @_encoding_1::@_encoding_1_encode_33x17xf32_to_33x17xf32 {
          ro %arg4[%c0 for %c2244] : !stream.resource<external>{%c2244},
          wo %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800}
        }
      }
      stream.cmd.dispatch @matmul_dispatch_0::@matmul_dispatch_0_matmul_7x17x33_f32(%c4288_i32 : i32) {
        ro %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800},
        wo %arg7[%c0 for %c4800] : !stream.resource<transient>{%c4800}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@fragment_dispatch_1_reduction_7x17_f32 {
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
