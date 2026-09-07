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
@iree_hal_executable_library_query_v0_funcs = private constant [4 x ptr] [ptr @matmul_dispatch_0_matmul_1x16x32_f32, ptr @bias_relu_dispatch_0_elementwise_16_f32, ptr @row_sum_dispatch_0_reduction_16_f32, ptr @fragment_dispatch_1_reduction_16_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [4 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [37 x i8] c"matmul_dispatch_0_matmul_1x16x32_f32\00", align 1
@2 = private constant [40 x i8] c"bias_relu_dispatch_0_elementwise_16_f32\00", align 1
@3 = private constant [36 x i8] c"row_sum_dispatch_0_reduction_16_f32\00", align 1
@4 = private constant [37 x i8] c"fragment_dispatch_1_reduction_16_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [4 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4]
@5 = private constant [166 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-untiled/executables/configured_module_matmul_dispatch_0.mlir\00", align 1
@6 = private constant [169 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-untiled/executables/configured_module_bias_relu_dispatch_0.mlir\00", align 1
@7 = private constant [167 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-untiled/executables/configured_module_row_sum_dispatch_0.mlir\00", align 1
@8 = private constant [168 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-untiled/executables/configured_module_fragment_dispatch_1.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [4 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 165, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 168, ptr @6 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 166, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 167, ptr @8 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_1x16x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_1x16x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [4 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_1x16x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_1x16x32_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_16_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_16_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_16_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 4, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @matmul_dispatch_0_matmul_1x16x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !9 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !85
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !85
  %6 = load ptr, ptr %5, align 8, !dbg !85
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !85
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !86
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !86
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !86
  %10 = load ptr, ptr %9, align 8, !dbg !86
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !86
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !87
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !87
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !87
  %14 = load ptr, ptr %13, align 8, !dbg !87
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !87
  br label %15, !dbg !88

15:                                               ; preds = %103, %3
  %16 = phi i64 [ %107, %103 ], [ 0, %3 ], !dbg !88
  %17 = icmp slt i64 %16, 16, !dbg !88
  br i1 %17, label %18, label %108, !dbg !88

18:                                               ; preds = %22, %15
  %19 = phi i64 [ %102, %22 ], [ 0, %15 ], !dbg !88
  %20 = phi <1 x float> [ %101, %22 ], [ zeroinitializer, %15 ], !dbg !88
  %21 = icmp slt i64 %19, 32, !dbg !88
  br i1 %21, label %22, label %103, !dbg !88

22:                                               ; preds = %18
  %23 = mul i64 %19, 16, !dbg !88
  %24 = add i64 %23, %16, !dbg !88
  %25 = getelementptr float, ptr %10, i64 %24, !dbg !88
  %26 = load <1 x float>, ptr %25, align 4, !dbg !88
  %27 = add i64 %19, 1, !dbg !88
  %28 = mul i64 %27, 16, !dbg !88
  %29 = add i64 %28, %16, !dbg !88
  %30 = getelementptr float, ptr %10, i64 %29, !dbg !88
  %31 = load <1 x float>, ptr %30, align 4, !dbg !88
  %32 = add i64 %19, 2, !dbg !88
  %33 = mul i64 %32, 16, !dbg !88
  %34 = add i64 %33, %16, !dbg !88
  %35 = getelementptr float, ptr %10, i64 %34, !dbg !88
  %36 = load <1 x float>, ptr %35, align 4, !dbg !88
  %37 = add i64 %19, 3, !dbg !88
  %38 = mul i64 %37, 16, !dbg !88
  %39 = add i64 %38, %16, !dbg !88
  %40 = getelementptr float, ptr %10, i64 %39, !dbg !88
  %41 = load <1 x float>, ptr %40, align 4, !dbg !88
  %42 = add i64 %19, 4, !dbg !88
  %43 = mul i64 %42, 16, !dbg !88
  %44 = add i64 %43, %16, !dbg !88
  %45 = getelementptr float, ptr %10, i64 %44, !dbg !88
  %46 = load <1 x float>, ptr %45, align 4, !dbg !88
  %47 = add i64 %19, 5, !dbg !88
  %48 = mul i64 %47, 16, !dbg !88
  %49 = add i64 %48, %16, !dbg !88
  %50 = getelementptr float, ptr %10, i64 %49, !dbg !88
  %51 = load <1 x float>, ptr %50, align 4, !dbg !88
  %52 = add i64 %19, 6, !dbg !88
  %53 = mul i64 %52, 16, !dbg !88
  %54 = add i64 %53, %16, !dbg !88
  %55 = getelementptr float, ptr %10, i64 %54, !dbg !88
  %56 = load <1 x float>, ptr %55, align 4, !dbg !88
  %57 = add i64 %19, 7, !dbg !88
  %58 = mul i64 %57, 16, !dbg !88
  %59 = add i64 %58, %16, !dbg !88
  %60 = getelementptr float, ptr %10, i64 %59, !dbg !88
  %61 = load <1 x float>, ptr %60, align 4, !dbg !88
  %62 = add nuw nsw i64 0, %19, !dbg !89
  %63 = getelementptr inbounds nuw float, ptr %6, i64 %62, !dbg !89
  %64 = load float, ptr %63, align 4, !dbg !89
  %65 = insertelement <1 x float> poison, float %64, i32 0, !dbg !89
  %66 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %26, <1 x float> %65, <1 x float> %20), !dbg !89
  %67 = add nuw nsw i64 0, %27, !dbg !89
  %68 = getelementptr inbounds nuw float, ptr %6, i64 %67, !dbg !89
  %69 = load float, ptr %68, align 4, !dbg !89
  %70 = insertelement <1 x float> poison, float %69, i32 0, !dbg !89
  %71 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %31, <1 x float> %70, <1 x float> %66), !dbg !89
  %72 = add nuw nsw i64 0, %32, !dbg !89
  %73 = getelementptr inbounds nuw float, ptr %6, i64 %72, !dbg !89
  %74 = load float, ptr %73, align 4, !dbg !89
  %75 = insertelement <1 x float> poison, float %74, i32 0, !dbg !89
  %76 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %36, <1 x float> %75, <1 x float> %71), !dbg !89
  %77 = add nuw nsw i64 0, %37, !dbg !89
  %78 = getelementptr inbounds nuw float, ptr %6, i64 %77, !dbg !89
  %79 = load float, ptr %78, align 4, !dbg !89
  %80 = insertelement <1 x float> poison, float %79, i32 0, !dbg !89
  %81 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %41, <1 x float> %80, <1 x float> %76), !dbg !89
  %82 = add nuw nsw i64 0, %42, !dbg !89
  %83 = getelementptr inbounds nuw float, ptr %6, i64 %82, !dbg !89
  %84 = load float, ptr %83, align 4, !dbg !89
  %85 = insertelement <1 x float> poison, float %84, i32 0, !dbg !89
  %86 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %85, <1 x float> %81), !dbg !89
  %87 = add nuw nsw i64 0, %47, !dbg !89
  %88 = getelementptr inbounds nuw float, ptr %6, i64 %87, !dbg !89
  %89 = load float, ptr %88, align 4, !dbg !89
  %90 = insertelement <1 x float> poison, float %89, i32 0, !dbg !89
  %91 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %51, <1 x float> %90, <1 x float> %86), !dbg !89
  %92 = add nuw nsw i64 0, %52, !dbg !89
  %93 = getelementptr inbounds nuw float, ptr %6, i64 %92, !dbg !89
  %94 = load float, ptr %93, align 4, !dbg !89
  %95 = insertelement <1 x float> poison, float %94, i32 0, !dbg !89
  %96 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %95, <1 x float> %91), !dbg !89
  %97 = add nuw nsw i64 0, %57, !dbg !89
  %98 = getelementptr inbounds nuw float, ptr %6, i64 %97, !dbg !89
  %99 = load float, ptr %98, align 4, !dbg !89
  %100 = insertelement <1 x float> poison, float %99, i32 0, !dbg !89
  %101 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %100, <1 x float> %96), !dbg !89
  %102 = add i64 %19, 8, !dbg !88
  br label %18, !dbg !88

