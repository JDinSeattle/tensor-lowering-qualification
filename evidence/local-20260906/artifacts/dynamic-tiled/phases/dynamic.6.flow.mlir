#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
#map5 = affine_map<(d0, d1) -> (d0)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
#encoding = #iree_encoding.encoding<operand_index = 0 : index, op_type = matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, 16, 32]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : index, op_type = matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, 16, 32]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : index, op_type = matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, 16, 32]>
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  flow.executable private @matmul_dispatch_0 {
    flow.executable.export public @matmul_dispatch_0_matmul_Dx16x32_f32 workgroups(%arg0: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg0)
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @matmul_dispatch_0_matmul_Dx16x32_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32, #encoding>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32, #encoding1>>, %arg2: index, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = iree_tensor_ext.dispatch.workload.ordinal %arg2, 0 : index
        %1 = flow.dispatch.tie_shape %arg0 : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32, #encoding>>{%0}
        %2 = flow.dispatch.tie_shape %arg3 : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%0}
        %3 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [%0, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32, #encoding>>{%0} -> tensor<?x32xf32, #encoding>
        %4 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0], sizes = [32, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32, #encoding1>> -> tensor<32x16xf32, #encoding1>
        %5 = tensor.empty(%0) : tensor<?x16xf32, #encoding2>
        %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<?x16xf32, #encoding2>) -> tensor<?x16xf32, #encoding2>
        %7 = linalg.matmul ins(%3, %4 : tensor<?x32xf32, #encoding>, tensor<32x16xf32, #encoding1>) outs(%6 : tensor<?x16xf32, #encoding2>) -> tensor<?x16xf32, #encoding2>
        %8 = iree_encoding.unset_encoding %7 encoding_dims{%0} : tensor<?x16xf32, #encoding2> -> tensor<?x16xf32>{%0}
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 0], sizes = [%0, 16], strides = [1, 1] : tensor<?x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%0}
        return
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x32xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<32x16xf32>
    %3 = flow.tensor.encode %1 : tensor<?x32xf32>{%0} -> tensor<?x32xf32, #encoding>{%0}
    %4 = flow.tensor.encode %2 : tensor<32x16xf32> -> tensor<32x16xf32, #encoding1>
    %5 = flow.dispatch @matmul_dispatch_0::@matmul_dispatch_0_matmul_Dx16x32_f32[%0](%3, %4, %0) : (tensor<?x32xf32, #encoding>{%0}, tensor<32x16xf32, #encoding1>, index) -> tensor<?x16xf32>{%0}
    %6 = hal.tensor.export %5 "output0" : tensor<?x16xf32>{%0} -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
  flow.executable private @bias_relu_dispatch_0 {
    flow.executable.export public @bias_relu_dispatch_0_elementwise_Dx16_f32 workgroups(%arg0: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg0)
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @bias_relu_dispatch_0_elementwise_Dx16_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>, %arg2: index, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = iree_tensor_ext.dispatch.workload.ordinal %arg2, 0 : index
        %1 = flow.dispatch.tie_shape %arg0 : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%0}
        %2 = flow.dispatch.tie_shape %arg3 : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%0}
        %3 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [%0, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%0} -> tensor<?x16xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0], sizes = [16], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>> -> tensor<16xf32>
        %5 = tensor.empty(%0) : tensor<?x16xf32>
        %6 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%3, %4 : tensor<?x16xf32>, tensor<16xf32>) outs(%5 : tensor<?x16xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %7 = arith.addf %in, %in_0 : f32
          %8 = arith.maximumf %7, %cst : f32
          linalg.yield %8 : f32
        } -> tensor<?x16xf32>
        iree_tensor_ext.dispatch.tensor.store %6, %2, offsets = [0, 0], sizes = [%0, 16], strides = [1, 1] : tensor<?x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%0}
        return
      }
    }
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<?x16xf32>, %input1: tensor<16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x16xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<16xf32>
    %3 = flow.dispatch @bias_relu_dispatch_0::@bias_relu_dispatch_0_elementwise_Dx16_f32[%0](%1, %2, %0) : (tensor<?x16xf32>{%0}, tensor<16xf32>, index) -> tensor<?x16xf32>{%0}
    %4 = hal.tensor.export %3 "output0" : tensor<?x16xf32>{%0} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  flow.executable private @row_sum_dispatch_0 {
    flow.executable.export public @row_sum_dispatch_0_reduction_Dx16_f32 workgroups(%arg0: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg0)
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @row_sum_dispatch_0_reduction_Dx16_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>, %arg1: index, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = iree_tensor_ext.dispatch.workload.ordinal %arg1, 0 : index
        %1 = flow.dispatch.tie_shape %arg0 : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%0}
        %2 = flow.dispatch.tie_shape %arg2 : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%0}
        %3 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [%0, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%0} -> tensor<?x16xf32>
        %4 = tensor.empty(%0) : tensor<?xf32>
        %5 = linalg.fill ins(%cst : f32) outs(%4 : tensor<?xf32>) -> tensor<?xf32>
        %6 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "reduction"]} ins(%3 : tensor<?x16xf32>) outs(%5 : tensor<?xf32>) {
        ^bb0(%in: f32, %out: f32):
          %7 = arith.addf %in, %out : f32
          linalg.yield %7 : f32
        } -> tensor<?xf32>
        iree_tensor_ext.dispatch.tensor.store %6, %2, offsets = [0], sizes = [%0], strides = [1] : tensor<?xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%0}
        return
      }
    }
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<?x16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x16xf32>{%0}
    %2 = flow.dispatch @row_sum_dispatch_0::@row_sum_dispatch_0_reduction_Dx16_f32[%0](%1, %0) : (tensor<?x16xf32>{%0}, index) -> tensor<?xf32>{%0}
    %3 = hal.tensor.export %2 "output0" : tensor<?xf32>{%0} -> !hal.buffer_view
    util.return %3 : !hal.buffer_view
  }
  flow.executable private @fragment_dispatch_1 {
    flow.executable.export public @fragment_dispatch_1_reduction_Dx16_f32 workgroups(%arg0: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg0)
      flow.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @fragment_dispatch_1_reduction_Dx16_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>, %arg2: index, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>) {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = iree_tensor_ext.dispatch.workload.ordinal %arg2, 0 : index
        %1 = flow.dispatch.tie_shape %arg0 : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%0}
        %2 = flow.dispatch.tie_shape %arg3 : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%0}
        %3 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [%0, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%0} -> tensor<?x16xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0], sizes = [16], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>> -> tensor<16xf32>
        %5 = tensor.empty(%0) : tensor<?xf32>
        %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<?xf32>) -> tensor<?xf32>
        %7 = linalg.generic {indexing_maps = [#map3, #map4, #map5], iterator_types = ["parallel", "reduction"]} ins(%3, %4 : tensor<?x16xf32>, tensor<16xf32>) outs(%6 : tensor<?xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %8 = arith.addf %in, %in_0 : f32
          %9 = arith.maximumf %8, %cst : f32
          %10 = arith.addf %9, %out : f32
          linalg.yield %10 : f32
        } -> tensor<?xf32>
        iree_tensor_ext.dispatch.tensor.store %7, %2, offsets = [0], sizes = [%0], strides = [1] : tensor<?xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%0}
        return
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x32xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<32x16xf32>
    %3 = hal.tensor.import %arg2 "input2" : !hal.buffer_view -> tensor<16xf32>
    %4 = flow.tensor.encode %1 : tensor<?x32xf32>{%0} -> tensor<?x32xf32, #encoding>{%0}
    %5 = flow.tensor.encode %2 : tensor<32x16xf32> -> tensor<32x16xf32, #encoding1>
    %6 = flow.dispatch @matmul_dispatch_0::@matmul_dispatch_0_matmul_Dx16x32_f32[%0](%4, %5, %0) : (tensor<?x32xf32, #encoding>{%0}, tensor<32x16xf32, #encoding1>, index) -> tensor<?x16xf32>{%0}
    %7 = flow.dispatch @fragment_dispatch_1::@fragment_dispatch_1_reduction_Dx16_f32[%0](%6, %3, %0) : (tensor<?x16xf32>{%0}, tensor<16xf32>, index) -> tensor<?xf32>{%0}
    %8 = hal.tensor.export %7 "output0" : tensor<?xf32>{%0} -> !hal.buffer_view
    util.return %8 : !hal.buffer_view
  }
}
