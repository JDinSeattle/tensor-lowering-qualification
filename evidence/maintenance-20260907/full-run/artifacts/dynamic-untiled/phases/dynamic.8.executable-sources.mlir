#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "raptorlake", cpu_features = "+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  hal.executable private @matmul_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @matmul_dispatch_0_matmul_Dx16x32_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @matmul_dispatch_0_matmul_Dx16x32_f32() {
          %c32_i64 = arith.constant 32 : i64
          %cst = arith.constant 0.000000e+00 : f32
          %c0 = arith.constant 0 : index
          %0 = hal.interface.constant.load layout(#pipeline_layout) ordinal(0) : i32
          %1 = hal.interface.constant.load layout(#pipeline_layout) ordinal(1) : i32
          %2 = arith.extui %0 : i32 to i64
          %3 = arith.extui %1 : i32 to i64
          %4 = arith.shli %3, %c32_i64 : i64
          %5 = arith.ori %2, %4 : i64
          %6 = arith.index_castui %5 : i64 to index
          %7 = util.assume.int %6<umin = 0, umax = 9007199254740991> : index
          %8 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>>
          %9 = iree_tensor_ext.dispatch.workload.ordinal %7, 0 : index
          %10 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%9}
          %11 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%9}
          %12 = iree_tensor_ext.dispatch.tensor.load %10, offsets = [0, 0], sizes = [%9, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>{%9} -> tensor<?x32xf32>
          %13 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0, 0], sizes = [32, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x16xf32>> -> tensor<32x16xf32>
          %14 = tensor.empty(%9) : tensor<?x16xf32>
          %15 = linalg.fill ins(%cst : f32) outs(%14 : tensor<?x16xf32>) -> tensor<?x16xf32>
          %16 = linalg.matmul ins(%12, %13 : tensor<?x32xf32>, tensor<32x16xf32>) outs(%15 : tensor<?x16xf32>) -> tensor<?x16xf32>
          iree_tensor_ext.dispatch.tensor.store %16, %11, offsets = [0, 0], sizes = [%9, 16], strides = [1, 1] : tensor<?x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%9}
          return
        }
      }
    }
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%0, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = arith.muli %0, %c128 : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<?x32xf32>{%0} in !stream.resource<external>{%1}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %3 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<32x16xf32> in !stream.resource<external>{%c2048}
    %4 = arith.muli %0, %c64 : index
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%4} => !stream.timepoint
    %5 = arith.index_castui %0 : index to i64
    %6 = arith.index_castui %0 : index to i32
    %7 = arith.shrui %5, %c32_i64 : i64
    %8 = arith.trunci %7 : i64 to i32
    %9 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%2 as %arg2: !stream.resource<external>{%1}, %3 as %arg3: !stream.resource<external>{%c2048}, %result as %arg4: !stream.resource<external>{%4}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_Dx16x32_f32[%0](%6, %8 : i32, i32) {
        ro %arg2[%c0 for %1] : !stream.resource<external>{%1},
        ro %arg3[%c0 for %c2048] : !stream.resource<external>{%c2048},
        wo %arg4[%c0 for %4] : !stream.resource<external>{%4}
      }
    } => !stream.timepoint
    %10 = stream.timepoint.await %9 => %result : !stream.resource<external>{%4}
    %11 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %10 : tensor<?x16xf32>{%0} in !stream.resource<external>{%4} -> !hal.buffer_view
    util.return %11 : !hal.buffer_view
  }
  hal.executable private @bias_relu_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @bias_relu_dispatch_0_elementwise_Dx16_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @bias_relu_dispatch_0_elementwise_Dx16_f32() {
          %c32_i64 = arith.constant 32 : i64
          %cst = arith.constant 0.000000e+00 : f32
          %c0 = arith.constant 0 : index
          %0 = hal.interface.constant.load layout(#pipeline_layout) ordinal(0) : i32
          %1 = hal.interface.constant.load layout(#pipeline_layout) ordinal(1) : i32
          %2 = arith.extui %0 : i32 to i64
          %3 = arith.extui %1 : i32 to i64
          %4 = arith.shli %3, %c32_i64 : i64
          %5 = arith.ori %2, %4 : i64
          %6 = arith.index_castui %5 : i64 to index
          %7 = util.assume.int %6<umin = 0, umax = 9007199254740991> : index
          %8 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>
          %9 = iree_tensor_ext.dispatch.workload.ordinal %7, 0 : index
          %10 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%9}
          %11 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%9}
          %12 = iree_tensor_ext.dispatch.tensor.load %10, offsets = [0, 0], sizes = [%9, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%9} -> tensor<?x16xf32>
          %13 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0], sizes = [16], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>> -> tensor<16xf32>
          %14 = tensor.empty(%9) : tensor<?x16xf32>
          %15 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%12, %13 : tensor<?x16xf32>, tensor<16xf32>) outs(%14 : tensor<?x16xf32>) {
          ^bb0(%in: f32, %in_0: f32, %out: f32):
            %16 = arith.addf %in, %in_0 : f32
            %17 = arith.maximumf %16, %cst : f32
            linalg.yield %17 : f32
          } -> tensor<?x16xf32>
          iree_tensor_ext.dispatch.tensor.store %15, %11, offsets = [0, 0], sizes = [%9, 16], strides = [1, 1] : tensor<?x16xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x16xf32>>{%9}
          return
        }
      }
    }
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<?x16xf32>, %input1: tensor<16xf32>) -> (%output0: tensor<?x16xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%0, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = arith.muli %0, %c64 : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<?x16xf32>{%0} in !stream.resource<external>{%1}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c16]) type(%element_type_f32) encoding(%dense_row_major)
    %3 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<16xf32> in !stream.resource<external>{%c64}
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%1} => !stream.timepoint
    %4 = arith.index_castui %0 : index to i64
    %5 = arith.index_castui %0 : index to i32
    %6 = arith.shrui %4, %c32_i64 : i64
    %7 = arith.trunci %6 : i64 to i32
    %8 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%2 as %arg2: !stream.resource<external>{%1}, %3 as %arg3: !stream.resource<external>{%c64}, %result as %arg4: !stream.resource<external>{%1}) {
      stream.cmd.dispatch @bias_relu_dispatch_0::@embedded_elf_x86_64::@bias_relu_dispatch_0_elementwise_Dx16_f32[%0](%5, %7 : i32, i32) {
        ro %arg2[%c0 for %1] : !stream.resource<external>{%1},
        ro %arg3[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg4[%c0 for %1] : !stream.resource<external>{%1}
      }
    } => !stream.timepoint
    %9 = stream.timepoint.await %8 => %result : !stream.resource<external>{%1}
    %10 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %9 : tensor<?x16xf32>{%0} in !stream.resource<external>{%1} -> !hal.buffer_view
    util.return %10 : !hal.buffer_view
  }
  hal.executable private @row_sum_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @row_sum_dispatch_0_reduction_Dx16_f32 ordinal(0) layout(#pipeline_layout1) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @row_sum_dispatch_0_reduction_Dx16_f32() {
          %c32_i64 = arith.constant 32 : i64
          %cst = arith.constant 0.000000e+00 : f32
          %c0 = arith.constant 0 : index
          %0 = hal.interface.constant.load layout(#pipeline_layout1) ordinal(0) : i32
          %1 = hal.interface.constant.load layout(#pipeline_layout1) ordinal(1) : i32
          %2 = arith.extui %0 : i32 to i64
          %3 = arith.extui %1 : i32 to i64
          %4 = arith.shli %3, %c32_i64 : i64
          %5 = arith.ori %2, %4 : i64
          %6 = arith.index_castui %5 : i64 to index
          %7 = util.assume.int %6<umin = 0, umax = 9007199254740991> : index
          %8 = iree_tensor_ext.dispatch.workload.ordinal %7, 0 : index
          %9 = hal.interface.binding.subspan layout(#pipeline_layout1) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%8}
          %10 = hal.interface.binding.subspan layout(#pipeline_layout1) binding(1) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%8}
          %11 = iree_tensor_ext.dispatch.tensor.load %9, offsets = [0, 0], sizes = [%8, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%8} -> tensor<?x16xf32>
          %12 = tensor.empty(%8) : tensor<?xf32>
          %13 = linalg.fill ins(%cst : f32) outs(%12 : tensor<?xf32>) -> tensor<?xf32>
          %14 = linalg.generic {indexing_maps = [#map, #map2], iterator_types = ["parallel", "reduction"]} ins(%11 : tensor<?x16xf32>) outs(%13 : tensor<?xf32>) {
          ^bb0(%in: f32, %out: f32):
            %15 = arith.addf %in, %out : f32
            linalg.yield %15 : f32
          } -> tensor<?xf32>
          iree_tensor_ext.dispatch.tensor.store %14, %10, offsets = [0], sizes = [%8], strides = [1] : tensor<?xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%8}
          return
        }
      }
    }
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<?x16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%0, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = arith.muli %0, %c64 : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<?x16xf32>{%0} in !stream.resource<external>{%1}
    %3 = arith.muli %0, %c4 : index
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%3} => !stream.timepoint
    %4 = arith.index_castui %0 : index to i64
    %5 = arith.index_castui %0 : index to i32
    %6 = arith.shrui %4, %c32_i64 : i64
    %7 = arith.trunci %6 : i64 to i32
    %8 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%2 as %arg1: !stream.resource<external>{%1}, %result as %arg2: !stream.resource<external>{%3}) {
      stream.cmd.dispatch @row_sum_dispatch_0::@embedded_elf_x86_64::@row_sum_dispatch_0_reduction_Dx16_f32[%0](%5, %7 : i32, i32) {
        ro %arg1[%c0 for %1] : !stream.resource<external>{%1},
        wo %arg2[%c0 for %3] : !stream.resource<external>{%3}
      }
    } => !stream.timepoint
    %9 = stream.timepoint.await %8 => %result : !stream.resource<external>{%3}
    %10 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %9 : tensor<?xf32>{%0} in !stream.resource<external>{%3} -> !hal.buffer_view
    util.return %10 : !hal.buffer_view
  }
  hal.executable private @fragment_dispatch_1 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @fragment_dispatch_1_reduction_Dx16_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device, %arg1: index) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice(%arg1)
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @fragment_dispatch_1_reduction_Dx16_f32() {
          %c32_i64 = arith.constant 32 : i64
          %cst = arith.constant 0.000000e+00 : f32
          %c0 = arith.constant 0 : index
          %0 = hal.interface.constant.load layout(#pipeline_layout) ordinal(0) : i32
          %1 = hal.interface.constant.load layout(#pipeline_layout) ordinal(1) : i32
          %2 = arith.extui %0 : i32 to i64
          %3 = arith.extui %1 : i32 to i64
          %4 = arith.shli %3, %c32_i64 : i64
          %5 = arith.ori %2, %4 : i64
          %6 = arith.index_castui %5 : i64 to index
          %7 = util.assume.int %6<umin = 0, umax = 9007199254740991> : index
          %8 = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>
          %9 = iree_tensor_ext.dispatch.workload.ordinal %7, 0 : index
          %10 = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%9}
          %11 = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%9}
          %12 = iree_tensor_ext.dispatch.tensor.load %10, offsets = [0, 0], sizes = [%9, 16], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>{%9} -> tensor<?x16xf32>
          %13 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0], sizes = [16], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>> -> tensor<16xf32>
          %14 = tensor.empty(%9) : tensor<?xf32>
          %15 = linalg.fill ins(%cst : f32) outs(%14 : tensor<?xf32>) -> tensor<?xf32>
          %16 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "reduction"]} ins(%12, %13 : tensor<?x16xf32>, tensor<16xf32>) outs(%15 : tensor<?xf32>) {
          ^bb0(%in: f32, %in_0: f32, %out: f32):
            %17 = arith.addf %in, %in_0 : f32
            %18 = arith.maximumf %17, %cst : f32
            %19 = arith.addf %18, %out : f32
            linalg.yield %19 : f32
          } -> tensor<?xf32>
          iree_tensor_ext.dispatch.tensor.store %16, %11, offsets = [0], sizes = [%9], strides = [1] : tensor<?xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>{%9}
          return
        }
      }
    }
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<?x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<?xf32>)"}} {
    %c32_i64 = arith.constant 32 : i64
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %0 = hal.buffer_view.dim<%arg0 : !hal.buffer_view>[0] : index
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%0, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = arith.muli %0, %c128 : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<?x32xf32>{%0} in !stream.resource<external>{%1}
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %3 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg1 : !hal.buffer_view -> tensor<32x16xf32> in !stream.resource<external>{%c2048}
    hal.buffer_view.assert<%arg2 : !hal.buffer_view> message("input2") shape([%c16]) type(%element_type_f32) encoding(%dense_row_major)
    %4 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg2 : !hal.buffer_view -> tensor<16xf32> in !stream.resource<external>{%c64}
    %5 = arith.muli %0, %c64 : index
    %6 = arith.muli %0, %c4 : index
    %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<external>{%6} => !stream.timepoint
    %result_0, %result_timepoint_1 = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) : !stream.resource<transient>{%5} => !stream.timepoint
    %7 = stream.timepoint.join max(%result_timepoint, %result_timepoint_1) => !stream.timepoint
    %8 = arith.index_castui %0 : index to i64
    %9 = arith.index_castui %0 : index to i32
    %10 = arith.shrui %8, %c32_i64 : i64
    %11 = arith.trunci %10 : i64 to i32
    %12 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%7) => with(%2 as %arg3: !stream.resource<external>{%1}, %3 as %arg4: !stream.resource<external>{%c2048}, %4 as %arg5: !stream.resource<external>{%c64}, %result as %arg6: !stream.resource<external>{%6}, %result_0 as %arg7: !stream.resource<transient>{%5}) {
      stream.cmd.dispatch @matmul_dispatch_0::@embedded_elf_x86_64::@matmul_dispatch_0_matmul_Dx16x32_f32[%0](%9, %11 : i32, i32) {
        ro %arg3[%c0 for %1] : !stream.resource<external>{%1},
        ro %arg4[%c0 for %c2048] : !stream.resource<external>{%c2048},
        wo %arg7[%c0 for %5] : !stream.resource<transient>{%5}
      }
      stream.cmd.dispatch @fragment_dispatch_1::@embedded_elf_x86_64::@fragment_dispatch_1_reduction_Dx16_f32[%0](%9, %11 : i32, i32) {
        ro %arg7[%c0 for %5] : !stream.resource<transient>{%5},
        ro %arg5[%c0 for %c64] : !stream.resource<external>{%c64},
        wo %arg6[%c0 for %6] : !stream.resource<external>{%6}
      }
    } => !stream.timepoint
    %13 = stream.resource.dealloca on(#hal.device.affinity<@__device_0>) await(%12) => %result_0 : !stream.resource<transient>{%5} => !stream.timepoint
    %14 = stream.timepoint.await %13 => %result : !stream.resource<external>{%6}
    %15 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %14 : tensor<?xf32>{%0} in !stream.resource<external>{%6} -> !hal.buffer_view
    util.return %15 : !hal.buffer_view
  }
}
