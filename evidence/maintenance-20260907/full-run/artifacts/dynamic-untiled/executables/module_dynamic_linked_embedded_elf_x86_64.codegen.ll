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
@iree_hal_executable_library_query_v0_funcs = private constant [4 x ptr] [ptr @matmul_dispatch_0_matmul_Dx16x32_f32, ptr @bias_relu_dispatch_0_elementwise_Dx16_f32, ptr @row_sum_dispatch_0_reduction_Dx16_f32, ptr @fragment_dispatch_1_reduction_Dx16_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [4 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 2, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [37 x i8] c"matmul_dispatch_0_matmul_Dx16x32_f32\00", align 1
@2 = private constant [42 x i8] c"bias_relu_dispatch_0_elementwise_Dx16_f32\00", align 1
@3 = private constant [38 x i8] c"row_sum_dispatch_0_reduction_Dx16_f32\00", align 1
@4 = private constant [39 x i8] c"fragment_dispatch_1_reduction_Dx16_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [4 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4]
@5 = private constant [184 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables/configured_module_matmul_dispatch_0.mlir\00", align 1
@6 = private constant [187 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables/configured_module_bias_relu_dispatch_0.mlir\00", align 1
@7 = private constant [185 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables/configured_module_row_sum_dispatch_0.mlir\00", align 1
@8 = private constant [186 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables/configured_module_fragment_dispatch_1.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [4 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 183, ptr @5 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 186, ptr @6 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 184, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 185, ptr @8 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [4 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 4, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @matmul_dispatch_0_matmul_Dx16x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !9 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !85
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !85
  %6 = load i32, ptr %5, align 4, !dbg !85
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !86
  %8 = load i32, ptr %7, align 4, !dbg !86
  %9 = zext i32 %6 to i64, !dbg !87
  %10 = zext i32 %8 to i64, !dbg !88
  %11 = shl i64 %10, 32, !dbg !89
  %12 = or i64 %9, %11, !dbg !90
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !91
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !91
  %15 = load ptr, ptr %14, align 8, !dbg !91
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !91
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !92
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !92
  %18 = load ptr, ptr %17, align 8, !dbg !92
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !92
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !93
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !93
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !93
  %22 = load ptr, ptr %21, align 8, !dbg !93
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !93
  br label %23, !dbg !94

23:                                               ; preds = %132, %3
  %24 = phi i64 [ %133, %132 ], [ 0, %3 ], !dbg !94
  %25 = icmp slt i64 %24, %12, !dbg !94
  br i1 %25, label %26, label %134, !dbg !94

26:                                               ; preds = %23
  %27 = sub i64 %12, %24, !dbg !94
  %28 = icmp slt i64 %27, 64, !dbg !94
  %29 = select i1 %28, i64 %27, i64 64, !dbg !94
  br label %30, !dbg !94

30:                                               ; preds = %130, %26
  %31 = phi i64 [ %131, %130 ], [ 0, %26 ], !dbg !94
  %32 = icmp slt i64 %31, %29, !dbg !94
  br i1 %32, label %33, label %132, !dbg !94

33:                                               ; preds = %30
  %34 = add i64 %31, %24, !dbg !94
  br label %35, !dbg !94

35:                                               ; preds = %124, %33
  %36 = phi i64 [ %129, %124 ], [ 0, %33 ], !dbg !94
  %37 = icmp slt i64 %36, 16, !dbg !94
  br i1 %37, label %38, label %130, !dbg !94

38:                                               ; preds = %42, %35
  %39 = phi i64 [ %123, %42 ], [ 0, %35 ], !dbg !94
  %40 = phi <1 x float> [ %122, %42 ], [ zeroinitializer, %35 ], !dbg !94
  %41 = icmp slt i64 %39, 32, !dbg !94
  br i1 %41, label %42, label %124, !dbg !94

42:                                               ; preds = %38
  %43 = mul i64 %39, 16, !dbg !94
  %44 = add i64 %43, %36, !dbg !94
  %45 = getelementptr float, ptr %15, i64 %44, !dbg !94
  %46 = load <1 x float>, ptr %45, align 4, !dbg !94
  %47 = add i64 %39, 1, !dbg !94
  %48 = mul i64 %47, 16, !dbg !94
  %49 = add i64 %48, %36, !dbg !94
  %50 = getelementptr float, ptr %15, i64 %49, !dbg !94
  %51 = load <1 x float>, ptr %50, align 4, !dbg !94
  %52 = add i64 %39, 2, !dbg !94
  %53 = mul i64 %52, 16, !dbg !94
  %54 = add i64 %53, %36, !dbg !94
  %55 = getelementptr float, ptr %15, i64 %54, !dbg !94
  %56 = load <1 x float>, ptr %55, align 4, !dbg !94
  %57 = add i64 %39, 3, !dbg !94
  %58 = mul i64 %57, 16, !dbg !94
  %59 = add i64 %58, %36, !dbg !94
  %60 = getelementptr float, ptr %15, i64 %59, !dbg !94
  %61 = load <1 x float>, ptr %60, align 4, !dbg !94
  %62 = add i64 %39, 4, !dbg !94
  %63 = mul i64 %62, 16, !dbg !94
  %64 = add i64 %63, %36, !dbg !94
  %65 = getelementptr float, ptr %15, i64 %64, !dbg !94
  %66 = load <1 x float>, ptr %65, align 4, !dbg !94
  %67 = add i64 %39, 5, !dbg !94
  %68 = mul i64 %67, 16, !dbg !94
  %69 = add i64 %68, %36, !dbg !94
  %70 = getelementptr float, ptr %15, i64 %69, !dbg !94
  %71 = load <1 x float>, ptr %70, align 4, !dbg !94
  %72 = add i64 %39, 6, !dbg !94
  %73 = mul i64 %72, 16, !dbg !94
  %74 = add i64 %73, %36, !dbg !94
  %75 = getelementptr float, ptr %15, i64 %74, !dbg !94
  %76 = load <1 x float>, ptr %75, align 4, !dbg !94
  %77 = add i64 %39, 7, !dbg !94
  %78 = mul i64 %77, 16, !dbg !94
  %79 = add i64 %78, %36, !dbg !94
  %80 = getelementptr float, ptr %15, i64 %79, !dbg !94
  %81 = load <1 x float>, ptr %80, align 4, !dbg !94
  %82 = mul nuw nsw i64 %34, 32, !dbg !95
  %83 = add nuw nsw i64 %82, %39, !dbg !95
  %84 = getelementptr inbounds nuw float, ptr %18, i64 %83, !dbg !95
  %85 = load float, ptr %84, align 4, !dbg !95
  %86 = insertelement <1 x float> poison, float %85, i32 0, !dbg !95
  %87 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %86, <1 x float> %40), !dbg !95
  %88 = add nuw nsw i64 %82, %47, !dbg !95
  %89 = getelementptr inbounds nuw float, ptr %18, i64 %88, !dbg !95
  %90 = load float, ptr %89, align 4, !dbg !95
  %91 = insertelement <1 x float> poison, float %90, i32 0, !dbg !95
  %92 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %51, <1 x float> %91, <1 x float> %87), !dbg !95
  %93 = add nuw nsw i64 %82, %52, !dbg !95
  %94 = getelementptr inbounds nuw float, ptr %18, i64 %93, !dbg !95
  %95 = load float, ptr %94, align 4, !dbg !95
  %96 = insertelement <1 x float> poison, float %95, i32 0, !dbg !95
  %97 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %96, <1 x float> %92), !dbg !95
  %98 = add nuw nsw i64 %82, %57, !dbg !95
  %99 = getelementptr inbounds nuw float, ptr %18, i64 %98, !dbg !95
  %100 = load float, ptr %99, align 4, !dbg !95
  %101 = insertelement <1 x float> poison, float %100, i32 0, !dbg !95
  %102 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %101, <1 x float> %97), !dbg !95
  %103 = add nuw nsw i64 %82, %62, !dbg !95
  %104 = getelementptr inbounds nuw float, ptr %18, i64 %103, !dbg !95
  %105 = load float, ptr %104, align 4, !dbg !95
  %106 = insertelement <1 x float> poison, float %105, i32 0, !dbg !95
  %107 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %106, <1 x float> %102), !dbg !95
  %108 = add nuw nsw i64 %82, %67, !dbg !95
  %109 = getelementptr inbounds nuw float, ptr %18, i64 %108, !dbg !95
  %110 = load float, ptr %109, align 4, !dbg !95
  %111 = insertelement <1 x float> poison, float %110, i32 0, !dbg !95
  %112 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %71, <1 x float> %111, <1 x float> %107), !dbg !95
  %113 = add nuw nsw i64 %82, %72, !dbg !95
  %114 = getelementptr inbounds nuw float, ptr %18, i64 %113, !dbg !95
  %115 = load float, ptr %114, align 4, !dbg !95
  %116 = insertelement <1 x float> poison, float %115, i32 0, !dbg !95
  %117 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %76, <1 x float> %116, <1 x float> %112), !dbg !95
  %118 = add nuw nsw i64 %82, %77, !dbg !95
  %119 = getelementptr inbounds nuw float, ptr %18, i64 %118, !dbg !95
  %120 = load float, ptr %119, align 4, !dbg !95
  %121 = insertelement <1 x float> poison, float %120, i32 0, !dbg !95
  %122 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %81, <1 x float> %121, <1 x float> %117), !dbg !95
  %123 = add i64 %39, 8, !dbg !94
  br label %38, !dbg !94

