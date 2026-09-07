; ModuleID = 'tail_linked'
source_filename = "tail_linked"
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

@0 = private constant [12 x i8] c"tail_linked\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [6 x ptr] [ptr @matmul_dispatch_0_matmul_7x17x33_f32, ptr @_encoding_0_encode_7x33xf32_to_7x33xf32, ptr @_encoding_1_encode_33x17xf32_to_33x17xf32, ptr @bias_relu_dispatch_0_elementwise_7x17_f32, ptr @row_sum_dispatch_0_reduction_7x17_f32, ptr @fragment_dispatch_1_reduction_7x17_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [6 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [37 x i8] c"matmul_dispatch_0_matmul_7x17x33_f32\00", align 1
@2 = private constant [40 x i8] c"_encoding_0_encode_7x33xf32_to_7x33xf32\00", align 1
@3 = private constant [42 x i8] c"_encoding_1_encode_33x17xf32_to_33x17xf32\00", align 1
@4 = private constant [42 x i8] c"bias_relu_dispatch_0_elementwise_7x17_f32\00", align 1
@5 = private constant [38 x i8] c"row_sum_dispatch_0_reduction_7x17_f32\00", align 1
@6 = private constant [39 x i8] c"fragment_dispatch_1_reduction_7x17_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [6 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6]
@7 = private constant [164 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables/configured_module_matmul_dispatch_0.mlir\00", align 1
@8 = private constant [158 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables/configured_module__encoding_0.mlir\00", align 1
@9 = private constant [158 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables/configured_module__encoding_1.mlir\00", align 1
@10 = private constant [167 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables/configured_module_bias_relu_dispatch_0.mlir\00", align 1
@11 = private constant [165 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables/configured_module_row_sum_dispatch_0.mlir\00", align 1
@12 = private constant [166 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables/configured_module_fragment_dispatch_1.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [6 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 163, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 157, ptr @8 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 157, ptr @9 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 166, ptr @10 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 164, ptr @11 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 165, ptr @12 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_7x17x33_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_7x17x33_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_0_encode_7x33xf32_to_7x33xf32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_0_encode_7x33xf32_to_7x33xf32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_1_encode_33x17xf32_to_33x17xf32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_1_encode_33x17xf32_to_33x17xf32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_7x17_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_7x17_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_7x17_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_7x17_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_7x17_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_7x17_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [6 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_7x17x33_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_7x17x33_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__encoding_0_encode_7x33xf32_to_7x33xf32_stage_names, ptr @iree_hal_executable_library_query_v0__encoding_0_encode_7x33xf32_to_7x33xf32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__encoding_1_encode_33x17xf32_to_33x17xf32_stage_names, ptr @iree_hal_executable_library_query_v0__encoding_1_encode_33x17xf32_to_33x17xf32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_7x17_f32_stage_names, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_7x17_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_7x17_f32_stage_names, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_7x17_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_7x17_f32_stage_names, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_7x17_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 6, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

declare i32 @iree_uk_mmt4d(ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, ptr) #0

define internal i32 @matmul_dispatch_0_matmul_7x17x33_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !13 {
  %4 = alloca float, i64 64, align 64, !dbg !89
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
  %17 = phi i64 [ %85, %19 ], [ 0, %3 ], !dbg !92
  %18 = icmp slt i64 %17, 3, !dbg !92
  br i1 %18, label %19, label %86, !dbg !92

19:                                               ; preds = %16
  %20 = mul nsw i64 %17, 264, !dbg !92
  %21 = add i64 %20, 272, !dbg !92
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
  %47 = call i32 @iree_uk_mmt4d(ptr %10, i64 0, i64 264, ptr %10, i64 %21, i64 264, ptr %4, i64 0, i64 64, i64 1, i64 1, i64 33, i32 8, i32 8, i32 1, i32 1537, ptr %23), !dbg !92
  %48 = mul nsw i64 %17, 8, !dbg !94
  %49 = mul nsw i64 %17, -8, !dbg !94
  %50 = add i64 %49, 17, !dbg !94
  %51 = icmp slt i64 %50, 8, !dbg !94
  %52 = select i1 %51, i64 %50, i64 8, !dbg !94
  %53 = getelementptr float, ptr %4, i64 0, !dbg !94
  %54 = load <8 x float>, ptr %53, align 4, !dbg !94
  %55 = getelementptr float, ptr %4, i64 8, !dbg !94
  %56 = load <8 x float>, ptr %55, align 4, !dbg !94
  %57 = getelementptr float, ptr %4, i64 16, !dbg !94
  %58 = load <8 x float>, ptr %57, align 4, !dbg !94
  %59 = getelementptr float, ptr %4, i64 24, !dbg !94
  %60 = load <8 x float>, ptr %59, align 4, !dbg !94
  %61 = getelementptr float, ptr %4, i64 32, !dbg !94
  %62 = load <8 x float>, ptr %61, align 4, !dbg !94
  %63 = getelementptr float, ptr %4, i64 40, !dbg !94
  %64 = load <8 x float>, ptr %63, align 4, !dbg !94
  %65 = getelementptr float, ptr %4, i64 48, !dbg !94
  %66 = load <8 x float>, ptr %65, align 4, !dbg !94
  %67 = trunc i64 %52 to i32, !dbg !94
  %68 = insertelement <8 x i32> poison, i32 %67, i32 0, !dbg !94
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !94
  %70 = icmp sgt <8 x i32> %69, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !94
  %71 = add i64 0, %48, !dbg !94
  %72 = getelementptr float, ptr %15, i64 %71, !dbg !94
  call void @llvm.masked.store.v8f32.p0(<8 x float> %54, ptr align 4 %72, <8 x i1> %70), !dbg !94
  %73 = add i64 17, %48, !dbg !94
  %74 = getelementptr float, ptr %15, i64 %73, !dbg !94
  call void @llvm.masked.store.v8f32.p0(<8 x float> %56, ptr align 4 %74, <8 x i1> %70), !dbg !94
  %75 = add i64 34, %48, !dbg !94
  %76 = getelementptr float, ptr %15, i64 %75, !dbg !94
  call void @llvm.masked.store.v8f32.p0(<8 x float> %58, ptr align 4 %76, <8 x i1> %70), !dbg !94
  %77 = add i64 51, %48, !dbg !94
  %78 = getelementptr float, ptr %15, i64 %77, !dbg !94
  call void @llvm.masked.store.v8f32.p0(<8 x float> %60, ptr align 4 %78, <8 x i1> %70), !dbg !94
  %79 = add i64 68, %48, !dbg !94
  %80 = getelementptr float, ptr %15, i64 %79, !dbg !94
  call void @llvm.masked.store.v8f32.p0(<8 x float> %62, ptr align 4 %80, <8 x i1> %70), !dbg !94
  %81 = add i64 85, %48, !dbg !94
  %82 = getelementptr float, ptr %15, i64 %81, !dbg !94
  call void @llvm.masked.store.v8f32.p0(<8 x float> %64, ptr align 4 %82, <8 x i1> %70), !dbg !94
  %83 = add i64 102, %48, !dbg !94
  %84 = getelementptr float, ptr %15, i64 %83, !dbg !94
  call void @llvm.masked.store.v8f32.p0(<8 x float> %66, ptr align 4 %84, <8 x i1> %70), !dbg !94
  %85 = add i64 %17, 1, !dbg !92
  br label %16, !dbg !92

86:                                               ; preds = %16
  ret i32 0, !dbg !95
}

define internal i32 @_encoding_0_encode_7x33xf32_to_7x33xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !96 {
  %4 = alloca float, i64 8, align 32, !dbg !97
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !98
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !98
  %7 = load ptr, ptr %6, align 8, !dbg !98
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !98
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !99
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !99
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !99
  %11 = load ptr, ptr %10, align 8, !dbg !99
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !99
  br label %12, !dbg !100

12:                                               ; preds = %31, %3
  %13 = phi i64 [ %38, %31 ], [ 0, %3 ], !dbg !100
  %14 = icmp slt i64 %13, 33, !dbg !100
  br i1 %14, label %15, label %39, !dbg !100

15:                                               ; preds = %18, %12
  %16 = phi i64 [ %20, %18 ], [ 0, %12 ], !dbg !100
  %17 = icmp slt i64 %16, 8, !dbg !100
  br i1 %17, label %18, label %21, !dbg !100

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw float, ptr %4, i64 %16, !dbg !100
  store float 0.000000e+00, ptr %19, align 4, !dbg !100
  %20 = add i64 %16, 1, !dbg !100
  br label %15, !dbg !100

21:                                               ; preds = %24, %15
  %22 = phi i64 [ %30, %24 ], [ 0, %15 ], !dbg !100
  %23 = icmp slt i64 %22, 7, !dbg !100
  br i1 %23, label %24, label %31, !dbg !100

24:                                               ; preds = %21
  %25 = mul nuw nsw i64 %22, 33, !dbg !100
  %26 = add nuw nsw i64 %25, %13, !dbg !100
  %27 = getelementptr inbounds nuw float, ptr %7, i64 %26, !dbg !100
  %28 = load float, ptr %27, align 4, !dbg !100
  %29 = getelementptr inbounds nuw float, ptr %4, i64 %22, !dbg !100
  store float %28, ptr %29, align 4, !dbg !100
  %30 = add i64 %22, 1, !dbg !100
  br label %21, !dbg !100

31:                                               ; preds = %21
  %32 = load <8 x float>, ptr %4, align 4, !dbg !100
  %33 = mul i64 %13, 8, !dbg !100
  %34 = add i64 0, %33, !dbg !100
  %35 = add i64 %34, 0, !dbg !100
  %36 = add i64 %35, 0, !dbg !100
  %37 = getelementptr float, ptr %11, i64 %36, !dbg !100
  store <8 x float> %32, ptr %37, align 4, !dbg !100
  %38 = add i64 %13, 1, !dbg !100
  br label %12, !dbg !100

39:                                               ; preds = %12
  ret i32 0, !dbg !101
}

define internal i32 @_encoding_1_encode_33x17xf32_to_33x17xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !102 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !103
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !103
  %6 = load ptr, ptr %5, align 8, !dbg !103
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !103
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !104
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !104
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !104
  %10 = load ptr, ptr %9, align 8, !dbg !104
  %11 = getelementptr float, ptr %10, i64 272, !dbg !104
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !104
  br label %12, !dbg !105

12:                                               ; preds = %40, %3
  %13 = phi i64 [ %41, %40 ], [ 0, %3 ], !dbg !105
  %14 = icmp slt i64 %13, 3, !dbg !105
  br i1 %14, label %15, label %42, !dbg !105

15:                                               ; preds = %12
  %16 = mul nsw i64 %13, 8, !dbg !105
  %17 = mul nsw i64 %13, -8, !dbg !105
  %18 = add i64 %17, 17, !dbg !105
  %19 = icmp slt i64 %18, 8, !dbg !105
  %20 = select i1 %19, i64 %18, i64 8, !dbg !105
  br label %21, !dbg !105

21:                                               ; preds = %24, %15
  %22 = phi i64 [ %39, %24 ], [ 0, %15 ], !dbg !105
  %23 = icmp slt i64 %22, 33, !dbg !105
  br i1 %23, label %24, label %40, !dbg !105

24:                                               ; preds = %21
  %25 = trunc i64 %20 to i32, !dbg !105
  %26 = insertelement <8 x i32> poison, i32 %25, i32 0, !dbg !105
  %27 = shufflevector <8 x i32> %26, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !105
  %28 = icmp sgt <8 x i32> %27, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !105
  %29 = mul i64 %22, 17, !dbg !105
  %30 = add i64 %29, %16, !dbg !105
  %31 = getelementptr float, ptr %6, i64 %30, !dbg !105
  %32 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %31, <8 x i1> %28, <8 x float> zeroinitializer), !dbg !105
  %33 = mul i64 %13, 264, !dbg !105
  %34 = mul i64 %22, 8, !dbg !105
  %35 = add i64 %33, %34, !dbg !105
  %36 = add i64 %35, 0, !dbg !105
  %37 = add i64 %36, 0, !dbg !105
  %38 = getelementptr float, ptr %11, i64 %37, !dbg !105
  store <8 x float> %32, ptr %38, align 4, !dbg !105
  %39 = add i64 %22, 1, !dbg !105
  br label %21, !dbg !105

40:                                               ; preds = %21
  %41 = add i64 %13, 1, !dbg !105
  br label %12, !dbg !105

42:                                               ; preds = %12
  ret i32 0, !dbg !106
}

define internal i32 @bias_relu_dispatch_0_elementwise_7x17_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !107 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !108
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !108
  %6 = load ptr, ptr %5, align 8, !dbg !108
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !108
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !109
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !109
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !109
  %10 = load ptr, ptr %9, align 8, !dbg !109
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !109
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !110
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !110
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !110
  %14 = load ptr, ptr %13, align 8, !dbg !110
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !110
  br label %15, !dbg !111

15:                                               ; preds = %41, %3
  %16 = phi i64 [ %42, %41 ], [ 0, %3 ], !dbg !111
  %17 = icmp slt i64 %16, 7, !dbg !111
  br i1 %17, label %18, label %43, !dbg !111

18:                                               ; preds = %21, %15
  %19 = phi i64 [ %40, %21 ], [ 0, %15 ], !dbg !111
  %20 = icmp slt i64 %19, 17, !dbg !111
  br i1 %20, label %21, label %41, !dbg !111

21:                                               ; preds = %18
  %22 = sub i64 17, %19, !dbg !111
  %23 = icmp slt i64 %22, 8, !dbg !111
  %24 = select i1 %23, i64 %22, i64 8, !dbg !111
  %25 = trunc i64 %24 to i32, !dbg !111
  %26 = insertelement <8 x i32> poison, i32 %25, i32 0, !dbg !111
  %27 = shufflevector <8 x i32> %26, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !111
  %28 = icmp sgt <8 x i32> %27, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !111
  %29 = mul i64 %16, 17, !dbg !111
  %30 = add i64 %29, %19, !dbg !111
  %31 = getelementptr float, ptr %6, i64 %30, !dbg !111
  %32 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %31, <8 x i1> %28, <8 x float> poison), !dbg !111
  %33 = getelementptr float, ptr %10, i64 %19, !dbg !111
  %34 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %33, <8 x i1> %28, <8 x float> poison), !dbg !111
  %35 = fadd contract <8 x float> %32, %34, !dbg !112
  %36 = fcmp ugt <8 x float> %35, zeroinitializer, !dbg !113
  %37 = select <8 x i1> %36, <8 x float> %35, <8 x float> zeroinitializer, !dbg !113
  %38 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %37, !dbg !113
  %39 = getelementptr float, ptr %14, i64 %30, !dbg !113
  call void @llvm.masked.store.v8f32.p0(<8 x float> %38, ptr align 4 %39, <8 x i1> %28), !dbg !113
  %40 = add i64 %19, 8, !dbg !111
  br label %18, !dbg !111

41:                                               ; preds = %18
  %42 = add i64 %16, 1, !dbg !111
  br label %15, !dbg !111

43:                                               ; preds = %15
  ret i32 0, !dbg !114
}

define internal i32 @row_sum_dispatch_0_reduction_7x17_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !115 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !116
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !116
  %6 = load ptr, ptr %5, align 8, !dbg !116
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !116
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !117
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !117
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !117
  %10 = load ptr, ptr %9, align 8, !dbg !117
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !117
  br label %11, !dbg !118

11:                                               ; preds = %34, %3
  %12 = phi i64 [ %37, %34 ], [ 0, %3 ], !dbg !118
  %13 = icmp slt i64 %12, 7, !dbg !118
  br i1 %13, label %14, label %38, !dbg !118

14:                                               ; preds = %18, %11
  %15 = phi i64 [ %33, %18 ], [ 0, %11 ], !dbg !118
  %16 = phi <1 x float> [ %32, %18 ], [ zeroinitializer, %11 ], !dbg !118
  %17 = icmp slt i64 %15, 17, !dbg !118
  br i1 %17, label %18, label %34, !dbg !118

18:                                               ; preds = %14
  %19 = sub i64 17, %15, !dbg !118
  %20 = icmp slt i64 %19, 8, !dbg !118
  %21 = select i1 %20, i64 %19, i64 8, !dbg !118
  %22 = trunc i64 %21 to i32, !dbg !118
  %23 = insertelement <8 x i32> poison, i32 %22, i32 0, !dbg !118
  %24 = shufflevector <8 x i32> %23, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !118
  %25 = icmp sgt <8 x i32> %24, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !118
  %26 = mul i64 %12, 17, !dbg !118
  %27 = add i64 %26, %15, !dbg !118
  %28 = getelementptr float, ptr %6, i64 %27, !dbg !118
  %29 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %28, <8 x i1> %25, <8 x float> poison), !dbg !118
  %30 = extractelement <1 x float> %16, i64 0, !dbg !119
  %31 = call float @llvm.vp.reduce.fadd.v8f32(float %30, <8 x float> %29, <8 x i1> %25, i32 8), !dbg !119
  %32 = insertelement <1 x float> poison, float %31, i32 0, !dbg !119
  %33 = add i64 %15, 8, !dbg !118
  br label %14, !dbg !118

34:                                               ; preds = %14
  %35 = extractelement <1 x float> %16, i64 0, !dbg !118
  %36 = getelementptr inbounds nuw float, ptr %10, i64 %12, !dbg !118
  store float %35, ptr %36, align 4, !dbg !118
  %37 = add i64 %12, 1, !dbg !118
  br label %11, !dbg !118

38:                                               ; preds = %11
  ret i32 0, !dbg !120
}

define internal i32 @fragment_dispatch_1_reduction_7x17_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !121 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !122
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !122
  %6 = load ptr, ptr %5, align 8, !dbg !122
  %7 = getelementptr float, ptr %6, i64 1072, !dbg !122
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !122
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !123
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !123
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !123
  %11 = load ptr, ptr %10, align 8, !dbg !123
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !123
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !124
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !124
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !124
  %15 = load ptr, ptr %14, align 8, !dbg !124
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !124
  br label %16, !dbg !125

16:                                               ; preds = %45, %3
  %17 = phi i64 [ %48, %45 ], [ 0, %3 ], !dbg !125
  %18 = icmp slt i64 %17, 7, !dbg !125
  br i1 %18, label %19, label %49, !dbg !125

19:                                               ; preds = %23, %16
  %20 = phi i64 [ %44, %23 ], [ 0, %16 ], !dbg !125
  %21 = phi <1 x float> [ %43, %23 ], [ zeroinitializer, %16 ], !dbg !125
  %22 = icmp slt i64 %20, 17, !dbg !125
  br i1 %22, label %23, label %45, !dbg !125

23:                                               ; preds = %19
  %24 = sub i64 17, %20, !dbg !125
  %25 = icmp slt i64 %24, 8, !dbg !125
  %26 = select i1 %25, i64 %24, i64 8, !dbg !125
  %27 = trunc i64 %26 to i32, !dbg !125
  %28 = insertelement <8 x i32> poison, i32 %27, i32 0, !dbg !125
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !125
  %30 = icmp sgt <8 x i32> %29, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !125
  %31 = mul i64 %17, 17, !dbg !125
  %32 = add i64 %31, %20, !dbg !125
  %33 = getelementptr float, ptr %7, i64 %32, !dbg !125
  %34 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %33, <8 x i1> %30, <8 x float> poison), !dbg !125
  %35 = getelementptr float, ptr %11, i64 %20, !dbg !125
  %36 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %35, <8 x i1> %30, <8 x float> poison), !dbg !125
  %37 = fadd contract <8 x float> %34, %36, !dbg !126
  %38 = fcmp ugt <8 x float> %37, zeroinitializer, !dbg !127
  %39 = select <8 x i1> %38, <8 x float> %37, <8 x float> zeroinitializer, !dbg !127
  %40 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %39, !dbg !127
  %41 = extractelement <1 x float> %21, i64 0, !dbg !128
  %42 = call float @llvm.vp.reduce.fadd.v8f32(float %41, <8 x float> %40, <8 x i1> %30, i32 8), !dbg !128
  %43 = insertelement <1 x float> poison, float %42, i32 0, !dbg !128
  %44 = add i64 %20, 8, !dbg !125
  br label %19, !dbg !125

