; ModuleID = 'dynamic_linked'
source_filename = "dynamic_linked"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown-eabi-elf"

%iree_hal_executable_library_header_t = type { i32, ptr, i32, i32 }
%iree_hal_executable_dispatch_attrs_v0_t = type { i64, i16, i8, i8, i32, i32, i16, i16, i64, i64, i64, i64, i64 }
%iree_hal_executable_source_location_v0_t = type { i32, i32, ptr }
%iree_hal_executable_stage_location_table_v0_t = type { i32, ptr, ptr }
%iree_hal_executable_library_v0_t = type { ptr, %iree_hal_executable_import_table_v0_t, %iree_hal_executable_export_table_v0_t, %iree_hal_executable_constant_table_v0_t, %iree_hal_executable_source_file_table_v0_t }
%iree_hal_executable_import_table_v0_t = type { i32, ptr }
%iree_hal_executable_export_table_v0_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%iree_hal_executable_constant_table_v0_t = type { i32 }
%iree_hal_executable_source_file_table_v0_t = type { i32, ptr }
%iree_hal_executable_dispatch_state_v0_t = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr }

@0 = private constant [15 x i8] c"dynamic_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [6 x ptr] [ptr @matmul_dispatch_0_matmul_Dx16x32_f32, ptr @_encoding_0_encode_Dx32xf32_to_Dx32xf32, ptr @_encoding_1_encode_32x16xf32_to_32x16xf32, ptr @bias_relu_dispatch_0_elementwise_Dx16_f32, ptr @row_sum_dispatch_0_reduction_Dx16_f32, ptr @fragment_dispatch_1_reduction_Dx16_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [6 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 4, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 4, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [37 x i8] c"matmul_dispatch_0_matmul_Dx16x32_f32\00", align 1
@2 = private constant [40 x i8] c"_encoding_0_encode_Dx32xf32_to_Dx32xf32\00", align 1
@3 = private constant [42 x i8] c"_encoding_1_encode_32x16xf32_to_32x16xf32\00", align 1
@4 = private constant [42 x i8] c"bias_relu_dispatch_0_elementwise_Dx16_f32\00", align 1
@5 = private constant [38 x i8] c"row_sum_dispatch_0_reduction_Dx16_f32\00", align 1
@6 = private constant [39 x i8] c"fragment_dispatch_1_reduction_Dx16_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [6 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6]
@7 = private constant [182 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables/configured_module_matmul_dispatch_0.mlir\00", align 1
@8 = private constant [176 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables/configured_module__encoding_0.mlir\00", align 1
@9 = private constant [176 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables/configured_module__encoding_1.mlir\00", align 1
@10 = private constant [185 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables/configured_module_bias_relu_dispatch_0.mlir\00", align 1
@11 = private constant [183 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables/configured_module_row_sum_dispatch_0.mlir\00", align 1
@12 = private constant [184 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables/configured_module_fragment_dispatch_1.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [6 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 181, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 175, ptr @8 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 175, ptr @9 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 184, ptr @10 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 182, ptr @11 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 183, ptr @12 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [6 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_names, ptr @iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names, ptr @iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 6, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

declare i32 @iree_uk_mmt4d(ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, ptr) #0

define internal i32 @matmul_dispatch_0_matmul_Dx16x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !13 {
  %4 = alloca float, i64 64, align 64, !dbg !89
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !90
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 9, !dbg !90
  %7 = load i32, ptr %6, align 4, !dbg !90
  %8 = getelementptr i32, ptr %6, i32 1, !dbg !91
  %9 = load i32, ptr %8, align 4, !dbg !91
  %10 = getelementptr i32, ptr %6, i32 2, !dbg !92
  %11 = load i32, ptr %10, align 4, !dbg !92
  %12 = getelementptr i32, ptr %6, i32 3, !dbg !93
  %13 = load i32, ptr %12, align 4, !dbg !93
  %14 = zext i32 %7 to i64, !dbg !94
  %15 = zext i32 %9 to i64, !dbg !95
  %16 = shl i64 %15, 32, !dbg !96
  %17 = or i64 %14, %16, !dbg !97
  %18 = zext i32 %11 to i64, !dbg !98
  %19 = zext i32 %13 to i64, !dbg !99
  %20 = shl i64 %19, 32, !dbg !100
  %21 = or i64 %18, %20, !dbg !101
  %22 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !102
  %23 = load ptr, ptr %22, align 8, !dbg !102
  %24 = icmp sle i64 %21, 0, !dbg !103
  %25 = sub i64 0, %21, !dbg !103
  %26 = sub i64 %21, 1, !dbg !103
  %27 = select i1 %24, i64 %25, i64 %26, !dbg !103
  %28 = sdiv i64 %27, 8, !dbg !103
  %29 = sub i64 0, %28, !dbg !103
  %30 = add i64 %28, 1, !dbg !103
  %31 = select i1 %24, i64 %29, i64 %30, !dbg !103
  %32 = getelementptr ptr, ptr %22, i32 1, !dbg !104
  %33 = load ptr, ptr %32, align 8, !dbg !104
  %34 = mul i64 %17, 8, !dbg !104
  %35 = udiv i64 %34, 32, !dbg !104
  %36 = getelementptr float, ptr %33, i64 %35, !dbg !104
  call void @llvm.assume(i1 true) [ "align"(ptr %36, i64 4) ], !dbg !104
  br label %37, !dbg !102

37:                                               ; preds = %171, %3
  %38 = phi i64 [ %172, %171 ], [ 0, %3 ], !dbg !102
  %39 = icmp slt i64 %38, 2, !dbg !102
  br i1 %39, label %40, label %173, !dbg !102

40:                                               ; preds = %43, %37
  %41 = phi i64 [ %170, %43 ], [ 0, %37 ], !dbg !102
  %42 = icmp slt i64 %41, %31, !dbg !102
  br i1 %42, label %43, label %171, !dbg !102

43:                                               ; preds = %40
  %44 = mul nsw i64 %38, 256, !dbg !102
  %45 = mul nsw i64 %41, 256, !dbg !102
  %46 = add i64 %45, 512, !dbg !102
  %47 = getelementptr inbounds ptr, ptr %0, i32 4, !dbg !102
  %48 = alloca i64, i64 8, align 8, !dbg !102
  %49 = load i64, ptr %47, align 4, !dbg !102
  %50 = or i64 %49, 52239, !dbg !102
  store i64 %50, ptr %48, align 4, !dbg !102
  %51 = getelementptr inbounds i64, ptr %47, i32 1, !dbg !102
  %52 = load i64, ptr %51, align 4, !dbg !102
  %53 = getelementptr inbounds i64, ptr %48, i32 1, !dbg !102
  store i64 %52, ptr %53, align 4, !dbg !102
  %54 = getelementptr inbounds i64, ptr %47, i32 2, !dbg !102
  %55 = load i64, ptr %54, align 4, !dbg !102
  %56 = getelementptr inbounds i64, ptr %48, i32 2, !dbg !102
  store i64 %55, ptr %56, align 4, !dbg !102
  %57 = getelementptr inbounds i64, ptr %47, i32 3, !dbg !102
  %58 = load i64, ptr %57, align 4, !dbg !102
  %59 = getelementptr inbounds i64, ptr %48, i32 3, !dbg !102
  store i64 %58, ptr %59, align 4, !dbg !102
  %60 = getelementptr inbounds i64, ptr %47, i32 4, !dbg !102
  %61 = load i64, ptr %60, align 4, !dbg !102
  %62 = getelementptr inbounds i64, ptr %48, i32 4, !dbg !102
  store i64 %61, ptr %62, align 4, !dbg !102
  %63 = getelementptr inbounds i64, ptr %47, i32 5, !dbg !102
  %64 = load i64, ptr %63, align 4, !dbg !102
  %65 = getelementptr inbounds i64, ptr %48, i32 5, !dbg !102
  store i64 %64, ptr %65, align 4, !dbg !102
  %66 = getelementptr inbounds i64, ptr %47, i32 6, !dbg !102
  %67 = load i64, ptr %66, align 4, !dbg !102
  %68 = getelementptr inbounds i64, ptr %48, i32 6, !dbg !102
  store i64 %67, ptr %68, align 4, !dbg !102
  %69 = getelementptr inbounds i64, ptr %47, i32 7, !dbg !102
  %70 = load i64, ptr %69, align 4, !dbg !102
  %71 = getelementptr inbounds i64, ptr %48, i32 7, !dbg !102
  store i64 %70, ptr %71, align 4, !dbg !102
  %72 = call i32 @iree_uk_mmt4d(ptr %23, i64 %44, i64 256, ptr %23, i64 %46, i64 256, ptr %4, i64 0, i64 64, i64 1, i64 1, i64 32, i32 8, i32 8, i32 1, i32 1537, ptr %48), !dbg !102
  %73 = mul nsw i64 %41, 8, !dbg !105
  %74 = mul nsw i64 %41, -8, !dbg !105
  %75 = add i64 %74, %21, !dbg !105
  %76 = icmp slt i64 %75, 8, !dbg !105
  %77 = select i1 %76, i64 %75, i64 8, !dbg !105
  %78 = mul nsw i64 %38, 8, !dbg !105
  %79 = getelementptr float, ptr %4, i64 0, !dbg !105
  %80 = load <8 x float>, ptr %79, align 4, !dbg !105
  %81 = getelementptr float, ptr %4, i64 8, !dbg !105
  %82 = load <8 x float>, ptr %81, align 4, !dbg !105
  %83 = getelementptr float, ptr %4, i64 16, !dbg !105
  %84 = load <8 x float>, ptr %83, align 4, !dbg !105
  %85 = getelementptr float, ptr %4, i64 24, !dbg !105
  %86 = load <8 x float>, ptr %85, align 4, !dbg !105
  %87 = getelementptr float, ptr %4, i64 32, !dbg !105
  %88 = load <8 x float>, ptr %87, align 4, !dbg !105
  %89 = getelementptr float, ptr %4, i64 40, !dbg !105
  %90 = load <8 x float>, ptr %89, align 4, !dbg !105
  %91 = getelementptr float, ptr %4, i64 48, !dbg !105
  %92 = load <8 x float>, ptr %91, align 4, !dbg !105
  %93 = getelementptr float, ptr %4, i64 56, !dbg !105
  %94 = load <8 x float>, ptr %93, align 4, !dbg !105
  %95 = shufflevector <8 x float> %80, <8 x float> %82, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>, !dbg !105
  %96 = shufflevector <8 x float> %80, <8 x float> %82, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>, !dbg !105
  %97 = shufflevector <8 x float> %84, <8 x float> %86, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>, !dbg !105
  %98 = shufflevector <8 x float> %84, <8 x float> %86, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>, !dbg !105
  %99 = shufflevector <8 x float> %88, <8 x float> %90, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>, !dbg !105
  %100 = shufflevector <8 x float> %88, <8 x float> %90, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>, !dbg !105
  %101 = shufflevector <8 x float> %92, <8 x float> %94, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>, !dbg !105
  %102 = shufflevector <8 x float> %92, <8 x float> %94, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>, !dbg !105
  %103 = shufflevector <8 x float> %95, <8 x float> %97, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>, !dbg !105
  %104 = shufflevector <8 x float> %96, <8 x float> %98, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>, !dbg !105
  %105 = shufflevector <8 x float> %99, <8 x float> %101, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>, !dbg !105
  %106 = shufflevector <8 x float> %100, <8 x float> %102, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>, !dbg !105
  %107 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0xcc", "=x,x,x"(<8 x float> %95, <8 x float> %103), !dbg !105
  %108 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0x33", "=x,x,x"(<8 x float> %97, <8 x float> %103), !dbg !105
  %109 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0xcc", "=x,x,x"(<8 x float> %96, <8 x float> %104), !dbg !105
  %110 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0x33", "=x,x,x"(<8 x float> %98, <8 x float> %104), !dbg !105
  %111 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0xcc", "=x,x,x"(<8 x float> %99, <8 x float> %105), !dbg !105
  %112 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0x33", "=x,x,x"(<8 x float> %101, <8 x float> %105), !dbg !105
  %113 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0xcc", "=x,x,x"(<8 x float> %100, <8 x float> %106), !dbg !105
  %114 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0x33", "=x,x,x"(<8 x float> %102, <8 x float> %106), !dbg !105
  %115 = shufflevector <8 x float> %107, <8 x float> %111, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !105
  %116 = shufflevector <8 x float> %108, <8 x float> %112, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !105
  %117 = shufflevector <8 x float> %109, <8 x float> %113, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !105
  %118 = shufflevector <8 x float> %110, <8 x float> %114, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !105
  %119 = shufflevector <8 x float> %107, <8 x float> %111, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>, !dbg !105
  %120 = shufflevector <8 x float> %108, <8 x float> %112, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>, !dbg !105
  %121 = shufflevector <8 x float> %109, <8 x float> %113, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>, !dbg !105
  %122 = shufflevector <8 x float> %110, <8 x float> %114, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>, !dbg !105
  %123 = icmp sgt i64 %77, 0, !dbg !105
  %124 = select i1 %123, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !105
  %125 = icmp sgt i64 %77, 1, !dbg !105
  %126 = select i1 %125, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !105
  %127 = icmp sgt i64 %77, 2, !dbg !105
  %128 = select i1 %127, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !105
  %129 = icmp sgt i64 %77, 3, !dbg !105
  %130 = select i1 %129, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !105
  %131 = icmp sgt i64 %77, 4, !dbg !105
  %132 = select i1 %131, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !105
  %133 = icmp sgt i64 %77, 5, !dbg !105
  %134 = select i1 %133, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !105
  %135 = icmp sgt i64 %77, 6, !dbg !105
  %136 = select i1 %135, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !105
  %137 = icmp sgt i64 %77, 7, !dbg !105
  %138 = select i1 %137, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !105
  %139 = mul i64 %73, 16, !dbg !105
  %140 = add i64 %139, %78, !dbg !105
  %141 = getelementptr float, ptr %36, i64 %140, !dbg !105
  call void @llvm.masked.store.v8f32.p0(<8 x float> %115, ptr align 4 %141, <8 x i1> %124), !dbg !105
  %142 = add i64 %73, 1, !dbg !105
  %143 = mul i64 %142, 16, !dbg !105
  %144 = add i64 %143, %78, !dbg !105
  %145 = getelementptr float, ptr %36, i64 %144, !dbg !105
  call void @llvm.masked.store.v8f32.p0(<8 x float> %116, ptr align 4 %145, <8 x i1> %126), !dbg !105
  %146 = add i64 %73, 2, !dbg !105
  %147 = mul i64 %146, 16, !dbg !105
  %148 = add i64 %147, %78, !dbg !105
  %149 = getelementptr float, ptr %36, i64 %148, !dbg !105
  call void @llvm.masked.store.v8f32.p0(<8 x float> %117, ptr align 4 %149, <8 x i1> %128), !dbg !105
  %150 = add i64 %73, 3, !dbg !105
  %151 = mul i64 %150, 16, !dbg !105
  %152 = add i64 %151, %78, !dbg !105
  %153 = getelementptr float, ptr %36, i64 %152, !dbg !105
  call void @llvm.masked.store.v8f32.p0(<8 x float> %118, ptr align 4 %153, <8 x i1> %130), !dbg !105
  %154 = add i64 %73, 4, !dbg !105
  %155 = mul i64 %154, 16, !dbg !105
  %156 = add i64 %155, %78, !dbg !105
  %157 = getelementptr float, ptr %36, i64 %156, !dbg !105
  call void @llvm.masked.store.v8f32.p0(<8 x float> %119, ptr align 4 %157, <8 x i1> %132), !dbg !105
  %158 = add i64 %73, 5, !dbg !105
  %159 = mul i64 %158, 16, !dbg !105
  %160 = add i64 %159, %78, !dbg !105
  %161 = getelementptr float, ptr %36, i64 %160, !dbg !105
  call void @llvm.masked.store.v8f32.p0(<8 x float> %120, ptr align 4 %161, <8 x i1> %134), !dbg !105
  %162 = add i64 %73, 6, !dbg !105
  %163 = mul i64 %162, 16, !dbg !105
  %164 = add i64 %163, %78, !dbg !105
  %165 = getelementptr float, ptr %36, i64 %164, !dbg !105
  call void @llvm.masked.store.v8f32.p0(<8 x float> %121, ptr align 4 %165, <8 x i1> %136), !dbg !105
  %166 = add i64 %73, 7, !dbg !105
  %167 = mul i64 %166, 16, !dbg !105
  %168 = add i64 %167, %78, !dbg !105
  %169 = getelementptr float, ptr %36, i64 %168, !dbg !105
  call void @llvm.masked.store.v8f32.p0(<8 x float> %122, ptr align 4 %169, <8 x i1> %138), !dbg !105
  %170 = add i64 %41, 1, !dbg !102
  br label %40, !dbg !102

171:                                              ; preds = %40
  %172 = add i64 %38, 1, !dbg !102
  br label %37, !dbg !102

173:                                              ; preds = %37
  ret i32 0, !dbg !106
}

define internal i32 @_encoding_0_encode_Dx32xf32_to_Dx32xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !107 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !108
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !108
  %6 = load i32, ptr %5, align 4, !dbg !108
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !109
  %8 = load i32, ptr %7, align 4, !dbg !109
  %9 = zext i32 %6 to i64, !dbg !110
  %10 = zext i32 %8 to i64, !dbg !111
  %11 = shl i64 %10, 32, !dbg !112
  %12 = or i64 %9, %11, !dbg !113
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !114
  %14 = load ptr, ptr %13, align 8, !dbg !114
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !114
  %15 = icmp sle i64 %12, 0, !dbg !115
  %16 = sub i64 0, %12, !dbg !115
  %17 = sub i64 %12, 1, !dbg !115
  %18 = select i1 %15, i64 %16, i64 %17, !dbg !115
  %19 = sdiv i64 %18, 8, !dbg !115
  %20 = sub i64 0, %19, !dbg !115
  %21 = add i64 %19, 1, !dbg !115
  %22 = select i1 %15, i64 %20, i64 %21, !dbg !115
  %23 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !116
  %24 = extractvalue %iree_hal_executable_dispatch_state_v0_t %23, 10, !dbg !116
  %25 = getelementptr ptr, ptr %24, i32 1, !dbg !116
  %26 = load ptr, ptr %25, align 8, !dbg !116
  %27 = getelementptr float, ptr %26, i64 512, !dbg !116
  call void @llvm.assume(i1 true) [ "align"(ptr %27, i64 64) ], !dbg !116
  br label %28, !dbg !117

28:                                               ; preds = %69, %3
  %29 = phi i64 [ %70, %69 ], [ 0, %3 ], !dbg !117
  %30 = icmp slt i64 %29, %22, !dbg !117
  br i1 %30, label %31, label %71, !dbg !117

31:                                               ; preds = %28
  %32 = mul nsw i64 %29, 8, !dbg !117
  %33 = mul nsw i64 %29, -8, !dbg !117
  %34 = add i64 %33, %12, !dbg !117
  %35 = icmp slt i64 %34, 8, !dbg !117
  %36 = select i1 %35, i64 %34, i64 8, !dbg !117
  br label %37, !dbg !117

37:                                               ; preds = %61, %31
  %38 = phi i64 [ %68, %61 ], [ 0, %31 ], !dbg !117
  %39 = icmp slt i64 %38, 32, !dbg !117
  br i1 %39, label %40, label %69, !dbg !117

40:                                               ; preds = %37
  %41 = trunc i64 %36 to i32, !dbg !117
  %42 = insertelement <8 x i32> poison, i32 %41, i32 0, !dbg !117
  %43 = shufflevector <8 x i32> %42, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !117
  %44 = icmp sgt <8 x i32> %43, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !117
  br label %45, !dbg !117

45:                                               ; preds = %58, %40
  %46 = phi i64 [ %60, %58 ], [ 0, %40 ], !dbg !117
  %47 = phi <8 x float> [ %59, %58 ], [ zeroinitializer, %40 ], !dbg !117
  %48 = icmp slt i64 %46, 8, !dbg !117
  br i1 %48, label %49, label %61, !dbg !117

49:                                               ; preds = %45
  %50 = extractelement <8 x i1> %44, i64 %46, !dbg !117
  br i1 %50, label %51, label %58, !dbg !117

51:                                               ; preds = %49
  %52 = add i64 %32, %46, !dbg !117
  %53 = mul nuw nsw i64 %52, 32, !dbg !117
  %54 = add nuw nsw i64 %53, %38, !dbg !117
  %55 = getelementptr inbounds nuw float, ptr %14, i64 %54, !dbg !117
  %56 = load float, ptr %55, align 4, !dbg !117
  %57 = insertelement <8 x float> %47, float %56, i64 %46, !dbg !117
  br label %58, !dbg !117

58:                                               ; preds = %51, %49
  %59 = phi <8 x float> [ %57, %51 ], [ %47, %49 ], !dbg !117
  %60 = add i64 %46, 1, !dbg !117
  br label %45, !dbg !117

61:                                               ; preds = %45
  %62 = mul i64 %29, 256, !dbg !117
  %63 = mul i64 %38, 8, !dbg !117
  %64 = add i64 %62, %63, !dbg !117
  %65 = add i64 %64, 0, !dbg !117
  %66 = add i64 %65, 0, !dbg !117
  %67 = getelementptr float, ptr %27, i64 %66, !dbg !117
  store <8 x float> %47, ptr %67, align 4, !dbg !117
  %68 = add i64 %38, 1, !dbg !117
  br label %37, !dbg !117

69:                                               ; preds = %37
  %70 = add i64 %29, 1, !dbg !117
  br label %28, !dbg !117

71:                                               ; preds = %28
  ret i32 0, !dbg !118
}

define internal i32 @_encoding_1_encode_32x16xf32_to_32x16xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !119 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !120
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !120
  %6 = load ptr, ptr %5, align 8, !dbg !120
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !120
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !121
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !121
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !121
  %10 = load ptr, ptr %9, align 8, !dbg !121
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !121
  br label %11, !dbg !122

11:                                               ; preds = %31, %3
  %12 = phi i64 [ %32, %31 ], [ 0, %3 ], !dbg !122
  %13 = icmp slt i64 %12, 2, !dbg !122
  br i1 %13, label %14, label %33, !dbg !122

14:                                               ; preds = %11
  %15 = mul nsw i64 %12, 8, !dbg !122
  br label %16, !dbg !122

16:                                               ; preds = %19, %14
  %17 = phi i64 [ %30, %19 ], [ 0, %14 ], !dbg !122
  %18 = icmp slt i64 %17, 32, !dbg !122
  br i1 %18, label %19, label %31, !dbg !122

19:                                               ; preds = %16
  %20 = mul i64 %17, 16, !dbg !122
  %21 = add i64 %20, %15, !dbg !122
  %22 = getelementptr float, ptr %6, i64 %21, !dbg !122
  %23 = load <8 x float>, ptr %22, align 4, !dbg !122
  %24 = mul i64 %12, 256, !dbg !122
  %25 = mul i64 %17, 8, !dbg !122
  %26 = add i64 %24, %25, !dbg !122
  %27 = add i64 %26, 0, !dbg !122
  %28 = add i64 %27, 0, !dbg !122
  %29 = getelementptr float, ptr %10, i64 %28, !dbg !122
  store <8 x float> %23, ptr %29, align 4, !dbg !122
  %30 = add i64 %17, 1, !dbg !122
  br label %16, !dbg !122

31:                                               ; preds = %16
  %32 = add i64 %12, 1, !dbg !122
  br label %11, !dbg !122

33:                                               ; preds = %11
  ret i32 0, !dbg !123
}

define internal i32 @bias_relu_dispatch_0_elementwise_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !124 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !125
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !125
  %6 = load i32, ptr %5, align 4, !dbg !125
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !126
  %8 = load i32, ptr %7, align 4, !dbg !126
  %9 = zext i32 %6 to i64, !dbg !127
  %10 = zext i32 %8 to i64, !dbg !128
  %11 = shl i64 %10, 32, !dbg !129
  %12 = or i64 %9, %11, !dbg !130
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !131
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !131
  %15 = load ptr, ptr %14, align 8, !dbg !131
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !131
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !132
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !132
  %18 = load ptr, ptr %17, align 8, !dbg !132
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !132
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !133
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !133
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !133
  %22 = load ptr, ptr %21, align 8, !dbg !133
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !133
  br label %23, !dbg !134

23:                                               ; preds = %42, %3
  %24 = phi i64 [ %43, %42 ], [ 0, %3 ], !dbg !134
  %25 = icmp slt i64 %24, %12, !dbg !134
  br i1 %25, label %26, label %44, !dbg !134

26:                                               ; preds = %29, %23
  %27 = phi i64 [ %41, %29 ], [ 0, %23 ], !dbg !134
  %28 = icmp slt i64 %27, 16, !dbg !134
  br i1 %28, label %29, label %42, !dbg !134

29:                                               ; preds = %26
  %30 = mul i64 %24, 16, !dbg !134
  %31 = add i64 %30, %27, !dbg !134
  %32 = getelementptr float, ptr %18, i64 %31, !dbg !134
  %33 = load <8 x float>, ptr %32, align 4, !dbg !134
  %34 = getelementptr float, ptr %15, i64 %27, !dbg !134
  %35 = load <8 x float>, ptr %34, align 4, !dbg !134
  %36 = fadd contract <8 x float> %33, %35, !dbg !135
  %37 = fcmp ugt <8 x float> %36, zeroinitializer, !dbg !136
  %38 = select <8 x i1> %37, <8 x float> %36, <8 x float> zeroinitializer, !dbg !136
  %39 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %38, !dbg !136
  %40 = getelementptr float, ptr %22, i64 %31, !dbg !134
  store <8 x float> %39, ptr %40, align 4, !dbg !134
  %41 = add i64 %27, 8, !dbg !134
  br label %26, !dbg !134

42:                                               ; preds = %26
  %43 = add i64 %24, 1, !dbg !134
  br label %23, !dbg !134

44:                                               ; preds = %23
  ret i32 0, !dbg !137
}

define internal i32 @row_sum_dispatch_0_reduction_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !138 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !139
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !139
  %6 = load i32, ptr %5, align 4, !dbg !139
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !140
  %8 = load i32, ptr %7, align 4, !dbg !140
  %9 = zext i32 %6 to i64, !dbg !141
  %10 = zext i32 %8 to i64, !dbg !142
  %11 = shl i64 %10, 32, !dbg !143
  %12 = or i64 %9, %11, !dbg !144
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !145
  %14 = load ptr, ptr %13, align 8, !dbg !145
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !145
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !146
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !146
  %17 = getelementptr ptr, ptr %16, i32 1, !dbg !146
  %18 = load ptr, ptr %17, align 8, !dbg !146
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !146
  br label %19, !dbg !147

19:                                               ; preds = %117, %3
  %20 = phi i64 [ %118, %117 ], [ 0, %3 ], !dbg !147
  %21 = icmp slt i64 %20, %12, !dbg !147
  br i1 %21, label %22, label %119, !dbg !147

22:                                               ; preds = %19
  %23 = sub i64 %12, %20, !dbg !147
  %24 = icmp slt i64 %23, 8, !dbg !147
  %25 = select i1 %24, i64 %23, i64 8, !dbg !147
  %26 = trunc i64 %25 to i32, !dbg !148
  %27 = insertelement <8 x i32> poison, i32 %26, i32 0, !dbg !148
  %28 = shufflevector <8 x i32> %27, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !148
  %29 = icmp sgt <8 x i32> %28, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !148
  %30 = getelementptr float, ptr %18, i64 %20, !dbg !149
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %30, <8 x i1> %29), !dbg !149
  %31 = icmp sgt i64 %25, 0, !dbg !147
  %32 = select i1 %31, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !147
  %33 = icmp sgt i64 %25, 1, !dbg !147
  %34 = select i1 %33, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !147
  %35 = icmp sgt i64 %25, 2, !dbg !147
  %36 = select i1 %35, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !147
  %37 = icmp sgt i64 %25, 3, !dbg !147
  %38 = select i1 %37, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !147
  %39 = icmp sgt i64 %25, 4, !dbg !147
  %40 = select i1 %39, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !147
  %41 = icmp sgt i64 %25, 5, !dbg !147
  %42 = select i1 %41, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !147
  %43 = icmp sgt i64 %25, 6, !dbg !147
  %44 = select i1 %43, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !147
  %45 = icmp sgt i64 %25, 7, !dbg !147
  %46 = select i1 %45, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !147
  %47 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %30, <8 x i1> %29, <8 x float> poison), !dbg !147
  br label %48, !dbg !147

48:                                               ; preds = %52, %22
  %49 = phi i64 [ %116, %52 ], [ 0, %22 ], !dbg !147
  %50 = phi <8 x float> [ %115, %52 ], [ %47, %22 ], !dbg !147
  %51 = icmp slt i64 %49, 16, !dbg !147
  br i1 %51, label %52, label %117, !dbg !147

52:                                               ; preds = %48
  %53 = mul i64 %20, 16, !dbg !147
  %54 = add i64 %53, %49, !dbg !147
  %55 = getelementptr float, ptr %14, i64 %54, !dbg !147
  %56 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %55, <8 x i1> %32, <8 x float> poison), !dbg !147
  %57 = add i64 %20, 1, !dbg !147
  %58 = mul i64 %57, 16, !dbg !147
  %59 = add i64 %58, %49, !dbg !147
  %60 = getelementptr float, ptr %14, i64 %59, !dbg !147
  %61 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %60, <8 x i1> %34, <8 x float> poison), !dbg !147
  %62 = add i64 %20, 2, !dbg !147
  %63 = mul i64 %62, 16, !dbg !147
  %64 = add i64 %63, %49, !dbg !147
  %65 = getelementptr float, ptr %14, i64 %64, !dbg !147
  %66 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %65, <8 x i1> %36, <8 x float> poison), !dbg !147
  %67 = add i64 %20, 3, !dbg !147
  %68 = mul i64 %67, 16, !dbg !147
  %69 = add i64 %68, %49, !dbg !147
  %70 = getelementptr float, ptr %14, i64 %69, !dbg !147
  %71 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %70, <8 x i1> %38, <8 x float> poison), !dbg !147
  %72 = add i64 %20, 4, !dbg !147
  %73 = mul i64 %72, 16, !dbg !147
  %74 = add i64 %73, %49, !dbg !147
  %75 = getelementptr float, ptr %14, i64 %74, !dbg !147
  %76 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %75, <8 x i1> %40, <8 x float> poison), !dbg !147
  %77 = add i64 %20, 5, !dbg !147
  %78 = mul i64 %77, 16, !dbg !147
  %79 = add i64 %78, %49, !dbg !147
  %80 = getelementptr float, ptr %14, i64 %79, !dbg !147
  %81 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %80, <8 x i1> %42, <8 x float> poison), !dbg !147
  %82 = add i64 %20, 6, !dbg !147
  %83 = mul i64 %82, 16, !dbg !147
  %84 = add i64 %83, %49, !dbg !147
  %85 = getelementptr float, ptr %14, i64 %84, !dbg !147
  %86 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %85, <8 x i1> %44, <8 x float> poison), !dbg !147
  %87 = add i64 %20, 7, !dbg !147
  %88 = mul i64 %87, 16, !dbg !147
  %89 = add i64 %88, %49, !dbg !147
  %90 = getelementptr float, ptr %14, i64 %89, !dbg !147
  %91 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %90, <8 x i1> %46, <8 x float> poison), !dbg !147
  %92 = extractelement <8 x float> %50, i64 0, !dbg !150
  %93 = call float @llvm.vp.reduce.fadd.v8f32(float %92, <8 x float> %56, <8 x i1> %32, i32 8), !dbg !150
  %94 = extractelement <8 x float> %50, i64 1, !dbg !150
  %95 = call float @llvm.vp.reduce.fadd.v8f32(float %94, <8 x float> %61, <8 x i1> %34, i32 8), !dbg !150
  %96 = extractelement <8 x float> %50, i64 2, !dbg !150
  %97 = call float @llvm.vp.reduce.fadd.v8f32(float %96, <8 x float> %66, <8 x i1> %36, i32 8), !dbg !150
  %98 = extractelement <8 x float> %50, i64 3, !dbg !150
  %99 = call float @llvm.vp.reduce.fadd.v8f32(float %98, <8 x float> %71, <8 x i1> %38, i32 8), !dbg !150
  %100 = extractelement <8 x float> %50, i64 4, !dbg !150
  %101 = call float @llvm.vp.reduce.fadd.v8f32(float %100, <8 x float> %76, <8 x i1> %40, i32 8), !dbg !150
  %102 = extractelement <8 x float> %50, i64 5, !dbg !150
  %103 = call float @llvm.vp.reduce.fadd.v8f32(float %102, <8 x float> %81, <8 x i1> %42, i32 8), !dbg !150
  %104 = extractelement <8 x float> %50, i64 6, !dbg !150
  %105 = call float @llvm.vp.reduce.fadd.v8f32(float %104, <8 x float> %86, <8 x i1> %44, i32 8), !dbg !150
  %106 = extractelement <8 x float> %50, i64 7, !dbg !150
  %107 = call float @llvm.vp.reduce.fadd.v8f32(float %106, <8 x float> %91, <8 x i1> %46, i32 8), !dbg !150
  %108 = insertelement <8 x float> poison, float %93, i64 0, !dbg !150
  %109 = insertelement <8 x float> %108, float %95, i64 1, !dbg !150
  %110 = insertelement <8 x float> %109, float %97, i64 2, !dbg !150
  %111 = insertelement <8 x float> %110, float %99, i64 3, !dbg !150
  %112 = insertelement <8 x float> %111, float %101, i64 4, !dbg !150
  %113 = insertelement <8 x float> %112, float %103, i64 5, !dbg !150
  %114 = insertelement <8 x float> %113, float %105, i64 6, !dbg !150
  %115 = insertelement <8 x float> %114, float %107, i64 7, !dbg !150
  %116 = add i64 %49, 8, !dbg !147
  br label %48, !dbg !147