124:                                              ; preds = %38
  %125 = extractelement <1 x float> %40, i64 0, !dbg !94
  %126 = mul nuw nsw i64 %34, 16, !dbg !94
  %127 = add nuw nsw i64 %126, %36, !dbg !94
  %128 = getelementptr inbounds nuw float, ptr %22, i64 %127, !dbg !94
  store float %125, ptr %128, align 4, !dbg !94
  %129 = add i64 %36, 1, !dbg !94
  br label %35, !dbg !94

130:                                              ; preds = %35
  %131 = add i64 %31, 1, !dbg !94
  br label %30, !dbg !94

132:                                              ; preds = %30
  %133 = add i64 %24, 64, !dbg !94
  br label %23, !dbg !94

134:                                              ; preds = %23
  ret i32 0, !dbg !96
}

define internal i32 @bias_relu_dispatch_0_elementwise_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !97 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !98
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !98
  %6 = load i32, ptr %5, align 4, !dbg !98
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !99
  %8 = load i32, ptr %7, align 4, !dbg !99
  %9 = zext i32 %6 to i64, !dbg !100
  %10 = zext i32 %8 to i64, !dbg !101
  %11 = shl i64 %10, 32, !dbg !102
  %12 = or i64 %9, %11, !dbg !103
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !104
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !104
  %15 = load ptr, ptr %14, align 8, !dbg !104
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !104
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !105
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !105
  %18 = load ptr, ptr %17, align 8, !dbg !105
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !105
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !106
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !106
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !106
  %22 = load ptr, ptr %21, align 8, !dbg !106
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !106
  br label %23, !dbg !107

