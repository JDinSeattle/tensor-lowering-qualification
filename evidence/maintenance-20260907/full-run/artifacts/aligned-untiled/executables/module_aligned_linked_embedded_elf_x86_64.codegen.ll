; ModuleID = 'aligned_linked'
source_filename = "aligned_linked"
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

@0 = private constant [15 x i8] c"aligned_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [4 x ptr] [ptr @matmul_dispatch_0_matmul_64x32x64_f32, ptr @bias_relu_dispatch_0_elementwise_64x32_f32, ptr @row_sum_dispatch_0_reduction_64x32_f32, ptr @fragment_dispatch_1_reduction_64x32_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [4 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [38 x i8] c"matmul_dispatch_0_matmul_64x32x64_f32\00", align 1
@2 = private constant [43 x i8] c"bias_relu_dispatch_0_elementwise_64x32_f32\00", align 1
@3 = private constant [39 x i8] c"row_sum_dispatch_0_reduction_64x32_f32\00", align 1
@4 = private constant [40 x i8] c"fragment_dispatch_1_reduction_64x32_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [4 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4]
@5 = private constant [184 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/aligned-untiled/executables/configured_module_matmul_dispatch_0.mlir\00", align 1
@6 = private constant [187 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/aligned-untiled/executables/configured_module_bias_relu_dispatch_0.mlir\00", align 1
@7 = private constant [185 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/aligned-untiled/executables/configured_module_row_sum_dispatch_0.mlir\00", align 1
@8 = private constant [186 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/aligned-untiled/executables/configured_module_fragment_dispatch_1.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [4 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 183, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 186, ptr @6 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 184, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 185, ptr @8 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_64x32x64_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_64x32x64_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_64x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_64x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_64x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_64x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_64x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_64x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [4 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_64x32x64_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_64x32x64_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_64x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_64x32_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_64x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_64x32_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_64x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_64x32_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 4, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @matmul_dispatch_0_matmul_64x32x64_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !9 {
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

15:                                               ; preds = %113, %3
  %16 = phi i64 [ %114, %113 ], [ 0, %3 ], !dbg !88
  %17 = icmp slt i64 %16, 64, !dbg !88
  br i1 %17, label %18, label %115, !dbg !88

18:                                               ; preds = %107, %15
  %19 = phi i64 [ %112, %107 ], [ 0, %15 ], !dbg !88
  %20 = icmp slt i64 %19, 32, !dbg !88
  br i1 %20, label %21, label %113, !dbg !88

21:                                               ; preds = %25, %18
  %22 = phi i64 [ %106, %25 ], [ 0, %18 ], !dbg !88
  %23 = phi <1 x float> [ %105, %25 ], [ zeroinitializer, %18 ], !dbg !88
  %24 = icmp slt i64 %22, 64, !dbg !88
  br i1 %24, label %25, label %107, !dbg !88

25:                                               ; preds = %21
  %26 = mul i64 %22, 32, !dbg !88
  %27 = add i64 %26, %19, !dbg !88
  %28 = getelementptr float, ptr %10, i64 %27, !dbg !88
  %29 = load <1 x float>, ptr %28, align 4, !dbg !88
  %30 = add i64 %22, 1, !dbg !88
  %31 = mul i64 %30, 32, !dbg !88
  %32 = add i64 %31, %19, !dbg !88
  %33 = getelementptr float, ptr %10, i64 %32, !dbg !88
  %34 = load <1 x float>, ptr %33, align 4, !dbg !88
  %35 = add i64 %22, 2, !dbg !88
  %36 = mul i64 %35, 32, !dbg !88
  %37 = add i64 %36, %19, !dbg !88
  %38 = getelementptr float, ptr %10, i64 %37, !dbg !88
  %39 = load <1 x float>, ptr %38, align 4, !dbg !88
  %40 = add i64 %22, 3, !dbg !88
  %41 = mul i64 %40, 32, !dbg !88
  %42 = add i64 %41, %19, !dbg !88
  %43 = getelementptr float, ptr %10, i64 %42, !dbg !88
  %44 = load <1 x float>, ptr %43, align 4, !dbg !88
  %45 = add i64 %22, 4, !dbg !88
  %46 = mul i64 %45, 32, !dbg !88
  %47 = add i64 %46, %19, !dbg !88
  %48 = getelementptr float, ptr %10, i64 %47, !dbg !88
  %49 = load <1 x float>, ptr %48, align 4, !dbg !88
  %50 = add i64 %22, 5, !dbg !88
  %51 = mul i64 %50, 32, !dbg !88
  %52 = add i64 %51, %19, !dbg !88
  %53 = getelementptr float, ptr %10, i64 %52, !dbg !88
  %54 = load <1 x float>, ptr %53, align 4, !dbg !88
  %55 = add i64 %22, 6, !dbg !88
  %56 = mul i64 %55, 32, !dbg !88
  %57 = add i64 %56, %19, !dbg !88
  %58 = getelementptr float, ptr %10, i64 %57, !dbg !88
  %59 = load <1 x float>, ptr %58, align 4, !dbg !88
  %60 = add i64 %22, 7, !dbg !88
  %61 = mul i64 %60, 32, !dbg !88
  %62 = add i64 %61, %19, !dbg !88
  %63 = getelementptr float, ptr %10, i64 %62, !dbg !88
  %64 = load <1 x float>, ptr %63, align 4, !dbg !88
  %65 = mul nuw nsw i64 %16, 64, !dbg !89
  %66 = add nuw nsw i64 %65, %22, !dbg !89
  %67 = getelementptr inbounds nuw float, ptr %6, i64 %66, !dbg !89
  %68 = load float, ptr %67, align 4, !dbg !89
  %69 = insertelement <1 x float> poison, float %68, i32 0, !dbg !89
  %70 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %29, <1 x float> %69, <1 x float> %23), !dbg !89
  %71 = add nuw nsw i64 %65, %30, !dbg !89
  %72 = getelementptr inbounds nuw float, ptr %6, i64 %71, !dbg !89
  %73 = load float, ptr %72, align 4, !dbg !89
  %74 = insertelement <1 x float> poison, float %73, i32 0, !dbg !89
  %75 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %34, <1 x float> %74, <1 x float> %70), !dbg !89
  %76 = add nuw nsw i64 %65, %35, !dbg !89
  %77 = getelementptr inbounds nuw float, ptr %6, i64 %76, !dbg !89
  %78 = load float, ptr %77, align 4, !dbg !89
  %79 = insertelement <1 x float> poison, float %78, i32 0, !dbg !89
  %80 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %39, <1 x float> %79, <1 x float> %75), !dbg !89
  %81 = add nuw nsw i64 %65, %40, !dbg !89
  %82 = getelementptr inbounds nuw float, ptr %6, i64 %81, !dbg !89
  %83 = load float, ptr %82, align 4, !dbg !89
  %84 = insertelement <1 x float> poison, float %83, i32 0, !dbg !89
  %85 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %44, <1 x float> %84, <1 x float> %80), !dbg !89
  %86 = add nuw nsw i64 %65, %45, !dbg !89
  %87 = getelementptr inbounds nuw float, ptr %6, i64 %86, !dbg !89
  %88 = load float, ptr %87, align 4, !dbg !89
  %89 = insertelement <1 x float> poison, float %88, i32 0, !dbg !89
  %90 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %49, <1 x float> %89, <1 x float> %85), !dbg !89
  %91 = add nuw nsw i64 %65, %50, !dbg !89
  %92 = getelementptr inbounds nuw float, ptr %6, i64 %91, !dbg !89
  %93 = load float, ptr %92, align 4, !dbg !89
  %94 = insertelement <1 x float> poison, float %93, i32 0, !dbg !89
  %95 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %54, <1 x float> %94, <1 x float> %90), !dbg !89
  %96 = add nuw nsw i64 %65, %55, !dbg !89
  %97 = getelementptr inbounds nuw float, ptr %6, i64 %96, !dbg !89
  %98 = load float, ptr %97, align 4, !dbg !89
  %99 = insertelement <1 x float> poison, float %98, i32 0, !dbg !89
  %100 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %59, <1 x float> %99, <1 x float> %95), !dbg !89
  %101 = add nuw nsw i64 %65, %60, !dbg !89
  %102 = getelementptr inbounds nuw float, ptr %6, i64 %101, !dbg !89
  %103 = load float, ptr %102, align 4, !dbg !89
  %104 = insertelement <1 x float> poison, float %103, i32 0, !dbg !89
  %105 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %64, <1 x float> %104, <1 x float> %100), !dbg !89
  %106 = add i64 %22, 8, !dbg !88
  br label %21, !dbg !88