117:                                              ; preds = %48
  call void @llvm.masked.store.v8f32.p0(<8 x float> %50, ptr align 4 %30, <8 x i1> %29), !dbg !150
  %118 = add i64 %20, 8, !dbg !147
  br label %19, !dbg !147

119:                                              ; preds = %19
  ret i32 0, !dbg !151
}

define internal i32 @fragment_dispatch_1_reduction_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !152 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !153
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !153
  %6 = load i32, ptr %5, align 4, !dbg !153
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !154
  %8 = load i32, ptr %7, align 4, !dbg !154
  %9 = getelementptr i32, ptr %5, i32 2, !dbg !155
  %10 = load i32, ptr %9, align 4, !dbg !155
  %11 = getelementptr i32, ptr %5, i32 3, !dbg !156
  %12 = load i32, ptr %11, align 4, !dbg !156
  %13 = zext i32 %6 to i64, !dbg !157
  %14 = zext i32 %8 to i64, !dbg !158
  %15 = shl i64 %14, 32, !dbg !159
  %16 = or i64 %13, %15, !dbg !160
  %17 = zext i32 %10 to i64, !dbg !161
  %18 = zext i32 %12 to i64, !dbg !162
  %19 = shl i64 %18, 32, !dbg !163
  %20 = or i64 %17, %19, !dbg !164
  %21 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !165
  %22 = getelementptr ptr, ptr %21, i32 1, !dbg !165
  %23 = load ptr, ptr %22, align 8, !dbg !165
  call void @llvm.assume(i1 true) [ "align"(ptr %23, i64 64) ], !dbg !165
  %24 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !166
  %25 = extractvalue %iree_hal_executable_dispatch_state_v0_t %24, 10, !dbg !166
  %26 = load ptr, ptr %25, align 8, !dbg !166
  %27 = mul i64 %16, 8, !dbg !166
  %28 = udiv i64 %27, 32, !dbg !166
  %29 = getelementptr float, ptr %26, i64 %28, !dbg !166
  call void @llvm.assume(i1 true) [ "align"(ptr %29, i64 4) ], !dbg !166
  %30 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !167
  %31 = extractvalue %iree_hal_executable_dispatch_state_v0_t %30, 10, !dbg !167
  %32 = getelementptr ptr, ptr %31, i32 2, !dbg !167
  %33 = load ptr, ptr %32, align 8, !dbg !167
  call void @llvm.assume(i1 true) [ "align"(ptr %33, i64 64) ], !dbg !167
  br label %34, !dbg !168

