#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>) -> (%output0: tensor<64x32xf32>)"}} {
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<64x64xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<64x32xf32>
    %2 = flow.dispatch.workgroups(%0, %1) : (tensor<64x64xf32>, tensor<64x32xf32>) -> tensor<64x32xf32> =
        (%arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>>, %arg4: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x32xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %4 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0], sizes = [64, 64], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64xf32>> -> tensor<64x64xf32>
      %5 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>> -> tensor<64x32xf32>
      %6 = tensor.empty() : tensor<64x32xf32>
      %7 = linalg.fill ins(%cst : f32) outs(%6 : tensor<64x32xf32>) -> tensor<64x32xf32>
      %8 = linalg.matmul ins(%4, %5 : tensor<64x64xf32>, tensor<64x32xf32>) outs(%7 : tensor<64x32xf32>) -> tensor<64x32xf32>
      iree_tensor_ext.dispatch.tensor.store %8, %arg4, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : tensor<64x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x32xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %3 = hal.tensor.export %2 "output0" : tensor<64x32xf32> -> !hal.buffer_view
    util.return %3 : !hal.buffer_view
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<64x32xf32>, %input1: tensor<32xf32>) -> (%output0: tensor<64x32xf32>)"}} {
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<64x32xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<32xf32>
    %2 = flow.dispatch.workgroups(%0, %1) : (tensor<64x32xf32>, tensor<32xf32>) -> tensor<64x32xf32> =
        (%arg2: !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>>, %arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>>, %arg4: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x32xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %4 = iree_tensor_ext.dispatch.tensor.load %arg2, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>> -> tensor<64x32xf32>
      %5 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0], sizes = [32], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>> -> tensor<32xf32>
      %6 = tensor.empty() : tensor<64x32xf32>
      %7 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%4, %5 : tensor<64x32xf32>, tensor<32xf32>) outs(%6 : tensor<64x32xf32>) {
      ^bb0(%in: f32, %in_0: f32, %out: f32):
        %8 = arith.addf %in, %in_0 : f32
        %9 = arith.maximumf %8, %cst : f32
        linalg.yield %9 : f32
      } -> tensor<64x32xf32>
      iree_tensor_ext.dispatch.tensor.store %7, %arg4, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : tensor<64x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x32xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %3 = hal.tensor.export %2 "output0" : tensor<64x32xf32> -> !hal.buffer_view
    util.return %3 : !hal.buffer_view
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<64x32xf32>) -> (%output0: tensor<64xf32>)"}} {
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<64x32xf32>
    %1 = flow.dispatch.workgroups(%0) : (tensor<64x32xf32>) -> tensor<64xf32> =
        (%arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %3 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>> -> tensor<64x32xf32>
      %4 = tensor.empty() : tensor<64xf32>
      %5 = linalg.fill ins(%cst : f32) outs(%4 : tensor<64xf32>) -> tensor<64xf32>
      %6 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%3 : tensor<64x32xf32>) outs(%5 : tensor<64xf32>) {
      ^bb0(%in: f32, %out: f32):
        %7 = arith.addf %in, %out : f32
        linalg.yield %7 : f32
      } -> tensor<64xf32>
      iree_tensor_ext.dispatch.tensor.store %6, %arg2, offsets = [0], sizes = [64], strides = [1] : tensor<64xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %2 = hal.tensor.export %1 "output0" : tensor<64xf32> -> !hal.buffer_view
    util.return %2 : !hal.buffer_view
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>, %input2: tensor<32xf32>) -> (%output0: tensor<64xf32>)"}} {
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<64x64xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<64x32xf32>
    %2 = hal.tensor.import %arg2 "input2" : !hal.buffer_view -> tensor<32xf32>
    %3 = flow.dispatch.workgroups(%0, %1) : (tensor<64x64xf32>, tensor<64x32xf32>) -> tensor<64x32xf32> =
        (%arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64xf32>>, %arg4: !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>>, %arg5: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x32xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %6 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0, 0], sizes = [64, 64], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64xf32>> -> tensor<64x64xf32>
      %7 = iree_tensor_ext.dispatch.tensor.load %arg4, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>> -> tensor<64x32xf32>
      %8 = tensor.empty() : tensor<64x32xf32>
      %9 = linalg.fill ins(%cst : f32) outs(%8 : tensor<64x32xf32>) -> tensor<64x32xf32>
      %10 = linalg.matmul ins(%6, %7 : tensor<64x64xf32>, tensor<64x32xf32>) outs(%9 : tensor<64x32xf32>) -> tensor<64x32xf32>
      iree_tensor_ext.dispatch.tensor.store %10, %arg5, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : tensor<64x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x32xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %4 = flow.dispatch.workgroups(%3, %2) : (tensor<64x32xf32>, tensor<32xf32>) -> tensor<64xf32> =
        (%arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>>, %arg4: !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>>, %arg5: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %6 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0, 0], sizes = [64, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x32xf32>> -> tensor<64x32xf32>
      %7 = iree_tensor_ext.dispatch.tensor.load %arg4, offsets = [0], sizes = [32], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32xf32>> -> tensor<32xf32>
      %8 = tensor.empty() : tensor<64xf32>
      %9 = linalg.fill ins(%cst : f32) outs(%8 : tensor<64xf32>) -> tensor<64xf32>
      %10 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "reduction"]} ins(%6, %7 : tensor<64x32xf32>, tensor<32xf32>) outs(%9 : tensor<64xf32>) {
      ^bb0(%in: f32, %in_0: f32, %out: f32):
        %11 = arith.addf %in, %in_0 : f32
        %12 = arith.maximumf %11, %cst : f32
        %13 = arith.addf %12, %out : f32
        linalg.yield %13 : f32
      } -> tensor<64xf32>
      iree_tensor_ext.dispatch.tensor.store %10, %arg5, offsets = [0], sizes = [64], strides = [1] : tensor<64xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64xf32>>
      flow.return
    } count() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      flow.return %x, %y, %z : index, index, index
    }
    %5 = hal.tensor.export %4 "output0" : tensor<64xf32> -> !hal.buffer_view
    util.return %5 : !hal.buffer_view
  }
}