45:                                               ; preds = %19
  %46 = extractelement <1 x float> %21, i64 0, !dbg !125
  %47 = getelementptr inbounds nuw float, ptr %15, i64 %17, !dbg !125
  store float %46, ptr %47, align 4, !dbg !125
  %48 = add i64 %17, 1, !dbg !125
  br label %16, !dbg !125

49:                                               ; preds = %16
  ret i32 0, !dbg !129
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
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module__encoding_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module__encoding_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/tail-tiled/executables")
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_7x17x33_f32", linkageName: "matmul_dispatch_0_matmul_7x17x33_f32", scope: !1, file: !1, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!96 = distinct !DISubprogram(name: "_encoding_0_encode_7x33xf32_to_7x33xf32", linkageName: "_encoding_0_encode_7x33xf32_to_7x33xf32", scope: !3, file: !3, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!97 = !DILocation(line: 8, column: 6, scope: !96)
!98 = !DILocation(line: 11, column: 8, scope: !96)
!99 = !DILocation(line: 12, column: 8, scope: !96)
!100 = !DILocation(line: 15, column: 8, scope: !96)
!101 = !DILocation(line: 17, column: 8, scope: !96)
!102 = distinct !DISubprogram(name: "_encoding_1_encode_33x17xf32_to_33x17xf32", linkageName: "_encoding_1_encode_33x17xf32_to_33x17xf32", scope: !5, file: !5, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!103 = !DILocation(line: 12, column: 8, scope: !102)
!104 = !DILocation(line: 13, column: 8, scope: !102)
!105 = !DILocation(line: 16, column: 8, scope: !102)
!106 = !DILocation(line: 18, column: 8, scope: !102)
!107 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_7x17_f32", linkageName: "bias_relu_dispatch_0_elementwise_7x17_f32", scope: !7, file: !7, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!108 = !DILocation(line: 11, column: 8, scope: !107)
!109 = !DILocation(line: 12, column: 8, scope: !107)
!110 = !DILocation(line: 13, column: 8, scope: !107)
!111 = !DILocation(line: 17, column: 8, scope: !107)
!112 = !DILocation(line: 19, column: 10, scope: !107)
!113 = !DILocation(line: 20, column: 10, scope: !107)
!114 = !DILocation(line: 24, column: 8, scope: !107)
!115 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_7x17_f32", linkageName: "row_sum_dispatch_0_reduction_7x17_f32", scope: !9, file: !9, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!116 = !DILocation(line: 11, column: 8, scope: !115)
!117 = !DILocation(line: 12, column: 8, scope: !115)
!118 = !DILocation(line: 16, column: 8, scope: !115)
!119 = !DILocation(line: 18, column: 10, scope: !115)
!120 = !DILocation(line: 22, column: 8, scope: !115)
!121 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_7x17_f32", linkageName: "fragment_dispatch_1_reduction_7x17_f32", scope: !11, file: !11, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!122 = !DILocation(line: 12, column: 8, scope: !121)
!123 = !DILocation(line: 13, column: 8, scope: !121)
!124 = !DILocation(line: 14, column: 8, scope: !121)
!125 = !DILocation(line: 19, column: 8, scope: !121)
!126 = !DILocation(line: 21, column: 10, scope: !121)
!127 = !DILocation(line: 22, column: 10, scope: !121)
!128 = !DILocation(line: 23, column: 10, scope: !121)
!129 = !DILocation(line: 27, column: 8, scope: !121)