34:                                               ; preds = %166, %3
  %35 = phi i64 [ %167, %166 ], [ 0, %3 ], !dbg !168
  %36 = icmp slt i64 %35, %20, !dbg !168
  br i1 %36, label %37, label %168, !dbg !168

37:                                               ; preds = %34
  %38 = sub i64 %20, %35, !dbg !168
  %39 = icmp slt i64 %38, 8, !dbg !168
  %40 = select i1 %39, i64 %38, i64 8, !dbg !168
  %41 = trunc i64 %40 to i32, !dbg !169
  %42 = insertelement <8 x i32> poison, i32 %41, i32 0, !dbg !169
  %43 = shufflevector <8 x i32> %42, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !169
  %44 = icmp sgt <8 x i32> %43, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !169
  %45 = getelementptr float, ptr %33, i64 %35, !dbg !170
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %45, <8 x i1> %44), !dbg !170
  %46 = icmp sgt i64 %40, 0, !dbg !168
  %47 = select i1 %46, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !168
  %48 = icmp sgt i64 %40, 1, !dbg !168
  %49 = select i1 %48, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !168
  %50 = icmp sgt i64 %40, 2, !dbg !168
  %51 = select i1 %50, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !168
  %52 = icmp sgt i64 %40, 3, !dbg !168
  %53 = select i1 %52, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !168
  %54 = icmp sgt i64 %40, 4, !dbg !168
  %55 = select i1 %54, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !168
  %56 = icmp sgt i64 %40, 5, !dbg !168
  %57 = select i1 %56, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !168
  %58 = icmp sgt i64 %40, 6, !dbg !168
  %59 = select i1 %58, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !168
  %60 = icmp sgt i64 %40, 7, !dbg !168
  %61 = select i1 %60, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !168
  %62 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %45, <8 x i1> %44, <8 x float> poison), !dbg !168
  br label %63, !dbg !168