107:                                              ; preds = %21
  %108 = extractelement <1 x float> %23, i64 0, !dbg !88
  %109 = mul nuw nsw i64 %16, 32, !dbg !88
  %110 = add nuw nsw i64 %109, %19, !dbg !88
  %111 = getelementptr inbounds nuw float, ptr %14, i64 %110, !dbg !88
  store float %108, ptr %111, align 4, !dbg !88
  %112 = add i64 %19, 1, !dbg !88
  br label %18, !dbg !88

113:                                              ; preds = %18
  %114 = add i64 %16, 1, !dbg !88
  br label %15, !dbg !88

115:                                              ; preds = %15
  ret i32 0, !dbg !90
}

define internal i32 @bias_relu_dispatch_0_elementwise_64x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !91 {
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

15:                                               ; preds = %34, %3
  %16 = phi i64 [ %35, %34 ], [ 0, %3 ], !dbg !95
  %17 = icmp slt i64 %16, 64, !dbg !95
  br i1 %17, label %18, label %36, !dbg !95

18:                                               ; preds = %21, %15
  %19 = phi i64 [ %33, %21 ], [ 0, %15 ], !dbg !95
  %20 = icmp slt i64 %19, 32, !dbg !95
  br i1 %20, label %21, label %34, !dbg !95

21:                                               ; preds = %18
  %22 = mul i64 %16, 32, !dbg !95
  %23 = add i64 %22, %19, !dbg !95
  %24 = getelementptr float, ptr %6, i64 %23, !dbg !95
  %25 = load <8 x float>, ptr %24, align 4, !dbg !95
  %26 = getelementptr float, ptr %10, i64 %19, !dbg !95
  %27 = load <8 x float>, ptr %26, align 4, !dbg !95
  %28 = fadd contract <8 x float> %25, %27, !dbg !96
  %29 = fcmp ugt <8 x float> %28, zeroinitializer, !dbg !97
  %30 = select <8 x i1> %29, <8 x float> %28, <8 x float> zeroinitializer, !dbg !97
  %31 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %30, !dbg !97
  %32 = getelementptr float, ptr %14, i64 %23, !dbg !95
  store <8 x float> %31, ptr %32, align 4, !dbg !95
  %33 = add i64 %19, 8, !dbg !95
  br label %18, !dbg !95

34:                                               ; preds = %18
  %35 = add i64 %16, 1, !dbg !95
  br label %15, !dbg !95

36:                                               ; preds = %15
  ret i32 0, !dbg !98
}

