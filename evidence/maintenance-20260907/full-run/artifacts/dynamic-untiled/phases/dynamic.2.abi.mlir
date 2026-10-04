#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
module {
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x32xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<32x16xf32>
    %3 = tensor.empty(%0) : tensor<?x16xf32>
    %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<?x16xf32>) -> tensor<?x16xf32>
    %5 = linalg.matmul ins(%1, %2 : tensor<?x32xf32>, tensor<32x16xf32>) outs(%4 : tensor<?x16xf32>) -> tensor<?x16xf32>
    %6 = hal.tensor.export %5 "output0" : tensor<?x16xf32>{%0} -> !hal.buffer_view
    util.return %6 : !hal.buffer_view
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<?x16xf32>, %input1: tensor<16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x16xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<16xf32>
    %3 = tensor.empty(%0) : tensor<?x16xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%1, %2 : tensor<?x16xf32>, tensor<16xf32>) outs(%3 : tensor<?x16xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %6 = arith.addf %in, %in_0 : f32
      %7 = arith.maximumf %6, %cst : f32
      linalg.yield %7 : f32
    } -> tensor<?x16xf32>
    %5 = hal.tensor.export %4 "output0" : tensor<?x16xf32>{%0} -> !hal.buffer_view
    util.return %5 : !hal.buffer_view
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<?x16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x16xf32>{%0}
    %2 = tensor.empty(%0) : tensor<?xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<?xf32>) -> tensor<?xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%1 : tensor<?x16xf32>) outs(%3 : tensor<?xf32>) {
    ^bb0(%in: f32, %out: f32):
      %6 = arith.addf %in, %out : f32
      linalg.yield %6 : f32
    } -> tensor<?xf32>
    %5 = hal.tensor.export %4 "output0" : tensor<?xf32>{%0} -> !hal.buffer_view
    util.return %5 : !hal.buffer_view
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %1 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<?x32xf32>{%0}
    %2 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<32x16xf32>
    %3 = hal.tensor.import %arg2 "input2" : !hal.buffer_view -> tensor<16xf32>
    %4 = tensor.empty(%0) : tensor<?x16xf32>
    %5 = linalg.fill ins(%cst : f32) outs(%4 : tensor<?x16xf32>) -> tensor<?x16xf32>
    %6 = linalg.matmul ins(%1, %2 : tensor<?x32xf32>, tensor<32x16xf32>) outs(%5 : tensor<?x16xf32>) -> tensor<?x16xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%6, %3 : tensor<?x16xf32>, tensor<16xf32>) outs(%4 : tensor<?x16xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %12 = arith.addf %in, %in_0 : f32
      %13 = arith.maximumf %12, %cst : f32
      linalg.yield %13 : f32
    } -> tensor<?x16xf32>
    %8 = tensor.empty(%0) : tensor<?xf32>
    %9 = linalg.fill ins(%cst : f32) outs(%8 : tensor<?xf32>) -> tensor<?xf32>
    %10 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%7 : tensor<?x16xf32>) outs(%9 : tensor<?xf32>) {
    ^bb0(%in: f32, %out: f32):
      %12 = arith.addf %in, %out : f32
      linalg.yield %12 : f32
    } -> tensor<?xf32>
    %11 = hal.tensor.export %10 "output0" : tensor<?xf32>{%0} -> !hal.buffer_view
    util.return %11 : !hal.buffer_view
  }
}
