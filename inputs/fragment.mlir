// Runtime-provided operands ensure the tested computation cannot constant-fold.
// A dynamic batch dimension; fixed K=32, N=16.
module {
  func.func @fragment(%x: tensor<?x32xf32>, %w: tensor<32x16xf32>, %bias: tensor<16xf32>) -> tensor<?xf32> {
    %c0 = arith.constant 0 : index
    %zero = arith.constant 0.0 : f32
    %m = tensor.dim %x, %c0 : tensor<?x32xf32>
    %empty = tensor.empty(%m) : tensor<?x16xf32>
    %init = linalg.fill ins(%zero : f32) outs(%empty : tensor<?x16xf32>) -> tensor<?x16xf32>
    %mm = linalg.matmul ins(%x, %w : tensor<?x32xf32>, tensor<32x16xf32>) outs(%init : tensor<?x16xf32>) -> tensor<?x16xf32>
    %act = linalg.generic {
      indexing_maps = [affine_map<(m,n)->(m,n)>, affine_map<(m,n)->(n)>, affine_map<(m,n)->(m,n)>],
      iterator_types = ["parallel", "parallel"]
    } ins(%mm, %bias : tensor<?x16xf32>, tensor<16xf32>) outs(%empty : tensor<?x16xf32>) {
    ^bb0(%a: f32, %b: f32, %out: f32):
      %sum = arith.addf %a, %b : f32
      %relu = arith.maximumf %sum, %zero : f32
      linalg.yield %relu : f32
    } -> tensor<?x16xf32>
    %out = tensor.empty(%m) : tensor<?xf32>
    %acc = linalg.fill ins(%zero : f32) outs(%out : tensor<?xf32>) -> tensor<?xf32>
    %reduced = linalg.generic {
      indexing_maps = [affine_map<(m,n)->(m,n)>, affine_map<(m,n)->(m)>],
      iterator_types = ["parallel", "reduction"]
    } ins(%act : tensor<?x16xf32>) outs(%acc : tensor<?xf32>) {
    ^bb0(%a: f32, %b: f32):
      %sum = arith.addf %a, %b : f32
      linalg.yield %sum : f32
    } -> tensor<?xf32>
    return %reduced : tensor<?xf32>
  }
}
