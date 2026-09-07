; ModuleID = 'tiny_linked'
source_filename = "tiny_linked"
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

@0 = private constant [12 x i8] c"tiny_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [6 x ptr] [ptr @matmul_dispatch_0_matmul_1x16x32_f32, ptr @_encoding_0_encode_1x32xf32_to_1x32xf32, ptr @_encoding_1_encode_32x16xf32_to_32x16xf32, ptr @bias_relu_dispatch_0_elementwise_16_f32, ptr @row_sum_dispatch_0_reduction_16_f32, ptr @fragment_dispatch_1_reduction_16_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [6 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [37 x i8] c"matmul_dispatch_0_matmul_1x16x32_f32\00", align 1
@2 = private constant [40 x i8] c"_encoding_0_encode_1x32xf32_to_1x32xf32\00", align 1
@3 = private constant [42 x i8] c"_encoding_1_encode_32x16xf32_to_32x16xf32\00", align 1
@4 = private constant [40 x i8] c"bias_relu_dispatch_0_elementwise_16_f32\00", align 1
@5 = private constant [36 x i8] c"row_sum_dispatch_0_reduction_16_f32\00", align 1
@6 = private constant [37 x i8] c"fragment_dispatch_1_reduction_16_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [6 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6]
@7 = private constant [164 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables/configured_module_matmul_dispatch_0.mlir\00", align 1
@8 = private constant [158 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables/configured_module__encoding_0.mlir\00", align 1
@9 = private constant [158 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables/configured_module__encoding_1.mlir\00", align 1
@10 = private constant [167 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables/configured_module_bias_relu_dispatch_0.mlir\00", align 1
@11 = private constant [165 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables/configured_module_row_sum_dispatch_0.mlir\00", align 1
@12 = private constant [166 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables/configured_module_fragment_dispatch_1.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [6 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 163, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 157, ptr @8 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 157, ptr @9 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 166, ptr @10 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 164, ptr @11 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 165, ptr @12 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_1x16x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_1x16x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_0_encode_1x32xf32_to_1x32xf32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_0_encode_1x32xf32_to_1x32xf32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [6 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_1x16x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_1x16x32_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__encoding_0_encode_1x32xf32_to_1x32xf32_stage_names, ptr @iree_hal_executable_library_query_v0__encoding_0_encode_1x32xf32_to_1x32xf32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names, ptr @iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_16_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_16_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_16_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 6, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

declare i32 @iree_uk_mmt4d(ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, ptr) #0

define internal i32 @matmul_dispatch_0_matmul_1x16x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !13 {
  %4 = alloca float, i64 8, align 64, !dbg !89
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !90
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 9, !dbg !90
  %7 = load i32, ptr %6, align 4, !dbg !90
  %8 = zext i32 %7 to i64, !dbg !91
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !92
  %10 = load ptr, ptr %9, align 8, !dbg !92
  %11 = getelementptr ptr, ptr %9, i32 1, !dbg !93
  %12 = load ptr, ptr %11, align 8, !dbg !93
  %13 = mul i64 %8, 8, !dbg !93
  %14 = udiv i64 %13, 32, !dbg !93
  %15 = getelementptr float, ptr %12, i64 %14, !dbg !93
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !93
  br label %16, !dbg !92

16:                                               ; preds = %19, %3
  %17 = phi i64 [ %53, %19 ], [ 0, %3 ], !dbg !92
  %18 = icmp slt i64 %17, 2, !dbg !92
  br i1 %18, label %19, label %54, !dbg !92

19:                                               ; preds = %16
  %20 = mul nsw i64 %17, 256, !dbg !92
  %21 = add i64 %20, 32, !dbg !92
  %22 = getelementptr inbounds ptr, ptr %0, i32 4, !dbg !92
  %23 = alloca i64, i64 8, align 8, !dbg !92
  %24 = load i64, ptr %22, align 4, !dbg !92
  %25 = or i64 %24, 52239, !dbg !92
  store i64 %25, ptr %23, align 4, !dbg !92
  %26 = getelementptr inbounds i64, ptr %22, i32 1, !dbg !92
  %27 = load i64, ptr %26, align 4, !dbg !92
  %28 = getelementptr inbounds i64, ptr %23, i32 1, !dbg !92
  store i64 %27, ptr %28, align 4, !dbg !92
  %29 = getelementptr inbounds i64, ptr %22, i32 2, !dbg !92
  %30 = load i64, ptr %29, align 4, !dbg !92
  %31 = getelementptr inbounds i64, ptr %23, i32 2, !dbg !92
  store i64 %30, ptr %31, align 4, !dbg !92
  %32 = getelementptr inbounds i64, ptr %22, i32 3, !dbg !92
  %33 = load i64, ptr %32, align 4, !dbg !92
  %34 = getelementptr inbounds i64, ptr %23, i32 3, !dbg !92
  store i64 %33, ptr %34, align 4, !dbg !92
  %35 = getelementptr inbounds i64, ptr %22, i32 4, !dbg !92
  %36 = load i64, ptr %35, align 4, !dbg !92
  %37 = getelementptr inbounds i64, ptr %23, i32 4, !dbg !92
  store i64 %36, ptr %37, align 4, !dbg !92
  %38 = getelementptr inbounds i64, ptr %22, i32 5, !dbg !92
  %39 = load i64, ptr %38, align 4, !dbg !92
  %40 = getelementptr inbounds i64, ptr %23, i32 5, !dbg !92
  store i64 %39, ptr %40, align 4, !dbg !92
  %41 = getelementptr inbounds i64, ptr %22, i32 6, !dbg !92
  %42 = load i64, ptr %41, align 4, !dbg !92
  %43 = getelementptr inbounds i64, ptr %23, i32 6, !dbg !92
  store i64 %42, ptr %43, align 4, !dbg !92
  %44 = getelementptr inbounds i64, ptr %22, i32 7, !dbg !92
  %45 = load i64, ptr %44, align 4, !dbg !92
  %46 = getelementptr inbounds i64, ptr %23, i32 7, !dbg !92
  store i64 %45, ptr %46, align 4, !dbg !92
  %47 = call i32 @iree_uk_mmt4d(ptr %10, i64 0, i64 32, ptr %10, i64 %21, i64 256, ptr %4, i64 0, i64 8, i64 1, i64 1, i64 32, i32 1, i32 8, i32 1, i32 1537, ptr %23), !dbg !92
  %48 = mul nsw i64 %17, 8, !dbg !94
  %49 = getelementptr float, ptr %4, i64 0, !dbg !94
  %50 = load <8 x float>, ptr %49, align 4, !dbg !94
  %51 = add i64 0, %48, !dbg !92
  %52 = getelementptr float, ptr %15, i64 %51, !dbg !92
  store <8 x float> %50, ptr %52, align 4, !dbg !92
  %53 = add i64 %17, 1, !dbg !92
  br label %16, !dbg !92

54:                                               ; preds = %16
  ret i32 0, !dbg !95
}

define internal i32 @_encoding_0_encode_1x32xf32_to_1x32xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !96 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !97
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !97
  %6 = load ptr, ptr %5, align 8, !dbg !97
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !97
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !98
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !98
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !98
  %10 = load ptr, ptr %9, align 8, !dbg !98
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !98
  br label %11, !dbg !99

11:                                               ; preds = %14, %3
  %12 = phi i64 [ %21, %14 ], [ 0, %3 ], !dbg !99
  %13 = icmp slt i64 %12, 32, !dbg !99
  br i1 %13, label %14, label %22, !dbg !99

14:                                               ; preds = %11
  %15 = add nuw nsw i64 0, %12, !dbg !99
  %16 = getelementptr inbounds nuw float, ptr %6, i64 %15, !dbg !99
  %17 = load float, ptr %16, align 4, !dbg !99
  %18 = add nuw nsw i64 %15, 0, !dbg !99
  %19 = add nuw nsw i64 %18, 0, !dbg !99
  %20 = getelementptr inbounds nuw float, ptr %10, i64 %19, !dbg !99
  store float %17, ptr %20, align 4, !dbg !99
  %21 = add i64 %12, 1, !dbg !99
  br label %11, !dbg !99

22:                                               ; preds = %11
  ret i32 0, !dbg !100
}

define internal i32 @_encoding_1_encode_32x16xf32_to_32x16xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !101 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !102
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !102
  %6 = load ptr, ptr %5, align 8, !dbg !102
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !102
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !103
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !103
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !103
  %10 = load ptr, ptr %9, align 8, !dbg !103
  %11 = getelementptr float, ptr %10, i64 32, !dbg !103
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !103
  br label %12, !dbg !104

12:                                               ; preds = %32, %3
  %13 = phi i64 [ %33, %32 ], [ 0, %3 ], !dbg !104
  %14 = icmp slt i64 %13, 2, !dbg !104
  br i1 %14, label %15, label %34, !dbg !104

15:                                               ; preds = %12
  %16 = mul nsw i64 %13, 8, !dbg !104
  br label %17, !dbg !104

17:                                               ; preds = %20, %15
  %18 = phi i64 [ %31, %20 ], [ 0, %15 ], !dbg !104
  %19 = icmp slt i64 %18, 32, !dbg !104
  br i1 %19, label %20, label %32, !dbg !104

20:                                               ; preds = %17
  %21 = mul i64 %18, 16, !dbg !104
  %22 = add i64 %21, %16, !dbg !104
  %23 = getelementptr float, ptr %6, i64 %22, !dbg !104
  %24 = load <8 x float>, ptr %23, align 4, !dbg !104
  %25 = mul i64 %13, 256, !dbg !104
  %26 = mul i64 %18, 8, !dbg !104
  %27 = add i64 %25, %26, !dbg !104
  %28 = add i64 %27, 0, !dbg !104
  %29 = add i64 %28, 0, !dbg !104
  %30 = getelementptr float, ptr %11, i64 %29, !dbg !104
  store <8 x float> %24, ptr %30, align 4, !dbg !104
  %31 = add i64 %18, 1, !dbg !104
  br label %17, !dbg !104

32:                                               ; preds = %17
  %33 = add i64 %13, 1, !dbg !104
  br label %12, !dbg !104

34:                                               ; preds = %12
  ret i32 0, !dbg !105
}

define internal i32 @bias_relu_dispatch_0_elementwise_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !106 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !107
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !107
  %6 = load ptr, ptr %5, align 8, !dbg !107
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !107
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !108
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !108
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !108
  %10 = load ptr, ptr %9, align 8, !dbg !108
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !108
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !109
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !109
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !109
  %14 = load ptr, ptr %13, align 8, !dbg !109
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !109
  br label %15, !dbg !110

15:                                               ; preds = %18, %3
  %16 = phi i64 [ %28, %18 ], [ 0, %3 ], !dbg !110
  %17 = icmp slt i64 %16, 16, !dbg !110
  br i1 %17, label %18, label %29, !dbg !110

18:                                               ; preds = %15
  %19 = getelementptr float, ptr %6, i64 %16, !dbg !110
  %20 = load <8 x float>, ptr %19, align 4, !dbg !110
  %21 = getelementptr float, ptr %10, i64 %16, !dbg !110
  %22 = load <8 x float>, ptr %21, align 4, !dbg !110
  %23 = fadd contract <8 x float> %20, %22, !dbg !111
  %24 = fcmp ugt <8 x float> %23, zeroinitializer, !dbg !112
  %25 = select <8 x i1> %24, <8 x float> %23, <8 x float> zeroinitializer, !dbg !112
  %26 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %25, !dbg !112
  %27 = getelementptr float, ptr %14, i64 %16, !dbg !110
  store <8 x float> %26, ptr %27, align 4, !dbg !110
  %28 = add i64 %16, 8, !dbg !110
  br label %15, !dbg !110

29:                                               ; preds = %15
  ret i32 0, !dbg !113
}

define internal i32 @row_sum_dispatch_0_reduction_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !114 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !115
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !115
  %6 = load ptr, ptr %5, align 8, !dbg !115
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !115
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !116
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !116
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !116
  %10 = load ptr, ptr %9, align 8, !dbg !116
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !116
  br label %11, !dbg !117

11:                                               ; preds = %15, %3
  %12 = phi i64 [ %21, %15 ], [ 0, %3 ], !dbg !117
  %13 = phi <1 x float> [ %20, %15 ], [ zeroinitializer, %3 ], !dbg !117
  %14 = icmp slt i64 %12, 16, !dbg !117
  br i1 %14, label %15, label %22, !dbg !117

15:                                               ; preds = %11
  %16 = getelementptr float, ptr %6, i64 %12, !dbg !117
  %17 = load <8 x float>, ptr %16, align 4, !dbg !117
  %18 = extractelement <1 x float> %13, i64 0, !dbg !117
  %19 = call float @llvm.vector.reduce.fadd.v8f32(float %18, <8 x float> %17), !dbg !118
  %20 = insertelement <1 x float> poison, float %19, i32 0, !dbg !117
  %21 = add i64 %12, 8, !dbg !117
  br label %11, !dbg !117

22:                                               ; preds = %11
  %23 = extractelement <1 x float> %13, i64 0, !dbg !118
  store float %23, ptr %10, align 4, !dbg !118
  ret i32 0, !dbg !119
}

define internal i32 @fragment_dispatch_1_reduction_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !120 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !121
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !121
  %6 = load ptr, ptr %5, align 8, !dbg !121
  %7 = getelementptr float, ptr %6, i64 544, !dbg !121
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !121
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !122
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !122
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !122
  %11 = load ptr, ptr %10, align 8, !dbg !122
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !122
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !123
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !123
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !123
  %15 = load ptr, ptr %14, align 8, !dbg !123
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !123
  br label %16, !dbg !124

16:                                               ; preds = %20, %3
  %17 = phi i64 [ %32, %20 ], [ 0, %3 ], !dbg !124
  %18 = phi <1 x float> [ %31, %20 ], [ zeroinitializer, %3 ], !dbg !124
  %19 = icmp slt i64 %17, 16, !dbg !124
  br i1 %19, label %20, label %33, !dbg !124

20:                                               ; preds = %16
  %21 = getelementptr float, ptr %7, i64 %17, !dbg !124
  %22 = load <8 x float>, ptr %21, align 4, !dbg !124
  %23 = getelementptr float, ptr %11, i64 %17, !dbg !124
  %24 = load <8 x float>, ptr %23, align 4, !dbg !124
  %25 = extractelement <1 x float> %18, i64 0, !dbg !124
  %26 = fadd contract <8 x float> %22, %24, !dbg !125
  %27 = fcmp ugt <8 x float> %26, zeroinitializer, !dbg !126
  %28 = select <8 x i1> %27, <8 x float> %26, <8 x float> zeroinitializer, !dbg !126
  %29 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %28, !dbg !126
  %30 = call float @llvm.vector.reduce.fadd.v8f32(float %25, <8 x float> %29), !dbg !127
  %31 = insertelement <1 x float> poison, float %30, i32 0, !dbg !124
  %32 = add i64 %17, 8, !dbg !124
  br label %16, !dbg !124

33:                                               ; preds = %16
  %34 = extractelement <1 x float> %18, i64 0, !dbg !127
  store float %34, ptr %15, align 4, !dbg !127
  ret i32 0, !dbg !128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #2

; Function Attrs: uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) #3 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { uwtable "nonlazybind" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module__encoding_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module__encoding_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-tiled/executables")
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_1x16x32_f32", linkageName: "matmul_dispatch_0_matmul_1x16x32_f32", scope: !1, file: !1, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!89 = !DILocation(line: 21, column: 8, scope: !13)
!90 = !DILocation(line: 12, column: 8, scope: !13)
!91 = !DILocation(line: 13, column: 8, scope: !13)
!92 = !DILocation(line: 22, column: 8, scope: !13)
!93 = !DILocation(line: 17, column: 8, scope: !13)
!94 = !DILocation(line: 24, column: 8, scope: !13)
!95 = !DILocation(line: 26, column: 8, scope: !13)
!96 = distinct !DISubprogram(name: "_encoding_0_encode_1x32xf32_to_1x32xf32", linkageName: "_encoding_0_encode_1x32xf32_to_1x32xf32", scope: !3, file: !3, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!97 = !DILocation(line: 10, column: 8, scope: !96)
!98 = !DILocation(line: 11, column: 8, scope: !96)
!99 = !DILocation(line: 14, column: 8, scope: !96)
!100 = !DILocation(line: 16, column: 8, scope: !96)
!101 = distinct !DISubprogram(name: "_encoding_1_encode_32x16xf32_to_32x16xf32", linkageName: "_encoding_1_encode_32x16xf32_to_32x16xf32", scope: !5, file: !5, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!102 = !DILocation(line: 11, column: 8, scope: !101)
!103 = !DILocation(line: 12, column: 8, scope: !101)
!104 = !DILocation(line: 15, column: 8, scope: !101)
!105 = !DILocation(line: 17, column: 8, scope: !101)
!106 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_16_f32", linkageName: "bias_relu_dispatch_0_elementwise_16_f32", scope: !7, file: !7, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!107 = !DILocation(line: 11, column: 8, scope: !106)
!108 = !DILocation(line: 12, column: 8, scope: !106)
!109 = !DILocation(line: 13, column: 8, scope: !106)
!110 = !DILocation(line: 17, column: 8, scope: !106)
!111 = !DILocation(line: 19, column: 10, scope: !106)
!112 = !DILocation(line: 20, column: 10, scope: !106)
!113 = !DILocation(line: 24, column: 8, scope: !106)
!114 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_16_f32", linkageName: "row_sum_dispatch_0_reduction_16_f32", scope: !9, file: !9, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!115 = !DILocation(line: 11, column: 8, scope: !114)
!116 = !DILocation(line: 12, column: 8, scope: !114)
!117 = !DILocation(line: 16, column: 8, scope: !114)
!118 = !DILocation(line: 18, column: 10, scope: !114)
!119 = !DILocation(line: 22, column: 8, scope: !114)
!120 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_16_f32", linkageName: "fragment_dispatch_1_reduction_16_f32", scope: !11, file: !11, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!121 = !DILocation(line: 12, column: 8, scope: !120)
!122 = !DILocation(line: 13, column: 8, scope: !120)
!123 = !DILocation(line: 14, column: 8, scope: !120)
!124 = !DILocation(line: 19, column: 8, scope: !120)
!125 = !DILocation(line: 21, column: 10, scope: !120)
!126 = !DILocation(line: 22, column: 10, scope: !120)
!127 = !DILocation(line: 23, column: 10, scope: !120)
!128 = !DILocation(line: 27, column: 8, scope: !120)