define internal i32 @row_sum_dispatch_0_reduction_64x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !99 {
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

11:                                               ; preds = %83, %3
  %12 = phi i64 [ %85, %83 ], [ 0, %3 ], !dbg !102
  %13 = icmp slt i64 %12, 64, !dbg !102
  br i1 %13, label %14, label %86, !dbg !102

14:                                               ; preds = %18, %11
  %15 = phi i64 [ %82, %18 ], [ 0, %11 ], !dbg !102
  %16 = phi <8 x float> [ %81, %18 ], [ zeroinitializer, %11 ], !dbg !102
  %17 = icmp slt i64 %15, 32, !dbg !102
  br i1 %17, label %18, label %83, !dbg !102

18:                                               ; preds = %14
  %19 = mul i64 %12, 32, !dbg !102
  %20 = add i64 %19, %15, !dbg !102
  %21 = getelementptr float, ptr %6, i64 %20, !dbg !102
  %22 = load <8 x float>, ptr %21, align 4, !dbg !102
  %23 = add i64 %12, 1, !dbg !102
  %24 = mul i64 %23, 32, !dbg !102
  %25 = add i64 %24, %15, !dbg !102
  %26 = getelementptr float, ptr %6, i64 %25, !dbg !102
  %27 = load <8 x float>, ptr %26, align 4, !dbg !102
  %28 = add i64 %12, 2, !dbg !102
  %29 = mul i64 %28, 32, !dbg !102
  %30 = add i64 %29, %15, !dbg !102
  %31 = getelementptr float, ptr %6, i64 %30, !dbg !102
  %32 = load <8 x float>, ptr %31, align 4, !dbg !102
  %33 = add i64 %12, 3, !dbg !102
  %34 = mul i64 %33, 32, !dbg !102
  %35 = add i64 %34, %15, !dbg !102
  %36 = getelementptr float, ptr %6, i64 %35, !dbg !102
  %37 = load <8 x float>, ptr %36, align 4, !dbg !102
  %38 = add i64 %12, 4, !dbg !102
  %39 = mul i64 %38, 32, !dbg !102
  %40 = add i64 %39, %15, !dbg !102
  %41 = getelementptr float, ptr %6, i64 %40, !dbg !102
  %42 = load <8 x float>, ptr %41, align 4, !dbg !102
  %43 = add i64 %12, 5, !dbg !102
  %44 = mul i64 %43, 32, !dbg !102
  %45 = add i64 %44, %15, !dbg !102
  %46 = getelementptr float, ptr %6, i64 %45, !dbg !102
  %47 = load <8 x float>, ptr %46, align 4, !dbg !102
  %48 = add i64 %12, 6, !dbg !102
  %49 = mul i64 %48, 32, !dbg !102
  %50 = add i64 %49, %15, !dbg !102
  %51 = getelementptr float, ptr %6, i64 %50, !dbg !102
  %52 = load <8 x float>, ptr %51, align 4, !dbg !102
  %53 = add i64 %12, 7, !dbg !102
  %54 = mul i64 %53, 32, !dbg !102
  %55 = add i64 %54, %15, !dbg !102
  %56 = getelementptr float, ptr %6, i64 %55, !dbg !102
  %57 = load <8 x float>, ptr %56, align 4, !dbg !102
  %58 = extractelement <8 x float> %16, i64 0, !dbg !103
  %59 = call float @llvm.vector.reduce.fadd.v8f32(float %58, <8 x float> %22), !dbg !103
  %60 = extractelement <8 x float> %16, i64 1, !dbg !103
  %61 = call float @llvm.vector.reduce.fadd.v8f32(float %60, <8 x float> %27), !dbg !103
  %62 = extractelement <8 x float> %16, i64 2, !dbg !103
  %63 = call float @llvm.vector.reduce.fadd.v8f32(float %62, <8 x float> %32), !dbg !103
  %64 = extractelement <8 x float> %16, i64 3, !dbg !103
  %65 = call float @llvm.vector.reduce.fadd.v8f32(float %64, <8 x float> %37), !dbg !103
  %66 = extractelement <8 x float> %16, i64 4, !dbg !103
  %67 = call float @llvm.vector.reduce.fadd.v8f32(float %66, <8 x float> %42), !dbg !103
  %68 = extractelement <8 x float> %16, i64 5, !dbg !103
  %69 = call float @llvm.vector.reduce.fadd.v8f32(float %68, <8 x float> %47), !dbg !103
  %70 = extractelement <8 x float> %16, i64 6, !dbg !103
  %71 = call float @llvm.vector.reduce.fadd.v8f32(float %70, <8 x float> %52), !dbg !103
  %72 = extractelement <8 x float> %16, i64 7, !dbg !103
  %73 = call float @llvm.vector.reduce.fadd.v8f32(float %72, <8 x float> %57), !dbg !103
  %74 = insertelement <8 x float> poison, float %59, i64 0, !dbg !103
  %75 = insertelement <8 x float> %74, float %61, i64 1, !dbg !103
  %76 = insertelement <8 x float> %75, float %63, i64 2, !dbg !103
  %77 = insertelement <8 x float> %76, float %65, i64 3, !dbg !103
  %78 = insertelement <8 x float> %77, float %67, i64 4, !dbg !103
  %79 = insertelement <8 x float> %78, float %69, i64 5, !dbg !103
  %80 = insertelement <8 x float> %79, float %71, i64 6, !dbg !103
  %81 = insertelement <8 x float> %80, float %73, i64 7, !dbg !103
  %82 = add i64 %15, 8, !dbg !102
  br label %14, !dbg !102

83:                                               ; preds = %14
  %84 = getelementptr float, ptr %10, i64 %12, !dbg !102
  store <8 x float> %16, ptr %84, align 4, !dbg !102
  %85 = add i64 %12, 8, !dbg !102
  br label %11, !dbg !102

86:                                               ; preds = %11
  ret i32 0, !dbg !104
}