23:                                               ; preds = %42, %3
  %24 = phi i64 [ %43, %42 ], [ 0, %3 ], !dbg !107
  %25 = icmp slt i64 %24, %12, !dbg !107
  br i1 %25, label %26, label %44, !dbg !107

26:                                               ; preds = %29, %23
  %27 = phi i64 [ %41, %29 ], [ 0, %23 ], !dbg !107
  %28 = icmp slt i64 %27, 16, !dbg !107
  br i1 %28, label %29, label %42, !dbg !107

29:                                               ; preds = %26
  %30 = mul i64 %24, 16, !dbg !107
  %31 = add i64 %30, %27, !dbg !107
  %32 = getelementptr float, ptr %18, i64 %31, !dbg !107
  %33 = load <8 x float>, ptr %32, align 4, !dbg !107
  %34 = getelementptr float, ptr %15, i64 %27, !dbg !107
  %35 = load <8 x float>, ptr %34, align 4, !dbg !107
  %36 = fadd contract <8 x float> %33, %35, !dbg !108
  %37 = fcmp ugt <8 x float> %36, zeroinitializer, !dbg !109
  %38 = select <8 x i1> %37, <8 x float> %36, <8 x float> zeroinitializer, !dbg !109
  %39 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %38, !dbg !109
  %40 = getelementptr float, ptr %22, i64 %31, !dbg !107
  store <8 x float> %39, ptr %40, align 4, !dbg !107
  %41 = add i64 %27, 8, !dbg !107
  br label %26, !dbg !107

42:                                               ; preds = %26
  %43 = add i64 %24, 1, !dbg !107
  br label %23, !dbg !107

44:                                               ; preds = %23
  ret i32 0, !dbg !110
}

define internal i32 @row_sum_dispatch_0_reduction_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !111 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !112
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !112
  %6 = load i32, ptr %5, align 4, !dbg !112
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !113
  %8 = load i32, ptr %7, align 4, !dbg !113
  %9 = zext i32 %6 to i64, !dbg !114
  %10 = zext i32 %8 to i64, !dbg !115
  %11 = shl i64 %10, 32, !dbg !116
  %12 = or i64 %9, %11, !dbg !117
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !118
  %14 = load ptr, ptr %13, align 8, !dbg !118
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !118
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !119
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !119
  %17 = getelementptr ptr, ptr %16, i32 1, !dbg !119
  %18 = load ptr, ptr %17, align 8, !dbg !119
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !119
  br label %19, !dbg !120

19:                                               ; preds = %117, %3
  %20 = phi i64 [ %118, %117 ], [ 0, %3 ], !dbg !120
  %21 = icmp slt i64 %20, %12, !dbg !120
  br i1 %21, label %22, label %119, !dbg !120