103:                                              ; preds = %18
  %104 = extractelement <1 x float> %20, i64 0, !dbg !88
  %105 = add nuw nsw i64 0, %16, !dbg !88
  %106 = getelementptr inbounds nuw float, ptr %14, i64 %105, !dbg !88
  store float %104, ptr %106, align 4, !dbg !88
  %107 = add i64 %16, 1, !dbg !88
  br label %15, !dbg !88

108:                                              ; preds = %15
  ret i32 0, !dbg !90
}

define internal i32 @bias_relu_dispatch_0_elementwise_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !91 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !92
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !92
  %6 = load ptr, ptr %5, align 8, !dbg !92
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !92
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !93
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !93
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !93
  %10 = load ptr, ptr %9, align 8, !dbg !93
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !93
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !94
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !94
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !94
  %14 = load ptr, ptr %13, align 8, !dbg !94
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !94
  br label %15, !dbg !95

15:                                               ; preds = %18, %3
  %16 = phi i64 [ %28, %18 ], [ 0, %3 ], !dbg !95
  %17 = icmp slt i64 %16, 16, !dbg !95
  br i1 %17, label %18, label %29, !dbg !95

18:                                               ; preds = %15
  %19 = getelementptr float, ptr %6, i64 %16, !dbg !95
  %20 = load <8 x float>, ptr %19, align 4, !dbg !95
  %21 = getelementptr float, ptr %10, i64 %16, !dbg !95
  %22 = load <8 x float>, ptr %21, align 4, !dbg !95
  %23 = fadd contract <8 x float> %20, %22, !dbg !96
  %24 = fcmp ugt <8 x float> %23, zeroinitializer, !dbg !97
  %25 = select <8 x i1> %24, <8 x float> %23, <8 x float> zeroinitializer, !dbg !97
  %26 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %25, !dbg !97
  %27 = getelementptr float, ptr %14, i64 %16, !dbg !95
  store <8 x float> %26, ptr %27, align 4, !dbg !95
  %28 = add i64 %16, 8, !dbg !95
  br label %15, !dbg !95