define internal i32 @fragment_dispatch_1_reduction_64x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !105 {
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

15:                                               ; preds = %121, %3
  %16 = phi i64 [ %123, %121 ], [ 0, %3 ], !dbg !109
  %17 = icmp slt i64 %16, 64, !dbg !109
  br i1 %17, label %18, label %124, !dbg !109

18:                                               ; preds = %22, %15
  %19 = phi i64 [ %120, %22 ], [ 0, %15 ], !dbg !109
  %20 = phi <8 x float> [ %119, %22 ], [ zeroinitializer, %15 ], !dbg !109
  %21 = icmp slt i64 %19, 32, !dbg !109
  br i1 %21, label %22, label %121, !dbg !109

22:                                               ; preds = %18
  %23 = mul i64 %16, 32, !dbg !109
  %24 = add i64 %23, %19, !dbg !109
  %25 = getelementptr float, ptr %6, i64 %24, !dbg !109
  %26 = load <8 x float>, ptr %25, align 4, !dbg !109
  %27 = add i64 %16, 1, !dbg !109
  %28 = mul i64 %27, 32, !dbg !109
  %29 = add i64 %28, %19, !dbg !109
  %30 = getelementptr float, ptr %6, i64 %29, !dbg !109
  %31 = load <8 x float>, ptr %30, align 4, !dbg !109
  %32 = add i64 %16, 2, !dbg !109
  %33 = mul i64 %32, 32, !dbg !109
  %34 = add i64 %33, %19, !dbg !109
  %35 = getelementptr float, ptr %6, i64 %34, !dbg !109
  %36 = load <8 x float>, ptr %35, align 4, !dbg !109
  %37 = add i64 %16, 3, !dbg !109
  %38 = mul i64 %37, 32, !dbg !109
  %39 = add i64 %38, %19, !dbg !109
  %40 = getelementptr float, ptr %6, i64 %39, !dbg !109
  %41 = load <8 x float>, ptr %40, align 4, !dbg !109
  %42 = add i64 %16, 4, !dbg !109
  %43 = mul i64 %42, 32, !dbg !109
  %44 = add i64 %43, %19, !dbg !109
  %45 = getelementptr float, ptr %6, i64 %44, !dbg !109
  %46 = load <8 x float>, ptr %45, align 4, !dbg !109
  %47 = add i64 %16, 5, !dbg !109
  %48 = mul i64 %47, 32, !dbg !109
  %49 = add i64 %48, %19, !dbg !109
  %50 = getelementptr float, ptr %6, i64 %49, !dbg !109
  %51 = load <8 x float>, ptr %50, align 4, !dbg !109
  %52 = add i64 %16, 6, !dbg !109
  %53 = mul i64 %52, 32, !dbg !109
  %54 = add i64 %53, %19, !dbg !109
  %55 = getelementptr float, ptr %6, i64 %54, !dbg !109
  %56 = load <8 x float>, ptr %55, align 4, !dbg !109
  %57 = add i64 %16, 7, !dbg !109
  %58 = mul i64 %57, 32, !dbg !109
  %59 = add i64 %58, %19, !dbg !109
  %60 = getelementptr float, ptr %6, i64 %59, !dbg !109
  %61 = load <8 x float>, ptr %60, align 4, !dbg !109
  %62 = getelementptr float, ptr %10, i64 %19, !dbg !109
  %63 = load <8 x float>, ptr %62, align 4, !dbg !109
  %64 = fadd contract <8 x float> %26, %63, !dbg !110
  %65 = fadd contract <8 x float> %31, %63, !dbg !110
  %66 = fadd contract <8 x float> %36, %63, !dbg !110
  %67 = fadd contract <8 x float> %41, %63, !dbg !110
  %68 = fadd contract <8 x float> %46, %63, !dbg !110
  %69 = fadd contract <8 x float> %51, %63, !dbg !110
  %70 = fadd contract <8 x float> %56, %63, !dbg !110
  %71 = fadd contract <8 x float> %61, %63, !dbg !110
  %72 = fcmp ugt <8 x float> %64, zeroinitializer, !dbg !111
  %73 = fcmp ugt <8 x float> %65, zeroinitializer, !dbg !111
  %74 = fcmp ugt <8 x float> %66, zeroinitializer, !dbg !111
  %75 = fcmp ugt <8 x float> %67, zeroinitializer, !dbg !111
  %76 = fcmp ugt <8 x float> %68, zeroinitializer, !dbg !111
  %77 = fcmp ugt <8 x float> %69, zeroinitializer, !dbg !111
  %78 = fcmp ugt <8 x float> %70, zeroinitializer, !dbg !111
  %79 = fcmp ugt <8 x float> %71, zeroinitializer, !dbg !111
  %80 = select <8 x i1> %72, <8 x float> %64, <8 x float> zeroinitializer, !dbg !111
  %81 = select <8 x i1> %73, <8 x float> %65, <8 x float> zeroinitializer, !dbg !111
  %82 = select <8 x i1> %74, <8 x float> %66, <8 x float> zeroinitializer, !dbg !111
  %83 = select <8 x i1> %75, <8 x float> %67, <8 x float> zeroinitializer, !dbg !111
  %84 = select <8 x i1> %76, <8 x float> %68, <8 x float> zeroinitializer, !dbg !111
  %85 = select <8 x i1> %77, <8 x float> %69, <8 x float> zeroinitializer, !dbg !111
  %86 = select <8 x i1> %78, <8 x float> %70, <8 x float> zeroinitializer, !dbg !111
  %87 = select <8 x i1> %79, <8 x float> %71, <8 x float> zeroinitializer, !dbg !111
  %88 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %80, !dbg !111
  %89 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %81, !dbg !111
  %90 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %82, !dbg !111
  %91 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %83, !dbg !111
  %92 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %84, !dbg !111
  %93 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %85, !dbg !111
  %94 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %86, !dbg !111
  %95 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %87, !dbg !111
  %96 = extractelement <8 x float> %20, i64 0, !dbg !112
  %97 = call float @llvm.vector.reduce.fadd.v8f32(float %96, <8 x float> %88), !dbg !112
  %98 = extractelement <8 x float> %20, i64 1, !dbg !112
  %99 = call float @llvm.vector.reduce.fadd.v8f32(float %98, <8 x float> %89), !dbg !112
  %100 = extractelement <8 x float> %20, i64 2, !dbg !112
  %101 = call float @llvm.vector.reduce.fadd.v8f32(float %100, <8 x float> %90), !dbg !112
  %102 = extractelement <8 x float> %20, i64 3, !dbg !112
  %103 = call float @llvm.vector.reduce.fadd.v8f32(float %102, <8 x float> %91), !dbg !112
  %104 = extractelement <8 x float> %20, i64 4, !dbg !112
  %105 = call float @llvm.vector.reduce.fadd.v8f32(float %104, <8 x float> %92), !dbg !112
  %106 = extractelement <8 x float> %20, i64 5, !dbg !112
  %107 = call float @llvm.vector.reduce.fadd.v8f32(float %106, <8 x float> %93), !dbg !112
  %108 = extractelement <8 x float> %20, i64 6, !dbg !112
  %109 = call float @llvm.vector.reduce.fadd.v8f32(float %108, <8 x float> %94), !dbg !112
  %110 = extractelement <8 x float> %20, i64 7, !dbg !112
  %111 = call float @llvm.vector.reduce.fadd.v8f32(float %110, <8 x float> %95), !dbg !112
  %112 = insertelement <8 x float> poison, float %97, i64 0, !dbg !112
  %113 = insertelement <8 x float> %112, float %99, i64 1, !dbg !112
  %114 = insertelement <8 x float> %113, float %101, i64 2, !dbg !112
  %115 = insertelement <8 x float> %114, float %103, i64 3, !dbg !112
  %116 = insertelement <8 x float> %115, float %105, i64 4, !dbg !112
  %117 = insertelement <8 x float> %116, float %107, i64 5, !dbg !112
  %118 = insertelement <8 x float> %117, float %109, i64 6, !dbg !112
  %119 = insertelement <8 x float> %118, float %111, i64 7, !dbg !112
  %120 = add i64 %19, 8, !dbg !109
  br label %18, !dbg !109

121:                                              ; preds = %18
  %122 = getelementptr float, ptr %14, i64 %16, !dbg !109
  store <8 x float> %20, ptr %122, align 4, !dbg !109
  %123 = add i64 %16, 8, !dbg !109
  br label %15, !dbg !109

124:                                              ; preds = %15
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
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/aligned-untiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/aligned-untiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/aligned-untiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/aligned-untiled/executables")
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_64x32x64_f32", linkageName: "matmul_dispatch_0_matmul_64x32x64_f32", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!91 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_64x32_f32", linkageName: "bias_relu_dispatch_0_elementwise_64x32_f32", scope: !3, file: !3, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!92 = !DILocation(line: 11, column: 8, scope: !91)
!93 = !DILocation(line: 12, column: 8, scope: !91)
!94 = !DILocation(line: 13, column: 8, scope: !91)
!95 = !DILocation(line: 17, column: 8, scope: !91)
!96 = !DILocation(line: 19, column: 10, scope: !91)
!97 = !DILocation(line: 20, column: 10, scope: !91)
!98 = !DILocation(line: 24, column: 8, scope: !91)
!99 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_64x32_f32", linkageName: "row_sum_dispatch_0_reduction_64x32_f32", scope: !5, file: !5, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!100 = !DILocation(line: 11, column: 8, scope: !99)
!101 = !DILocation(line: 12, column: 8, scope: !99)
!102 = !DILocation(line: 16, column: 8, scope: !99)
!103 = !DILocation(line: 18, column: 10, scope: !99)
!104 = !DILocation(line: 22, column: 8, scope: !99)
!105 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_64x32_f32", linkageName: "fragment_dispatch_1_reduction_64x32_f32", scope: !7, file: !7, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!106 = !DILocation(line: 11, column: 8, scope: !105)
!107 = !DILocation(line: 12, column: 8, scope: !105)
!108 = !DILocation(line: 13, column: 8, scope: !105)
!109 = !DILocation(line: 18, column: 8, scope: !105)
!110 = !DILocation(line: 20, column: 10, scope: !105)
!111 = !DILocation(line: 21, column: 10, scope: !105)
!112 = !DILocation(line: 22, column: 10, scope: !105)
!113 = !DILocation(line: 26, column: 8, scope: !105)
