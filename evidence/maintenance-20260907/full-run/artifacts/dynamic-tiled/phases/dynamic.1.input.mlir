#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
module {
  util.func public @matmul(%arg0: tensor<?x32xf32>, %arg1: tensor<32x16xf32>) -> tensor<?x16xf32> {
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %dim = tensor.dim %arg0, %c0 : tensor<?x32xf32>
    %0 = tensor.empty(%dim) : tensor<?x16xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<?x16xf32>) -> tensor<?x16xf32>
    %2 = linalg.matmul ins(%arg0, %arg1 : tensor<?x32xf32>, tensor<32x16xf32>) outs(%1 : tensor<?x16xf32>) -> tensor<?x16xf32>
    util.return %2 : tensor<?x16xf32>
  }
  util.func public @bias_relu(%arg0: tensor<?x16xf32>, %arg1: tensor<16xf32>) -> tensor<?x16xf32> {
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %dim = tensor.dim %arg0, %c0 : tensor<?x16xf32>
    %0 = tensor.empty(%dim) : tensor<?x16xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<?x16xf32>, tensor<16xf32>) outs(%0 : tensor<?x16xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %2 = arith.addf %in, %in_0 : f32
      %3 = arith.maximumf %2, %cst : f32
      linalg.yield %3 : f32
    } -> tensor<?x16xf32>
    util.return %1 : tensor<?x16xf32>
  }
  util.func public @row_sum(%arg0: tensor<?x16xf32>) -> tensor<?xf32> {
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %dim = tensor.dim %arg0, %c0 : tensor<?x16xf32>
    %0 = tensor.empty(%dim) : tensor<?xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<?xf32>) -> tensor<?xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%arg0 : tensor<?x16xf32>) outs(%1 : tensor<?xf32>) {
    ^bb0(%in: f32, %out: f32):
      %3 = arith.addf %in, %out : f32
      linalg.yield %3 : f32
    } -> tensor<?xf32>
    util.return %2 : tensor<?xf32>
  }
  util.func public @fragment(%arg0: tensor<?x32xf32>, %arg1: tensor<32x16xf32>, %arg2: tensor<16xf32>) -> tensor<?xf32> {
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %dim = tensor.dim %arg0, %c0 : tensor<?x32xf32>
    %0 = tensor.empty(%dim) : tensor<?x16xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<?x16xf32>) -> tensor<?x16xf32>
    %2 = linalg.matmul ins(%arg0, %arg1 : tensor<?x32xf32>, tensor<32x16xf32>) outs(%1 : tensor<?x16xf32>) -> tensor<?x16xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%2, %arg2 : tensor<?x16xf32>, tensor<16xf32>) outs(%0 : tensor<?x16xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %7 = arith.addf %in, %in_0 : f32
      %8 = arith.maximumf %7, %cst : f32
      linalg.yield %8 : f32
    } -> tensor<?x16xf32>
    %4 = tensor.empty(%dim) : tensor<?xf32>
    %5 = linalg.fill ins(%cst : f32) outs(%4 : tensor<?xf32>) -> tensor<?xf32>
    %6 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%3 : tensor<?x16xf32>) outs(%5 : tensor<?xf32>) {
    ^bb0(%in: f32, %out: f32):
      %7 = arith.addf %in, %out : f32
      linalg.yield %7 : f32
    } -> tensor<?xf32>
    util.return %6 : tensor<?xf32>
  }
}