22:                                               ; preds = %19
  %23 = sub i64 %12, %20, !dbg !120
  %24 = icmp slt i64 %23, 8, !dbg !120
  %25 = select i1 %24, i64 %23, i64 8, !dbg !120
  %26 = trunc i64 %25 to i32, !dbg !121
  %27 = insertelement <8 x i32> poison, i32 %26, i32 0, !dbg !121
  %28 = shufflevector <8 x i32> %27, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !121
  %29 = icmp sgt <8 x i32> %28, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !121
  %30 = getelementptr float, ptr %18, i64 %20, !dbg !122
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %30, <8 x i1> %29), !dbg !122
  %31 = icmp sgt i64 %25, 0, !dbg !120
  %32 = select i1 %31, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !120
  %33 = icmp sgt i64 %25, 1, !dbg !120
  %34 = select i1 %33, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !120
  %35 = icmp sgt i64 %25, 2, !dbg !120
  %36 = select i1 %35, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !120
  %37 = icmp sgt i64 %25, 3, !dbg !120
  %38 = select i1 %37, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !120
  %39 = icmp sgt i64 %25, 4, !dbg !120
  %40 = select i1 %39, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !120
  %41 = icmp sgt i64 %25, 5, !dbg !120
  %42 = select i1 %41, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !120
  %43 = icmp sgt i64 %25, 6, !dbg !120
  %44 = select i1 %43, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !120
  %45 = icmp sgt i64 %25, 7, !dbg !120
  %46 = select i1 %45, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !120
  %47 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %30, <8 x i1> %29, <8 x float> poison), !dbg !120
  br label %48, !dbg !120

48:                                               ; preds = %52, %22
  %49 = phi i64 [ %116, %52 ], [ 0, %22 ], !dbg !120
  %50 = phi <8 x float> [ %115, %52 ], [ %47, %22 ], !dbg !120
  %51 = icmp slt i64 %49, 16, !dbg !120
  br i1 %51, label %52, label %117, !dbg !120

52:                                               ; preds = %48
  %53 = mul i64 %20, 16, !dbg !120
  %54 = add i64 %53, %49, !dbg !120
  %55 = getelementptr float, ptr %14, i64 %54, !dbg !120
  %56 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %55, <8 x i1> %32, <8 x float> poison), !dbg !120
  %57 = add i64 %20, 1, !dbg !120
  %58 = mul i64 %57, 16, !dbg !120
  %59 = add i64 %58, %49, !dbg !120
  %60 = getelementptr float, ptr %14, i64 %59, !dbg !120
  %61 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %60, <8 x i1> %34, <8 x float> poison), !dbg !120
  %62 = add i64 %20, 2, !dbg !120
  %63 = mul i64 %62, 16, !dbg !120
  %64 = add i64 %63, %49, !dbg !120
  %65 = getelementptr float, ptr %14, i64 %64, !dbg !120
  %66 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %65, <8 x i1> %36, <8 x float> poison), !dbg !120
  %67 = add i64 %20, 3, !dbg !120
  %68 = mul i64 %67, 16, !dbg !120
  %69 = add i64 %68, %49, !dbg !120
  %70 = getelementptr float, ptr %14, i64 %69, !dbg !120
  %71 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %70, <8 x i1> %38, <8 x float> poison), !dbg !120
  %72 = add i64 %20, 4, !dbg !120
  %73 = mul i64 %72, 16, !dbg !120
  %74 = add i64 %73, %49, !dbg !120
  %75 = getelementptr float, ptr %14, i64 %74, !dbg !120
  %76 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %75, <8 x i1> %40, <8 x float> poison), !dbg !120
  %77 = add i64 %20, 5, !dbg !120
  %78 = mul i64 %77, 16, !dbg !120
  %79 = add i64 %78, %49, !dbg !120
  %80 = getelementptr float, ptr %14, i64 %79, !dbg !120
  %81 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %80, <8 x i1> %42, <8 x float> poison), !dbg !120
  %82 = add i64 %20, 6, !dbg !120
  %83 = mul i64 %82, 16, !dbg !120
  %84 = add i64 %83, %49, !dbg !120
  %85 = getelementptr float, ptr %14, i64 %84, !dbg !120
  %86 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %85, <8 x i1> %44, <8 x float> poison), !dbg !120
  %87 = add i64 %20, 7, !dbg !120
  %88 = mul i64 %87, 16, !dbg !120
  %89 = add i64 %88, %49, !dbg !120
  %90 = getelementptr float, ptr %14, i64 %89, !dbg !120
  %91 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %90, <8 x i1> %46, <8 x float> poison), !dbg !120
  %92 = extractelement <8 x float> %50, i64 0, !dbg !123
  %93 = call float @llvm.vp.reduce.fadd.v8f32(float %92, <8 x float> %56, <8 x i1> %32, i32 8), !dbg !123
  %94 = extractelement <8 x float> %50, i64 1, !dbg !123
  %95 = call float @llvm.vp.reduce.fadd.v8f32(float %94, <8 x float> %61, <8 x i1> %34, i32 8), !dbg !123
  %96 = extractelement <8 x float> %50, i64 2, !dbg !123
  %97 = call float @llvm.vp.reduce.fadd.v8f32(float %96, <8 x float> %66, <8 x i1> %36, i32 8), !dbg !123
  %98 = extractelement <8 x float> %50, i64 3, !dbg !123
  %99 = call float @llvm.vp.reduce.fadd.v8f32(float %98, <8 x float> %71, <8 x i1> %38, i32 8), !dbg !123
  %100 = extractelement <8 x float> %50, i64 4, !dbg !123
  %101 = call float @llvm.vp.reduce.fadd.v8f32(float %100, <8 x float> %76, <8 x i1> %40, i32 8), !dbg !123
  %102 = extractelement <8 x float> %50, i64 5, !dbg !123
  %103 = call float @llvm.vp.reduce.fadd.v8f32(float %102, <8 x float> %81, <8 x i1> %42, i32 8), !dbg !123
  %104 = extractelement <8 x float> %50, i64 6, !dbg !123
  %105 = call float @llvm.vp.reduce.fadd.v8f32(float %104, <8 x float> %86, <8 x i1> %44, i32 8), !dbg !123
  %106 = extractelement <8 x float> %50, i64 7, !dbg !123
  %107 = call float @llvm.vp.reduce.fadd.v8f32(float %106, <8 x float> %91, <8 x i1> %46, i32 8), !dbg !123
  %108 = insertelement <8 x float> poison, float %93, i64 0, !dbg !123
  %109 = insertelement <8 x float> %108, float %95, i64 1, !dbg !123
  %110 = insertelement <8 x float> %109, float %97, i64 2, !dbg !123
  %111 = insertelement <8 x float> %110, float %99, i64 3, !dbg !123
  %112 = insertelement <8 x float> %111, float %101, i64 4, !dbg !123
  %113 = insertelement <8 x float> %112, float %103, i64 5, !dbg !123
  %114 = insertelement <8 x float> %113, float %105, i64 6, !dbg !123
  %115 = insertelement <8 x float> %114, float %107, i64 7, !dbg !123
  %116 = add i64 %49, 8, !dbg !120
  br label %48, !dbg !120