29:                                               ; preds = %15
  ret i32 0, !dbg !98
}

define internal i32 @row_sum_dispatch_0_reduction_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !99 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !100
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !100
  %6 = load ptr, ptr %5, align 8, !dbg !100
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !100
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !101
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !101
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !101
  %10 = load ptr, ptr %9, align 8, !dbg !101
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !101
  br label %11, !dbg !102

11:                                               ; preds = %15, %3
  %12 = phi i64 [ %21, %15 ], [ 0, %3 ], !dbg !102
  %13 = phi <1 x float> [ %20, %15 ], [ zeroinitializer, %3 ], !dbg !102
  %14 = icmp slt i64 %12, 16, !dbg !102
  br i1 %14, label %15, label %22, !dbg !102

15:                                               ; preds = %11
  %16 = getelementptr float, ptr %6, i64 %12, !dbg !102
  %17 = load <8 x float>, ptr %16, align 4, !dbg !102
  %18 = extractelement <1 x float> %13, i64 0, !dbg !102
  %19 = call float @llvm.vector.reduce.fadd.v8f32(float %18, <8 x float> %17), !dbg !103
  %20 = insertelement <1 x float> poison, float %19, i32 0, !dbg !102
  %21 = add i64 %12, 8, !dbg !102
  br label %11, !dbg !102

22:                                               ; preds = %11
  %23 = extractelement <1 x float> %13, i64 0, !dbg !103
  store float %23, ptr %10, align 4, !dbg !103
  ret i32 0, !dbg !104
}

define internal i32 @fragment_dispatch_1_reduction_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !105 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !106
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !106
  %6 = load ptr, ptr %5, align 8, !dbg !106
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !106
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !107
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !107
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !107
  %10 = load ptr, ptr %9, align 8, !dbg !107
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !107
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !108
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !108
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !108
  %14 = load ptr, ptr %13, align 8, !dbg !108
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !108
  br label %15, !dbg !109

15:                                               ; preds = %19, %3
  %16 = phi i64 [ %31, %19 ], [ 0, %3 ], !dbg !109
  %17 = phi <1 x float> [ %30, %19 ], [ zeroinitializer, %3 ], !dbg !109
  %18 = icmp slt i64 %16, 16, !dbg !109
  br i1 %18, label %19, label %32, !dbg !109

