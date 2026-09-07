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
@iree_hal_executable_library_query_v0_funcs = private constant [6 x ptr] [ptr @matmul_dispatch_0_matmul_64x32x64_f32, ptr @_encoding_0_encode_64x64xf32_to_64x64xf32, ptr @_encoding_1_encode_64x32xf32_to_64x32xf32, ptr @bias_relu_dispatch_0_elementwise_64x32_f32, ptr @row_sum_dispatch_0_reduction_64x32_f32, ptr @fragment_dispatch_1_reduction_64x32_f32]
@iree_hal_executable_library_query_v0_attrs = private constant [6 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 1, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 2, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, %iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [38 x i8] c"matmul_dispatch_0_matmul_64x32x64_f32\00", align 1
@2 = private constant [42 x i8] c"_encoding_0_encode_64x64xf32_to_64x64xf32\00", align 1
@3 = private constant [42 x i8] c"_encoding_1_encode_64x32xf32_to_64x32xf32\00", align 1
@4 = private constant [43 x i8] c"bias_relu_dispatch_0_elementwise_64x32_f32\00", align 1
@5 = private constant [39 x i8] c"row_sum_dispatch_0_reduction_64x32_f32\00", align 1
@6 = private constant [40 x i8] c"fragment_dispatch_1_reduction_64x32_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [6 x ptr] [ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6]
@7 = private constant [167 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables/configured_module_matmul_dispatch_0.mlir\00", align 1
@8 = private constant [161 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables/configured_module__encoding_0.mlir\00", align 1
@9 = private constant [161 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables/configured_module__encoding_1.mlir\00", align 1
@10 = private constant [170 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables/configured_module_bias_relu_dispatch_0.mlir\00", align 1
@11 = private constant [168 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables/configured_module_row_sum_dispatch_0.mlir\00", align 1
@12 = private constant [169 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables/configured_module_fragment_dispatch_1.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [6 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 166, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 160, ptr @8 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 160, ptr @9 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 169, ptr @10 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 167, ptr @11 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 168, ptr @12 }]
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_64x32x64_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_64x32x64_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_0_encode_64x64xf32_to_64x64xf32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_0_encode_64x64xf32_to_64x64xf32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_1_encode_64x32xf32_to_64x32xf32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0__encoding_1_encode_64x32xf32_to_64x32xf32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_64x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_64x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_64x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_64x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_64x32_f32_stage_names = private constant [0 x ptr] zeroinitializer
@iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_64x32_f32_stage_source_locations = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [6 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_64x32x64_f32_stage_names, ptr @iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_64x32x64_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__encoding_0_encode_64x64xf32_to_64x64xf32_stage_names, ptr @iree_hal_executable_library_query_v0__encoding_0_encode_64x64xf32_to_64x64xf32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0__encoding_1_encode_64x32xf32_to_64x32xf32_stage_names, ptr @iree_hal_executable_library_query_v0__encoding_1_encode_64x32xf32_to_64x32xf32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_64x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_64x32_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_64x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_64x32_f32_stage_source_locations }, %iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_64x32_f32_stage_names, ptr @iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_64x32_f32_stage_source_locations }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 6, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

declare i32 @iree_uk_mmt4d(ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, ptr) #0

define internal i32 @matmul_dispatch_0_matmul_64x32x64_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !13 {
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

16:                                               ; preds = %131, %3
  %17 = phi i64 [ %132, %131 ], [ 0, %3 ], !dbg !92
  %18 = icmp slt i64 %17, 4, !dbg !92
  br i1 %18, label %19, label %133, !dbg !92

19:                                               ; preds = %16
  %20 = mul nsw i64 %17, 8, !dbg !94
  br label %21, !dbg !92

21:                                               ; preds = %24, %19
  %22 = phi i64 [ %130, %24 ], [ 0, %19 ], !dbg !92
  %23 = icmp slt i64 %22, 8, !dbg !92
  br i1 %23, label %24, label %131, !dbg !92

24:                                               ; preds = %21
  %25 = mul nsw i64 %17, 512, !dbg !92
  %26 = add i64 %25, 4096, !dbg !92
  %27 = mul nsw i64 %22, 512, !dbg !92
  %28 = getelementptr inbounds ptr, ptr %0, i32 4, !dbg !92
  %29 = alloca i64, i64 8, align 8, !dbg !92
  %30 = load i64, ptr %28, align 4, !dbg !92
  %31 = or i64 %30, 52239, !dbg !92
  store i64 %31, ptr %29, align 4, !dbg !92
  %32 = getelementptr inbounds i64, ptr %28, i32 1, !dbg !92
  %33 = load i64, ptr %32, align 4, !dbg !92
  %34 = getelementptr inbounds i64, ptr %29, i32 1, !dbg !92
  store i64 %33, ptr %34, align 4, !dbg !92
  %35 = getelementptr inbounds i64, ptr %28, i32 2, !dbg !92
  %36 = load i64, ptr %35, align 4, !dbg !92
  %37 = getelementptr inbounds i64, ptr %29, i32 2, !dbg !92
  store i64 %36, ptr %37, align 4, !dbg !92
  %38 = getelementptr inbounds i64, ptr %28, i32 3, !dbg !92
  %39 = load i64, ptr %38, align 4, !dbg !92
  %40 = getelementptr inbounds i64, ptr %29, i32 3, !dbg !92
  store i64 %39, ptr %40, align 4, !dbg !92
  %41 = getelementptr inbounds i64, ptr %28, i32 4, !dbg !92
  %42 = load i64, ptr %41, align 4, !dbg !92
  %43 = getelementptr inbounds i64, ptr %29, i32 4, !dbg !92
  store i64 %42, ptr %43, align 4, !dbg !92
  %44 = getelementptr inbounds i64, ptr %28, i32 5, !dbg !92
  %45 = load i64, ptr %44, align 4, !dbg !92
  %46 = getelementptr inbounds i64, ptr %29, i32 5, !dbg !92
  store i64 %45, ptr %46, align 4, !dbg !92
  %47 = getelementptr inbounds i64, ptr %28, i32 6, !dbg !92
  %48 = load i64, ptr %47, align 4, !dbg !92
  %49 = getelementptr inbounds i64, ptr %29, i32 6, !dbg !92
  store i64 %48, ptr %49, align 4, !dbg !92
  %50 = getelementptr inbounds i64, ptr %28, i32 7, !dbg !92
  %51 = load i64, ptr %50, align 4, !dbg !92
  %52 = getelementptr inbounds i64, ptr %29, i32 7, !dbg !92
  store i64 %51, ptr %52, align 4, !dbg !92
  %53 = call i32 @iree_uk_mmt4d(ptr %10, i64 %26, i64 512, ptr %10, i64 %27, i64 512, ptr %4, i64 0, i64 64, i64 1, i64 1, i64 64, i32 8, i32 8, i32 1, i32 1537, ptr %29), !dbg !92
  %54 = getelementptr float, ptr %4, i64 0, !dbg !94
  %55 = load <8 x float>, ptr %54, align 4, !dbg !94
  %56 = getelementptr float, ptr %4, i64 8, !dbg !94
  %57 = load <8 x float>, ptr %56, align 4, !dbg !94
  %58 = getelementptr float, ptr %4, i64 16, !dbg !94
  %59 = load <8 x float>, ptr %58, align 4, !dbg !94
  %60 = getelementptr float, ptr %4, i64 24, !dbg !94
  %61 = load <8 x float>, ptr %60, align 4, !dbg !94
  %62 = getelementptr float, ptr %4, i64 32, !dbg !94
  %63 = load <8 x float>, ptr %62, align 4, !dbg !94
  %64 = getelementptr float, ptr %4, i64 40, !dbg !94
  %65 = load <8 x float>, ptr %64, align 4, !dbg !94
  %66 = getelementptr float, ptr %4, i64 48, !dbg !94
  %67 = load <8 x float>, ptr %66, align 4, !dbg !94
  %68 = getelementptr float, ptr %4, i64 56, !dbg !94
  %69 = load <8 x float>, ptr %68, align 4, !dbg !94
  %70 = shufflevector <8 x float> %55, <8 x float> %57, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>, !dbg !94
  %71 = shufflevector <8 x float> %55, <8 x float> %57, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>, !dbg !94
  %72 = shufflevector <8 x float> %59, <8 x float> %61, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>, !dbg !94
  %73 = shufflevector <8 x float> %59, <8 x float> %61, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>, !dbg !94
  %74 = shufflevector <8 x float> %63, <8 x float> %65, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>, !dbg !94
  %75 = shufflevector <8 x float> %63, <8 x float> %65, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>, !dbg !94
  %76 = shufflevector <8 x float> %67, <8 x float> %69, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>, !dbg !94
  %77 = shufflevector <8 x float> %67, <8 x float> %69, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>, !dbg !94
  %78 = shufflevector <8 x float> %70, <8 x float> %72, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>, !dbg !94
  %79 = shufflevector <8 x float> %71, <8 x float> %73, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>, !dbg !94
  %80 = shufflevector <8 x float> %74, <8 x float> %76, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>, !dbg !94
  %81 = shufflevector <8 x float> %75, <8 x float> %77, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>, !dbg !94
  %82 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0xcc", "=x,x,x"(<8 x float> %70, <8 x float> %78), !dbg !94
  %83 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0x33", "=x,x,x"(<8 x float> %72, <8 x float> %78), !dbg !94
  %84 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0xcc", "=x,x,x"(<8 x float> %71, <8 x float> %79), !dbg !94
  %85 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0x33", "=x,x,x"(<8 x float> %73, <8 x float> %79), !dbg !94
  %86 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0xcc", "=x,x,x"(<8 x float> %74, <8 x float> %80), !dbg !94
  %87 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0x33", "=x,x,x"(<8 x float> %76, <8 x float> %80), !dbg !94
  %88 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0xcc", "=x,x,x"(<8 x float> %75, <8 x float> %81), !dbg !94
  %89 = call <8 x float> asm inteldialect "vblendps $0, $1, $2, 0x33", "=x,x,x"(<8 x float> %77, <8 x float> %81), !dbg !94
  %90 = shufflevector <8 x float> %82, <8 x float> %86, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !94
  %91 = shufflevector <8 x float> %83, <8 x float> %87, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !94
  %92 = shufflevector <8 x float> %84, <8 x float> %88, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !94
  %93 = shufflevector <8 x float> %85, <8 x float> %89, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !94
  %94 = shufflevector <8 x float> %82, <8 x float> %86, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>, !dbg !94
  %95 = shufflevector <8 x float> %83, <8 x float> %87, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>, !dbg !94
  %96 = shufflevector <8 x float> %84, <8 x float> %88, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>, !dbg !94
  %97 = shufflevector <8 x float> %85, <8 x float> %89, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>, !dbg !94
  %98 = mul nsw i64 %22, 8, !dbg !92
  %99 = mul i64 %98, 32, !dbg !92
  %100 = add i64 %99, %20, !dbg !92
  %101 = getelementptr float, ptr %15, i64 %100, !dbg !92
  store <8 x float> %90, ptr %101, align 4, !dbg !92
  %102 = add i64 %98, 1, !dbg !92
  %103 = mul i64 %102, 32, !dbg !92
  %104 = add i64 %103, %20, !dbg !92
  %105 = getelementptr float, ptr %15, i64 %104, !dbg !92
  store <8 x float> %91, ptr %105, align 4, !dbg !92
  %106 = add i64 %98, 2, !dbg !92
  %107 = mul i64 %106, 32, !dbg !92
  %108 = add i64 %107, %20, !dbg !92
  %109 = getelementptr float, ptr %15, i64 %108, !dbg !92
  store <8 x float> %92, ptr %109, align 4, !dbg !92
  %110 = add i64 %98, 3, !dbg !92
  %111 = mul i64 %110, 32, !dbg !92
  %112 = add i64 %111, %20, !dbg !92
  %113 = getelementptr float, ptr %15, i64 %112, !dbg !92
  store <8 x float> %93, ptr %113, align 4, !dbg !92
  %114 = add i64 %98, 4, !dbg !92
  %115 = mul i64 %114, 32, !dbg !92
  %116 = add i64 %115, %20, !dbg !92
  %117 = getelementptr float, ptr %15, i64 %116, !dbg !92
  store <8 x float> %94, ptr %117, align 4, !dbg !92
  %118 = add i64 %98, 5, !dbg !92
  %119 = mul i64 %118, 32, !dbg !92
  %120 = add i64 %119, %20, !dbg !92
  %121 = getelementptr float, ptr %15, i64 %120, !dbg !92
  store <8 x float> %95, ptr %121, align 4, !dbg !92
  %122 = add i64 %98, 6, !dbg !92
  %123 = mul i64 %122, 32, !dbg !92
  %124 = add i64 %123, %20, !dbg !92
  %125 = getelementptr float, ptr %15, i64 %124, !dbg !92
  store <8 x float> %96, ptr %125, align 4, !dbg !92
  %126 = add i64 %98, 7, !dbg !92
  %127 = mul i64 %126, 32, !dbg !92
  %128 = add i64 %127, %20, !dbg !92
  %129 = getelementptr float, ptr %15, i64 %128, !dbg !92
  store <8 x float> %97, ptr %129, align 4, !dbg !92
  %130 = add i64 %22, 1, !dbg !92
  br label %21, !dbg !92

131:                                              ; preds = %21
  %132 = add i64 %17, 1, !dbg !92
  br label %16, !dbg !92

133:                                              ; preds = %16
  ret i32 0, !dbg !95
}

define internal i32 @_encoding_0_encode_64x64xf32_to_64x64xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !96 {
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

11:                                               ; preds = %81, %3
  %12 = phi i64 [ %82, %81 ], [ 0, %3 ], !dbg !99
  %13 = icmp slt i64 %12, 8, !dbg !99
  br i1 %13, label %14, label %83, !dbg !99

14:                                               ; preds = %17, %11
  %15 = phi i64 [ %80, %17 ], [ 0, %11 ], !dbg !99
  %16 = icmp slt i64 %15, 64, !dbg !99
  br i1 %16, label %17, label %81, !dbg !99

17:                                               ; preds = %14
  %18 = mul nsw i64 %12, 8, !dbg !99
  %19 = mul i64 %18, 64, !dbg !99
  %20 = add i64 %19, %15, !dbg !99
  %21 = getelementptr float, ptr %6, i64 %20, !dbg !99
  %22 = load <1 x float>, ptr %21, align 4, !dbg !99
  %23 = add i64 %18, 1, !dbg !99
  %24 = mul i64 %23, 64, !dbg !99
  %25 = add i64 %24, %15, !dbg !99
  %26 = getelementptr float, ptr %6, i64 %25, !dbg !99
  %27 = load <1 x float>, ptr %26, align 4, !dbg !99
  %28 = add i64 %18, 2, !dbg !99
  %29 = mul i64 %28, 64, !dbg !99
  %30 = add i64 %29, %15, !dbg !99
  %31 = getelementptr float, ptr %6, i64 %30, !dbg !99
  %32 = load <1 x float>, ptr %31, align 4, !dbg !99
  %33 = add i64 %18, 3, !dbg !99
  %34 = mul i64 %33, 64, !dbg !99
  %35 = add i64 %34, %15, !dbg !99
  %36 = getelementptr float, ptr %6, i64 %35, !dbg !99
  %37 = load <1 x float>, ptr %36, align 4, !dbg !99
  %38 = add i64 %18, 4, !dbg !99
  %39 = mul i64 %38, 64, !dbg !99
  %40 = add i64 %39, %15, !dbg !99
  %41 = getelementptr float, ptr %6, i64 %40, !dbg !99
  %42 = load <1 x float>, ptr %41, align 4, !dbg !99
  %43 = add i64 %18, 5, !dbg !99
  %44 = mul i64 %43, 64, !dbg !99
  %45 = add i64 %44, %15, !dbg !99
  %46 = getelementptr float, ptr %6, i64 %45, !dbg !99
  %47 = load <1 x float>, ptr %46, align 4, !dbg !99
  %48 = add i64 %18, 6, !dbg !99
  %49 = mul i64 %48, 64, !dbg !99
  %50 = add i64 %49, %15, !dbg !99
  %51 = getelementptr float, ptr %6, i64 %50, !dbg !99
  %52 = load <1 x float>, ptr %51, align 4, !dbg !99
  %53 = add i64 %18, 7, !dbg !99
  %54 = mul i64 %53, 64, !dbg !99
  %55 = add i64 %54, %15, !dbg !99
  %56 = getelementptr float, ptr %6, i64 %55, !dbg !99
  %57 = load <1 x float>, ptr %56, align 4, !dbg !99
  %58 = extractelement <1 x float> %22, i64 0, !dbg !99
  %59 = extractelement <1 x float> %27, i64 0, !dbg !99
  %60 = extractelement <1 x float> %32, i64 0, !dbg !99
  %61 = extractelement <1 x float> %37, i64 0, !dbg !99
  %62 = extractelement <1 x float> %42, i64 0, !dbg !99
  %63 = extractelement <1 x float> %47, i64 0, !dbg !99
  %64 = extractelement <1 x float> %52, i64 0, !dbg !99
  %65 = extractelement <1 x float> %57, i64 0, !dbg !99
  %66 = insertelement <8 x float> poison, float %58, i64 0, !dbg !99
  %67 = insertelement <8 x float> %66, float %59, i64 1, !dbg !99
  %68 = insertelement <8 x float> %67, float %60, i64 2, !dbg !99
  %69 = insertelement <8 x float> %68, float %61, i64 3, !dbg !99
  %70 = insertelement <8 x float> %69, float %62, i64 4, !dbg !99
  %71 = insertelement <8 x float> %70, float %63, i64 5, !dbg !99
  %72 = insertelement <8 x float> %71, float %64, i64 6, !dbg !99
  %73 = insertelement <8 x float> %72, float %65, i64 7, !dbg !99
  %74 = mul i64 %12, 512, !dbg !99
  %75 = mul i64 %15, 8, !dbg !99
  %76 = add i64 %74, %75, !dbg !99
  %77 = add i64 %76, 0, !dbg !99
  %78 = add i64 %77, 0, !dbg !99
  %79 = getelementptr float, ptr %10, i64 %78, !dbg !99
  store <8 x float> %73, ptr %79, align 4, !dbg !99
  %80 = add i64 %15, 1, !dbg !99
  br label %14, !dbg !99

81:                                               ; preds = %14
  %82 = add i64 %12, 1, !dbg !99
  br label %11, !dbg !99

83:                                               ; preds = %11
  ret i32 0, !dbg !100
}

define internal i32 @_encoding_1_encode_64x32xf32_to_64x32xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !101 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !102
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !102
  %6 = load ptr, ptr %5, align 8, !dbg !102
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !102
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !103
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !103
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !103
  %10 = load ptr, ptr %9, align 8, !dbg !103
  %11 = getelementptr float, ptr %10, i64 4096, !dbg !103
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !103
  br label %12, !dbg !104

12:                                               ; preds = %32, %3
  %13 = phi i64 [ %33, %32 ], [ 0, %3 ], !dbg !104
  %14 = icmp slt i64 %13, 4, !dbg !104
  br i1 %14, label %15, label %34, !dbg !104

15:                                               ; preds = %12
  %16 = mul nsw i64 %13, 8, !dbg !104
  br label %17, !dbg !104

17:                                               ; preds = %20, %15
  %18 = phi i64 [ %31, %20 ], [ 0, %15 ], !dbg !104
  %19 = icmp slt i64 %18, 64, !dbg !104
  br i1 %19, label %20, label %32, !dbg !104

20:                                               ; preds = %17
  %21 = mul i64 %18, 32, !dbg !104
  %22 = add i64 %21, %16, !dbg !104
  %23 = getelementptr float, ptr %6, i64 %22, !dbg !104
  %24 = load <8 x float>, ptr %23, align 4, !dbg !104
  %25 = mul i64 %13, 512, !dbg !104
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

define internal i32 @bias_relu_dispatch_0_elementwise_64x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !106 {
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

15:                                               ; preds = %34, %3
  %16 = phi i64 [ %35, %34 ], [ 0, %3 ], !dbg !110
  %17 = icmp slt i64 %16, 64, !dbg !110
  br i1 %17, label %18, label %36, !dbg !110

18:                                               ; preds = %21, %15
  %19 = phi i64 [ %33, %21 ], [ 0, %15 ], !dbg !110
  %20 = icmp slt i64 %19, 32, !dbg !110
  br i1 %20, label %21, label %34, !dbg !110

21:                                               ; preds = %18
  %22 = mul i64 %16, 32, !dbg !110
  %23 = add i64 %22, %19, !dbg !110
  %24 = getelementptr float, ptr %6, i64 %23, !dbg !110
  %25 = load <8 x float>, ptr %24, align 4, !dbg !110
  %26 = getelementptr float, ptr %10, i64 %19, !dbg !110
  %27 = load <8 x float>, ptr %26, align 4, !dbg !110
  %28 = fadd contract <8 x float> %25, %27, !dbg !111
  %29 = fcmp ugt <8 x float> %28, zeroinitializer, !dbg !112
  %30 = select <8 x i1> %29, <8 x float> %28, <8 x float> zeroinitializer, !dbg !112
  %31 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %30, !dbg !112
  %32 = getelementptr float, ptr %14, i64 %23, !dbg !110
  store <8 x float> %31, ptr %32, align 4, !dbg !110
  %33 = add i64 %19, 8, !dbg !110
  br label %18, !dbg !110

34:                                               ; preds = %18
  %35 = add i64 %16, 1, !dbg !110
  br label %15, !dbg !110

36:                                               ; preds = %15
  ret i32 0, !dbg !113
}

define internal i32 @row_sum_dispatch_0_reduction_64x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !114 {
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

11:                                               ; preds = %83, %3
  %12 = phi i64 [ %85, %83 ], [ 0, %3 ], !dbg !117
  %13 = icmp slt i64 %12, 64, !dbg !117
  br i1 %13, label %14, label %86, !dbg !117

14:                                               ; preds = %18, %11
  %15 = phi i64 [ %82, %18 ], [ 0, %11 ], !dbg !117
  %16 = phi <8 x float> [ %81, %18 ], [ zeroinitializer, %11 ], !dbg !117
  %17 = icmp slt i64 %15, 32, !dbg !117
  br i1 %17, label %18, label %83, !dbg !117

18:                                               ; preds = %14
  %19 = mul i64 %12, 32, !dbg !117
  %20 = add i64 %19, %15, !dbg !117
  %21 = getelementptr float, ptr %6, i64 %20, !dbg !117
  %22 = load <8 x float>, ptr %21, align 4, !dbg !117
  %23 = add i64 %12, 1, !dbg !117
  %24 = mul i64 %23, 32, !dbg !117
  %25 = add i64 %24, %15, !dbg !117
  %26 = getelementptr float, ptr %6, i64 %25, !dbg !117
  %27 = load <8 x float>, ptr %26, align 4, !dbg !117
  %28 = add i64 %12, 2, !dbg !117
  %29 = mul i64 %28, 32, !dbg !117
  %30 = add i64 %29, %15, !dbg !117
  %31 = getelementptr float, ptr %6, i64 %30, !dbg !117
  %32 = load <8 x float>, ptr %31, align 4, !dbg !117
  %33 = add i64 %12, 3, !dbg !117
  %34 = mul i64 %33, 32, !dbg !117
  %35 = add i64 %34, %15, !dbg !117
  %36 = getelementptr float, ptr %6, i64 %35, !dbg !117
  %37 = load <8 x float>, ptr %36, align 4, !dbg !117
  %38 = add i64 %12, 4, !dbg !117
  %39 = mul i64 %38, 32, !dbg !117
  %40 = add i64 %39, %15, !dbg !117
  %41 = getelementptr float, ptr %6, i64 %40, !dbg !117
  %42 = load <8 x float>, ptr %41, align 4, !dbg !117
  %43 = add i64 %12, 5, !dbg !117
  %44 = mul i64 %43, 32, !dbg !117
  %45 = add i64 %44, %15, !dbg !117
  %46 = getelementptr float, ptr %6, i64 %45, !dbg !117
  %47 = load <8 x float>, ptr %46, align 4, !dbg !117
  %48 = add i64 %12, 6, !dbg !117
  %49 = mul i64 %48, 32, !dbg !117
  %50 = add i64 %49, %15, !dbg !117
  %51 = getelementptr float, ptr %6, i64 %50, !dbg !117
  %52 = load <8 x float>, ptr %51, align 4, !dbg !117
  %53 = add i64 %12, 7, !dbg !117
  %54 = mul i64 %53, 32, !dbg !117
  %55 = add i64 %54, %15, !dbg !117
  %56 = getelementptr float, ptr %6, i64 %55, !dbg !117
  %57 = load <8 x float>, ptr %56, align 4, !dbg !117
  %58 = extractelement <8 x float> %16, i64 0, !dbg !118
  %59 = call float @llvm.vector.reduce.fadd.v8f32(float %58, <8 x float> %22), !dbg !118
  %60 = extractelement <8 x float> %16, i64 1, !dbg !118
  %61 = call float @llvm.vector.reduce.fadd.v8f32(float %60, <8 x float> %27), !dbg !118
  %62 = extractelement <8 x float> %16, i64 2, !dbg !118
  %63 = call float @llvm.vector.reduce.fadd.v8f32(float %62, <8 x float> %32), !dbg !118
  %64 = extractelement <8 x float> %16, i64 3, !dbg !118
  %65 = call float @llvm.vector.reduce.fadd.v8f32(float %64, <8 x float> %37), !dbg !118
  %66 = extractelement <8 x float> %16, i64 4, !dbg !118
  %67 = call float @llvm.vector.reduce.fadd.v8f32(float %66, <8 x float> %42), !dbg !118
  %68 = extractelement <8 x float> %16, i64 5, !dbg !118
  %69 = call float @llvm.vector.reduce.fadd.v8f32(float %68, <8 x float> %47), !dbg !118
  %70 = extractelement <8 x float> %16, i64 6, !dbg !118
  %71 = call float @llvm.vector.reduce.fadd.v8f32(float %70, <8 x float> %52), !dbg !118
  %72 = extractelement <8 x float> %16, i64 7, !dbg !118
  %73 = call float @llvm.vector.reduce.fadd.v8f32(float %72, <8 x float> %57), !dbg !118
  %74 = insertelement <8 x float> poison, float %59, i64 0, !dbg !118
  %75 = insertelement <8 x float> %74, float %61, i64 1, !dbg !118
  %76 = insertelement <8 x float> %75, float %63, i64 2, !dbg !118
  %77 = insertelement <8 x float> %76, float %65, i64 3, !dbg !118
  %78 = insertelement <8 x float> %77, float %67, i64 4, !dbg !118
  %79 = insertelement <8 x float> %78, float %69, i64 5, !dbg !118
  %80 = insertelement <8 x float> %79, float %71, i64 6, !dbg !118
  %81 = insertelement <8 x float> %80, float %73, i64 7, !dbg !118
  %82 = add i64 %15, 8, !dbg !117
  br label %14, !dbg !117

83:                                               ; preds = %14
  %84 = getelementptr float, ptr %10, i64 %12, !dbg !117
  store <8 x float> %16, ptr %84, align 4, !dbg !117
  %85 = add i64 %12, 8, !dbg !117
  br label %11, !dbg !117

86:                                               ; preds = %11
  ret i32 0, !dbg !119
}

define internal i32 @fragment_dispatch_1_reduction_64x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !120 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !121
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !121
  %6 = load ptr, ptr %5, align 8, !dbg !121
  %7 = getelementptr float, ptr %6, i64 6144, !dbg !121
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

16:                                               ; preds = %122, %3
  %17 = phi i64 [ %124, %122 ], [ 0, %3 ], !dbg !124
  %18 = icmp slt i64 %17, 64, !dbg !124
  br i1 %18, label %19, label %125, !dbg !124

19:                                               ; preds = %23, %16
  %20 = phi i64 [ %121, %23 ], [ 0, %16 ], !dbg !124
  %21 = phi <8 x float> [ %120, %23 ], [ zeroinitializer, %16 ], !dbg !124
  %22 = icmp slt i64 %20, 32, !dbg !124
  br i1 %22, label %23, label %122, !dbg !124

23:                                               ; preds = %19
  %24 = mul i64 %17, 32, !dbg !124
  %25 = add i64 %24, %20, !dbg !124
  %26 = getelementptr float, ptr %7, i64 %25, !dbg !124
  %27 = load <8 x float>, ptr %26, align 4, !dbg !124
  %28 = add i64 %17, 1, !dbg !124
  %29 = mul i64 %28, 32, !dbg !124
  %30 = add i64 %29, %20, !dbg !124
  %31 = getelementptr float, ptr %7, i64 %30, !dbg !124
  %32 = load <8 x float>, ptr %31, align 4, !dbg !124
  %33 = add i64 %17, 2, !dbg !124
  %34 = mul i64 %33, 32, !dbg !124
  %35 = add i64 %34, %20, !dbg !124
  %36 = getelementptr float, ptr %7, i64 %35, !dbg !124
  %37 = load <8 x float>, ptr %36, align 4, !dbg !124
  %38 = add i64 %17, 3, !dbg !124
  %39 = mul i64 %38, 32, !dbg !124
  %40 = add i64 %39, %20, !dbg !124
  %41 = getelementptr float, ptr %7, i64 %40, !dbg !124
  %42 = load <8 x float>, ptr %41, align 4, !dbg !124
  %43 = add i64 %17, 4, !dbg !124
  %44 = mul i64 %43, 32, !dbg !124
  %45 = add i64 %44, %20, !dbg !124
  %46 = getelementptr float, ptr %7, i64 %45, !dbg !124
  %47 = load <8 x float>, ptr %46, align 4, !dbg !124
  %48 = add i64 %17, 5, !dbg !124
  %49 = mul i64 %48, 32, !dbg !124
  %50 = add i64 %49, %20, !dbg !124
  %51 = getelementptr float, ptr %7, i64 %50, !dbg !124
  %52 = load <8 x float>, ptr %51, align 4, !dbg !124
  %53 = add i64 %17, 6, !dbg !124
  %54 = mul i64 %53, 32, !dbg !124
  %55 = add i64 %54, %20, !dbg !124
  %56 = getelementptr float, ptr %7, i64 %55, !dbg !124
  %57 = load <8 x float>, ptr %56, align 4, !dbg !124
  %58 = add i64 %17, 7, !dbg !124
  %59 = mul i64 %58, 32, !dbg !124
  %60 = add i64 %59, %20, !dbg !124
  %61 = getelementptr float, ptr %7, i64 %60, !dbg !124
  %62 = load <8 x float>, ptr %61, align 4, !dbg !124
  %63 = getelementptr float, ptr %11, i64 %20, !dbg !124
  %64 = load <8 x float>, ptr %63, align 4, !dbg !124
  %65 = fadd contract <8 x float> %27, %64, !dbg !125
  %66 = fadd contract <8 x float> %32, %64, !dbg !125
  %67 = fadd contract <8 x float> %37, %64, !dbg !125
  %68 = fadd contract <8 x float> %42, %64, !dbg !125
  %69 = fadd contract <8 x float> %47, %64, !dbg !125
  %70 = fadd contract <8 x float> %52, %64, !dbg !125
  %71 = fadd contract <8 x float> %57, %64, !dbg !125
  %72 = fadd contract <8 x float> %62, %64, !dbg !125
  %73 = fcmp ugt <8 x float> %65, zeroinitializer, !dbg !126
  %74 = fcmp ugt <8 x float> %66, zeroinitializer, !dbg !126
  %75 = fcmp ugt <8 x float> %67, zeroinitializer, !dbg !126
  %76 = fcmp ugt <8 x float> %68, zeroinitializer, !dbg !126
  %77 = fcmp ugt <8 x float> %69, zeroinitializer, !dbg !126
  %78 = fcmp ugt <8 x float> %70, zeroinitializer, !dbg !126
  %79 = fcmp ugt <8 x float> %71, zeroinitializer, !dbg !126
  %80 = fcmp ugt <8 x float> %72, zeroinitializer, !dbg !126
  %81 = select <8 x i1> %73, <8 x float> %65, <8 x float> zeroinitializer, !dbg !126
  %82 = select <8 x i1> %74, <8 x float> %66, <8 x float> zeroinitializer, !dbg !126
  %83 = select <8 x i1> %75, <8 x float> %67, <8 x float> zeroinitializer, !dbg !126
  %84 = select <8 x i1> %76, <8 x float> %68, <8 x float> zeroinitializer, !dbg !126
  %85 = select <8 x i1> %77, <8 x float> %69, <8 x float> zeroinitializer, !dbg !126
  %86 = select <8 x i1> %78, <8 x float> %70, <8 x float> zeroinitializer, !dbg !126
  %87 = select <8 x i1> %79, <8 x float> %71, <8 x float> zeroinitializer, !dbg !126
  %88 = select <8 x i1> %80, <8 x float> %72, <8 x float> zeroinitializer, !dbg !126
  %89 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %81, !dbg !126
  %90 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %82, !dbg !126
  %91 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %83, !dbg !126
  %92 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %84, !dbg !126
  %93 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %85, !dbg !126
  %94 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %86, !dbg !126
  %95 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %87, !dbg !126
  %96 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %88, !dbg !126
  %97 = extractelement <8 x float> %21, i64 0, !dbg !127
  %98 = call float @llvm.vector.reduce.fadd.v8f32(float %97, <8 x float> %89), !dbg !127
  %99 = extractelement <8 x float> %21, i64 1, !dbg !127
  %100 = call float @llvm.vector.reduce.fadd.v8f32(float %99, <8 x float> %90), !dbg !127
  %101 = extractelement <8 x float> %21, i64 2, !dbg !127
  %102 = call float @llvm.vector.reduce.fadd.v8f32(float %101, <8 x float> %91), !dbg !127
  %103 = extractelement <8 x float> %21, i64 3, !dbg !127
  %104 = call float @llvm.vector.reduce.fadd.v8f32(float %103, <8 x float> %92), !dbg !127
  %105 = extractelement <8 x float> %21, i64 4, !dbg !127
  %106 = call float @llvm.vector.reduce.fadd.v8f32(float %105, <8 x float> %93), !dbg !127
  %107 = extractelement <8 x float> %21, i64 5, !dbg !127
  %108 = call float @llvm.vector.reduce.fadd.v8f32(float %107, <8 x float> %94), !dbg !127
  %109 = extractelement <8 x float> %21, i64 6, !dbg !127
  %110 = call float @llvm.vector.reduce.fadd.v8f32(float %109, <8 x float> %95), !dbg !127
  %111 = extractelement <8 x float> %21, i64 7, !dbg !127
  %112 = call float @llvm.vector.reduce.fadd.v8f32(float %111, <8 x float> %96), !dbg !127
  %113 = insertelement <8 x float> poison, float %98, i64 0, !dbg !127
  %114 = insertelement <8 x float> %113, float %100, i64 1, !dbg !127
  %115 = insertelement <8 x float> %114, float %102, i64 2, !dbg !127
  %116 = insertelement <8 x float> %115, float %104, i64 3, !dbg !127
  %117 = insertelement <8 x float> %116, float %106, i64 4, !dbg !127
  %118 = insertelement <8 x float> %117, float %108, i64 5, !dbg !127
  %119 = insertelement <8 x float> %118, float %110, i64 6, !dbg !127
  %120 = insertelement <8 x float> %119, float %112, i64 7, !dbg !127
  %121 = add i64 %20, 8, !dbg !124
  br label %19, !dbg !124

122:                                              ; preds = %19
  %123 = getelementptr float, ptr %15, i64 %17, !dbg !124
  store <8 x float> %21, ptr %123, align 4, !dbg !124
  %124 = add i64 %17, 8, !dbg !124
  br label %16, !dbg !124

125:                                              ; preds = %16
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
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module__encoding_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module__encoding_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/aligned-tiled/executables")
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_64x32x64_f32", linkageName: "matmul_dispatch_0_matmul_64x32x64_f32", scope: !1, file: !1, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!96 = distinct !DISubprogram(name: "_encoding_0_encode_64x64xf32_to_64x64xf32", linkageName: "_encoding_0_encode_64x64xf32_to_64x64xf32", scope: !3, file: !3, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!97 = !DILocation(line: 10, column: 8, scope: !96)
!98 = !DILocation(line: 11, column: 8, scope: !96)
!99 = !DILocation(line: 14, column: 8, scope: !96)
!100 = !DILocation(line: 16, column: 8, scope: !96)
!101 = distinct !DISubprogram(name: "_encoding_1_encode_64x32xf32_to_64x32xf32", linkageName: "_encoding_1_encode_64x32xf32_to_64x32xf32", scope: !5, file: !5, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!102 = !DILocation(line: 11, column: 8, scope: !101)
!103 = !DILocation(line: 12, column: 8, scope: !101)
!104 = !DILocation(line: 15, column: 8, scope: !101)
!105 = !DILocation(line: 17, column: 8, scope: !101)
!106 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_64x32_f32", linkageName: "bias_relu_dispatch_0_elementwise_64x32_f32", scope: !7, file: !7, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!107 = !DILocation(line: 11, column: 8, scope: !106)
!108 = !DILocation(line: 12, column: 8, scope: !106)
!109 = !DILocation(line: 13, column: 8, scope: !106)
!110 = !DILocation(line: 17, column: 8, scope: !106)
!111 = !DILocation(line: 19, column: 10, scope: !106)
!112 = !DILocation(line: 20, column: 10, scope: !106)
!113 = !DILocation(line: 24, column: 8, scope: !106)
!114 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_64x32_f32", linkageName: "row_sum_dispatch_0_reduction_64x32_f32", scope: !9, file: !9, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!115 = !DILocation(line: 11, column: 8, scope: !114)
!116 = !DILocation(line: 12, column: 8, scope: !114)
!117 = !DILocation(line: 16, column: 8, scope: !114)
!118 = !DILocation(line: 18, column: 10, scope: !114)
!119 = !DILocation(line: 22, column: 8, scope: !114)
!120 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_64x32_f32", linkageName: "fragment_dispatch_1_reduction_64x32_f32", scope: !11, file: !11, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!121 = !DILocation(line: 12, column: 8, scope: !120)
!122 = !DILocation(line: 13, column: 8, scope: !120)
!123 = !DILocation(line: 14, column: 8, scope: !120)
!124 = !DILocation(line: 19, column: 8, scope: !120)
!125 = !DILocation(line: 21, column: 10, scope: !120)
!126 = !DILocation(line: 22, column: 10, scope: !120)
!127 = !DILocation(line: 23, column: 10, scope: !120)
!128 = !DILocation(line: 27, column: 8, scope: !120)