117:                                              ; preds = %48
  call void @llvm.masked.store.v8f32.p0(<8 x float> %50, ptr align 4 %30, <8 x i1> %29), !dbg !123
  %118 = add i64 %20, 8, !dbg !120
  br label %19, !dbg !120

119:                                              ; preds = %19
  ret i32 0, !dbg !124
}

define internal i32 @fragment_dispatch_1_reduction_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !125 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !126
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !126
  %6 = load i32, ptr %5, align 4, !dbg !126
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !127
  %8 = load i32, ptr %7, align 4, !dbg !127
  %9 = zext i32 %6 to i64, !dbg !128
  %10 = zext i32 %8 to i64, !dbg !129
  %11 = shl i64 %10, 32, !dbg !130
  %12 = or i64 %9, %11, !dbg !131
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !132
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !132
  %15 = load ptr, ptr %14, align 8, !dbg !132
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !132
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !133
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !133
  %18 = load ptr, ptr %17, align 8, !dbg !133
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !133
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !134
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !134
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !134
  %22 = load ptr, ptr %21, align 8, !dbg !134
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !134
  br label %23, !dbg !135

23:                                               ; preds = %155, %3
  %24 = phi i64 [ %156, %155 ], [ 0, %3 ], !dbg !135
  %25 = icmp slt i64 %24, %12, !dbg !135
  br i1 %25, label %26, label %157, !dbg !135

