#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
module {
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>) -> (%output0: tensor<7x17xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<7x33xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<33x17xf32>
    %2 = tensor.empty() : tensor<7x17xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<7x17xf32>) -> tensor<7x17xf32>
    %4 = linalg.matmul ins(%0, %1 : tensor<7x33xf32>, tensor<33x17xf32>) outs(%3 : tensor<7x17xf32>) -> tensor<7x17xf32>
    %5 = hal.tensor.export %4 "output0" : tensor<7x17xf32> -> !hal.buffer_view
    util.return %5 : !hal.buffer_view
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<7x17xf32>, %input1: tensor<17xf32>) -> (%output0: tensor<7x17xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<7x17xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<17xf32>
    %2 = tensor.empty() : tensor<7x17xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%0, %1 : tensor<7x17xf32>, tensor<17xf32>) outs(%2 : tensor<7x17xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %5 = arith.addf %in, %in_0 : f32
      %6 = arith.maximumf %5, %cst : f32
      linalg.yield %6 : f32
    } -> tensor<7x17xf32>
    %4 = hal.tensor.export %3 "output0" : tensor<7x17xf32> -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<7x17xf32>) -> (%output0: tensor<7xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<7x17xf32>
    %1 = tensor.empty() : tensor<7xf32>
    %2 = linalg.fill ins(%cst : f32) outs(%1 : tensor<7xf32>) -> tensor<7xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%0 : tensor<7x17xf32>) outs(%2 : tensor<7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %5 = arith.addf %in, %out : f32
      linalg.yield %5 : f32
    } -> tensor<7xf32>
    %4 = hal.tensor.export %3 "output0" : tensor<7xf32> -> !hal.buffer_view
    util.return %4 : !hal.buffer_view
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>, %input2: tensor<17xf32>) -> (%output0: tensor<7xf32>)"}} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = hal.tensor.import %arg0 "input0" : !hal.buffer_view -> tensor<7x33xf32>
    %1 = hal.tensor.import %arg1 "input1" : !hal.buffer_view -> tensor<33x17xf32>
    %2 = hal.tensor.import %arg2 "input2" : !hal.buffer_view -> tensor<17xf32>
    %3 = tensor.empty() : tensor<7x17xf32>
    %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<7x17xf32>) -> tensor<7x17xf32>
    %5 = linalg.matmul ins(%0, %1 : tensor<7x33xf32>, tensor<33x17xf32>) outs(%4 : tensor<7x17xf32>) -> tensor<7x17xf32>
    %6 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%5, %2 : tensor<7x17xf32>, tensor<17xf32>) outs(%3 : tensor<7x17xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %11 = arith.addf %in, %in_0 : f32
      %12 = arith.maximumf %11, %cst : f32
      linalg.yield %12 : f32
    } -> tensor<7x17xf32>
    %7 = tensor.empty() : tensor<7xf32>
    %8 = linalg.fill ins(%cst : f32) outs(%7 : tensor<7xf32>) -> tensor<7xf32>
    %9 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%6 : tensor<7x17xf32>) outs(%8 : tensor<7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %11 = arith.addf %in, %out : f32
      linalg.yield %11 : f32
    } -> tensor<7xf32>
    %10 = hal.tensor.export %9 "output0" : tensor<7xf32> -> !hal.buffer_view
    util.return %10 : !hal.buffer_view
  }
}
