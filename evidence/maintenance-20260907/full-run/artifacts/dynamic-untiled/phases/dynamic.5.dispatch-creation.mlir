#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x32xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<32x16xf32>
    %3 = flow.dispatch.workgroups[%0](%1, %2, %0) : (tensor<?x32xf32>{%0}, tensor<32x16xf32>, index) -> tensor<?x16xf32>{%0} =
        (%arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>, %arg4: index, %arg5: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %5 = iree_tensor_ext.dispatch.workload.ordinal %arg4, 0 : index
      %6 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0], sizes = [%5, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%5} -> tensor<?x32xf32>
      %7 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0, 0], sizes = [32, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>> -> tensor<32x16xf32>
      %8 = tensor.empty(%5) : tensor<?x16xf32>
      %9 = linalg.fill ins(%cst : f32) outs(%8 : tensor<?x16xf32>) -> tensor<?x16xf32>
      %10 = linalg.matmul ins(%6, %7 : tensor<?x32xf32>, tensor<32x16xf32>) outs(%9 : tensor<?x16xf32>) -> tensor<?x16xf32>
      iree_tensor_ext.dispatch.tensor.store %10, %arg5, offsets = [0, 0], sizes = [%5, 16], strides = [1, 1] : tensor<?x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%5}
      flow.return
    } count(%arg2: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg2)
      flow.return %x, %y, %z : index, index, index
    }
    %4 = hal.tensor.export %3 "output0" : tensor<?x16xf32>{%0} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<?x16xf32>, %input1: tensor<16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x16xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<16xf32>
    %3 = flow.dispatch.workgroups[%0](%1, %2, %0) : (tensor<?x16xf32>{%0}, tensor<16xf32>, index) -> tensor<?x16xf32>{%0} =
        (%arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>, %arg4: index, %arg5: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %5 = iree_tensor_ext.dispatch.workload.ordinal %arg4, 0 : index
      %6 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0], sizes = [%5, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%5} -> tensor<?x16xf32>
      %7 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0], sizes = [16], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>> -> tensor<16xf32>
      %8 = tensor.empty(%5) : tensor<?x16xf32>
      %9 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%6, %7 : tensor<?x16xf32>, tensor<16xf32>) outs(%8 : tensor<?x16xf32>) {
      ^bb0(%in: f32, %in_0: f32, %out: f32):
        %10 = arith.addf %in, %in_0 : f32
        %11 = arith.maximumf %10, %cst : f32
        linalg.yield %11 : f32
      } -> tensor<?x16xf32>
      iree_tensor_ext.dispatch.tensor.store %9, %arg5, offsets = [0, 0], sizes = [%5, 16], strides = [1, 1] : tensor<?x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%5}
      flow.return
    } count(%arg2: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg2)
      flow.return %x, %y, %z : index, index, index
    }
    %4 = hal.tensor.export %3 "output0" : tensor<?x16xf32>{%0} -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<?x16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x16xf32>{%0}
    %2 = flow.dispatch.workgroups[%0](%1, %0) : (tensor<?x16xf32>{%0}, index) -> tensor<?xf32>{%0} =
        (%arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>, %arg2: index, %arg3: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %4 = iree_tensor_ext.dispatch.workload.ordinal %arg2, 0 : index
      %5 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0], sizes = [%4, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%4} -> tensor<?x16xf32>
      %6 = tensor.empty(%4) : tensor<?xf32>
      %7 = linalg.fill ins(%cst : f32) outs(%6 : tensor<?xf32>) -> tensor<?xf32>
      %8 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%5 : tensor<?x16xf32>) outs(%7 : tensor<?xf32>) {
      ^bb0(%in: f32, %out: f32):
        %9 = arith.addf %in, %out : f32
        linalg.yield %9 : f32
      } -> tensor<?xf32>
      iree_tensor_ext.dispatch.tensor.store %8, %arg3, offsets = [0], sizes = [%4], strides = [1] : tensor<?xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%4}
      flow.return
    } count(%arg1: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
      flow.return %x, %y, %z : index, index, index
    }
    %3 = hal.tensor.export %2 "output0" : tensor<?xf32>{%0} -> !hal.buffer_view
    util.return %3 : !hal.buffer_view
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x32xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<32x16xf32>
    %3 = hal.tensor.import %arg2 "input2" : !hal.buffer_view -> tensor<16xf32>
    %4 = flow.dispatch.workgroups[%0](%1, %2, %0) : (tensor<?x32xf32>{%0}, tensor<32x16xf32>, index) -> tensor<?x16xf32>{%0} =
        (%arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>, %arg4: !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>, %arg5: index, %arg6: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %7 = iree_tensor_ext.dispatch.workload.ordinal %arg5, 0 : index
      %8 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0, 0], sizes = [%7, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%7} -> tensor<?x32xf32>
      %9 = iree_tensor_ext.dispatch.tensor.load %arg4, offsets = [0, 0], sizes = [32, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>> -> tensor<32x16xf32>
      %10 = tensor.empty(%7) : tensor<?x16xf32>
      %11 = linalg.fill ins(%cst : f32) outs(%10 : tensor<?x16xf32>) -> tensor<?x16xf32>
      %12 = linalg.matmul ins(%8, %9 : tensor<?x32xf32>, tensor<32x16xf32>) outs(%11 : tensor<?x16xf32>) -> tensor<?x16xf32>
      iree_tensor_ext.dispatch.tensor.store %12, %arg6, offsets = [0, 0], sizes = [%7, 16], strides = [1, 1] : tensor<?x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%7}
      flow.return
    } count(%arg3: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg3)
      flow.return %x, %y, %z : index, index, index
    }
    %5 = flow.dispatch.workgroups[%0](%4, %3, %0) : (tensor<?x16xf32>{%0}, tensor<16xf32>, index) -> tensor<?xf32>{%0} =
        (%arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>, %arg4: !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>, %arg5: index, %arg6: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %7 = iree_tensor_ext.dispatch.workload.ordinal %arg5, 0 : index
      %8 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0, 0], sizes = [%7, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%7} -> tensor<?x16xf32>
      %9 = iree_tensor_ext.dispatch.tensor.load %arg4, offsets = [0], sizes = [16], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>> -> tensor<16xf32>
      %10 = tensor.empty(%7) : tensor<?xf32>
      %11 = linalg.fill ins(%cst : f32) outs(%10 : tensor<?xf32>) -> tensor<?xf32>
      %12 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "reduction"]} ins(%8, %9 : tensor<?x16xf32>, tensor<16xf32>) outs(%11 : tensor<?xf32>) {
      ^bb0(%in: f32, %in_0: f32, %out: f32):
        %13 = arith.addf %in, %in_0 : f32
        %14 = arith.maximumf %13, %cst : f32
        %15 = arith.addf %14, %out : f32
        linalg.yield %15 : f32
      } -> tensor<?xf32>
      iree_tensor_ext.dispatch.tensor.store %12, %arg6, offsets = [0], sizes = [%7], strides = [1] : tensor<?xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%7}
      flow.return
    } count(%arg3: index) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg3)
      flow.return %x, %y, %z : index, index, index
    }
    %6 = hal.tensor.export %5 "output0" : tensor<?xf32>{%0} -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
}