26:                                               ; preds = %23
  %27 = sub i64 %12, %24, !dbg !135
  %28 = icmp slt i64 %27, 8, !dbg !135
  %29 = select i1 %28, i64 %27, i64 8, !dbg !135
  %30 = trunc i64 %29 to i32, !dbg !136
  %31 = insertelement <8 x i32> poison, i32 %30, i32 0, !dbg !136
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !136
  %33 = icmp sgt <8 x i32> %32, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !136
  %34 = getelementptr float, ptr %22, i64 %24, !dbg !137
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %34, <8 x i1> %33), !dbg !137
  %35 = icmp sgt i64 %29, 0, !dbg !135
  %36 = select i1 %35, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !135
  %37 = icmp sgt i64 %29, 1, !dbg !135
  %38 = select i1 %37, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !135
  %39 = icmp sgt i64 %29, 2, !dbg !135
  %40 = select i1 %39, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !135
  %41 = icmp sgt i64 %29, 3, !dbg !135
  %42 = select i1 %41, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !135
  %43 = icmp sgt i64 %29, 4, !dbg !135
  %44 = select i1 %43, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !135
  %45 = icmp sgt i64 %29, 5, !dbg !135
  %46 = select i1 %45, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !135
  %47 = icmp sgt i64 %29, 6, !dbg !135
  %48 = select i1 %47, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !135
  %49 = icmp sgt i64 %29, 7, !dbg !135
  %50 = select i1 %49, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !135
  %51 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %34, <8 x i1> %33, <8 x float> poison), !dbg !135
  br label %52, !dbg !135

52:                                               ; preds = %56, %26
  %53 = phi i64 [ %154, %56 ], [ 0, %26 ], !dbg !135
  %54 = phi <8 x float> [ %153, %56 ], [ %51, %26 ], !dbg !135
  %55 = icmp slt i64 %53, 16, !dbg !135
  br i1 %55, label %56, label %155, !dbg !135