63:                                               ; preds = %67, %37
  %64 = phi i64 [ %165, %67 ], [ 0, %37 ], !dbg !168
  %65 = phi <8 x float> [ %164, %67 ], [ %62, %37 ], !dbg !168
  %66 = icmp slt i64 %64, 16, !dbg !168
  br i1 %66, label %67, label %166, !dbg !168

67:                                               ; preds = %63
  %68 = mul i64 %35, 16, !dbg !168
  %69 = add i64 %68, %64, !dbg !168
  %70 = getelementptr float, ptr %29, i64 %69, !dbg !168
  %71 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %70, <8 x i1> %47, <8 x float> poison), !dbg !168
  %72 = add i64 %35, 1, !dbg !168
  %73 = mul i64 %72, 16, !dbg !168
  %74 = add i64 %73, %64, !dbg !168
  %75 = getelementptr float, ptr %29, i64 %74, !dbg !168
  %76 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %75, <8 x i1> %49, <8 x float> poison), !dbg !168
  %77 = add i64 %35, 2, !dbg !168
  %78 = mul i64 %77, 16, !dbg !168
  %79 = add i64 %78, %64, !dbg !168
  %80 = getelementptr float, ptr %29, i64 %79, !dbg !168
  %81 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %80, <8 x i1> %51, <8 x float> poison), !dbg !168
  %82 = add i64 %35, 3, !dbg !168
  %83 = mul i64 %82, 16, !dbg !168
  %84 = add i64 %83, %64, !dbg !168
  %85 = getelementptr float, ptr %29, i64 %84, !dbg !168
  %86 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %85, <8 x i1> %53, <8 x float> poison), !dbg !168
  %87 = add i64 %35, 4, !dbg !168
  %88 = mul i64 %87, 16, !dbg !168
  %89 = add i64 %88, %64, !dbg !168
  %90 = getelementptr float, ptr %29, i64 %89, !dbg !168
  %91 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %90, <8 x i1> %55, <8 x float> poison), !dbg !168
  %92 = add i64 %35, 5, !dbg !168
  %93 = mul i64 %92, 16, !dbg !168
  %94 = add i64 %93, %64, !dbg !168
  %95 = getelementptr float, ptr %29, i64 %94, !dbg !168
  %96 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %95, <8 x i1> %57, <8 x float> poison), !dbg !168
  %97 = add i64 %35, 6, !dbg !168
  %98 = mul i64 %97, 16, !dbg !168
  %99 = add i64 %98, %64, !dbg !168
  %100 = getelementptr float, ptr %29, i64 %99, !dbg !168
  %101 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %100, <8 x i1> %59, <8 x float> poison), !dbg !168
  %102 = add i64 %35, 7, !dbg !168
  %103 = mul i64 %102, 16, !dbg !168
  %104 = add i64 %103, %64, !dbg !168
  %105 = getelementptr float, ptr %29, i64 %104, !dbg !168
  %106 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %105, <8 x i1> %61, <8 x float> poison), !dbg !168
  %107 = getelementptr float, ptr %23, i64 %64, !dbg !168
  %108 = load <8 x float>, ptr %107, align 4, !dbg !168
  %109 = fadd contract <8 x float> %71, %108, !dbg !171
  %110 = fadd contract <8 x float> %76, %108, !dbg !171
  %111 = fadd contract <8 x float> %81, %108, !dbg !171
  %112 = fadd contract <8 x float> %86, %108, !dbg !171
  %113 = fadd contract <8 x float> %91, %108, !dbg !171
  %114 = fadd contract <8 x float> %96, %108, !dbg !171
  %115 = fadd contract <8 x float> %101, %108, !dbg !171
  %116 = fadd contract <8 x float> %106, %108, !dbg !171
  %117 = fcmp ugt <8 x float> %109, zeroinitializer, !dbg !172
  %118 = fcmp ugt <8 x float> %110, zeroinitializer, !dbg !172
  %119 = fcmp ugt <8 x float> %111, zeroinitializer, !dbg !172
  %120 = fcmp ugt <8 x float> %112, zeroinitializer, !dbg !172
  %121 = fcmp ugt <8 x float> %113, zeroinitializer, !dbg !172
  %122 = fcmp ugt <8 x float> %114, zeroinitializer, !dbg !172
  %123 = fcmp ugt <8 x float> %115, zeroinitializer, !dbg !172
  %124 = fcmp ugt <8 x float> %116, zeroinitializer, !dbg !172
  %125 = select <8 x i1> %117, <8 x float> %109, <8 x float> zeroinitializer, !dbg !172
  %126 = select <8 x i1> %118, <8 x float> %110, <8 x float> zeroinitializer, !dbg !172
  %127 = select <8 x i1> %119, <8 x float> %111, <8 x float> zeroinitializer, !dbg !172
  %128 = select <8 x i1> %120, <8 x float> %112, <8 x float> zeroinitializer, !dbg !172
  %129 = select <8 x i1> %121, <8 x float> %113, <8 x float> zeroinitializer, !dbg !172
  %130 = select <8 x i1> %122, <8 x float> %114, <8 x float> zeroinitializer, !dbg !172
  %131 = select <8 x i1> %123, <8 x float> %115, <8 x float> zeroinitializer, !dbg !172
  %132 = select <8 x i1> %124, <8 x float> %116, <8 x float> zeroinitializer, !dbg !172
  %133 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %125, !dbg !172
  %134 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %126, !dbg !172
  %135 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %127, !dbg !172
  %136 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %128, !dbg !172
  %137 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %129, !dbg !172
  %138 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %130, !dbg !172
  %139 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %131, !dbg !172
  %140 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %132, !dbg !172
  %141 = extractelement <8 x float> %65, i64 0, !dbg !173
  %142 = call float @llvm.vp.reduce.fadd.v8f32(float %141, <8 x float> %133, <8 x i1> %47, i32 8), !dbg !173
  %143 = extractelement <8 x float> %65, i64 1, !dbg !173
  %144 = call float @llvm.vp.reduce.fadd.v8f32(float %143, <8 x float> %134, <8 x i1> %49, i32 8), !dbg !173
  %145 = extractelement <8 x float> %65, i64 2, !dbg !173
  %146 = call float @llvm.vp.reduce.fadd.v8f32(float %145, <8 x float> %135, <8 x i1> %51, i32 8), !dbg !173
  %147 = extractelement <8 x float> %65, i64 3, !dbg !173
  %148 = call float @llvm.vp.reduce.fadd.v8f32(float %147, <8 x float> %136, <8 x i1> %53, i32 8), !dbg !173
  %149 = extractelement <8 x float> %65, i64 4, !dbg !173
  %150 = call float @llvm.vp.reduce.fadd.v8f32(float %149, <8 x float> %137, <8 x i1> %55, i32 8), !dbg !173
  %151 = extractelement <8 x float> %65, i64 5, !dbg !173
  %152 = call float @llvm.vp.reduce.fadd.v8f32(float %151, <8 x float> %138, <8 x i1> %57, i32 8), !dbg !173
  %153 = extractelement <8 x float> %65, i64 6, !dbg !173
  %154 = call float @llvm.vp.reduce.fadd.v8f32(float %153, <8 x float> %139, <8 x i1> %59, i32 8), !dbg !173
  %155 = extractelement <8 x float> %65, i64 7, !dbg !173
  %156 = call float @llvm.vp.reduce.fadd.v8f32(float %155, <8 x float> %140, <8 x i1> %61, i32 8), !dbg !173
  %157 = insertelement <8 x float> poison, float %142, i64 0, !dbg !173
  %158 = insertelement <8 x float> %157, float %144, i64 1, !dbg !173
  %159 = insertelement <8 x float> %158, float %146, i64 2, !dbg !173
  %160 = insertelement <8 x float> %159, float %148, i64 3, !dbg !173
  %161 = insertelement <8 x float> %160, float %150, i64 4, !dbg !173
  %162 = insertelement <8 x float> %161, float %152, i64 5, !dbg !173
  %163 = insertelement <8 x float> %162, float %154, i64 6, !dbg !173
  %164 = insertelement <8 x float> %163, float %156, i64 7, !dbg !173
  %165 = add i64 %64, 8, !dbg !168
  br label %63, !dbg !168