19:                                               ; preds = %15
  %20 = getelementptr float, ptr %6, i64 %16, !dbg !109
  %21 = load <8 x float>, ptr %20, align 4, !dbg !109
  %22 = getelementptr float, ptr %10, i64 %16, !dbg !109
  %23 = load <8 x float>, ptr %22, align 4, !dbg !109
  %24 = extractelement <1 x float> %17, i64 0, !dbg !109
  %25 = fadd contract <8 x float> %21, %23, !dbg !110
  %26 = fcmp ugt <8 x float> %25, zeroinitializer, !dbg !111
  %27 = select <8 x i1> %26, <8 x float> %25, <8 x float> zeroinitializer, !dbg !111
  %28 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %27, !dbg !111
  %29 = call float @llvm.vector.reduce.fadd.v8f32(float %24, <8 x float> %28), !dbg !112
  %30 = insertelement <1 x float> poison, float %29, i32 0, !dbg !109
  %31 = add i64 %16, 8, !dbg !109
  br label %15, !dbg !109

32:                                               ; preds = %15
  %33 = extractelement <1 x float> %17, i64 0, !dbg !112
  store float %33, ptr %14, align 4, !dbg !112
  ret i32 0, !dbg !113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.fmuladd.v1f32(<1 x float>, <1 x float>, <1 x float>) #2

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

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-untiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-untiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-untiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tiny-untiled/executables")
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_1x16x32_f32", linkageName: "matmul_dispatch_0_matmul_1x16x32_f32", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!10 = !DISubroutineType(cc: DW_CC_normal, types: !11)
!11 = !{!12, !13, !44, !73}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !17, file: !17, line: 246, size: 768, elements: !18)
!17 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!18 = !{!19, !27, !30, !33, !35}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !23, size: 2048, elements: !25)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !24)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26}
!26 = !DISubrange(count: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !36, offset: 256)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !17, file: !17, line: 227, size: 512, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !40, size: 512, elements: !42)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !41)
!41 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !17, file: !17, line: 275, size: 384, elements: !48)
!48 = !{!49, !50, !51, !54, !55, !56, !57, !58, !61, !62, !63, !68}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !23, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !23, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !52, size: 16, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !52, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !23, size: 32, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !23, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !52, size: 16, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !59, size: 8, offset: 176)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !59, size: 8, offset: 184)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !20, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !67, size: 4096, elements: !25)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !69, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, scope: !17, file: !17, line: 227, baseType: !72, size: 4096, elements: !25)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !40)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !17, file: !17, line: 321, size: 256, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !23, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !23, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !52, size: 16, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !52, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !23, size: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !28, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !23, size: 32, offset: 192)
!85 = !DILocation(line: 11, column: 8, scope: !9)
!86 = !DILocation(line: 12, column: 8, scope: !9)
!87 = !DILocation(line: 13, column: 8, scope: !9)
!88 = !DILocation(line: 18, column: 8, scope: !9)
!89 = !DILocation(line: 3, column: 3, scope: !9)
!90 = !DILocation(line: 20, column: 8, scope: !9)
!91 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_16_f32", linkageName: "bias_relu_dispatch_0_elementwise_16_f32", scope: !3, file: !3, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!92 = !DILocation(line: 11, column: 8, scope: !91)
!93 = !DILocation(line: 12, column: 8, scope: !91)
!94 = !DILocation(line: 13, column: 8, scope: !91)
!95 = !DILocation(line: 17, column: 8, scope: !91)
!96 = !DILocation(line: 19, column: 10, scope: !91)
!97 = !DILocation(line: 20, column: 10, scope: !91)
!98 = !DILocation(line: 24, column: 8, scope: !91)
!99 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_16_f32", linkageName: "row_sum_dispatch_0_reduction_16_f32", scope: !5, file: !5, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!100 = !DILocation(line: 11, column: 8, scope: !99)
!101 = !DILocation(line: 12, column: 8, scope: !99)
!102 = !DILocation(line: 16, column: 8, scope: !99)
!103 = !DILocation(line: 18, column: 10, scope: !99)
!104 = !DILocation(line: 22, column: 8, scope: !99)
!105 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_16_f32", linkageName: "fragment_dispatch_1_reduction_16_f32", scope: !7, file: !7, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!106 = !DILocation(line: 11, column: 8, scope: !105)
!107 = !DILocation(line: 12, column: 8, scope: !105)
!108 = !DILocation(line: 13, column: 8, scope: !105)
!109 = !DILocation(line: 18, column: 8, scope: !105)
!110 = !DILocation(line: 20, column: 10, scope: !105)
!111 = !DILocation(line: 21, column: 10, scope: !105)
!112 = !DILocation(line: 22, column: 10, scope: !105)
!113 = !DILocation(line: 26, column: 8, scope: !105)