56:                                               ; preds = %52
  %57 = mul i64 %24, 16, !dbg !135
  %58 = add i64 %57, %53, !dbg !135
  %59 = getelementptr float, ptr %18, i64 %58, !dbg !135
  %60 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %59, <8 x i1> %36, <8 x float> poison), !dbg !135
  %61 = add i64 %24, 1, !dbg !135
  %62 = mul i64 %61, 16, !dbg !135
  %63 = add i64 %62, %53, !dbg !135
  %64 = getelementptr float, ptr %18, i64 %63, !dbg !135
  %65 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %64, <8 x i1> %38, <8 x float> poison), !dbg !135
  %66 = add i64 %24, 2, !dbg !135
  %67 = mul i64 %66, 16, !dbg !135
  %68 = add i64 %67, %53, !dbg !135
  %69 = getelementptr float, ptr %18, i64 %68, !dbg !135
  %70 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %69, <8 x i1> %40, <8 x float> poison), !dbg !135
  %71 = add i64 %24, 3, !dbg !135
  %72 = mul i64 %71, 16, !dbg !135
  %73 = add i64 %72, %53, !dbg !135
  %74 = getelementptr float, ptr %18, i64 %73, !dbg !135
  %75 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %74, <8 x i1> %42, <8 x float> poison), !dbg !135
  %76 = add i64 %24, 4, !dbg !135
  %77 = mul i64 %76, 16, !dbg !135
  %78 = add i64 %77, %53, !dbg !135
  %79 = getelementptr float, ptr %18, i64 %78, !dbg !135
  %80 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %79, <8 x i1> %44, <8 x float> poison), !dbg !135
  %81 = add i64 %24, 5, !dbg !135
  %82 = mul i64 %81, 16, !dbg !135
  %83 = add i64 %82, %53, !dbg !135
  %84 = getelementptr float, ptr %18, i64 %83, !dbg !135
  %85 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %84, <8 x i1> %46, <8 x float> poison), !dbg !135
  %86 = add i64 %24, 6, !dbg !135
  %87 = mul i64 %86, 16, !dbg !135
  %88 = add i64 %87, %53, !dbg !135
  %89 = getelementptr float, ptr %18, i64 %88, !dbg !135
  %90 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %89, <8 x i1> %48, <8 x float> poison), !dbg !135
  %91 = add i64 %24, 7, !dbg !135
  %92 = mul i64 %91, 16, !dbg !135
  %93 = add i64 %92, %53, !dbg !135
  %94 = getelementptr float, ptr %18, i64 %93, !dbg !135
  %95 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %94, <8 x i1> %50, <8 x float> poison), !dbg !135
  %96 = getelementptr float, ptr %15, i64 %53, !dbg !135
  %97 = load <8 x float>, ptr %96, align 4, !dbg !135
  %98 = fadd contract <8 x float> %60, %97, !dbg !138
  %99 = fadd contract <8 x float> %65, %97, !dbg !138
  %100 = fadd contract <8 x float> %70, %97, !dbg !138
  %101 = fadd contract <8 x float> %75, %97, !dbg !138
  %102 = fadd contract <8 x float> %80, %97, !dbg !138
  %103 = fadd contract <8 x float> %85, %97, !dbg !138
  %104 = fadd contract <8 x float> %90, %97, !dbg !138
  %105 = fadd contract <8 x float> %95, %97, !dbg !138
  %106 = fcmp ugt <8 x float> %98, zeroinitializer, !dbg !139
  %107 = fcmp ugt <8 x float> %99, zeroinitializer, !dbg !139
  %108 = fcmp ugt <8 x float> %100, zeroinitializer, !dbg !139
  %109 = fcmp ugt <8 x float> %101, zeroinitializer, !dbg !139
  %110 = fcmp ugt <8 x float> %102, zeroinitializer, !dbg !139
  %111 = fcmp ugt <8 x float> %103, zeroinitializer, !dbg !139
  %112 = fcmp ugt <8 x float> %104, zeroinitializer, !dbg !139
  %113 = fcmp ugt <8 x float> %105, zeroinitializer, !dbg !139
  %114 = select <8 x i1> %106, <8 x float> %98, <8 x float> zeroinitializer, !dbg !139
  %115 = select <8 x i1> %107, <8 x float> %99, <8 x float> zeroinitializer, !dbg !139
  %116 = select <8 x i1> %108, <8 x float> %100, <8 x float> zeroinitializer, !dbg !139
  %117 = select <8 x i1> %109, <8 x float> %101, <8 x float> zeroinitializer, !dbg !139
  %118 = select <8 x i1> %110, <8 x float> %102, <8 x float> zeroinitializer, !dbg !139
  %119 = select <8 x i1> %111, <8 x float> %103, <8 x float> zeroinitializer, !dbg !139
  %120 = select <8 x i1> %112, <8 x float> %104, <8 x float> zeroinitializer, !dbg !139
  %121 = select <8 x i1> %113, <8 x float> %105, <8 x float> zeroinitializer, !dbg !139
  %122 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %114, !dbg !139
  %123 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %115, !dbg !139
  %124 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %116, !dbg !139
  %125 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %117, !dbg !139
  %126 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %118, !dbg !139
  %127 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %119, !dbg !139
  %128 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %120, !dbg !139
  %129 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %121, !dbg !139
  %130 = extractelement <8 x float> %54, i64 0, !dbg !140
  %131 = call float @llvm.vp.reduce.fadd.v8f32(float %130, <8 x float> %122, <8 x i1> %36, i32 8), !dbg !140
  %132 = extractelement <8 x float> %54, i64 1, !dbg !140
  %133 = call float @llvm.vp.reduce.fadd.v8f32(float %132, <8 x float> %123, <8 x i1> %38, i32 8), !dbg !140
  %134 = extractelement <8 x float> %54, i64 2, !dbg !140
  %135 = call float @llvm.vp.reduce.fadd.v8f32(float %134, <8 x float> %124, <8 x i1> %40, i32 8), !dbg !140
  %136 = extractelement <8 x float> %54, i64 3, !dbg !140
  %137 = call float @llvm.vp.reduce.fadd.v8f32(float %136, <8 x float> %125, <8 x i1> %42, i32 8), !dbg !140
  %138 = extractelement <8 x float> %54, i64 4, !dbg !140
  %139 = call float @llvm.vp.reduce.fadd.v8f32(float %138, <8 x float> %126, <8 x i1> %44, i32 8), !dbg !140
  %140 = extractelement <8 x float> %54, i64 5, !dbg !140
  %141 = call float @llvm.vp.reduce.fadd.v8f32(float %140, <8 x float> %127, <8 x i1> %46, i32 8), !dbg !140
  %142 = extractelement <8 x float> %54, i64 6, !dbg !140
  %143 = call float @llvm.vp.reduce.fadd.v8f32(float %142, <8 x float> %128, <8 x i1> %48, i32 8), !dbg !140
  %144 = extractelement <8 x float> %54, i64 7, !dbg !140
  %145 = call float @llvm.vp.reduce.fadd.v8f32(float %144, <8 x float> %129, <8 x i1> %50, i32 8), !dbg !140
  %146 = insertelement <8 x float> poison, float %131, i64 0, !dbg !140
  %147 = insertelement <8 x float> %146, float %133, i64 1, !dbg !140
  %148 = insertelement <8 x float> %147, float %135, i64 2, !dbg !140
  %149 = insertelement <8 x float> %148, float %137, i64 3, !dbg !140
  %150 = insertelement <8 x float> %149, float %139, i64 4, !dbg !140
  %151 = insertelement <8 x float> %150, float %141, i64 5, !dbg !140
  %152 = insertelement <8 x float> %151, float %143, i64 6, !dbg !140
  %153 = insertelement <8 x float> %152, float %145, i64 7, !dbg !140
  %154 = add i64 %53, 8, !dbg !135
  br label %52, !dbg !135

155:                                              ; preds = %52
  call void @llvm.masked.store.v8f32.p0(<8 x float> %54, ptr align 4 %34, <8 x i1> %33), !dbg !140
  %156 = add i64 %24, 8, !dbg !135
  br label %23, !dbg !135