166:                                              ; preds = %63
  call void @llvm.masked.store.v8f32.p0(<8 x float> %65, ptr align 4 %45, <8 x i1> %44), !dbg !173
  %167 = add i64 %35, 8, !dbg !168
  br label %34, !dbg !168

168:                                              ; preds = %34
  ret i32 0, !dbg !174
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vp.reduce.fadd.v8f32(float, <8 x float>, <8 x i1>, i32) #4

; Function Attrs: uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) #5 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #5 = { uwtable "nonlazybind" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module__encoding_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module__encoding_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-tiled/executables")
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_Dx16x32_f32", linkageName: "matmul_dispatch_0_matmul_Dx16x32_f32", scope: !1, file: !1, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!14 = !DISubroutineType(cc: DW_CC_normal, types: !15)
!15 = !{!16, !17, !48, !77}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !21, file: !21, line: 246, size: 768, elements: !22)
!21 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!22 = !{!23, !31, !34, !37, !39}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, scope: !21, file: !21, line: 227, baseType: !27, size: 2048, elements: !29)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30}
!30 = !DISubrange(count: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !38, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !40, offset: 256)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !21, file: !21, line: 227, size: 512, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, scope: !21, file: !21, line: 227, baseType: !44, size: 512, elements: !46)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !45)
!45 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !{!47}
!47 = !DISubrange(count: 8)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !21, file: !21, line: 275, size: 384, elements: !52)
!52 = !{!53, !54, !55, !58, !59, !60, !61, !62, !65, !66, !67, !72}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !27, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !27, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !56, size: 16, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !57)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !56, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !27, size: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !27, size: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !56, size: 16, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !63, size: 8, offset: 176)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !64)
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !63, size: 8, offset: 184)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !24, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !68, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DICompositeType(tag: DW_TAG_array_type, scope: !21, file: !21, line: 227, baseType: !71, size: 4096, elements: !29)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_array_type, scope: !21, file: !21, line: 227, baseType: !76, size: 4096, elements: !29)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !44)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !21, file: !21, line: 321, size: 256, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !27, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !27, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !56, size: 16, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !56, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !27, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !32, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !27, size: 32, offset: 192)
!89 = !DILocation(line: 39, column: 8, scope: !13)
!90 = !DILocation(line: 13, column: 8, scope: !13)
!91 = !DILocation(line: 14, column: 8, scope: !13)
!92 = !DILocation(line: 15, column: 8, scope: !13)
!93 = !DILocation(line: 16, column: 8, scope: !13)
!94 = !DILocation(line: 17, column: 8, scope: !13)
!95 = !DILocation(line: 18, column: 8, scope: !13)
!96 = !DILocation(line: 19, column: 8, scope: !13)
!97 = !DILocation(line: 20, column: 8, scope: !13)
!98 = !DILocation(line: 22, column: 8, scope: !13)
!99 = !DILocation(line: 23, column: 8, scope: !13)
!100 = !DILocation(line: 24, column: 8, scope: !13)
!101 = !DILocation(line: 25, column: 8, scope: !13)
!102 = !DILocation(line: 40, column: 8, scope: !13)
!103 = !DILocation(line: 33, column: 8, scope: !13)
!104 = !DILocation(line: 35, column: 8, scope: !13)
!105 = !DILocation(line: 42, column: 8, scope: !13)
!106 = !DILocation(line: 44, column: 8, scope: !13)
!107 = distinct !DISubprogram(name: "_encoding_0_encode_Dx32xf32_to_Dx32xf32", linkageName: "_encoding_0_encode_Dx32xf32_to_Dx32xf32", scope: !3, file: !3, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!108 = !DILocation(line: 13, column: 8, scope: !107)
!109 = !DILocation(line: 14, column: 8, scope: !107)
!110 = !DILocation(line: 15, column: 8, scope: !107)
!111 = !DILocation(line: 16, column: 8, scope: !107)
!112 = !DILocation(line: 17, column: 8, scope: !107)
!113 = !DILocation(line: 18, column: 8, scope: !107)
!114 = !DILocation(line: 26, column: 8, scope: !107)
!115 = !DILocation(line: 27, column: 8, scope: !107)
!116 = !DILocation(line: 28, column: 8, scope: !107)
!117 = !DILocation(line: 32, column: 8, scope: !107)
!118 = !DILocation(line: 34, column: 8, scope: !107)
!119 = distinct !DISubprogram(name: "_encoding_1_encode_32x16xf32_to_32x16xf32", linkageName: "_encoding_1_encode_32x16xf32_to_32x16xf32", scope: !5, file: !5, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!120 = !DILocation(line: 10, column: 8, scope: !119)
!121 = !DILocation(line: 11, column: 8, scope: !119)
!122 = !DILocation(line: 14, column: 8, scope: !119)
!123 = !DILocation(line: 16, column: 8, scope: !119)
!124 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_Dx16_f32", linkageName: "bias_relu_dispatch_0_elementwise_Dx16_f32", scope: !7, file: !7, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!125 = !DILocation(line: 12, column: 8, scope: !124)
!126 = !DILocation(line: 13, column: 8, scope: !124)
!127 = !DILocation(line: 14, column: 8, scope: !124)
!128 = !DILocation(line: 15, column: 8, scope: !124)
!129 = !DILocation(line: 16, column: 8, scope: !124)
!130 = !DILocation(line: 17, column: 8, scope: !124)
!131 = !DILocation(line: 20, column: 8, scope: !124)
!132 = !DILocation(line: 22, column: 8, scope: !124)
!133 = !DILocation(line: 23, column: 8, scope: !124)
!134 = !DILocation(line: 27, column: 8, scope: !124)
!135 = !DILocation(line: 29, column: 10, scope: !124)
!136 = !DILocation(line: 30, column: 10, scope: !124)
!137 = !DILocation(line: 34, column: 8, scope: !124)
!138 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_Dx16_f32", linkageName: "row_sum_dispatch_0_reduction_Dx16_f32", scope: !9, file: !9, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!139 = !DILocation(line: 12, column: 8, scope: !138)
!140 = !DILocation(line: 13, column: 8, scope: !138)
!141 = !DILocation(line: 14, column: 8, scope: !138)
!142 = !DILocation(line: 15, column: 8, scope: !138)
!143 = !DILocation(line: 16, column: 8, scope: !138)
!144 = !DILocation(line: 17, column: 8, scope: !138)
!145 = !DILocation(line: 21, column: 8, scope: !138)
!146 = !DILocation(line: 22, column: 8, scope: !138)
!147 = !DILocation(line: 26, column: 8, scope: !138)
!148 = !DILocation(line: 25, column: 8, scope: !138)
!149 = !DILocation(line: 10, column: 8, scope: !138)
!150 = !DILocation(line: 28, column: 10, scope: !138)
!151 = !DILocation(line: 32, column: 8, scope: !138)
!152 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_Dx16_f32", linkageName: "fragment_dispatch_1_reduction_Dx16_f32", scope: !11, file: !11, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!153 = !DILocation(line: 12, column: 8, scope: !152)
!154 = !DILocation(line: 13, column: 8, scope: !152)
!155 = !DILocation(line: 14, column: 8, scope: !152)
!156 = !DILocation(line: 15, column: 8, scope: !152)
!157 = !DILocation(line: 16, column: 8, scope: !152)
!158 = !DILocation(line: 17, column: 8, scope: !152)
!159 = !DILocation(line: 18, column: 8, scope: !152)
!160 = !DILocation(line: 19, column: 8, scope: !152)
!161 = !DILocation(line: 21, column: 8, scope: !152)
!162 = !DILocation(line: 22, column: 8, scope: !152)
!163 = !DILocation(line: 23, column: 8, scope: !152)
!164 = !DILocation(line: 24, column: 8, scope: !152)
!165 = !DILocation(line: 30, column: 8, scope: !152)
!166 = !DILocation(line: 32, column: 8, scope: !152)
!167 = !DILocation(line: 33, column: 8, scope: !152)
!168 = !DILocation(line: 38, column: 8, scope: !152)
!169 = !DILocation(line: 37, column: 8, scope: !152)
!170 = !DILocation(line: 10, column: 8, scope: !152)
!171 = !DILocation(line: 40, column: 10, scope: !152)
!172 = !DILocation(line: 41, column: 10, scope: !152)
!173 = !DILocation(line: 42, column: 10, scope: !152)
!174 = !DILocation(line: 46, column: 8, scope: !152)