157:                                              ; preds = %23
  ret i32 0, !dbg !141
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <1 x float> @llvm.fmuladd.v1f32(<1 x float>, <1 x float>, <1 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vp.reduce.fadd.v8f32(float, <8 x float>, <8 x i1>, i32) #5

; Function Attrs: uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) #6 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #6 = { uwtable "nonlazybind" }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables")
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_Dx16x32_f32", linkageName: "matmul_dispatch_0_matmul_Dx16x32_f32", scope: !1, file: !1, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!85 = !DILocation(line: 12, column: 8, scope: !9)
!86 = !DILocation(line: 13, column: 8, scope: !9)
!87 = !DILocation(line: 14, column: 8, scope: !9)
!88 = !DILocation(line: 15, column: 8, scope: !9)
!89 = !DILocation(line: 16, column: 8, scope: !9)
!90 = !DILocation(line: 17, column: 8, scope: !9)
!91 = !DILocation(line: 20, column: 8, scope: !9)
!92 = !DILocation(line: 22, column: 8, scope: !9)
!93 = !DILocation(line: 23, column: 8, scope: !9)
!94 = !DILocation(line: 28, column: 8, scope: !9)
!95 = !DILocation(line: 3, column: 3, scope: !9)
!96 = !DILocation(line: 30, column: 8, scope: !9)
!97 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_Dx16_f32", linkageName: "bias_relu_dispatch_0_elementwise_Dx16_f32", scope: !3, file: !3, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!98 = !DILocation(line: 12, column: 8, scope: !97)
!99 = !DILocation(line: 13, column: 8, scope: !97)
!100 = !DILocation(line: 14, column: 8, scope: !97)
!101 = !DILocation(line: 15, column: 8, scope: !97)
!102 = !DILocation(line: 16, column: 8, scope: !97)
!103 = !DILocation(line: 17, column: 8, scope: !97)
!104 = !DILocation(line: 20, column: 8, scope: !97)
!105 = !DILocation(line: 22, column: 8, scope: !97)
!106 = !DILocation(line: 23, column: 8, scope: !97)
!107 = !DILocation(line: 27, column: 8, scope: !97)
!108 = !DILocation(line: 29, column: 10, scope: !97)
!109 = !DILocation(line: 30, column: 10, scope: !97)
!110 = !DILocation(line: 34, column: 8, scope: !97)
!111 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_Dx16_f32", linkageName: "row_sum_dispatch_0_reduction_Dx16_f32", scope: !5, file: !5, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!112 = !DILocation(line: 12, column: 8, scope: !111)
!113 = !DILocation(line: 13, column: 8, scope: !111)
!114 = !DILocation(line: 14, column: 8, scope: !111)
!115 = !DILocation(line: 15, column: 8, scope: !111)
!116 = !DILocation(line: 16, column: 8, scope: !111)
!117 = !DILocation(line: 17, column: 8, scope: !111)
!118 = !DILocation(line: 21, column: 8, scope: !111)
!119 = !DILocation(line: 22, column: 8, scope: !111)
!120 = !DILocation(line: 26, column: 8, scope: !111)
!121 = !DILocation(line: 25, column: 8, scope: !111)
!122 = !DILocation(line: 10, column: 8, scope: !111)
!123 = !DILocation(line: 28, column: 10, scope: !111)
!124 = !DILocation(line: 32, column: 8, scope: !111)
!125 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_Dx16_f32", linkageName: "fragment_dispatch_1_reduction_Dx16_f32", scope: !7, file: !7, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!126 = !DILocation(line: 12, column: 8, scope: !125)
!127 = !DILocation(line: 13, column: 8, scope: !125)
!128 = !DILocation(line: 14, column: 8, scope: !125)
!129 = !DILocation(line: 15, column: 8, scope: !125)
!130 = !DILocation(line: 16, column: 8, scope: !125)
!131 = !DILocation(line: 17, column: 8, scope: !125)
!132 = !DILocation(line: 20, column: 8, scope: !125)
!133 = !DILocation(line: 22, column: 8, scope: !125)
!134 = !DILocation(line: 23, column: 8, scope: !125)
!135 = !DILocation(line: 28, column: 8, scope: !125)
!136 = !DILocation(line: 27, column: 8, scope: !125)
!137 = !DILocation(line: 10, column: 8, scope: !125)
!138 = !DILocation(line: 30, column: 10, scope: !125)
!139 = !DILocation(line: 31, column: 10, scope: !125)
!140 = !DILocation(line: 32, column: 10, scope: !125)
!141 = !DILocation(line: 36, column: 8, scope: !125)
