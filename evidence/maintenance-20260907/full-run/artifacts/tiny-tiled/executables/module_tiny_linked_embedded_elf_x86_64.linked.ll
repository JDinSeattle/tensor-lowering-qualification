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
%struct.exp2f_data = type { [32 x i64], double, [3 x double], double, double, [3 x double] }
%struct.powf_log2_data = type { [16 x %struct.anon], [5 x double] }
%struct.anon = type { double, double }
%iree_hal_executable_dispatch_state_v0_t = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr }
%struct.iree_uk_mmt4d_params_t = type { ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32, ptr }

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
@7 = private constant [179 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables/configured_module_matmul_dispatch_0.mlir\00", align 1
@8 = private constant [173 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables/configured_module__encoding_0.mlir\00", align 1
@9 = private constant [173 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables/configured_module__encoding_1.mlir\00", align 1
@10 = private constant [182 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables/configured_module_bias_relu_dispatch_0.mlir\00", align 1
@11 = private constant [180 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables/configured_module_row_sum_dispatch_0.mlir\00", align 1
@12 = private constant [181 x i8] c"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables/configured_module_fragment_dispatch_1.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [6 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 178, ptr @7 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 172, ptr @8 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 172, ptr @9 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 181, ptr @10 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 179, ptr @11 }, %iree_hal_executable_source_location_v0_t { i32 3, i32 180, ptr @12 }]
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
@__exp2f_data = hidden local_unnamed_addr constant %struct.exp2f_data { [32 x i64] [i64 4607182418800017408, i64 4607140297302181236, i64 4607100335213349135, i64 4607062579818421073, i64 4607027079437701499, i64 4606993883449571754, i64 4606963042313658936, i64 4606934607594512097, i64 4606908631985796885, i64 4606885169335019979, i64 4606864274668794914, i64 4606846004218661165, i64 4606830415447468583, i64 4606817567076339586, i64 4606807519112221737, i64 4606800332876043653, i64 4606796071031487437, i64 4606794797614391156, i64 4606796578062795143, i64 4606801479247646227, i64 4606809569504174299, i64 4606820918663955941, i64 4606835598087680144, i64 4606853680698631517, i64 4606875241016906669, i64 4606900355194379847, i64 4606929101050434204, i64 4606961558108475497, i64 4606997807633245319, i64 4607037932668951391, i64 4607082018078232794, i64 4607130150581978432], double 0x42E8000000000000, [3 x double] [double 0x3FAC6AF84B912394, double 0x3FCEBFCE50FAC4F3, double 0x3FE62E42FF0C52D6], double 0x4338000000000000, double 0x40471547652B82FE, [3 x double] [double 0x3EBC6AF84B912394, double 0x3F2EBFCE50FAC4F3, double 0x3F962E42FF0C52D6] }, align 8
@__powf_log2_data = hidden local_unnamed_addr constant %struct.powf_log2_data { [16 x %struct.anon] [%struct.anon { double 0x3FF661EC79F8F3BE, double 0xBFDEFEC65B963019 }, %struct.anon { double 0x3FF571ED4AAF883D, double 0xBFDB0B6832D4FCA4 }, %struct.anon { double 0x3FF49539F0F010B0, double 0xBFD7418B0A1FB77B }, %struct.anon { double 0x3FF3C995B0B80385, double 0xBFD39DE91A6DCF7B }, %struct.anon { double 0x3FF30D190C8864A5, double 0xBFD01D9BF3F2B631 }, %struct.anon { double 0x3FF25E227B0B8EA0, double 0xBFC97C1D1B3B7AF0 }, %struct.anon { double 0x3FF1BB4A4A1A343F, double 0xBFC2F9E393AF3C9F }, %struct.anon { double 0x3FF12358F08AE5BA, double 0xBFB960CBBF788D5C }, %struct.anon { double 0x3FF0953F419900A7, double 0xBFAA6F9DB6475FCE }, %struct.anon { double 1.000000e+00, double 0.000000e+00 }, %struct.anon { double 0x3FEE608CFD9A47AC, double 0x3FB338CA9F24F53D }, %struct.anon { double 0x3FECA4B31F026AA0, double 0x3FC476A9543891BA }, %struct.anon { double 0x3FEB2036576AFCE6, double 0x3FCE840B4AC4E4D2 }, %struct.anon { double 0x3FE9C2D163A1AA2D, double 0x3FD40645F0C6651C }, %struct.anon { double 0x3FE886E6037841ED, double 0x3FD88E9C2C1B9FF8 }, %struct.anon { double 0x3FE767DCF5534862, double 0x3FDCE0A44EB17BCC }], [5 x double] [double 0x3FD27616C9496E0B, double 0xBFD71969A075C67A, double 0x3FDEC70A6CA7BADD, double 0xBFE7154748BEF6C8, double 0x3FF71547652AB82B] }, align 8
@switch.table.iree_uk_mmt4d_p = private unnamed_addr constant [10 x i32] [i32 16119285, i32 3486515, i32 16119028, i32 16053492, i32 16114916, i32 15000804, i32 3486772, i32 3490356, i32 3486516, i32 3486259], align 4

define internal i32 @matmul_dispatch_0_matmul_1x16x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !19 {
  %4 = alloca float, i64 8, align 64, !dbg !95
  %5 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !96
  %6 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 9, !dbg !96
  %7 = load i32, ptr %6, align 4, !dbg !96
  %8 = zext i32 %7 to i64, !dbg !97
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %5, 10, !dbg !98
  %10 = load ptr, ptr %9, align 8, !dbg !98
  %11 = getelementptr ptr, ptr %9, i32 1, !dbg !99
  %12 = load ptr, ptr %11, align 8, !dbg !99
  %13 = mul i64 %8, 8, !dbg !99
  %14 = udiv i64 %13, 32, !dbg !99
  %15 = getelementptr float, ptr %12, i64 %14, !dbg !99
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !99
  br label %16, !dbg !98

16:                                               ; preds = %19, %3
  %17 = phi i64 [ %53, %19 ], [ 0, %3 ], !dbg !98
  %18 = icmp slt i64 %17, 2, !dbg !98
  br i1 %18, label %19, label %54, !dbg !98

19:                                               ; preds = %16
  %20 = mul nsw i64 %17, 256, !dbg !98
  %21 = add i64 %20, 32, !dbg !98
  %22 = getelementptr inbounds ptr, ptr %0, i32 4, !dbg !98
  %23 = alloca i64, i64 8, align 8, !dbg !98
  %24 = load i64, ptr %22, align 4, !dbg !98
  %25 = or i64 %24, 52239, !dbg !98
  store i64 %25, ptr %23, align 4, !dbg !98
  %26 = getelementptr inbounds i64, ptr %22, i32 1, !dbg !98
  %27 = load i64, ptr %26, align 4, !dbg !98
  %28 = getelementptr inbounds i64, ptr %23, i32 1, !dbg !98
  store i64 %27, ptr %28, align 4, !dbg !98
  %29 = getelementptr inbounds i64, ptr %22, i32 2, !dbg !98
  %30 = load i64, ptr %29, align 4, !dbg !98
  %31 = getelementptr inbounds i64, ptr %23, i32 2, !dbg !98
  store i64 %30, ptr %31, align 4, !dbg !98
  %32 = getelementptr inbounds i64, ptr %22, i32 3, !dbg !98
  %33 = load i64, ptr %32, align 4, !dbg !98
  %34 = getelementptr inbounds i64, ptr %23, i32 3, !dbg !98
  store i64 %33, ptr %34, align 4, !dbg !98
  %35 = getelementptr inbounds i64, ptr %22, i32 4, !dbg !98
  %36 = load i64, ptr %35, align 4, !dbg !98
  %37 = getelementptr inbounds i64, ptr %23, i32 4, !dbg !98
  store i64 %36, ptr %37, align 4, !dbg !98
  %38 = getelementptr inbounds i64, ptr %22, i32 5, !dbg !98
  %39 = load i64, ptr %38, align 4, !dbg !98
  %40 = getelementptr inbounds i64, ptr %23, i32 5, !dbg !98
  store i64 %39, ptr %40, align 4, !dbg !98
  %41 = getelementptr inbounds i64, ptr %22, i32 6, !dbg !98
  %42 = load i64, ptr %41, align 4, !dbg !98
  %43 = getelementptr inbounds i64, ptr %23, i32 6, !dbg !98
  store i64 %42, ptr %43, align 4, !dbg !98
  %44 = getelementptr inbounds i64, ptr %22, i32 7, !dbg !98
  %45 = load i64, ptr %44, align 4, !dbg !98
  %46 = getelementptr inbounds i64, ptr %23, i32 7, !dbg !98
  store i64 %45, ptr %46, align 4, !dbg !98
  %47 = call i32 @iree_uk_mmt4d(ptr %10, i64 0, i64 32, ptr %10, i64 %21, i64 256, ptr %4, i64 0, i64 8, i64 1, i64 1, i64 32, i32 1, i32 8, i32 1, i32 1537, ptr %23), !dbg !98
  %48 = mul nsw i64 %17, 8, !dbg !100
  %49 = getelementptr float, ptr %4, i64 0, !dbg !100
  %50 = load <8 x float>, ptr %49, align 4, !dbg !100
  %51 = add i64 0, %48, !dbg !98
  %52 = getelementptr float, ptr %15, i64 %51, !dbg !98
  store <8 x float> %50, ptr %52, align 4, !dbg !98
  %53 = add i64 %17, 1, !dbg !98
  br label %16, !dbg !98

54:                                               ; preds = %16
  ret i32 0, !dbg !101
}

define internal i32 @_encoding_0_encode_1x32xf32_to_1x32xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !102 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !103
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !103
  %6 = load ptr, ptr %5, align 8, !dbg !103
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !103
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !104
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !104
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !104
  %10 = load ptr, ptr %9, align 8, !dbg !104
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !104
  br label %11, !dbg !105

11:                                               ; preds = %14, %3
  %12 = phi i64 [ %21, %14 ], [ 0, %3 ], !dbg !105
  %13 = icmp slt i64 %12, 32, !dbg !105
  br i1 %13, label %14, label %22, !dbg !105

14:                                               ; preds = %11
  %15 = add nuw nsw i64 0, %12, !dbg !105
  %16 = getelementptr inbounds nuw float, ptr %6, i64 %15, !dbg !105
  %17 = load float, ptr %16, align 4, !dbg !105
  %18 = add nuw nsw i64 %15, 0, !dbg !105
  %19 = add nuw nsw i64 %18, 0, !dbg !105
  %20 = getelementptr inbounds nuw float, ptr %10, i64 %19, !dbg !105
  store float %17, ptr %20, align 4, !dbg !105
  %21 = add i64 %12, 1, !dbg !105
  br label %11, !dbg !105

22:                                               ; preds = %11
  ret i32 0, !dbg !106
}

define internal i32 @_encoding_1_encode_32x16xf32_to_32x16xf32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !107 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !108
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !108
  %6 = load ptr, ptr %5, align 8, !dbg !108
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !108
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !109
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !109
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !109
  %10 = load ptr, ptr %9, align 8, !dbg !109
  %11 = getelementptr float, ptr %10, i64 32, !dbg !109
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !109
  br label %12, !dbg !110

12:                                               ; preds = %32, %3
  %13 = phi i64 [ %33, %32 ], [ 0, %3 ], !dbg !110
  %14 = icmp slt i64 %13, 2, !dbg !110
  br i1 %14, label %15, label %34, !dbg !110

15:                                               ; preds = %12
  %16 = mul nsw i64 %13, 8, !dbg !110
  br label %17, !dbg !110

17:                                               ; preds = %20, %15
  %18 = phi i64 [ %31, %20 ], [ 0, %15 ], !dbg !110
  %19 = icmp slt i64 %18, 32, !dbg !110
  br i1 %19, label %20, label %32, !dbg !110

20:                                               ; preds = %17
  %21 = mul i64 %18, 16, !dbg !110
  %22 = add i64 %21, %16, !dbg !110
  %23 = getelementptr float, ptr %6, i64 %22, !dbg !110
  %24 = load <8 x float>, ptr %23, align 4, !dbg !110
  %25 = mul i64 %13, 256, !dbg !110
  %26 = mul i64 %18, 8, !dbg !110
  %27 = add i64 %25, %26, !dbg !110
  %28 = add i64 %27, 0, !dbg !110
  %29 = add i64 %28, 0, !dbg !110
  %30 = getelementptr float, ptr %11, i64 %29, !dbg !110
  store <8 x float> %24, ptr %30, align 4, !dbg !110
  %31 = add i64 %18, 1, !dbg !110
  br label %17, !dbg !110

32:                                               ; preds = %17
  %33 = add i64 %13, 1, !dbg !110
  br label %12, !dbg !110

34:                                               ; preds = %12
  ret i32 0, !dbg !111
}

define internal i32 @bias_relu_dispatch_0_elementwise_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !112 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !113
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !113
  %6 = load ptr, ptr %5, align 8, !dbg !113
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !113
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !114
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !114
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !114
  %10 = load ptr, ptr %9, align 8, !dbg !114
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !114
  %11 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !115
  %12 = extractvalue %iree_hal_executable_dispatch_state_v0_t %11, 10, !dbg !115
  %13 = getelementptr ptr, ptr %12, i32 2, !dbg !115
  %14 = load ptr, ptr %13, align 8, !dbg !115
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !115
  br label %15, !dbg !116

15:                                               ; preds = %18, %3
  %16 = phi i64 [ %28, %18 ], [ 0, %3 ], !dbg !116
  %17 = icmp slt i64 %16, 16, !dbg !116
  br i1 %17, label %18, label %29, !dbg !116

18:                                               ; preds = %15
  %19 = getelementptr float, ptr %6, i64 %16, !dbg !116
  %20 = load <8 x float>, ptr %19, align 4, !dbg !116
  %21 = getelementptr float, ptr %10, i64 %16, !dbg !116
  %22 = load <8 x float>, ptr %21, align 4, !dbg !116
  %23 = fadd contract <8 x float> %20, %22, !dbg !117
  %24 = fcmp ugt <8 x float> %23, zeroinitializer, !dbg !118
  %25 = select <8 x i1> %24, <8 x float> %23, <8 x float> zeroinitializer, !dbg !118
  %26 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %25, !dbg !118
  %27 = getelementptr float, ptr %14, i64 %16, !dbg !116
  store <8 x float> %26, ptr %27, align 4, !dbg !116
  %28 = add i64 %16, 8, !dbg !116
  br label %15, !dbg !116

29:                                               ; preds = %15
  ret i32 0, !dbg !119
}

define internal i32 @row_sum_dispatch_0_reduction_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !120 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !121
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !121
  %6 = load ptr, ptr %5, align 8, !dbg !121
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 64) ], !dbg !121
  %7 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !122
  %8 = extractvalue %iree_hal_executable_dispatch_state_v0_t %7, 10, !dbg !122
  %9 = getelementptr ptr, ptr %8, i32 1, !dbg !122
  %10 = load ptr, ptr %9, align 8, !dbg !122
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 64) ], !dbg !122
  br label %11, !dbg !123

11:                                               ; preds = %15, %3
  %12 = phi i64 [ %21, %15 ], [ 0, %3 ], !dbg !123
  %13 = phi <1 x float> [ %20, %15 ], [ zeroinitializer, %3 ], !dbg !123
  %14 = icmp slt i64 %12, 16, !dbg !123
  br i1 %14, label %15, label %22, !dbg !123

15:                                               ; preds = %11
  %16 = getelementptr float, ptr %6, i64 %12, !dbg !123
  %17 = load <8 x float>, ptr %16, align 4, !dbg !123
  %18 = extractelement <1 x float> %13, i64 0, !dbg !123
  %19 = call float @llvm.vector.reduce.fadd.v8f32(float %18, <8 x float> %17), !dbg !124
  %20 = insertelement <1 x float> poison, float %19, i32 0, !dbg !123
  %21 = add i64 %12, 8, !dbg !123
  br label %11, !dbg !123

22:                                               ; preds = %11
  %23 = extractelement <1 x float> %13, i64 0, !dbg !124
  store float %23, ptr %10, align 4, !dbg !124
  ret i32 0, !dbg !125
}

define internal i32 @fragment_dispatch_1_reduction_16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !126 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !127
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !127
  %6 = load ptr, ptr %5, align 8, !dbg !127
  %7 = getelementptr float, ptr %6, i64 544, !dbg !127
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 64) ], !dbg !127
  %8 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !128
  %9 = extractvalue %iree_hal_executable_dispatch_state_v0_t %8, 10, !dbg !128
  %10 = getelementptr ptr, ptr %9, i32 1, !dbg !128
  %11 = load ptr, ptr %10, align 8, !dbg !128
  call void @llvm.assume(i1 true) [ "align"(ptr %11, i64 64) ], !dbg !128
  %12 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !129
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %12, 10, !dbg !129
  %14 = getelementptr ptr, ptr %13, i32 2, !dbg !129
  %15 = load ptr, ptr %14, align 8, !dbg !129
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !129
  br label %16, !dbg !130

16:                                               ; preds = %20, %3
  %17 = phi i64 [ %32, %20 ], [ 0, %3 ], !dbg !130
  %18 = phi <1 x float> [ %31, %20 ], [ zeroinitializer, %3 ], !dbg !130
  %19 = icmp slt i64 %17, 16, !dbg !130
  br i1 %19, label %20, label %33, !dbg !130

20:                                               ; preds = %16
  %21 = getelementptr float, ptr %7, i64 %17, !dbg !130
  %22 = load <8 x float>, ptr %21, align 4, !dbg !130
  %23 = getelementptr float, ptr %11, i64 %17, !dbg !130
  %24 = load <8 x float>, ptr %23, align 4, !dbg !130
  %25 = extractelement <1 x float> %18, i64 0, !dbg !130
  %26 = fadd contract <8 x float> %22, %24, !dbg !131
  %27 = fcmp ugt <8 x float> %26, zeroinitializer, !dbg !132
  %28 = select <8 x i1> %27, <8 x float> %26, <8 x float> zeroinitializer, !dbg !132
  %29 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %28, !dbg !132
  %30 = call float @llvm.vector.reduce.fadd.v8f32(float %25, <8 x float> %29), !dbg !133
  %31 = insertelement <1 x float> poison, float %30, i32 0, !dbg !130
  %32 = add i64 %17, 8, !dbg !130
  br label %16, !dbg !130

33:                                               ; preds = %16
  %34 = extractelement <1 x float> %18, i64 0, !dbg !133
  store float %34, ptr %15, align 4, !dbg !133
  ret i32 0, !dbg !134
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %23, %15, %12, %9
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %30
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %34

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %30, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = add nsw i32 %25, 15360
  %27 = lshr i32 %21, 13
  %28 = select i1 %22, i32 0, i32 %27
  %29 = add nuw nsw i32 %26, %28
  br label %30

30:                                               ; preds = %17, %12, %15, %1, %7
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %29, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %31, %6
  %33 = trunc i32 %32 to i16
  br label %34

34:                                               ; preds = %30, %9
  %35 = phi i16 [ %11, %9 ], [ %33, %30 ]
  ret i16 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = and i16 %0, 31744
  %3 = and i16 %0, 1023
  %4 = and i16 %0, -32768
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  switch i16 %2, label %15 [
    i16 31744, label %7
    i16 0, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = or disjoint i32 %6, 2143289344
  %11 = bitcast i32 %10 to float
  br label %28

12:                                               ; preds = %7
  %13 = or disjoint i32 %6, 2139095040
  %14 = bitcast i32 %13 to float
  br label %28

15:                                               ; preds = %1
  %16 = zext nneg i16 %3 to i32
  %17 = zext nneg i16 %2 to i32
  %18 = add nuw nsw i32 %17, 114688
  %19 = or disjoint i32 %18, %16
  %20 = shl nuw nsw i32 %19, 13
  %21 = or disjoint i32 %20, %6
  %22 = bitcast i32 %21 to float
  br label %28

23:                                               ; preds = %1
  %24 = or disjoint i32 %6, 864026624
  %25 = uitofp nneg i16 %3 to float
  %26 = bitcast i32 %24 to float
  %27 = fmul float %25, %26
  br label %28

28:                                               ; preds = %9, %12, %15, %23
  %29 = phi float [ %11, %9 ], [ %14, %12 ], [ %22, %15 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @__extendhfsf2(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, 31744
  %5 = and i16 %3, 1023
  %6 = shl i32 %2, 16
  %7 = and i32 %6, -2147483648
  switch i16 %4, label %16 [
    i16 31744, label %8
    i16 0, label %24
  ]

8:                                                ; preds = %1
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = or disjoint i32 %7, 2143289344
  %12 = bitcast i32 %11 to float
  br label %29

13:                                               ; preds = %8
  %14 = or disjoint i32 %7, 2139095040
  %15 = bitcast i32 %14 to float
  br label %29

16:                                               ; preds = %1
  %17 = and i32 %2, 1023
  %18 = and i32 %2, 31744
  %19 = add nuw nsw i32 %18, 114688
  %20 = or disjoint i32 %19, %17
  %21 = shl nuw nsw i32 %20, 13
  %22 = or disjoint i32 %21, %7
  %23 = bitcast i32 %22 to float
  br label %29

24:                                               ; preds = %1
  %25 = or disjoint i32 %7, 864026624
  %26 = uitofp nneg i16 %5 to float
  %27 = bitcast i32 %25 to float
  %28 = fmul nnan float %26, %27
  br label %29

29:                                               ; preds = %10, %13, %16, %24
  %30 = phi float [ %12, %10 ], [ %15, %13 ], [ %23, %16 ], [ %28, %24 ]
  ret float %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2139095040
  %4 = and i32 %2, 8388607
  %5 = lshr i32 %2, 16
  %6 = and i32 %5, 32768
  switch i32 %3, label %12 [
    i32 2139095040, label %7
    i32 0, label %30
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %7
  %10 = trunc nuw i32 %5 to i16
  %11 = or i16 %10, 32767
  br label %34

12:                                               ; preds = %1
  %13 = lshr exact i32 %3, 23
  %14 = icmp samesign ugt i32 %3, 1191182336
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = icmp samesign ult i32 %3, 947912704
  br i1 %16, label %30, label %17

17:                                               ; preds = %15
  %18 = and i32 %2, 8192
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4095, i32 4096
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp samesign ugt i32 %21, 8388607
  %23 = select i1 %22, i32 -126, i32 -127
  %24 = add nsw i32 %23, %13
  %25 = shl nsw i32 %24, 10
  %26 = lshr i32 %21, 13
  %27 = add nuw nsw i32 %26, 15360
  %28 = select i1 %22, i32 15360, i32 %27
  %29 = add nsw i32 %28, %25
  br label %30

30:                                               ; preds = %17, %15, %12, %7, %1
  %31 = phi i32 [ 31744, %7 ], [ %3, %1 ], [ %29, %17 ], [ 31744, %12 ], [ 0, %15 ]
  %32 = or i32 %31, %6
  %33 = trunc i32 %32 to i16
  br label %34

34:                                               ; preds = %9, %30
  %35 = phi i16 [ %11, %9 ], [ %33, %30 ]
  ret i16 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @__truncsfhf2(float noundef %0) local_unnamed_addr #4 {
  %2 = alloca i16, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 2139095040
  %5 = and i32 %3, 8388607
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 32768
  switch i32 %4, label %13 [
    i32 2139095040, label %8
    i32 0, label %31
  ]

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %8
  %11 = trunc nuw i32 %6 to i16
  %12 = or i16 %11, 32767
  br label %35

13:                                               ; preds = %1
  %14 = lshr exact i32 %4, 23
  %15 = icmp samesign ugt i32 %4, 1191182336
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = icmp samesign ult i32 %4, 947912704
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  %19 = and i32 %3, 8192
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 4095, i32 4096
  %22 = add nuw nsw i32 %21, %5
  %23 = icmp samesign ugt i32 %22, 8388607
  %24 = select i1 %23, i32 -126, i32 -127
  %25 = add nsw i32 %24, %14
  %26 = shl nsw i32 %25, 10
  %27 = lshr i32 %22, 13
  %28 = add nuw nsw i32 %27, 15360
  %29 = select i1 %23, i32 15360, i32 %28
  %30 = add nsw i32 %29, %26
  br label %31

31:                                               ; preds = %18, %16, %13, %8, %1
  %32 = phi i32 [ 31744, %8 ], [ %4, %1 ], [ %30, %18 ], [ 31744, %13 ], [ 0, %16 ]
  %33 = or i32 %32, %7
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %10, %31
  %36 = phi i16 [ %12, %10 ], [ %34, %31 ]
  store i16 %36, ptr %2, align 4, !tbaa !135
  %37 = load float, ptr %2, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %37
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden double @__extendhfdf2(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, 31744
  %5 = and i16 %3, 1023
  %6 = shl i32 %2, 16
  %7 = and i32 %6, -2147483648
  switch i16 %4, label %16 [
    i16 31744, label %8
    i16 0, label %24
  ]

8:                                                ; preds = %1
  %9 = icmp eq i16 %5, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = or disjoint i32 %7, 2143289344
  %12 = bitcast i32 %11 to float
  br label %29

13:                                               ; preds = %8
  %14 = or disjoint i32 %7, 2139095040
  %15 = bitcast i32 %14 to float
  br label %29

16:                                               ; preds = %1
  %17 = and i32 %2, 1023
  %18 = and i32 %2, 31744
  %19 = add nuw nsw i32 %18, 114688
  %20 = or disjoint i32 %19, %17
  %21 = shl nuw nsw i32 %20, 13
  %22 = or disjoint i32 %21, %7
  %23 = bitcast i32 %22 to float
  br label %29

24:                                               ; preds = %1
  %25 = or disjoint i32 %7, 864026624
  %26 = uitofp nneg i16 %5 to float
  %27 = bitcast i32 %25 to float
  %28 = fmul nnan float %26, %27
  br label %29

29:                                               ; preds = %10, %13, %16, %24
  %30 = phi float [ %12, %10 ], [ %15, %13 ], [ %23, %16 ], [ %28, %24 ]
  %31 = fpext float %30 to double
  ret double %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @__truncdfhf2(double noundef %0) local_unnamed_addr #4 {
  %2 = alloca i16, align 4
  %3 = fptrunc double %0 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %4 = bitcast float %3 to i32
  %5 = and i32 %4, 2139095040
  %6 = and i32 %4, 8388607
  %7 = lshr i32 %4, 16
  %8 = and i32 %7, 32768
  switch i32 %5, label %14 [
    i32 2139095040, label %9
    i32 0, label %32
  ]

9:                                                ; preds = %1
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %9
  %12 = trunc nuw i32 %7 to i16
  %13 = or i16 %12, 32767
  br label %36

14:                                               ; preds = %1
  %15 = lshr exact i32 %5, 23
  %16 = icmp samesign ugt i32 %5, 1191182336
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = icmp samesign ult i32 %5, 947912704
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = and i32 %4, 8192
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 4095, i32 4096
  %23 = add nuw nsw i32 %22, %6
  %24 = icmp samesign ugt i32 %23, 8388607
  %25 = select i1 %24, i32 -126, i32 -127
  %26 = add nsw i32 %25, %15
  %27 = shl nsw i32 %26, 10
  %28 = lshr i32 %23, 13
  %29 = add nuw nsw i32 %28, 15360
  %30 = select i1 %24, i32 15360, i32 %29
  %31 = add nsw i32 %27, %30
  br label %32

32:                                               ; preds = %19, %17, %14, %9, %1
  %33 = phi i32 [ 31744, %9 ], [ %5, %1 ], [ %31, %19 ], [ 31744, %14 ], [ 0, %17 ]
  %34 = or i32 %33, %8
  %35 = trunc i32 %34 to i16
  br label %36

36:                                               ; preds = %11, %32
  %37 = phi i16 [ %13, %11 ], [ %35, %32 ]
  store i16 %37, ptr %2, align 4, !tbaa !135
  %38 = load float, ptr %2, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden noundef double @fma(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %2)
  ret double %4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: inlinehint
define hidden noundef float @__math_invalidf(float noundef %0) local_unnamed_addr #7 {
  %2 = fsub float %0, %0
  %3 = fdiv float %2, %2
  ret float %3
}

; Function Attrs: inlinehint
define hidden float @__math_oflowf(i32 noundef %0) local_unnamed_addr #7 {
  %2 = tail call float @__math_xflowf(i32 noundef %0, float noundef 0x4600000000000000) #7
  ret float %2
}

; Function Attrs: inlinehint
define hidden float @__math_xflowf(i32 noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = alloca float, align 4
  %.not = icmp eq i32 %0, 0
  %4 = fneg float %1
  %5 = select i1 %.not, float %1, float %4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %5, ptr %3, align 4, !tbaa !137
  %.0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %6 = fmul float %1, %.0..0..0..0..0..0..i
  ret float %6
}

; Function Attrs: inlinehint
define hidden float @__math_uflowf(i32 noundef %0) local_unnamed_addr #7 {
  %2 = tail call float @__math_xflowf(i32 noundef %0, float noundef 0x3A00000000000000) #7
  ret float %2
}

; Function Attrs: inlinehint
define hidden float @ceilf(float noundef %0) local_unnamed_addr #7 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = lshr i32 %4, 23
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -127
  %8 = icmp samesign ugt i32 %6, 149
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = icmp samesign ugt i32 %6, 126
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = lshr i32 8388607, %7
  %13 = and i32 %12, %4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %16, ptr %3, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = icmp slt i32 %4, 0
  %18 = ashr i32 -8388608, %7
  %19 = select i1 %17, i32 0, i32 %12
  %20 = add nuw i32 %19, %4
  %21 = and i32 %20, %18
  %22 = bitcast i32 %21 to float
  br label %26

23:                                               ; preds = %9
  %24 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %24, ptr %2, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not = icmp sgt i32 %4, -1
  br i1 %.not, label %25, label %26

25:                                               ; preds = %23
  %.not18 = icmp eq i32 %4, 0
  %spec.select = select i1 %.not18, float %0, float 1.000000e+00
  br label %26

26:                                               ; preds = %25, %23, %15, %11, %1
  %.0 = phi float [ %0, %1 ], [ %0, %11 ], [ %22, %15 ], [ -0.000000e+00, %23 ], [ %spec.select, %25 ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden float @expf(float noundef %0) local_unnamed_addr #7 {
  %2 = fpext float %0 to double
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 20
  %5 = and i32 %4, 2047
  %.not = icmp samesign ult i32 %5, 1067
  br i1 %.not, label %19, label %6, !prof !139

6:                                                ; preds = %1
  %7 = fcmp oeq float %0, 0xFFF0000000000000
  br i1 %7, label %42, label %8

8:                                                ; preds = %6
  %.not34 = icmp samesign ult i32 %5, 2040
  br i1 %.not34, label %11, label %9

9:                                                ; preds = %8
  %10 = fadd float %0, %0
  br label %42

11:                                               ; preds = %8
  %12 = fcmp ogt float %0, 0x40562E42E0000000
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = tail call float @__math_oflowf(i32 noundef 0) #7
  br label %42

15:                                               ; preds = %11
  %16 = fcmp olt float %0, 0xC059FE3680000000
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call float @__math_uflowf(i32 noundef 0) #7
  br label %42

19:                                               ; preds = %15, %1
  %20 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 296), align 8, !tbaa !140
  %21 = fmul double %20, %2
  %22 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 288), align 8, !tbaa !143
  %23 = fadd double %21, %22
  %24 = bitcast double %23 to i64
  %25 = fsub double %23, %22
  %26 = fsub double %21, %25
  %27 = and i64 %24, 31
  %28 = getelementptr inbounds nuw i64, ptr @__exp2f_data, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !144
  %30 = shl i64 %24, 47
  %31 = add i64 %30, %29
  %32 = bitcast i64 %31 to double
  %33 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 304), align 8, !tbaa !146
  %34 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 312), align 8, !tbaa !146
  %35 = tail call double @llvm.fmuladd.f64(double %33, double %26, double %34)
  %36 = fmul double %26, %26
  %37 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 320), align 8, !tbaa !146
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %26, double 1.000000e+00)
  %39 = tail call double @llvm.fmuladd.f64(double %35, double %36, double %38)
  %40 = fmul double %39, %32
  %41 = fptrunc double %40 to float
  br label %42

42:                                               ; preds = %19, %17, %13, %9, %6
  %.0 = phi float [ %10, %9 ], [ %14, %13 ], [ %18, %17 ], [ %41, %19 ], [ 0.000000e+00, %6 ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden noundef i32 @feclearexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @feraiseexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fetestexcept(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fegetround() local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @__fesetround(i32 noundef %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fegetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fesetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden float @floorf(float noundef %0) local_unnamed_addr #7 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = lshr i32 %4, 23
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -127
  %8 = icmp samesign ugt i32 %6, 149
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = icmp samesign ugt i32 %6, 126
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = lshr i32 8388607, %7
  %13 = and i32 %12, %4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %16, ptr %3, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not1819 = icmp slt i32 %4, 0
  %17 = ashr i32 -8388608, %7
  %18 = select i1 %.not1819, i32 %12, i32 0
  %19 = add nsw i32 %18, %4
  %20 = and i32 %19, %17
  %21 = bitcast i32 %20 to float
  br label %27

22:                                               ; preds = %9
  %23 = fadd float %0, 0x4770000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %23, ptr %2, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %24 = icmp sgt i32 %4, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %.not = fcmp oeq float %0, 0.000000e+00
  br i1 %.not, label %27, label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %25, %22, %15, %11, %1
  %.0 = phi float [ %0, %1 ], [ %0, %11 ], [ %21, %15 ], [ -1.000000e+00, %26 ], [ %0, %25 ], [ 0.000000e+00, %22 ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden float @fmaf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #7 {
  %4 = alloca float, align 4
  %5 = fpext float %0 to double
  %6 = fpext float %1 to double
  %7 = fmul double %5, %6
  %8 = fpext float %2 to double
  %9 = fadd double %7, %8
  %10 = bitcast double %9 to i64
  %11 = lshr i64 %10, 52
  %12 = trunc nuw nsw i64 %11 to i32
  %13 = and i32 %12, 2047
  %14 = and i64 %10, 536870911
  %15 = icmp ne i64 %14, 268435456
  %16 = icmp eq i32 %13, 2047
  %or.cond = select i1 %15, i1 true, i1 %16
  br i1 %or.cond, label %24, label %17

17:                                               ; preds = %3
  %18 = fsub double %9, %7
  %19 = fcmp oeq double %18, %8
  %20 = fsub double %9, %8
  %21 = fcmp oeq double %20, %7
  %or.cond44 = and i1 %19, %21
  br i1 %or.cond44, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @fegetround() #7
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %34, label %24

24:                                               ; preds = %22, %17, %3
  %25 = add nsw i32 %13, -874
  %or.cond3 = icmp ult i32 %25, 23
  br i1 %or.cond3, label %26, label %46

26:                                               ; preds = %24
  %27 = tail call i32 @fetestexcept(i32 noundef 32) #7
  %.not41 = icmp eq i32 %27, 0
  br i1 %.not41, label %46, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @feclearexcept(i32 noundef 32) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store volatile float %2, ptr %4, align 4, !tbaa !137
  %.0..0..0..0.5 = load volatile float, ptr %4, align 4, !tbaa !137
  %30 = fpext float %.0..0..0..0.5 to double
  %31 = fadd double %7, %30
  %32 = tail call i32 @fetestexcept(i32 noundef 32) #7
  %.not42 = icmp eq i32 %32, 0
  %. = select i1 %.not42, i32 32, i32 16
  %33 = tail call i32 @feraiseexcept(i32 noundef %.) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %46

34:                                               ; preds = %22
  %35 = icmp slt i64 %10, 0
  %36 = fcmp uge double %7, %8
  %37 = xor i1 %36, %35
  %38 = fsub double %7, %9
  %39 = fadd double %38, %8
  %40 = fsub double %8, %9
  %41 = fadd double %7, %40
  %.038 = select i1 %37, double %39, double %41
  %42 = fcmp uge double %.038, 0.000000e+00
  %43 = xor i1 %35, %42
  %44 = or disjoint i64 %10, 1
  %45 = add nsw i64 %10, -1
  %.sroa.0.0.in = select i1 %43, i64 %44, i64 %45
  %.sroa.0.0 = bitcast i64 %.sroa.0.0.in to double
  br label %46

46:                                               ; preds = %34, %28, %26, %24
  %.0.in = phi double [ %.sroa.0.0, %34 ], [ %31, %28 ], [ %9, %26 ], [ %9, %24 ]
  %.0 = fptrunc double %.0.in to float
  ret float %.0
}

; Function Attrs: inlinehint
define hidden float @fmodf(float noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %5 = and i32 %4, 255
  %6 = bitcast float %1 to i32
  %7 = lshr i32 %6, 23
  %8 = and i32 %7, 255
  %9 = and i32 %3, -2147483648
  %10 = shl i32 %6, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = tail call float @llvm.fabs.f32(float %1)
  %14 = bitcast float %13 to i32
  %15 = icmp samesign ugt i32 %14, 2139095040
  %16 = icmp eq i32 %5, 255
  %or.cond = or i1 %15, %16
  br i1 %or.cond, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = fmul float %0, %1
  %19 = fdiv float %18, %18
  br label %83

20:                                               ; preds = %12
  %21 = shl i32 %3, 1
  %.not = icmp ugt i32 %21, %10
  br i1 %.not, label %25, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %21, %10
  %24 = fmul float %0, 0.000000e+00
  %spec.select = select i1 %23, float %24, float %0
  br label %83

25:                                               ; preds = %20
  %.not81 = icmp eq i32 %5, 0
  br i1 %.not81, label %26, label %34

26:                                               ; preds = %25
  %27 = shl i32 %3, 9
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %26
  %.06586 = phi i32 [ %30, %.lr.ph ], [ %27, %26 ]
  %.07085 = phi i32 [ %29, %.lr.ph ], [ 0, %26 ]
  %29 = add nsw i32 %.07085, -1
  %30 = shl nuw i32 %.06586, 1
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %26
  %.070.lcssa = phi i32 [ 0, %26 ], [ %29, %.lr.ph ]
  %32 = sub i32 1, %.070.lcssa
  %33 = shl i32 %3, %32
  br label %37

34:                                               ; preds = %25
  %35 = and i32 %3, 8388607
  %36 = or disjoint i32 %35, 8388608
  br label %37

37:                                               ; preds = %34, %._crit_edge
  %.171 = phi i32 [ %5, %34 ], [ %.070.lcssa, %._crit_edge ]
  %.0 = phi i32 [ %36, %34 ], [ %33, %._crit_edge ]
  %.not82 = icmp eq i32 %8, 0
  br i1 %.not82, label %38, label %46

38:                                               ; preds = %37
  %39 = shl i32 %6, 9
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %.lr.ph90, %38
  %.16688 = phi i32 [ %42, %.lr.ph90 ], [ %39, %38 ]
  %.06887 = phi i32 [ %41, %.lr.ph90 ], [ 0, %38 ]
  %41 = add nsw i32 %.06887, -1
  %42 = shl nuw i32 %.16688, 1
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %.lr.ph90, label %._crit_edge91

._crit_edge91:                                    ; preds = %.lr.ph90, %38
  %.068.lcssa = phi i32 [ 0, %38 ], [ %41, %.lr.ph90 ]
  %44 = sub i32 1, %.068.lcssa
  %45 = shl i32 %6, %44
  br label %49

46:                                               ; preds = %37
  %47 = and i32 %6, 8388607
  %48 = or disjoint i32 %47, 8388608
  br label %49

49:                                               ; preds = %46, %._crit_edge91
  %.sroa.0.0.in = phi i32 [ %48, %46 ], [ %45, %._crit_edge91 ]
  %.169 = phi i32 [ %8, %46 ], [ %.068.lcssa, %._crit_edge91 ]
  %50 = icmp sgt i32 %.171, %.169
  br i1 %50, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %57, %49
  %.194 = phi i32 [ %58, %57 ], [ %.0, %49 ]
  %.27293 = phi i32 [ %59, %57 ], [ %.171, %49 ]
  %51 = sub i32 %.194, %.sroa.0.0.in
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %.lr.ph96
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = fmul float %0, 0.000000e+00
  br label %83

57:                                               ; preds = %53, %.lr.ph96
  %.2 = phi i32 [ %.194, %.lr.ph96 ], [ %51, %53 ]
  %58 = shl i32 %.2, 1
  %59 = add nsw i32 %.27293, -1
  %60 = icmp sgt i32 %59, %.169
  br i1 %60, label %.lr.ph96, label %._crit_edge97

._crit_edge97:                                    ; preds = %57, %49
  %.272.lcssa = phi i32 [ %.171, %49 ], [ %.169, %57 ]
  %.1.lcssa = phi i32 [ %.0, %49 ], [ %58, %57 ]
  %61 = sub i32 %.1.lcssa, %.sroa.0.0.in
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %._crit_edge97
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = fmul float %0, 0.000000e+00
  br label %83

67:                                               ; preds = %63, %._crit_edge97
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge97 ], [ %61, %63 ]
  %68 = icmp ult i32 %.3, 8388608
  br i1 %68, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %.lr.ph103, %67
  %.4101 = phi i32 [ %69, %.lr.ph103 ], [ %.3, %67 ]
  %.373100 = phi i32 [ %70, %.lr.ph103 ], [ %.272.lcssa, %67 ]
  %69 = shl nuw nsw i32 %.4101, 1
  %70 = add nsw i32 %.373100, -1
  %71 = icmp samesign ult i32 %.4101, 4194304
  br i1 %71, label %.lr.ph103, label %._crit_edge104

._crit_edge104:                                   ; preds = %.lr.ph103, %67
  %.373.lcssa = phi i32 [ %.272.lcssa, %67 ], [ %70, %.lr.ph103 ]
  %.4.lcssa = phi i32 [ %.3, %67 ], [ %69, %.lr.ph103 ]
  %72 = icmp sgt i32 %.373.lcssa, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %._crit_edge104
  %74 = add i32 %.4.lcssa, -8388608
  %75 = shl i32 %.373.lcssa, 23
  %76 = or i32 %74, %75
  br label %80

77:                                               ; preds = %._crit_edge104
  %78 = sub i32 1, %.373.lcssa
  %79 = lshr i32 %.4.lcssa, %78
  br label %80

80:                                               ; preds = %77, %73
  %.5 = phi i32 [ %76, %73 ], [ %79, %77 ]
  %81 = or i32 %.5, %9
  %82 = bitcast i32 %81 to float
  br label %83

83:                                               ; preds = %80, %65, %55, %22, %17
  %.067 = phi float [ %19, %17 ], [ %56, %55 ], [ %66, %65 ], [ %82, %80 ], [ %spec.select, %22 ]
  ret float %.067
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: inlinehint
define hidden float @frexpf(float noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #7 {
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %trunc = trunc i32 %4 to i8
  switch i8 %trunc, label %13 [
    i8 0, label %5
    i8 -1, label %19
  ]

5:                                                ; preds = %2
  %6 = fcmp une float %0, 0.000000e+00
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = fmul float %0, 0x43F0000000000000
  %9 = tail call float @frexpf(float noundef %8, ptr noundef %1) #7
  %10 = load i32, ptr %1, align 4, !tbaa !15
  %11 = add nsw i32 %10, -64
  br label %12

12:                                               ; preds = %7, %5
  %storemerge = phi i32 [ %11, %7 ], [ 0, %5 ]
  %.014 = phi float [ %9, %7 ], [ %0, %5 ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !15
  br label %19

13:                                               ; preds = %2
  %14 = and i32 %4, 255
  %15 = add nsw i32 %14, -126
  store i32 %15, ptr %1, align 4, !tbaa !15
  %16 = and i32 %3, -2139095041
  %17 = or disjoint i32 %16, 1056964608
  %18 = bitcast i32 %17 to float
  br label %19

19:                                               ; preds = %13, %12, %2
  %.0 = phi float [ %18, %13 ], [ %.014, %12 ], [ %0, %2 ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden float @ldexpf(float noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = tail call float @scalbnf(float noundef %0, i32 noundef %1) #7
  ret float %3
}

; Function Attrs: inlinehint
define hidden float @scalbnf(float noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp sgt i32 %1, 127
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = fmul float %0, 0x47E0000000000000
  %6 = add nsw i32 %1, -127
  %7 = icmp samesign ugt i32 %1, 254
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = fmul float %5, 0x47E0000000000000
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 381)
  %spec.store.select = add nsw i32 %10, -254
  br label %20

11:                                               ; preds = %2
  %12 = icmp slt i32 %1, -126
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = fmul float %0, 0x3990000000000000
  %15 = add nuw nsw i32 %1, 102
  %16 = icmp samesign ult i32 %1, -228
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = fmul float %14, 0x3990000000000000
  %19 = tail call i32 @llvm.umax.i32(i32 %1, i32 -330)
  %spec.store.select1 = add nuw nsw i32 %19, 204
  br label %20

20:                                               ; preds = %17, %13, %11, %8, %4
  %.018 = phi i32 [ %spec.store.select, %8 ], [ %6, %4 ], [ %spec.store.select1, %17 ], [ %15, %13 ], [ %1, %11 ]
  %.0 = phi float [ %9, %8 ], [ %5, %4 ], [ %18, %17 ], [ %14, %13 ], [ %0, %11 ]
  %21 = shl nsw i32 %.018, 23
  %22 = add nsw i32 %21, 1065353216
  %23 = bitcast i32 %22 to float
  %24 = fmul float %.0, %23
  ret float %24
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: inlinehint
define hidden float @powf(float noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = bitcast float %1 to i32
  %6 = add i32 %4, -2139095040
  %7 = icmp ult i32 %6, -2130706432
  %.pre = shl i32 %5, 1
  %8 = add i32 %.pre, 16777216
  %9 = icmp ult i32 %8, 16777217
  %or.cond99 = or i1 %7, %9
  br i1 %or.cond99, label %.critedge, label %73, !prof !147

.critedge:                                        ; preds = %2
  %10 = add i32 %.pre, -1
  %11 = icmp ult i32 %10, -16777217
  br i1 %11, label %28, label %12, !prof !139

12:                                               ; preds = %.critedge
  %13 = icmp eq i32 %.pre, 0
  %14 = icmp eq i32 %4, 1065353216
  %or.cond70 = or i1 %14, %13
  br i1 %or.cond70, label %138, label %15

15:                                               ; preds = %12
  %16 = shl i32 %4, 1
  %17 = icmp ugt i32 %16, -16777216
  %18 = icmp samesign ugt i32 %.pre, -16777216
  %or.cond = or i1 %17, %18
  br i1 %or.cond, label %19, label %21

19:                                               ; preds = %15
  %20 = fadd float %0, %1
  br label %138

21:                                               ; preds = %15
  %22 = icmp eq i32 %16, 2130706432
  br i1 %22, label %138, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %16, 2130706432
  %25 = icmp slt i32 %5, 0
  %26 = xor i1 %24, %25
  %27 = fmul float %1, %1
  %spec.select71 = select i1 %26, float 0.000000e+00, float %27
  br label %138

28:                                               ; preds = %.critedge
  %29 = shl i32 %4, 1
  %30 = add i32 %29, -1
  %31 = icmp ult i32 %30, -16777217
  br i1 %31, label %47, label %32, !prof !139

32:                                               ; preds = %28
  %33 = fmul float %0, %0
  %.not66 = icmp sgt i32 %4, -1
  br i1 %.not66, label %checkint.exit.thread, label %34

34:                                               ; preds = %32
  %35 = lshr i32 %5, 23
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -151
  %or.cond92 = icmp ult i32 %37, -24
  br i1 %or.cond92, label %checkint.exit.thread, label %38

38:                                               ; preds = %34
  %39 = sub nuw nsw i32 150, %36
  %40 = shl nuw nsw i32 1, %39
  %41 = add nsw i32 %40, -1
  %42 = and i32 %41, %5
  %.not.i = icmp ne i32 %42, 0
  %43 = and i32 %40, %5
  %.not9.i = icmp eq i32 %43, 0
  %or.cond93 = or i1 %.not9.i, %.not.i
  %44 = fneg float %33
  %spec.select = select i1 %or.cond93, float %33, float %44
  br label %checkint.exit.thread

checkint.exit.thread:                             ; preds = %38, %34, %32
  %.057 = phi float [ %33, %32 ], [ %33, %34 ], [ %spec.select, %38 ]
  %.not67 = icmp sgt i32 %5, -1
  br i1 %.not67, label %138, label %45

45:                                               ; preds = %checkint.exit.thread
  %46 = fdiv float 1.000000e+00, %.057
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %46, ptr %3, align 4, !tbaa !137
  %.0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %138

47:                                               ; preds = %28
  %.not64 = icmp sgt i32 %4, -1
  br i1 %.not64, label %66, label %48

48:                                               ; preds = %47
  %49 = lshr i32 %5, 23
  %50 = and i32 %49, 255
  %51 = icmp samesign ult i32 %50, 127
  br i1 %51, label %.thread, label %52

52:                                               ; preds = %48
  %53 = icmp samesign ugt i32 %50, 150
  br i1 %53, label %checkint.exit76.thread85, label %54

54:                                               ; preds = %52
  %55 = sub nuw nsw i32 150, %50
  %56 = shl nuw nsw i32 1, %55
  %57 = add nsw i32 %56, -1
  %58 = and i32 %57, %5
  %.not.i72 = icmp eq i32 %58, 0
  br i1 %.not.i72, label %59, label %.thread

59:                                               ; preds = %54
  %60 = and i32 %56, %5
  %.not9.i74 = icmp eq i32 %60, 0
  br i1 %.not9.i74, label %checkint.exit76.thread85, label %62

.thread:                                          ; preds = %54, %48
  %61 = tail call float @__math_invalidf(float noundef %0) #7
  br label %138

checkint.exit76.thread85:                         ; preds = %59, %52
  br label %62

62:                                               ; preds = %checkint.exit76.thread85, %59
  %63 = phi i32 [ 0, %checkint.exit76.thread85 ], [ 65536, %59 ]
  %64 = tail call float @llvm.fabs.f32(float %0)
  %65 = bitcast float %64 to i32
  br label %66

66:                                               ; preds = %62, %47
  %.154 = phi i32 [ %65, %62 ], [ %4, %47 ]
  %.151 = phi i32 [ %63, %62 ], [ 0, %47 ]
  %67 = icmp ult i32 %.154, 8388608
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = fmul float %0, 0x4160000000000000
  %70 = tail call float @llvm.fabs.f32(float %69)
  %71 = bitcast float %70 to i32
  %72 = add nsw i32 %71, -192937984
  br label %73

73:                                               ; preds = %68, %66, %2
  %.053 = phi i32 [ %72, %68 ], [ %.154, %66 ], [ %4, %2 ]
  %.050 = phi i32 [ %.151, %68 ], [ %.151, %66 ], [ 0, %2 ]
  %74 = add i32 %.053, -1060306944
  %75 = lshr i32 %74, 19
  %76 = and i32 %75, 15
  %77 = and i32 %74, -8388608
  %78 = sub i32 %.053, %77
  %79 = ashr i32 %74, 23
  %80 = zext nneg i32 %76 to i64
  %81 = getelementptr inbounds nuw %struct.anon, ptr @__powf_log2_data, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !148
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %84 = load double, ptr %83, align 8, !tbaa !150
  %85 = bitcast i32 %78 to float
  %86 = fpext float %85 to double
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %82, double -1.000000e+00)
  %88 = sitofp i32 %79 to double
  %89 = fadd double %84, %88
  %90 = fmul double %87, %87
  %91 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 256), align 8, !tbaa !146
  %92 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 264), align 8, !tbaa !146
  %93 = tail call double @llvm.fmuladd.f64(double %91, double %87, double %92)
  %94 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 272), align 8, !tbaa !146
  %95 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 280), align 8, !tbaa !146
  %96 = tail call double @llvm.fmuladd.f64(double %94, double %87, double %95)
  %97 = fmul double %90, %90
  %98 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 288), align 8, !tbaa !146
  %99 = tail call double @llvm.fmuladd.f64(double %98, double %87, double %89)
  %100 = tail call double @llvm.fmuladd.f64(double %96, double %90, double %99)
  %101 = tail call double @llvm.fmuladd.f64(double %93, double %97, double %100)
  %102 = fpext float %1 to double
  %103 = fmul double %101, %102
  %104 = bitcast double %103 to i64
  %105 = and i64 %104, 9223231299366420480
  %106 = icmp samesign ugt i64 %105, 4638426141214900224
  br i1 %106, label %107, label %115, !prof !151

107:                                              ; preds = %73
  %108 = fcmp ogt double %103, 0x405FFFFFFFD1D571
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = tail call float @__math_oflowf(i32 noundef %.050) #7
  br label %138

111:                                              ; preds = %107
  %112 = fcmp ugt double %103, -1.500000e+02
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = tail call float @__math_uflowf(i32 noundef %.050) #7
  br label %138

115:                                              ; preds = %111, %73
  %116 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 256), align 8, !tbaa !152
  %117 = fadd double %103, %116
  %118 = bitcast double %117 to i64
  %119 = fsub double %117, %116
  %120 = fsub double %103, %119
  %121 = and i64 %118, 31
  %122 = getelementptr inbounds nuw i64, ptr @__exp2f_data, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !144
  %124 = zext nneg i32 %.050 to i64
  %125 = add i64 %118, %124
  %126 = shl i64 %125, 47
  %127 = add i64 %126, %123
  %128 = bitcast i64 %127 to double
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 264), align 8, !tbaa !146
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 272), align 8, !tbaa !146
  %131 = tail call double @llvm.fmuladd.f64(double %129, double %120, double %130)
  %132 = fmul double %120, %120
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 280), align 8, !tbaa !146
  %134 = tail call double @llvm.fmuladd.f64(double %133, double %120, double 1.000000e+00)
  %135 = tail call double @llvm.fmuladd.f64(double %131, double %132, double %134)
  %136 = fmul double %135, %128
  %137 = fptrunc double %136 to float
  br label %138

138:                                              ; preds = %115, %113, %109, %.thread, %45, %checkint.exit.thread, %23, %21, %19, %12
  %.0 = phi float [ %20, %19 ], [ 1.000000e+00, %12 ], [ 1.000000e+00, %21 ], [ %.0..0..0..0..0..0..i, %45 ], [ %.057, %checkint.exit.thread ], [ %110, %109 ], [ %114, %113 ], [ %137, %115 ], [ %spec.select71, %23 ], [ %61, %.thread ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden noundef float @rintf(float noundef %0) local_unnamed_addr #7 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2130706432
  %4 = icmp samesign ugt i32 %3, 1249902592
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %.not = icmp sgt i32 %2, -1
  %6 = fadd float %0, 0xC160000000000000
  %7 = fadd float %6, 0x4160000000000000
  %8 = fadd float %0, 0x4160000000000000
  %9 = fadd float %8, 0xC160000000000000
  %.0 = select i1 %.not, float %9, float %7
  %10 = fcmp oeq float %.0, 0.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = select i1 %.not, float 0.000000e+00, float -0.000000e+00
  br label %13

13:                                               ; preds = %11, %5, %1
  %.010 = phi float [ %12, %11 ], [ %0, %1 ], [ %.0, %5 ]
  ret float %.010
}

; Function Attrs: inlinehint
define hidden float @roundf(float noundef %0) local_unnamed_addr #7 {
  %2 = alloca float, align 4
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 23
  %5 = and i32 %4, 255
  %6 = icmp samesign ugt i32 %5, 149
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %spec.select = tail call float @llvm.fabs.f32(float %0)
  %8 = icmp samesign ult i32 %5, 126
  %9 = fadd float %spec.select, 0x4160000000000000
  br i1 %8, label %10, label %12

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store volatile float %9, ptr %2, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %11 = fmul float %0, 0.000000e+00
  br label %26

12:                                               ; preds = %7
  %13 = fadd float %9, 0xC160000000000000
  %14 = fsub float %13, %spec.select
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = fadd float %spec.select, %14
  %18 = fadd float %17, -1.000000e+00
  br label %24

19:                                               ; preds = %12
  %20 = fcmp ugt float %14, -5.000000e-01
  %21 = fadd float %spec.select, %14
  br i1 %20, label %24, label %22

22:                                               ; preds = %19
  %23 = fadd float %21, 1.000000e+00
  br label %24

24:                                               ; preds = %22, %19, %16
  %.0 = phi float [ %18, %16 ], [ %23, %22 ], [ %21, %19 ]
  %25 = fneg float %.0
  %.not26 = icmp slt i32 %3, 0
  %spec.select25 = select i1 %.not26, float %25, float %.0
  br label %26

26:                                               ; preds = %24, %10, %1
  %.020 = phi float [ %11, %10 ], [ %spec.select25, %24 ], [ %0, %1 ]
  ret float %.020
}

; Function Attrs: alwaysinline nounwind
define internal void @iree_uk_mmt4d(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16) #8 {
  %18 = alloca %struct.iree_uk_mmt4d_params_t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store ptr %0, ptr %18, align 8, !tbaa !153
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %19, align 8, !tbaa !158
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %20, align 8, !tbaa !159
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %3, ptr %21, align 8, !tbaa !160
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %22, align 8, !tbaa !161
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %23, align 8, !tbaa !162
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr %6, ptr %24, align 8, !tbaa !163
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %25, align 8, !tbaa !164
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %26, align 8, !tbaa !165
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %27, align 8, !tbaa !166
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %28, align 8, !tbaa !167
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %29, align 8, !tbaa !168
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i32 %12, ptr %30, align 8, !tbaa !169
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 100
  store i32 %13, ptr %31, align 4, !tbaa !170
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i32 %14, ptr %32, align 8, !tbaa !171
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 108
  store i32 %15, ptr %33, align 4, !tbaa !172
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store ptr %16, ptr %34, align 8, !tbaa !173
  call void @iree_uk_mmt4d_p(ptr noundef nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  ret void
}

; Function Attrs: alwaysinline nounwind
define internal void @iree_uk_mmt4d_p(ptr noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load i64, ptr %2, align 8, !tbaa !166
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %148, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %7 = load i64, ptr %6, align 8, !tbaa !167
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %148, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %11 = load i64, ptr %10, align 8, !tbaa !168
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %15 = load i32, ptr %14, align 4, !tbaa !172
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %148

18:                                               ; preds = %13, %9
  %19 = tail call ptr @iree_uk_mmt4d_select_tile_func_arch(ptr noundef nonnull %0) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %23 = load i32, ptr %22, align 4, !tbaa !172
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @iree_uk_mmt4d_select_tile_func_generic(ptr noundef nonnull %0) #26
  br label %28

28:                                               ; preds = %26, %21, %18
  %29 = phi ptr [ %19, %18 ], [ %27, %26 ], [ null, %21 ]
  %30 = load i64, ptr %2, align 8, !tbaa !166
  %31 = trunc i64 %30 to i32
  %32 = load i64, ptr %6, align 8, !tbaa !167
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %35 = load i32, ptr %34, align 8, !tbaa !169
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %37 = load i32, ptr %36, align 4, !tbaa !170
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %39 = load i32, ptr %38, align 4, !tbaa !172
  %40 = trunc i32 %39 to i8
  %41 = add i8 %40, -1
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = zext nneg i8 %41 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.iree_uk_mmt4d_p, i64 %44
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %28, %43
  %48 = phi i32 [ %46, %43 ], [ 0, %28 ]
  %49 = lshr i32 %48, 8
  %50 = and i32 %48, 7
  %51 = and i32 %49, 7
  %52 = and i32 %48, 327680
  %53 = add nsw i32 %52, -196608
  %54 = ashr exact i32 %53, 16
  %55 = zext i32 %54 to i64
  %56 = zext nneg i32 %50 to i64
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %58 = load ptr, ptr %57, align 8, !tbaa !160
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %60 = load i64, ptr %59, align 8, !tbaa !161
  %61 = zext nneg i32 %51 to i64
  %62 = shl i64 %60, %61
  %63 = sdiv i64 %62, 8
  %64 = getelementptr inbounds i8, ptr %58, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = load i64, ptr %65, align 8, !tbaa !159
  %67 = shl i64 %66, %56
  %68 = sdiv i64 %67, 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %70 = load i64, ptr %69, align 8, !tbaa !162
  %71 = shl i64 %70, %61
  %72 = sdiv i64 %71, 8
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %74 = load i64, ptr %73, align 8, !tbaa !165
  %75 = shl i64 %74, %55
  %76 = icmp sgt i32 %31, 0
  br i1 %76, label %77, label %148

77:                                               ; preds = %47
  %78 = shl i32 %37, 16
  %79 = ashr exact i32 %78, 16
  %80 = shl i32 %35, 16
  %81 = ashr exact i32 %80, 16
  %82 = mul nsw i32 %79, %81
  %83 = shl i32 %82, %54
  %84 = load ptr, ptr %0, align 8, !tbaa !153
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %86 = load i64, ptr %85, align 8, !tbaa !158
  %87 = shl i64 %86, %56
  %88 = sdiv i64 %87, 8
  %89 = getelementptr inbounds i8, ptr %84, i64 %88
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %91 = load ptr, ptr %90, align 8, !tbaa !163
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %93 = load i64, ptr %92, align 8, !tbaa !164
  %94 = shl i64 %93, %55
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = icmp sgt i32 %33, 0
  %97 = sext i32 %83 to i64
  br i1 %96, label %103, label %98

98:                                               ; preds = %77
  %99 = and i32 %31, 3
  %100 = icmp ult i32 %31, 4
  br i1 %100, label %136, label %101

101:                                              ; preds = %98
  %102 = and i32 %31, 2147483644
  br label %120

103:                                              ; preds = %77, %115
  %104 = phi i32 [ %118, %115 ], [ 0, %77 ]
  %105 = phi ptr [ %116, %115 ], [ %95, %77 ]
  %106 = phi ptr [ %117, %115 ], [ %89, %77 ]
  tail call void @llvm.prefetch.p0(ptr %105, i32 1, i32 1, i32 1)
  tail call void @llvm.prefetch.p0(ptr %106, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %64, i32 0, i32 3, i32 1)
  br label %107

107:                                              ; preds = %107, %103
  %108 = phi i32 [ 0, %103 ], [ %113, %107 ]
  %109 = phi ptr [ %64, %103 ], [ %112, %107 ]
  %110 = phi ptr [ %105, %103 ], [ %111, %107 ]
  tail call void %29(ptr noundef %110, ptr noundef %106, ptr noundef %109, ptr noundef nonnull %0) #26
  %111 = getelementptr inbounds i8, ptr %110, i64 %97
  %112 = getelementptr inbounds i8, ptr %109, i64 %72
  %113 = add nuw nsw i32 %108, 1
  %114 = icmp eq i32 %113, %33
  br i1 %114, label %115, label %107, !llvm.loop !174

115:                                              ; preds = %107
  %116 = getelementptr inbounds i8, ptr %105, i64 %75
  %117 = getelementptr inbounds i8, ptr %106, i64 %68
  %118 = add nuw nsw i32 %104, 1
  %119 = icmp eq i32 %118, %31
  br i1 %119, label %148, label %103, !llvm.loop !176

120:                                              ; preds = %120, %101
  %121 = phi ptr [ %95, %101 ], [ %130, %120 ]
  %122 = phi ptr [ %89, %101 ], [ %131, %120 ]
  %123 = phi i32 [ 0, %101 ], [ %132, %120 ]
  tail call void @llvm.prefetch.p0(ptr %121, i32 1, i32 1, i32 1)
  tail call void @llvm.prefetch.p0(ptr %122, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %64, i32 0, i32 3, i32 1)
  %124 = getelementptr inbounds i8, ptr %121, i64 %75
  %125 = getelementptr inbounds i8, ptr %122, i64 %68
  tail call void @llvm.prefetch.p0(ptr %124, i32 1, i32 1, i32 1)
  tail call void @llvm.prefetch.p0(ptr %125, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %64, i32 0, i32 3, i32 1)
  %126 = getelementptr inbounds i8, ptr %124, i64 %75
  %127 = getelementptr inbounds i8, ptr %125, i64 %68
  tail call void @llvm.prefetch.p0(ptr %126, i32 1, i32 1, i32 1)
  tail call void @llvm.prefetch.p0(ptr %127, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %64, i32 0, i32 3, i32 1)
  %128 = getelementptr inbounds i8, ptr %126, i64 %75
  %129 = getelementptr inbounds i8, ptr %127, i64 %68
  tail call void @llvm.prefetch.p0(ptr %128, i32 1, i32 1, i32 1)
  tail call void @llvm.prefetch.p0(ptr %129, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %64, i32 0, i32 3, i32 1)
  %130 = getelementptr inbounds i8, ptr %128, i64 %75
  %131 = getelementptr inbounds i8, ptr %129, i64 %68
  %132 = add i32 %123, 4
  %133 = icmp eq i32 %132, %102
  br i1 %133, label %134, label %120, !llvm.loop !176

134:                                              ; preds = %120
  %135 = icmp eq i32 %99, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %134, %98
  %137 = phi ptr [ %95, %98 ], [ %130, %134 ]
  %138 = phi ptr [ %89, %98 ], [ %131, %134 ]
  %139 = icmp ne i32 %99, 0
  tail call void @llvm.assume(i1 %139)
  br label %140

140:                                              ; preds = %140, %136
  %141 = phi ptr [ %144, %140 ], [ %137, %136 ]
  %142 = phi ptr [ %145, %140 ], [ %138, %136 ]
  %143 = phi i32 [ %146, %140 ], [ 0, %136 ]
  tail call void @llvm.prefetch.p0(ptr %141, i32 1, i32 1, i32 1)
  tail call void @llvm.prefetch.p0(ptr %142, i32 0, i32 3, i32 1)
  tail call void @llvm.prefetch.p0(ptr %64, i32 0, i32 3, i32 1)
  %144 = getelementptr inbounds i8, ptr %141, i64 %75
  %145 = getelementptr inbounds i8, ptr %142, i64 %68
  %146 = add i32 %143, 1
  %147 = icmp eq i32 %146, %99
  br i1 %147, label %148, label %140, !llvm.loop !177

148:                                              ; preds = %134, %140, %115, %1, %5, %13, %47
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal ptr @iree_uk_mmt4d_select_tile_func_arch(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %3 = load i32, ptr %2, align 4, !tbaa !172
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %1167 [
    i8 1, label %143
    i8 2, label %5
    i8 6, label %672
    i8 7, label %74
    i8 8, label %1148
    i8 5, label %508
    i8 3, label %210
    i8 4, label %277
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %7 = load i32, ptr %6, align 8, !tbaa !169
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %11 = load i32, ptr %10, align 4, !tbaa !170
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %754

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %15 = load i32, ptr %14, align 8, !tbaa !171
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %754

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = load i64, ptr %19, align 8, !tbaa !179
  %21 = and i64 %20, 51200
  %22 = icmp eq i64 %21, 51200
  %23 = select i1 %22, ptr @iree_uk_mmt4d_tile_s8s8s32_1x8x2_x86_64_avx2_fma, ptr null
  br label %754

24:                                               ; preds = %5
  %25 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %7)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %1167

27:                                               ; preds = %24
  %28 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %7, i1 true)
  switch i32 %28, label %1167 [
    i32 1, label %29
    i32 2, label %44
    i32 3, label %59
    i32 4, label %824
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %31 = load i32, ptr %30, align 4, !tbaa !170
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %770

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %35 = load i32, ptr %34, align 8, !tbaa !171
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %770

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %39 = load ptr, ptr %38, align 8, !tbaa !173
  %40 = load i64, ptr %39, align 8, !tbaa !179
  %41 = and i64 %40, 51200
  %42 = icmp eq i64 %41, 51200
  %43 = select i1 %42, ptr @iree_uk_mmt4d_tile_s8s8s32_2x8x2_x86_64_avx2_fma, ptr null
  br label %770

44:                                               ; preds = %27
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %46 = load i32, ptr %45, align 4, !tbaa !170
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %786

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %50 = load i32, ptr %49, align 8, !tbaa !171
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %786

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %54 = load ptr, ptr %53, align 8, !tbaa !173
  %55 = load i64, ptr %54, align 8, !tbaa !179
  %56 = and i64 %55, 51200
  %57 = icmp eq i64 %56, 51200
  %58 = select i1 %57, ptr @iree_uk_mmt4d_tile_s8s8s32_4x8x2_x86_64_avx2_fma, ptr null
  br label %786

59:                                               ; preds = %27
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %61 = load i32, ptr %60, align 4, !tbaa !170
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %63, label %802

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %65 = load i32, ptr %64, align 8, !tbaa !171
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %802

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %69 = load ptr, ptr %68, align 8, !tbaa !173
  %70 = load i64, ptr %69, align 8, !tbaa !179
  %71 = and i64 %70, 51200
  %72 = icmp eq i64 %71, 51200
  %73 = select i1 %72, ptr @iree_uk_mmt4d_tile_s8s8s32_8x8x2_x86_64_avx2_fma, ptr null
  br label %802

74:                                               ; preds = %1
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %76 = load i32, ptr %75, align 8, !tbaa !169
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %80 = load i32, ptr %79, align 4, !tbaa !170
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %82, label %951

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %84 = load i32, ptr %83, align 8, !tbaa !171
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %951

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %88 = load ptr, ptr %87, align 8, !tbaa !173
  %89 = load i64, ptr %88, align 8, !tbaa !179
  %90 = and i64 %89, 51200
  %91 = icmp eq i64 %90, 51200
  %92 = select i1 %91, ptr @iree_uk_mmt4d_tile_s16s16s32_1x8x2_x86_64_avx2_fma, ptr null
  br label %951

93:                                               ; preds = %74
  %94 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %76)
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %1167

96:                                               ; preds = %93
  %97 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %76, i1 true)
  switch i32 %97, label %1167 [
    i32 1, label %98
    i32 2, label %113
    i32 3, label %128
    i32 4, label %1021
  ]

98:                                               ; preds = %96
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %100 = load i32, ptr %99, align 4, !tbaa !170
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %967

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %104 = load i32, ptr %103, align 8, !tbaa !171
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %967

106:                                              ; preds = %102
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %108 = load ptr, ptr %107, align 8, !tbaa !173
  %109 = load i64, ptr %108, align 8, !tbaa !179
  %110 = and i64 %109, 51200
  %111 = icmp eq i64 %110, 51200
  %112 = select i1 %111, ptr @iree_uk_mmt4d_tile_s16s16s32_2x8x2_x86_64_avx2_fma, ptr null
  br label %967

113:                                              ; preds = %96
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %115 = load i32, ptr %114, align 4, !tbaa !170
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %983

117:                                              ; preds = %113
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %119 = load i32, ptr %118, align 8, !tbaa !171
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %983

121:                                              ; preds = %117
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %123 = load ptr, ptr %122, align 8, !tbaa !173
  %124 = load i64, ptr %123, align 8, !tbaa !179
  %125 = and i64 %124, 51200
  %126 = icmp eq i64 %125, 51200
  %127 = select i1 %126, ptr @iree_uk_mmt4d_tile_s16s16s32_4x8x2_x86_64_avx2_fma, ptr null
  br label %983

128:                                              ; preds = %96
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %130 = load i32, ptr %129, align 4, !tbaa !170
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %132, label %999

132:                                              ; preds = %128
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %134 = load i32, ptr %133, align 8, !tbaa !171
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %999

136:                                              ; preds = %132
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %138 = load ptr, ptr %137, align 8, !tbaa !173
  %139 = load i64, ptr %138, align 8, !tbaa !179
  %140 = and i64 %139, 51200
  %141 = icmp eq i64 %140, 51200
  %142 = select i1 %141, ptr @iree_uk_mmt4d_tile_s16s16s32_8x8x2_x86_64_avx2_fma, ptr null
  br label %999

143:                                              ; preds = %1
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %145 = load i32, ptr %144, align 8, !tbaa !169
  %146 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %145)
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %408

148:                                              ; preds = %143
  %149 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %145, i1 true)
  switch i32 %149, label %408 [
    i32 0, label %150
    i32 1, label %165
    i32 2, label %180
    i32 3, label %195
  ]

150:                                              ; preds = %148
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %152 = load i32, ptr %151, align 4, !tbaa !170
  %153 = icmp eq i32 %152, 8
  br i1 %153, label %154, label %344

154:                                              ; preds = %150
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %156 = load i32, ptr %155, align 8, !tbaa !171
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %344

158:                                              ; preds = %154
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %160 = load ptr, ptr %159, align 8, !tbaa !173
  %161 = load i64, ptr %160, align 8, !tbaa !179
  %162 = and i64 %161, 51200
  %163 = icmp eq i64 %162, 51200
  %164 = select i1 %163, ptr @iree_uk_mmt4d_tile_f32f32f32_1x8x1_x86_64_avx2_fma, ptr null
  br label %344

165:                                              ; preds = %148
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %167 = load i32, ptr %166, align 4, !tbaa !170
  %168 = icmp eq i32 %167, 8
  br i1 %168, label %169, label %360

169:                                              ; preds = %165
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %171 = load i32, ptr %170, align 8, !tbaa !171
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %360

173:                                              ; preds = %169
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %175 = load ptr, ptr %174, align 8, !tbaa !173
  %176 = load i64, ptr %175, align 8, !tbaa !179
  %177 = and i64 %176, 51200
  %178 = icmp eq i64 %177, 51200
  %179 = select i1 %178, ptr @iree_uk_mmt4d_tile_f32f32f32_2x8x1_x86_64_avx2_fma, ptr null
  br label %360

180:                                              ; preds = %148
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %182 = load i32, ptr %181, align 4, !tbaa !170
  %183 = icmp eq i32 %182, 8
  br i1 %183, label %184, label %376

184:                                              ; preds = %180
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %186 = load i32, ptr %185, align 8, !tbaa !171
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %376

188:                                              ; preds = %184
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %190 = load ptr, ptr %189, align 8, !tbaa !173
  %191 = load i64, ptr %190, align 8, !tbaa !179
  %192 = and i64 %191, 51200
  %193 = icmp eq i64 %192, 51200
  %194 = select i1 %193, ptr @iree_uk_mmt4d_tile_f32f32f32_4x8x1_x86_64_avx2_fma, ptr null
  br label %376

195:                                              ; preds = %148
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %197 = load i32, ptr %196, align 4, !tbaa !170
  %198 = icmp eq i32 %197, 8
  br i1 %198, label %199, label %392

199:                                              ; preds = %195
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %201 = load i32, ptr %200, align 8, !tbaa !171
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %392

203:                                              ; preds = %199
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %205 = load ptr, ptr %204, align 8, !tbaa !173
  %206 = load i64, ptr %205, align 8, !tbaa !179
  %207 = and i64 %206, 51200
  %208 = icmp eq i64 %207, 51200
  %209 = select i1 %208, ptr @iree_uk_mmt4d_tile_f32f32f32_8x8x1_x86_64_avx2_fma, ptr null
  br label %392

210:                                              ; preds = %1
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %212 = load i32, ptr %211, align 8, !tbaa !169
  %213 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %212)
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %490

215:                                              ; preds = %210
  %216 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %212, i1 true)
  switch i32 %216, label %490 [
    i32 0, label %217
    i32 1, label %232
    i32 2, label %247
    i32 3, label %262
  ]

217:                                              ; preds = %215
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %219 = load i32, ptr %218, align 4, !tbaa !170
  %220 = icmp eq i32 %219, 8
  br i1 %220, label %221, label %426

221:                                              ; preds = %217
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %223 = load i32, ptr %222, align 8, !tbaa !171
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %426

225:                                              ; preds = %221
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %227 = load ptr, ptr %226, align 8, !tbaa !173
  %228 = load i64, ptr %227, align 8, !tbaa !179
  %229 = and i64 %228, 51200
  %230 = icmp eq i64 %229, 51200
  %231 = select i1 %230, ptr @iree_uk_mmt4d_tile_f16f16f32_1x8x1_x86_64_avx2_fma, ptr null
  br label %426

232:                                              ; preds = %215
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %234 = load i32, ptr %233, align 4, !tbaa !170
  %235 = icmp eq i32 %234, 8
  br i1 %235, label %236, label %442

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %238 = load i32, ptr %237, align 8, !tbaa !171
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %442

240:                                              ; preds = %236
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %242 = load ptr, ptr %241, align 8, !tbaa !173
  %243 = load i64, ptr %242, align 8, !tbaa !179
  %244 = and i64 %243, 51200
  %245 = icmp eq i64 %244, 51200
  %246 = select i1 %245, ptr @iree_uk_mmt4d_tile_f16f16f32_2x8x1_x86_64_avx2_fma, ptr null
  br label %442

247:                                              ; preds = %215
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %249 = load i32, ptr %248, align 4, !tbaa !170
  %250 = icmp eq i32 %249, 8
  br i1 %250, label %251, label %458

251:                                              ; preds = %247
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %253 = load i32, ptr %252, align 8, !tbaa !171
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %458

255:                                              ; preds = %251
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %257 = load ptr, ptr %256, align 8, !tbaa !173
  %258 = load i64, ptr %257, align 8, !tbaa !179
  %259 = and i64 %258, 51200
  %260 = icmp eq i64 %259, 51200
  %261 = select i1 %260, ptr @iree_uk_mmt4d_tile_f16f16f32_4x8x1_x86_64_avx2_fma, ptr null
  br label %458

262:                                              ; preds = %215
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %264 = load i32, ptr %263, align 4, !tbaa !170
  %265 = icmp eq i32 %264, 8
  br i1 %265, label %266, label %474

266:                                              ; preds = %262
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %268 = load i32, ptr %267, align 8, !tbaa !171
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %474

270:                                              ; preds = %266
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %272 = load ptr, ptr %271, align 8, !tbaa !173
  %273 = load i64, ptr %272, align 8, !tbaa !179
  %274 = and i64 %273, 51200
  %275 = icmp eq i64 %274, 51200
  %276 = select i1 %275, ptr @iree_uk_mmt4d_tile_f16f16f32_8x8x1_x86_64_avx2_fma, ptr null
  br label %474

277:                                              ; preds = %1
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %279 = load i32, ptr %278, align 8, !tbaa !169
  %280 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %279)
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %654

282:                                              ; preds = %277
  %283 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %279, i1 true)
  switch i32 %283, label %654 [
    i32 0, label %284
    i32 1, label %299
    i32 2, label %314
    i32 3, label %329
  ]

284:                                              ; preds = %282
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %286 = load i32, ptr %285, align 4, !tbaa !170
  %287 = icmp eq i32 %286, 8
  br i1 %287, label %288, label %590

288:                                              ; preds = %284
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %290 = load i32, ptr %289, align 8, !tbaa !171
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %590

292:                                              ; preds = %288
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %294 = load ptr, ptr %293, align 8, !tbaa !173
  %295 = load i64, ptr %294, align 8, !tbaa !179
  %296 = and i64 %295, 51200
  %297 = icmp eq i64 %296, 51200
  %298 = select i1 %297, ptr @iree_uk_mmt4d_tile_f16f16f16_1x8x1_x86_64_avx2_fma, ptr null
  br label %590

299:                                              ; preds = %282
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %301 = load i32, ptr %300, align 4, !tbaa !170
  %302 = icmp eq i32 %301, 8
  br i1 %302, label %303, label %606

303:                                              ; preds = %299
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %305 = load i32, ptr %304, align 8, !tbaa !171
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %307, label %606

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %309 = load ptr, ptr %308, align 8, !tbaa !173
  %310 = load i64, ptr %309, align 8, !tbaa !179
  %311 = and i64 %310, 51200
  %312 = icmp eq i64 %311, 51200
  %313 = select i1 %312, ptr @iree_uk_mmt4d_tile_f16f16f16_2x8x1_x86_64_avx2_fma, ptr null
  br label %606

314:                                              ; preds = %282
  %315 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %316 = load i32, ptr %315, align 4, !tbaa !170
  %317 = icmp eq i32 %316, 8
  br i1 %317, label %318, label %622

318:                                              ; preds = %314
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %320 = load i32, ptr %319, align 8, !tbaa !171
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %622

322:                                              ; preds = %318
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %324 = load ptr, ptr %323, align 8, !tbaa !173
  %325 = load i64, ptr %324, align 8, !tbaa !179
  %326 = and i64 %325, 51200
  %327 = icmp eq i64 %326, 51200
  %328 = select i1 %327, ptr @iree_uk_mmt4d_tile_f16f16f16_4x8x1_x86_64_avx2_fma, ptr null
  br label %622

329:                                              ; preds = %282
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %331 = load i32, ptr %330, align 4, !tbaa !170
  %332 = icmp eq i32 %331, 8
  br i1 %332, label %333, label %638

333:                                              ; preds = %329
  %334 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %335 = load i32, ptr %334, align 8, !tbaa !171
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %638

337:                                              ; preds = %333
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %339 = load ptr, ptr %338, align 8, !tbaa !173
  %340 = load i64, ptr %339, align 8, !tbaa !179
  %341 = and i64 %340, 51200
  %342 = icmp eq i64 %341, 51200
  %343 = select i1 %342, ptr @iree_uk_mmt4d_tile_f16f16f16_8x8x1_x86_64_avx2_fma, ptr null
  br label %638

344:                                              ; preds = %150, %154, %158
  %345 = phi ptr [ %164, %158 ], [ null, %154 ], [ null, %150 ]
  %346 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %347 = load i32, ptr %346, align 4, !tbaa !170
  %348 = icmp eq i32 %347, 16
  br i1 %348, label %349, label %408

349:                                              ; preds = %344
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %351 = load i32, ptr %350, align 8, !tbaa !171
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %408

353:                                              ; preds = %349
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %355 = load ptr, ptr %354, align 8, !tbaa !173
  %356 = load i64, ptr %355, align 8, !tbaa !179
  %357 = and i64 %356, 32557056
  %358 = icmp eq i64 %357, 32557056
  %359 = select i1 %358, ptr @iree_uk_mmt4d_tile_f32f32f32_1x16x1_x86_64_avx512_base, ptr %345
  br label %1167

360:                                              ; preds = %165, %169, %173
  %361 = phi ptr [ %179, %173 ], [ null, %169 ], [ null, %165 ]
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %363 = load i32, ptr %362, align 4, !tbaa !170
  %364 = icmp eq i32 %363, 16
  br i1 %364, label %365, label %408

365:                                              ; preds = %360
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %367 = load i32, ptr %366, align 8, !tbaa !171
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %369, label %408

369:                                              ; preds = %365
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %371 = load ptr, ptr %370, align 8, !tbaa !173
  %372 = load i64, ptr %371, align 8, !tbaa !179
  %373 = and i64 %372, 32557056
  %374 = icmp eq i64 %373, 32557056
  %375 = select i1 %374, ptr @iree_uk_mmt4d_tile_f32f32f32_2x16x1_x86_64_avx512_base, ptr %361
  br label %408

376:                                              ; preds = %188, %184, %180
  %377 = phi ptr [ %194, %188 ], [ null, %184 ], [ null, %180 ]
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %379 = load i32, ptr %378, align 4, !tbaa !170
  %380 = icmp eq i32 %379, 16
  br i1 %380, label %381, label %408

381:                                              ; preds = %376
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %383 = load i32, ptr %382, align 8, !tbaa !171
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %408

385:                                              ; preds = %381
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %387 = load ptr, ptr %386, align 8, !tbaa !173
  %388 = load i64, ptr %387, align 8, !tbaa !179
  %389 = and i64 %388, 32557056
  %390 = icmp eq i64 %389, 32557056
  %391 = select i1 %390, ptr @iree_uk_mmt4d_tile_f32f32f32_4x16x1_x86_64_avx512_base, ptr %377
  br label %408

392:                                              ; preds = %195, %199, %203
  %393 = phi ptr [ null, %199 ], [ %209, %203 ], [ null, %195 ]
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %395 = load i32, ptr %394, align 4, !tbaa !170
  %396 = icmp eq i32 %395, 16
  br i1 %396, label %397, label %408

397:                                              ; preds = %392
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %399 = load i32, ptr %398, align 8, !tbaa !171
  %400 = icmp eq i32 %399, 1
  br i1 %400, label %401, label %408

401:                                              ; preds = %397
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %403 = load ptr, ptr %402, align 8, !tbaa !173
  %404 = load i64, ptr %403, align 8, !tbaa !179
  %405 = and i64 %404, 32557056
  %406 = icmp eq i64 %405, 32557056
  %407 = select i1 %406, ptr @iree_uk_mmt4d_tile_f32f32f32_8x16x1_x86_64_avx512_base, ptr %393
  br label %408

408:                                              ; preds = %376, %381, %369, %344, %349, %360, %365, %385, %143, %148, %392, %397, %401
  %409 = phi ptr [ null, %143 ], [ %407, %401 ], [ %393, %397 ], [ %393, %392 ], [ %391, %385 ], [ null, %148 ], [ %375, %369 ], [ %377, %376 ], [ %377, %381 ], [ %361, %365 ], [ %361, %360 ], [ %345, %349 ], [ %345, %344 ]
  %410 = icmp eq i32 %145, 16
  br i1 %410, label %411, label %1167

411:                                              ; preds = %408
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %413 = load i32, ptr %412, align 4, !tbaa !170
  %414 = icmp eq i32 %413, 16
  br i1 %414, label %415, label %1167

415:                                              ; preds = %411
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %417 = load i32, ptr %416, align 8, !tbaa !171
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %419, label %1167

419:                                              ; preds = %415
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %421 = load ptr, ptr %420, align 8, !tbaa !173
  %422 = load i64, ptr %421, align 8, !tbaa !179
  %423 = and i64 %422, 32557056
  %424 = icmp eq i64 %423, 32557056
  %425 = select i1 %424, ptr @iree_uk_mmt4d_tile_f32f32f32_16x16x1_x86_64_avx512_base, ptr %409
  br label %1167

426:                                              ; preds = %217, %221, %225
  %427 = phi ptr [ %231, %225 ], [ null, %221 ], [ null, %217 ]
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %429 = load i32, ptr %428, align 4, !tbaa !170
  %430 = icmp eq i32 %429, 16
  br i1 %430, label %431, label %490

431:                                              ; preds = %426
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %433 = load i32, ptr %432, align 8, !tbaa !171
  %434 = icmp eq i32 %433, 1
  br i1 %434, label %435, label %490

435:                                              ; preds = %431
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %437 = load ptr, ptr %436, align 8, !tbaa !173
  %438 = load i64, ptr %437, align 8, !tbaa !179
  %439 = and i64 %438, 32557056
  %440 = icmp eq i64 %439, 32557056
  %441 = select i1 %440, ptr @iree_uk_mmt4d_tile_f16f16f32_1x16x1_x86_64_avx512_base, ptr %427
  br label %1167

442:                                              ; preds = %232, %236, %240
  %443 = phi ptr [ %246, %240 ], [ null, %236 ], [ null, %232 ]
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %445 = load i32, ptr %444, align 4, !tbaa !170
  %446 = icmp eq i32 %445, 16
  br i1 %446, label %447, label %490

447:                                              ; preds = %442
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %449 = load i32, ptr %448, align 8, !tbaa !171
  %450 = icmp eq i32 %449, 1
  br i1 %450, label %451, label %490

451:                                              ; preds = %447
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %453 = load ptr, ptr %452, align 8, !tbaa !173
  %454 = load i64, ptr %453, align 8, !tbaa !179
  %455 = and i64 %454, 32557056
  %456 = icmp eq i64 %455, 32557056
  %457 = select i1 %456, ptr @iree_uk_mmt4d_tile_f16f16f32_2x16x1_x86_64_avx512_base, ptr %443
  br label %490

458:                                              ; preds = %255, %251, %247
  %459 = phi ptr [ %261, %255 ], [ null, %251 ], [ null, %247 ]
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %461 = load i32, ptr %460, align 4, !tbaa !170
  %462 = icmp eq i32 %461, 16
  br i1 %462, label %463, label %490

463:                                              ; preds = %458
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %465 = load i32, ptr %464, align 8, !tbaa !171
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %490

467:                                              ; preds = %463
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %469 = load ptr, ptr %468, align 8, !tbaa !173
  %470 = load i64, ptr %469, align 8, !tbaa !179
  %471 = and i64 %470, 32557056
  %472 = icmp eq i64 %471, 32557056
  %473 = select i1 %472, ptr @iree_uk_mmt4d_tile_f16f16f32_4x16x1_x86_64_avx512_base, ptr %459
  br label %490

474:                                              ; preds = %270, %266, %262
  %475 = phi ptr [ null, %262 ], [ %276, %270 ], [ null, %266 ]
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %477 = load i32, ptr %476, align 4, !tbaa !170
  %478 = icmp eq i32 %477, 16
  br i1 %478, label %479, label %490

479:                                              ; preds = %474
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %481 = load i32, ptr %480, align 8, !tbaa !171
  %482 = icmp eq i32 %481, 1
  br i1 %482, label %483, label %490

483:                                              ; preds = %479
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %485 = load ptr, ptr %484, align 8, !tbaa !173
  %486 = load i64, ptr %485, align 8, !tbaa !179
  %487 = and i64 %486, 32557056
  %488 = icmp eq i64 %487, 32557056
  %489 = select i1 %488, ptr @iree_uk_mmt4d_tile_f16f16f32_8x16x1_x86_64_avx512_base, ptr %475
  br label %490

490:                                              ; preds = %458, %463, %451, %426, %431, %447, %442, %467, %210, %215, %483, %479, %474
  %491 = phi ptr [ %475, %474 ], [ %475, %479 ], [ %489, %483 ], [ null, %210 ], [ %473, %467 ], [ null, %215 ], [ %459, %458 ], [ %459, %463 ], [ %457, %451 ], [ %443, %442 ], [ %443, %447 ], [ %427, %431 ], [ %427, %426 ]
  %492 = icmp eq i32 %212, 16
  br i1 %492, label %493, label %1167

493:                                              ; preds = %490
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %495 = load i32, ptr %494, align 4, !tbaa !170
  %496 = icmp eq i32 %495, 16
  br i1 %496, label %497, label %1167

497:                                              ; preds = %493
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %499 = load i32, ptr %498, align 8, !tbaa !171
  %500 = icmp eq i32 %499, 1
  br i1 %500, label %501, label %1167

501:                                              ; preds = %497
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %503 = load ptr, ptr %502, align 8, !tbaa !173
  %504 = load i64, ptr %503, align 8, !tbaa !179
  %505 = and i64 %504, 32557056
  %506 = icmp eq i64 %505, 32557056
  %507 = select i1 %506, ptr @iree_uk_mmt4d_tile_f16f16f32_16x16x1_x86_64_avx512_base, ptr %491
  br label %1167

508:                                              ; preds = %1
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %510 = load i32, ptr %509, align 8, !tbaa !169
  %511 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %510)
  %512 = icmp eq i32 %511, 1
  br i1 %512, label %513, label %1167

513:                                              ; preds = %508
  %514 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %510, i1 true)
  switch i32 %514, label %1167 [
    i32 0, label %515
    i32 1, label %530
    i32 2, label %545
    i32 3, label %560
    i32 4, label %575
  ]

515:                                              ; preds = %513
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %517 = load i32, ptr %516, align 4, !tbaa !170
  %518 = icmp eq i32 %517, 16
  br i1 %518, label %519, label %1167

519:                                              ; preds = %515
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %521 = load i32, ptr %520, align 8, !tbaa !171
  %522 = icmp eq i32 %521, 2
  br i1 %522, label %523, label %1167

523:                                              ; preds = %519
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %525 = load ptr, ptr %524, align 8, !tbaa !173
  %526 = load i64, ptr %525, align 8, !tbaa !179
  %527 = and i64 %526, 2180040704
  %528 = icmp eq i64 %527, 2180040704
  %529 = select i1 %528, ptr @iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

530:                                              ; preds = %513
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %532 = load i32, ptr %531, align 4, !tbaa !170
  %533 = icmp eq i32 %532, 16
  br i1 %533, label %534, label %1167

534:                                              ; preds = %530
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %536 = load i32, ptr %535, align 8, !tbaa !171
  %537 = icmp eq i32 %536, 2
  br i1 %537, label %538, label %1167

538:                                              ; preds = %534
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %540 = load ptr, ptr %539, align 8, !tbaa !173
  %541 = load i64, ptr %540, align 8, !tbaa !179
  %542 = and i64 %541, 2180040704
  %543 = icmp eq i64 %542, 2180040704
  %544 = select i1 %543, ptr @iree_uk_mmt4d_tile_bf16bf16f32_2x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

545:                                              ; preds = %513
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %547 = load i32, ptr %546, align 4, !tbaa !170
  %548 = icmp eq i32 %547, 16
  br i1 %548, label %549, label %1167

549:                                              ; preds = %545
  %550 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %551 = load i32, ptr %550, align 8, !tbaa !171
  %552 = icmp eq i32 %551, 2
  br i1 %552, label %553, label %1167

553:                                              ; preds = %549
  %554 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %555 = load ptr, ptr %554, align 8, !tbaa !173
  %556 = load i64, ptr %555, align 8, !tbaa !179
  %557 = and i64 %556, 2180040704
  %558 = icmp eq i64 %557, 2180040704
  %559 = select i1 %558, ptr @iree_uk_mmt4d_tile_bf16bf16f32_4x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

560:                                              ; preds = %513
  %561 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %562 = load i32, ptr %561, align 4, !tbaa !170
  %563 = icmp eq i32 %562, 16
  br i1 %563, label %564, label %1167

564:                                              ; preds = %560
  %565 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %566 = load i32, ptr %565, align 8, !tbaa !171
  %567 = icmp eq i32 %566, 2
  br i1 %567, label %568, label %1167

568:                                              ; preds = %564
  %569 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %570 = load ptr, ptr %569, align 8, !tbaa !173
  %571 = load i64, ptr %570, align 8, !tbaa !179
  %572 = and i64 %571, 2180040704
  %573 = icmp eq i64 %572, 2180040704
  %574 = select i1 %573, ptr @iree_uk_mmt4d_tile_bf16bf16f32_8x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

575:                                              ; preds = %513
  %576 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %577 = load i32, ptr %576, align 4, !tbaa !170
  %578 = icmp eq i32 %577, 16
  br i1 %578, label %579, label %1167

579:                                              ; preds = %575
  %580 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %581 = load i32, ptr %580, align 8, !tbaa !171
  %582 = icmp eq i32 %581, 2
  br i1 %582, label %583, label %1167

583:                                              ; preds = %579
  %584 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %585 = load ptr, ptr %584, align 8, !tbaa !173
  %586 = load i64, ptr %585, align 8, !tbaa !179
  %587 = and i64 %586, 2180040704
  %588 = icmp eq i64 %587, 2180040704
  %589 = select i1 %588, ptr @iree_uk_mmt4d_tile_bf16bf16f32_16x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

590:                                              ; preds = %284, %288, %292
  %591 = phi ptr [ %298, %292 ], [ null, %288 ], [ null, %284 ]
  %592 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %593 = load i32, ptr %592, align 4, !tbaa !170
  %594 = icmp eq i32 %593, 16
  br i1 %594, label %595, label %654

595:                                              ; preds = %590
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %597 = load i32, ptr %596, align 8, !tbaa !171
  %598 = icmp eq i32 %597, 1
  br i1 %598, label %599, label %654

599:                                              ; preds = %595
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %601 = load ptr, ptr %600, align 8, !tbaa !173
  %602 = load i64, ptr %601, align 8, !tbaa !179
  %603 = and i64 %602, 32557056
  %604 = icmp eq i64 %603, 32557056
  %605 = select i1 %604, ptr @iree_uk_mmt4d_tile_f16f16f16_1x16x1_x86_64_avx512_base, ptr %591
  br label %1167

606:                                              ; preds = %299, %303, %307
  %607 = phi ptr [ %313, %307 ], [ null, %303 ], [ null, %299 ]
  %608 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %609 = load i32, ptr %608, align 4, !tbaa !170
  %610 = icmp eq i32 %609, 16
  br i1 %610, label %611, label %654

611:                                              ; preds = %606
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %613 = load i32, ptr %612, align 8, !tbaa !171
  %614 = icmp eq i32 %613, 1
  br i1 %614, label %615, label %654

615:                                              ; preds = %611
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %617 = load ptr, ptr %616, align 8, !tbaa !173
  %618 = load i64, ptr %617, align 8, !tbaa !179
  %619 = and i64 %618, 32557056
  %620 = icmp eq i64 %619, 32557056
  %621 = select i1 %620, ptr @iree_uk_mmt4d_tile_f16f16f16_2x16x1_x86_64_avx512_base, ptr %607
  br label %654

622:                                              ; preds = %322, %318, %314
  %623 = phi ptr [ %328, %322 ], [ null, %318 ], [ null, %314 ]
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %625 = load i32, ptr %624, align 4, !tbaa !170
  %626 = icmp eq i32 %625, 16
  br i1 %626, label %627, label %654

627:                                              ; preds = %622
  %628 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %629 = load i32, ptr %628, align 8, !tbaa !171
  %630 = icmp eq i32 %629, 1
  br i1 %630, label %631, label %654

631:                                              ; preds = %627
  %632 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %633 = load ptr, ptr %632, align 8, !tbaa !173
  %634 = load i64, ptr %633, align 8, !tbaa !179
  %635 = and i64 %634, 32557056
  %636 = icmp eq i64 %635, 32557056
  %637 = select i1 %636, ptr @iree_uk_mmt4d_tile_f16f16f16_4x16x1_x86_64_avx512_base, ptr %623
  br label %654

638:                                              ; preds = %337, %333, %329
  %639 = phi ptr [ null, %333 ], [ null, %329 ], [ %343, %337 ]
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %641 = load i32, ptr %640, align 4, !tbaa !170
  %642 = icmp eq i32 %641, 16
  br i1 %642, label %643, label %654

643:                                              ; preds = %638
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %645 = load i32, ptr %644, align 8, !tbaa !171
  %646 = icmp eq i32 %645, 1
  br i1 %646, label %647, label %654

647:                                              ; preds = %643
  %648 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %649 = load ptr, ptr %648, align 8, !tbaa !173
  %650 = load i64, ptr %649, align 8, !tbaa !179
  %651 = and i64 %650, 32557056
  %652 = icmp eq i64 %651, 32557056
  %653 = select i1 %652, ptr @iree_uk_mmt4d_tile_f16f16f16_8x16x1_x86_64_avx512_base, ptr %639
  br label %654

654:                                              ; preds = %622, %627, %615, %590, %595, %611, %606, %631, %277, %282, %647, %643, %638
  %655 = phi ptr [ %639, %638 ], [ %639, %643 ], [ %653, %647 ], [ null, %277 ], [ %637, %631 ], [ null, %282 ], [ %623, %622 ], [ %623, %627 ], [ %621, %615 ], [ %607, %606 ], [ %607, %611 ], [ %591, %595 ], [ %591, %590 ]
  %656 = icmp eq i32 %279, 16
  br i1 %656, label %657, label %1167

657:                                              ; preds = %654
  %658 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %659 = load i32, ptr %658, align 4, !tbaa !170
  %660 = icmp eq i32 %659, 16
  br i1 %660, label %661, label %1167

661:                                              ; preds = %657
  %662 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %663 = load i32, ptr %662, align 8, !tbaa !171
  %664 = icmp eq i32 %663, 1
  br i1 %664, label %665, label %1167

665:                                              ; preds = %661
  %666 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %667 = load ptr, ptr %666, align 8, !tbaa !173
  %668 = load i64, ptr %667, align 8, !tbaa !179
  %669 = and i64 %668, 32557056
  %670 = icmp eq i64 %669, 32557056
  %671 = select i1 %670, ptr @iree_uk_mmt4d_tile_f16f16f16_16x16x1_x86_64_avx512_base, ptr %655
  br label %1167

672:                                              ; preds = %1
  %673 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %674 = load i32, ptr %673, align 8, !tbaa !169
  %675 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %674)
  %676 = icmp eq i32 %675, 1
  br i1 %676, label %677, label %1167

677:                                              ; preds = %672
  %678 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %674, i1 true)
  switch i32 %678, label %1167 [
    i32 0, label %679
    i32 1, label %694
    i32 2, label %709
    i32 3, label %724
    i32 4, label %739
  ]

679:                                              ; preds = %677
  %680 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %681 = load i32, ptr %680, align 4, !tbaa !170
  %682 = icmp eq i32 %681, 16
  br i1 %682, label %683, label %1167

683:                                              ; preds = %679
  %684 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %685 = load i32, ptr %684, align 8, !tbaa !171
  %686 = icmp eq i32 %685, 2
  br i1 %686, label %687, label %1167

687:                                              ; preds = %683
  %688 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %689 = load ptr, ptr %688, align 8, !tbaa !173
  %690 = load i64, ptr %689, align 8, !tbaa !179
  %691 = and i64 %690, 2180040704
  %692 = icmp eq i64 %691, 2180040704
  %693 = select i1 %692, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

694:                                              ; preds = %677
  %695 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %696 = load i32, ptr %695, align 4, !tbaa !170
  %697 = icmp eq i32 %696, 16
  br i1 %697, label %698, label %1167

698:                                              ; preds = %694
  %699 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %700 = load i32, ptr %699, align 8, !tbaa !171
  %701 = icmp eq i32 %700, 2
  br i1 %701, label %702, label %1167

702:                                              ; preds = %698
  %703 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %704 = load ptr, ptr %703, align 8, !tbaa !173
  %705 = load i64, ptr %704, align 8, !tbaa !179
  %706 = and i64 %705, 2180040704
  %707 = icmp eq i64 %706, 2180040704
  %708 = select i1 %707, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_2x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

709:                                              ; preds = %677
  %710 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %711 = load i32, ptr %710, align 4, !tbaa !170
  %712 = icmp eq i32 %711, 16
  br i1 %712, label %713, label %1167

713:                                              ; preds = %709
  %714 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %715 = load i32, ptr %714, align 8, !tbaa !171
  %716 = icmp eq i32 %715, 2
  br i1 %716, label %717, label %1167

717:                                              ; preds = %713
  %718 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %719 = load ptr, ptr %718, align 8, !tbaa !173
  %720 = load i64, ptr %719, align 8, !tbaa !179
  %721 = and i64 %720, 2180040704
  %722 = icmp eq i64 %721, 2180040704
  %723 = select i1 %722, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_4x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

724:                                              ; preds = %677
  %725 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %726 = load i32, ptr %725, align 4, !tbaa !170
  %727 = icmp eq i32 %726, 16
  br i1 %727, label %728, label %1167

728:                                              ; preds = %724
  %729 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %730 = load i32, ptr %729, align 8, !tbaa !171
  %731 = icmp eq i32 %730, 2
  br i1 %731, label %732, label %1167

732:                                              ; preds = %728
  %733 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %734 = load ptr, ptr %733, align 8, !tbaa !173
  %735 = load i64, ptr %734, align 8, !tbaa !179
  %736 = and i64 %735, 2180040704
  %737 = icmp eq i64 %736, 2180040704
  %738 = select i1 %737, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_8x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

739:                                              ; preds = %677
  %740 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %741 = load i32, ptr %740, align 4, !tbaa !170
  %742 = icmp eq i32 %741, 16
  br i1 %742, label %743, label %1167

743:                                              ; preds = %739
  %744 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %745 = load i32, ptr %744, align 8, !tbaa !171
  %746 = icmp eq i32 %745, 2
  br i1 %746, label %747, label %1167

747:                                              ; preds = %743
  %748 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %749 = load ptr, ptr %748, align 8, !tbaa !173
  %750 = load i64, ptr %749, align 8, !tbaa !179
  %751 = and i64 %750, 2180040704
  %752 = icmp eq i64 %751, 2180040704
  %753 = select i1 %752, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_16x16x2_x86_64_avx512_bf16, ptr null
  br label %1167

754:                                              ; preds = %9, %13, %17
  %755 = phi ptr [ %23, %17 ], [ null, %13 ], [ null, %9 ]
  %756 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %757 = load i32, ptr %756, align 4, !tbaa !170
  %758 = icmp eq i32 %757, 16
  br i1 %758, label %759, label %818

759:                                              ; preds = %754
  %760 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %761 = load i32, ptr %760, align 8, !tbaa !171
  %762 = icmp eq i32 %761, 2
  br i1 %762, label %763, label %818

763:                                              ; preds = %759
  %764 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %765 = load ptr, ptr %764, align 8, !tbaa !173
  %766 = load i64, ptr %765, align 8, !tbaa !179
  %767 = and i64 %766, 32557056
  %768 = icmp eq i64 %767, 32557056
  %769 = select i1 %768, ptr @iree_uk_mmt4d_tile_s8s8s32_1x16x2_x86_64_avx512_base, ptr %755
  br label %844

770:                                              ; preds = %29, %33, %37
  %771 = phi ptr [ %43, %37 ], [ null, %33 ], [ null, %29 ]
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %773 = load i32, ptr %772, align 4, !tbaa !170
  %774 = icmp eq i32 %773, 16
  br i1 %774, label %775, label %818

775:                                              ; preds = %770
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %777 = load i32, ptr %776, align 8, !tbaa !171
  %778 = icmp eq i32 %777, 2
  br i1 %778, label %779, label %818

779:                                              ; preds = %775
  %780 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %781 = load ptr, ptr %780, align 8, !tbaa !173
  %782 = load i64, ptr %781, align 8, !tbaa !179
  %783 = and i64 %782, 32557056
  %784 = icmp eq i64 %783, 32557056
  %785 = select i1 %784, ptr @iree_uk_mmt4d_tile_s8s8s32_2x16x2_x86_64_avx512_base, ptr %771
  br label %818

786:                                              ; preds = %52, %48, %44
  %787 = phi ptr [ %58, %52 ], [ null, %48 ], [ null, %44 ]
  %788 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %789 = load i32, ptr %788, align 4, !tbaa !170
  %790 = icmp eq i32 %789, 16
  br i1 %790, label %791, label %818

791:                                              ; preds = %786
  %792 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %793 = load i32, ptr %792, align 8, !tbaa !171
  %794 = icmp eq i32 %793, 2
  br i1 %794, label %795, label %818

795:                                              ; preds = %791
  %796 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %797 = load ptr, ptr %796, align 8, !tbaa !173
  %798 = load i64, ptr %797, align 8, !tbaa !179
  %799 = and i64 %798, 32557056
  %800 = icmp eq i64 %799, 32557056
  %801 = select i1 %800, ptr @iree_uk_mmt4d_tile_s8s8s32_4x16x2_x86_64_avx512_base, ptr %787
  br label %818

802:                                              ; preds = %67, %63, %59
  %803 = phi ptr [ null, %63 ], [ null, %59 ], [ %73, %67 ]
  %804 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %805 = load i32, ptr %804, align 4, !tbaa !170
  %806 = icmp eq i32 %805, 16
  br i1 %806, label %807, label %818

807:                                              ; preds = %802
  %808 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %809 = load i32, ptr %808, align 8, !tbaa !171
  %810 = icmp eq i32 %809, 2
  br i1 %810, label %811, label %818

811:                                              ; preds = %807
  %812 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %813 = load ptr, ptr %812, align 8, !tbaa !173
  %814 = load i64, ptr %813, align 8, !tbaa !179
  %815 = and i64 %814, 32557056
  %816 = icmp eq i64 %815, 32557056
  %817 = select i1 %816, ptr @iree_uk_mmt4d_tile_s8s8s32_8x16x2_x86_64_avx512_base, ptr %803
  br label %818

818:                                              ; preds = %786, %791, %779, %754, %759, %775, %770, %795, %811, %807, %802
  %819 = phi i1 [ true, %802 ], [ true, %807 ], [ true, %811 ], [ false, %795 ], [ false, %770 ], [ false, %775 ], [ false, %759 ], [ false, %754 ], [ false, %779 ], [ false, %791 ], [ false, %786 ]
  %820 = phi i1 [ false, %802 ], [ false, %807 ], [ false, %811 ], [ false, %795 ], [ true, %770 ], [ true, %775 ], [ false, %759 ], [ false, %754 ], [ true, %779 ], [ false, %791 ], [ false, %786 ]
  %821 = phi i1 [ false, %802 ], [ false, %807 ], [ false, %811 ], [ true, %795 ], [ false, %770 ], [ false, %775 ], [ false, %759 ], [ false, %754 ], [ false, %779 ], [ true, %791 ], [ true, %786 ]
  %822 = phi ptr [ %803, %802 ], [ %803, %807 ], [ %817, %811 ], [ %801, %795 ], [ %771, %770 ], [ %771, %775 ], [ %755, %759 ], [ %755, %754 ], [ %785, %779 ], [ %787, %791 ], [ %787, %786 ]
  %823 = icmp eq i32 %7, 16
  br i1 %823, label %824, label %843

824:                                              ; preds = %27, %818
  %825 = phi ptr [ null, %27 ], [ %822, %818 ]
  %826 = phi i1 [ false, %27 ], [ %821, %818 ]
  %827 = phi i1 [ false, %27 ], [ %820, %818 ]
  %828 = phi i1 [ false, %27 ], [ %819, %818 ]
  %829 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %830 = load i32, ptr %829, align 4, !tbaa !170
  %831 = icmp eq i32 %830, 16
  br i1 %831, label %832, label %863

832:                                              ; preds = %824
  %833 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %834 = load i32, ptr %833, align 8, !tbaa !171
  %835 = icmp eq i32 %834, 2
  br i1 %835, label %836, label %863

836:                                              ; preds = %832
  %837 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %838 = load ptr, ptr %837, align 8, !tbaa !173
  %839 = load i64, ptr %838, align 8, !tbaa !179
  %840 = and i64 %839, 32557056
  %841 = icmp eq i64 %840, 32557056
  %842 = select i1 %841, ptr @iree_uk_mmt4d_tile_s8s8s32_16x16x2_x86_64_avx512_base, ptr %825
  br i1 %827, label %869, label %888

843:                                              ; preds = %818
  br i1 %8, label %844, label %863

844:                                              ; preds = %763, %843
  %845 = phi ptr [ %769, %763 ], [ %822, %843 ]
  %846 = phi i1 [ false, %763 ], [ %819, %843 ]
  %847 = phi i1 [ false, %763 ], [ %820, %843 ]
  %848 = phi i1 [ false, %763 ], [ %821, %843 ]
  %849 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %850 = load i32, ptr %849, align 4, !tbaa !170
  %851 = icmp eq i32 %850, 16
  br i1 %851, label %852, label %863

852:                                              ; preds = %844
  %853 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %854 = load i32, ptr %853, align 8, !tbaa !171
  %855 = icmp eq i32 %854, 2
  br i1 %855, label %856, label %863

856:                                              ; preds = %852
  %857 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %858 = load ptr, ptr %857, align 8, !tbaa !173
  %859 = load i64, ptr %858, align 8, !tbaa !179
  %860 = and i64 %859, 300992512
  %861 = icmp eq i64 %860, 300992512
  %862 = select i1 %861, ptr @iree_uk_mmt4d_tile_s8s8s32_1x16x2_x86_64_avx512_vnni, ptr %845
  br i1 %847, label %869, label %888

863:                                              ; preds = %824, %832, %843, %852, %844
  %864 = phi i1 [ false, %844 ], [ false, %852 ], [ true, %824 ], [ false, %843 ], [ true, %832 ]
  %865 = phi i1 [ %848, %844 ], [ %848, %852 ], [ %826, %824 ], [ %821, %843 ], [ %826, %832 ]
  %866 = phi i1 [ %847, %844 ], [ %847, %852 ], [ %827, %824 ], [ %820, %843 ], [ %827, %832 ]
  %867 = phi i1 [ %846, %844 ], [ %846, %852 ], [ %828, %824 ], [ %819, %843 ], [ %828, %832 ]
  %868 = phi ptr [ %845, %844 ], [ %845, %852 ], [ %825, %824 ], [ %822, %843 ], [ %825, %832 ]
  br i1 %866, label %869, label %888

869:                                              ; preds = %836, %856, %863
  %870 = phi ptr [ %862, %856 ], [ %868, %863 ], [ %842, %836 ]
  %871 = phi i1 [ %846, %856 ], [ %867, %863 ], [ %828, %836 ]
  %872 = phi i1 [ %848, %856 ], [ %865, %863 ], [ %826, %836 ]
  %873 = phi i1 [ false, %856 ], [ %864, %863 ], [ true, %836 ]
  %874 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %875 = load i32, ptr %874, align 4, !tbaa !170
  %876 = icmp eq i32 %875, 16
  br i1 %876, label %877, label %888

877:                                              ; preds = %869
  %878 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %879 = load i32, ptr %878, align 8, !tbaa !171
  %880 = icmp eq i32 %879, 2
  br i1 %880, label %881, label %888

881:                                              ; preds = %877
  %882 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %883 = load ptr, ptr %882, align 8, !tbaa !173
  %884 = load i64, ptr %883, align 8, !tbaa !179
  %885 = and i64 %884, 300992512
  %886 = icmp eq i64 %885, 300992512
  %887 = select i1 %886, ptr @iree_uk_mmt4d_tile_s8s8s32_2x16x2_x86_64_avx512_vnni, ptr %870
  br i1 %872, label %893, label %911

888:                                              ; preds = %836, %856, %863, %877, %869
  %889 = phi i1 [ %871, %869 ], [ %871, %877 ], [ %846, %856 ], [ %867, %863 ], [ %828, %836 ]
  %890 = phi i1 [ %872, %869 ], [ %872, %877 ], [ %848, %856 ], [ %865, %863 ], [ %826, %836 ]
  %891 = phi i1 [ %873, %869 ], [ %873, %877 ], [ false, %856 ], [ %864, %863 ], [ true, %836 ]
  %892 = phi ptr [ %870, %869 ], [ %870, %877 ], [ %862, %856 ], [ %868, %863 ], [ %842, %836 ]
  br i1 %890, label %893, label %911

893:                                              ; preds = %881, %888
  %894 = phi ptr [ %887, %881 ], [ %892, %888 ]
  %895 = phi i1 [ %873, %881 ], [ %891, %888 ]
  %896 = phi i1 [ %871, %881 ], [ %889, %888 ]
  %897 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %898 = load i32, ptr %897, align 4, !tbaa !170
  %899 = icmp eq i32 %898, 16
  br i1 %899, label %900, label %911

900:                                              ; preds = %893
  %901 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %902 = load i32, ptr %901, align 8, !tbaa !171
  %903 = icmp eq i32 %902, 2
  br i1 %903, label %904, label %911

904:                                              ; preds = %900
  %905 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %906 = load ptr, ptr %905, align 8, !tbaa !173
  %907 = load i64, ptr %906, align 8, !tbaa !179
  %908 = and i64 %907, 300992512
  %909 = icmp eq i64 %908, 300992512
  %910 = select i1 %909, ptr @iree_uk_mmt4d_tile_s8s8s32_4x16x2_x86_64_avx512_vnni, ptr %894
  br i1 %896, label %915, label %932

911:                                              ; preds = %881, %888, %900, %893
  %912 = phi i1 [ %895, %893 ], [ %895, %900 ], [ %873, %881 ], [ %891, %888 ]
  %913 = phi i1 [ %896, %893 ], [ %896, %900 ], [ %871, %881 ], [ %889, %888 ]
  %914 = phi ptr [ %894, %893 ], [ %894, %900 ], [ %887, %881 ], [ %892, %888 ]
  br i1 %913, label %915, label %932

915:                                              ; preds = %904, %911
  %916 = phi ptr [ %910, %904 ], [ %914, %911 ]
  %917 = phi i1 [ %895, %904 ], [ %912, %911 ]
  %918 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %919 = load i32, ptr %918, align 4, !tbaa !170
  %920 = icmp eq i32 %919, 16
  br i1 %920, label %921, label %932

921:                                              ; preds = %915
  %922 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %923 = load i32, ptr %922, align 8, !tbaa !171
  %924 = icmp eq i32 %923, 2
  br i1 %924, label %925, label %932

925:                                              ; preds = %921
  %926 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %927 = load ptr, ptr %926, align 8, !tbaa !173
  %928 = load i64, ptr %927, align 8, !tbaa !179
  %929 = and i64 %928, 300992512
  %930 = icmp eq i64 %929, 300992512
  %931 = select i1 %930, ptr @iree_uk_mmt4d_tile_s8s8s32_8x16x2_x86_64_avx512_vnni, ptr %916
  br i1 %917, label %935, label %1167

932:                                              ; preds = %904, %911, %921, %915
  %933 = phi i1 [ %917, %915 ], [ %917, %921 ], [ %895, %904 ], [ %912, %911 ]
  %934 = phi ptr [ %916, %915 ], [ %916, %921 ], [ %910, %904 ], [ %914, %911 ]
  br i1 %933, label %935, label %1167

935:                                              ; preds = %925, %932
  %936 = phi ptr [ %931, %925 ], [ %934, %932 ]
  %937 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %938 = load i32, ptr %937, align 4, !tbaa !170
  %939 = icmp eq i32 %938, 16
  br i1 %939, label %940, label %1167

940:                                              ; preds = %935
  %941 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %942 = load i32, ptr %941, align 8, !tbaa !171
  %943 = icmp eq i32 %942, 2
  br i1 %943, label %944, label %1167

944:                                              ; preds = %940
  %945 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %946 = load ptr, ptr %945, align 8, !tbaa !173
  %947 = load i64, ptr %946, align 8, !tbaa !179
  %948 = and i64 %947, 300992512
  %949 = icmp eq i64 %948, 300992512
  %950 = select i1 %949, ptr @iree_uk_mmt4d_tile_s8s8s32_16x16x2_x86_64_avx512_vnni, ptr %936
  br label %1167

951:                                              ; preds = %78, %82, %86
  %952 = phi ptr [ %92, %86 ], [ null, %82 ], [ null, %78 ]
  %953 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %954 = load i32, ptr %953, align 4, !tbaa !170
  %955 = icmp eq i32 %954, 16
  br i1 %955, label %956, label %1015

956:                                              ; preds = %951
  %957 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %958 = load i32, ptr %957, align 8, !tbaa !171
  %959 = icmp eq i32 %958, 2
  br i1 %959, label %960, label %1015

960:                                              ; preds = %956
  %961 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %962 = load ptr, ptr %961, align 8, !tbaa !173
  %963 = load i64, ptr %962, align 8, !tbaa !179
  %964 = and i64 %963, 32557056
  %965 = icmp eq i64 %964, 32557056
  %966 = select i1 %965, ptr @iree_uk_mmt4d_tile_s16s16s32_1x16x2_x86_64_avx512_base, ptr %952
  br label %1041

967:                                              ; preds = %98, %102, %106
  %968 = phi ptr [ %112, %106 ], [ null, %102 ], [ null, %98 ]
  %969 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %970 = load i32, ptr %969, align 4, !tbaa !170
  %971 = icmp eq i32 %970, 16
  br i1 %971, label %972, label %1015

972:                                              ; preds = %967
  %973 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %974 = load i32, ptr %973, align 8, !tbaa !171
  %975 = icmp eq i32 %974, 2
  br i1 %975, label %976, label %1015

976:                                              ; preds = %972
  %977 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %978 = load ptr, ptr %977, align 8, !tbaa !173
  %979 = load i64, ptr %978, align 8, !tbaa !179
  %980 = and i64 %979, 32557056
  %981 = icmp eq i64 %980, 32557056
  %982 = select i1 %981, ptr @iree_uk_mmt4d_tile_s16s16s32_2x16x2_x86_64_avx512_base, ptr %968
  br label %1015

983:                                              ; preds = %121, %117, %113
  %984 = phi ptr [ %127, %121 ], [ null, %117 ], [ null, %113 ]
  %985 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %986 = load i32, ptr %985, align 4, !tbaa !170
  %987 = icmp eq i32 %986, 16
  br i1 %987, label %988, label %1015

988:                                              ; preds = %983
  %989 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %990 = load i32, ptr %989, align 8, !tbaa !171
  %991 = icmp eq i32 %990, 2
  br i1 %991, label %992, label %1015

992:                                              ; preds = %988
  %993 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %994 = load ptr, ptr %993, align 8, !tbaa !173
  %995 = load i64, ptr %994, align 8, !tbaa !179
  %996 = and i64 %995, 32557056
  %997 = icmp eq i64 %996, 32557056
  %998 = select i1 %997, ptr @iree_uk_mmt4d_tile_s16s16s32_4x16x2_x86_64_avx512_base, ptr %984
  br label %1015

999:                                              ; preds = %128, %132, %136
  %1000 = phi ptr [ null, %132 ], [ null, %128 ], [ %142, %136 ]
  %1001 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1002 = load i32, ptr %1001, align 4, !tbaa !170
  %1003 = icmp eq i32 %1002, 16
  br i1 %1003, label %1004, label %1015

1004:                                             ; preds = %999
  %1005 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1006 = load i32, ptr %1005, align 8, !tbaa !171
  %1007 = icmp eq i32 %1006, 2
  br i1 %1007, label %1008, label %1015

1008:                                             ; preds = %1004
  %1009 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %1010 = load ptr, ptr %1009, align 8, !tbaa !173
  %1011 = load i64, ptr %1010, align 8, !tbaa !179
  %1012 = and i64 %1011, 32557056
  %1013 = icmp eq i64 %1012, 32557056
  %1014 = select i1 %1013, ptr @iree_uk_mmt4d_tile_s16s16s32_8x16x2_x86_64_avx512_base, ptr %1000
  br label %1015

1015:                                             ; preds = %988, %983, %976, %956, %951, %972, %967, %992, %1008, %1004, %999
  %1016 = phi i1 [ false, %992 ], [ true, %999 ], [ true, %1004 ], [ true, %1008 ], [ false, %967 ], [ false, %972 ], [ false, %951 ], [ false, %956 ], [ false, %976 ], [ false, %983 ], [ false, %988 ]
  %1017 = phi i1 [ false, %992 ], [ false, %999 ], [ false, %1004 ], [ false, %1008 ], [ true, %967 ], [ true, %972 ], [ false, %951 ], [ false, %956 ], [ true, %976 ], [ false, %983 ], [ false, %988 ]
  %1018 = phi i1 [ true, %992 ], [ false, %999 ], [ false, %1004 ], [ false, %1008 ], [ false, %967 ], [ false, %972 ], [ false, %951 ], [ false, %956 ], [ false, %976 ], [ true, %983 ], [ true, %988 ]
  %1019 = phi ptr [ %998, %992 ], [ %1000, %999 ], [ %1000, %1004 ], [ %1014, %1008 ], [ %968, %967 ], [ %968, %972 ], [ %952, %951 ], [ %952, %956 ], [ %982, %976 ], [ %984, %983 ], [ %984, %988 ]
  %1020 = icmp eq i32 %76, 16
  br i1 %1020, label %1021, label %1040

1021:                                             ; preds = %96, %1015
  %1022 = phi ptr [ null, %96 ], [ %1019, %1015 ]
  %1023 = phi i1 [ false, %96 ], [ %1018, %1015 ]
  %1024 = phi i1 [ false, %96 ], [ %1017, %1015 ]
  %1025 = phi i1 [ false, %96 ], [ %1016, %1015 ]
  %1026 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1027 = load i32, ptr %1026, align 4, !tbaa !170
  %1028 = icmp eq i32 %1027, 16
  br i1 %1028, label %1029, label %1060

1029:                                             ; preds = %1021
  %1030 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1031 = load i32, ptr %1030, align 8, !tbaa !171
  %1032 = icmp eq i32 %1031, 2
  br i1 %1032, label %1033, label %1060

1033:                                             ; preds = %1029
  %1034 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %1035 = load ptr, ptr %1034, align 8, !tbaa !173
  %1036 = load i64, ptr %1035, align 8, !tbaa !179
  %1037 = and i64 %1036, 32557056
  %1038 = icmp eq i64 %1037, 32557056
  %1039 = select i1 %1038, ptr @iree_uk_mmt4d_tile_s16s16s32_16x16x2_x86_64_avx512_base, ptr %1022
  br i1 %1024, label %1066, label %1085

1040:                                             ; preds = %1015
  br i1 %77, label %1041, label %1060

1041:                                             ; preds = %960, %1040
  %1042 = phi ptr [ %966, %960 ], [ %1019, %1040 ]
  %1043 = phi i1 [ false, %960 ], [ %1016, %1040 ]
  %1044 = phi i1 [ false, %960 ], [ %1017, %1040 ]
  %1045 = phi i1 [ false, %960 ], [ %1018, %1040 ]
  %1046 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1047 = load i32, ptr %1046, align 4, !tbaa !170
  %1048 = icmp eq i32 %1047, 16
  br i1 %1048, label %1049, label %1060

1049:                                             ; preds = %1041
  %1050 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1051 = load i32, ptr %1050, align 8, !tbaa !171
  %1052 = icmp eq i32 %1051, 2
  br i1 %1052, label %1053, label %1060

1053:                                             ; preds = %1049
  %1054 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %1055 = load ptr, ptr %1054, align 8, !tbaa !173
  %1056 = load i64, ptr %1055, align 8, !tbaa !179
  %1057 = and i64 %1056, 300992512
  %1058 = icmp eq i64 %1057, 300992512
  %1059 = select i1 %1058, ptr @iree_uk_mmt4d_tile_s16s16s32_1x16x2_x86_64_avx512_vnni, ptr %1042
  br i1 %1044, label %1066, label %1085

1060:                                             ; preds = %1029, %1021, %1049, %1041, %1040
  %1061 = phi i1 [ false, %1040 ], [ false, %1041 ], [ false, %1049 ], [ true, %1029 ], [ true, %1021 ]
  %1062 = phi i1 [ %1018, %1040 ], [ %1045, %1041 ], [ %1045, %1049 ], [ %1023, %1029 ], [ %1023, %1021 ]
  %1063 = phi i1 [ %1017, %1040 ], [ %1044, %1041 ], [ %1044, %1049 ], [ %1024, %1029 ], [ %1024, %1021 ]
  %1064 = phi i1 [ %1016, %1040 ], [ %1043, %1041 ], [ %1043, %1049 ], [ %1025, %1029 ], [ %1025, %1021 ]
  %1065 = phi ptr [ %1019, %1040 ], [ %1042, %1041 ], [ %1042, %1049 ], [ %1022, %1029 ], [ %1022, %1021 ]
  br i1 %1063, label %1066, label %1085

1066:                                             ; preds = %1033, %1053, %1060
  %1067 = phi ptr [ %1059, %1053 ], [ %1065, %1060 ], [ %1039, %1033 ]
  %1068 = phi i1 [ %1043, %1053 ], [ %1064, %1060 ], [ %1025, %1033 ]
  %1069 = phi i1 [ %1045, %1053 ], [ %1062, %1060 ], [ %1023, %1033 ]
  %1070 = phi i1 [ false, %1053 ], [ %1061, %1060 ], [ true, %1033 ]
  %1071 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1072 = load i32, ptr %1071, align 4, !tbaa !170
  %1073 = icmp eq i32 %1072, 16
  br i1 %1073, label %1074, label %1085

1074:                                             ; preds = %1066
  %1075 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1076 = load i32, ptr %1075, align 8, !tbaa !171
  %1077 = icmp eq i32 %1076, 2
  br i1 %1077, label %1078, label %1085

1078:                                             ; preds = %1074
  %1079 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %1080 = load ptr, ptr %1079, align 8, !tbaa !173
  %1081 = load i64, ptr %1080, align 8, !tbaa !179
  %1082 = and i64 %1081, 300992512
  %1083 = icmp eq i64 %1082, 300992512
  %1084 = select i1 %1083, ptr @iree_uk_mmt4d_tile_s16s16s32_2x16x2_x86_64_avx512_vnni, ptr %1067
  br i1 %1069, label %1090, label %1108

1085:                                             ; preds = %1033, %1053, %1060, %1066, %1074
  %1086 = phi i1 [ %1064, %1060 ], [ %1043, %1053 ], [ %1068, %1074 ], [ %1068, %1066 ], [ %1025, %1033 ]
  %1087 = phi i1 [ %1062, %1060 ], [ %1045, %1053 ], [ %1069, %1074 ], [ %1069, %1066 ], [ %1023, %1033 ]
  %1088 = phi i1 [ %1061, %1060 ], [ false, %1053 ], [ %1070, %1074 ], [ %1070, %1066 ], [ true, %1033 ]
  %1089 = phi ptr [ %1065, %1060 ], [ %1059, %1053 ], [ %1067, %1074 ], [ %1067, %1066 ], [ %1039, %1033 ]
  br i1 %1087, label %1090, label %1108

1090:                                             ; preds = %1078, %1085
  %1091 = phi ptr [ %1084, %1078 ], [ %1089, %1085 ]
  %1092 = phi i1 [ %1070, %1078 ], [ %1088, %1085 ]
  %1093 = phi i1 [ %1068, %1078 ], [ %1086, %1085 ]
  %1094 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1095 = load i32, ptr %1094, align 4, !tbaa !170
  %1096 = icmp eq i32 %1095, 16
  br i1 %1096, label %1097, label %1108

1097:                                             ; preds = %1090
  %1098 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1099 = load i32, ptr %1098, align 8, !tbaa !171
  %1100 = icmp eq i32 %1099, 2
  br i1 %1100, label %1101, label %1108

1101:                                             ; preds = %1097
  %1102 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %1103 = load ptr, ptr %1102, align 8, !tbaa !173
  %1104 = load i64, ptr %1103, align 8, !tbaa !179
  %1105 = and i64 %1104, 300992512
  %1106 = icmp eq i64 %1105, 300992512
  %1107 = select i1 %1106, ptr @iree_uk_mmt4d_tile_s16s16s32_4x16x2_x86_64_avx512_vnni, ptr %1091
  br i1 %1093, label %1112, label %1129

1108:                                             ; preds = %1078, %1097, %1090, %1085
  %1109 = phi i1 [ %1088, %1085 ], [ %1092, %1090 ], [ %1092, %1097 ], [ %1070, %1078 ]
  %1110 = phi i1 [ %1086, %1085 ], [ %1093, %1090 ], [ %1093, %1097 ], [ %1068, %1078 ]
  %1111 = phi ptr [ %1089, %1085 ], [ %1091, %1090 ], [ %1091, %1097 ], [ %1084, %1078 ]
  br i1 %1110, label %1112, label %1129

1112:                                             ; preds = %1101, %1108
  %1113 = phi ptr [ %1107, %1101 ], [ %1111, %1108 ]
  %1114 = phi i1 [ %1092, %1101 ], [ %1109, %1108 ]
  %1115 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1116 = load i32, ptr %1115, align 4, !tbaa !170
  %1117 = icmp eq i32 %1116, 16
  br i1 %1117, label %1118, label %1129

1118:                                             ; preds = %1112
  %1119 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1120 = load i32, ptr %1119, align 8, !tbaa !171
  %1121 = icmp eq i32 %1120, 2
  br i1 %1121, label %1122, label %1129

1122:                                             ; preds = %1118
  %1123 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %1124 = load ptr, ptr %1123, align 8, !tbaa !173
  %1125 = load i64, ptr %1124, align 8, !tbaa !179
  %1126 = and i64 %1125, 300992512
  %1127 = icmp eq i64 %1126, 300992512
  %1128 = select i1 %1127, ptr @iree_uk_mmt4d_tile_s16s16s32_8x16x2_x86_64_avx512_vnni, ptr %1113
  br i1 %1114, label %1132, label %1167

1129:                                             ; preds = %1101, %1108, %1112, %1118
  %1130 = phi i1 [ %1109, %1108 ], [ %1092, %1101 ], [ %1114, %1118 ], [ %1114, %1112 ]
  %1131 = phi ptr [ %1111, %1108 ], [ %1107, %1101 ], [ %1113, %1118 ], [ %1113, %1112 ]
  br i1 %1130, label %1132, label %1167

1132:                                             ; preds = %1122, %1129
  %1133 = phi ptr [ %1128, %1122 ], [ %1131, %1129 ]
  %1134 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1135 = load i32, ptr %1134, align 4, !tbaa !170
  %1136 = icmp eq i32 %1135, 16
  br i1 %1136, label %1137, label %1167

1137:                                             ; preds = %1132
  %1138 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1139 = load i32, ptr %1138, align 8, !tbaa !171
  %1140 = icmp eq i32 %1139, 2
  br i1 %1140, label %1141, label %1167

1141:                                             ; preds = %1137
  %1142 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %1143 = load ptr, ptr %1142, align 8, !tbaa !173
  %1144 = load i64, ptr %1143, align 8, !tbaa !179
  %1145 = and i64 %1144, 300992512
  %1146 = icmp eq i64 %1145, 300992512
  %1147 = select i1 %1146, ptr @iree_uk_mmt4d_tile_s16s16s32_16x16x2_x86_64_avx512_vnni, ptr %1133
  br label %1167

1148:                                             ; preds = %1
  %1149 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %1150 = load i32, ptr %1149, align 8, !tbaa !169
  %1151 = icmp eq i32 %1150, 1
  br i1 %1151, label %1152, label %1167

1152:                                             ; preds = %1148
  %1153 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %1154 = load i32, ptr %1153, align 4, !tbaa !170
  %1155 = icmp eq i32 %1154, 32
  br i1 %1155, label %1156, label %1167

1156:                                             ; preds = %1152
  %1157 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %1158 = load i32, ptr %1157, align 8, !tbaa !171
  %1159 = icmp eq i32 %1158, 8
  br i1 %1159, label %1160, label %1167

1160:                                             ; preds = %1156
  %1161 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %1162 = load ptr, ptr %1161, align 8, !tbaa !173
  %1163 = load i64, ptr %1162, align 8, !tbaa !179
  %1164 = and i64 %1163, 300992512
  %1165 = icmp eq i64 %1164, 300992512
  %1166 = select i1 %1165, ptr @iree_uk_mmt4d_tile_s16u4s32_1x32x8_x86_64_avx512_vnni, ptr null
  br label %1167

1167:                                             ; preds = %672, %508, %93, %24, %96, %27, %677, %513, %599, %435, %353, %1122, %925, %679, %683, %687, %702, %698, %694, %709, %713, %717, %732, %728, %724, %515, %519, %523, %538, %534, %530, %545, %549, %553, %568, %564, %560, %1, %1129, %1132, %1137, %1141, %408, %411, %415, %419, %490, %501, %497, %493, %575, %579, %583, %654, %665, %661, %657, %739, %743, %747, %935, %940, %944, %932, %1160, %1156, %1152, %1148
  %1168 = phi ptr [ %1147, %1141 ], [ %1166, %1160 ], [ null, %1156 ], [ null, %1152 ], [ null, %1148 ], [ %425, %419 ], [ %753, %747 ], [ %934, %932 ], [ %936, %935 ], [ %936, %940 ], [ %950, %944 ], [ null, %677 ], [ null, %739 ], [ null, %743 ], [ %655, %654 ], [ %671, %665 ], [ %655, %661 ], [ %655, %657 ], [ %589, %583 ], [ null, %513 ], [ null, %575 ], [ null, %579 ], [ %491, %490 ], [ %507, %501 ], [ %491, %497 ], [ %491, %493 ], [ %409, %408 ], [ %409, %411 ], [ %409, %415 ], [ %1131, %1129 ], [ %1133, %1132 ], [ %1133, %1137 ], [ null, %1 ], [ null, %515 ], [ %574, %568 ], [ null, %560 ], [ null, %564 ], [ null, %545 ], [ %559, %553 ], [ null, %549 ], [ %544, %538 ], [ null, %530 ], [ null, %534 ], [ %529, %523 ], [ null, %519 ], [ %738, %732 ], [ null, %724 ], [ null, %728 ], [ null, %709 ], [ %723, %717 ], [ null, %713 ], [ %708, %702 ], [ null, %694 ], [ null, %698 ], [ %693, %687 ], [ null, %683 ], [ null, %679 ], [ %605, %599 ], [ %931, %925 ], [ null, %27 ], [ %1128, %1122 ], [ %359, %353 ], [ %441, %435 ], [ null, %96 ], [ null, %24 ], [ null, %93 ], [ null, %508 ], [ null, %672 ]
  ret ptr %1168
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal ptr @iree_uk_mmt4d_select_tile_func_generic(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %3 = load i32, ptr %2, align 4, !tbaa !172
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %20 [
    i8 1, label %5
    i8 2, label %21
    i8 10, label %6
    i8 7, label %7
    i8 8, label %8
    i8 9, label %9
    i8 3, label %10
    i8 4, label %11
    i8 5, label %15
    i8 6, label %16
  ]

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  br label %21

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = and i32 %3, 1024
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @iree_uk_mmt4d_tile_f16f16f16_generic_noskipround, ptr @iree_uk_mmt4d_tile_f16f16f16_generic_skipround
  br label %21

15:                                               ; preds = %1
  br label %21

16:                                               ; preds = %1
  %17 = and i32 %3, 1024
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_generic_noskipround, ptr @iree_uk_mmt4d_tile_bf16bf16bf16_generic_skipround
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %1, %5, %20, %16, %15, %11, %10, %9, %8, %7, %6
  %22 = phi ptr [ null, %20 ], [ %19, %16 ], [ @iree_uk_mmt4d_tile_f32f32f32_generic, %5 ], [ @iree_uk_mmt4d_tile_s8s4s32_generic, %6 ], [ @iree_uk_mmt4d_tile_s16s16s32_generic, %7 ], [ @iree_uk_mmt4d_tile_s16u4s32_generic, %8 ], [ @iree_uk_mmt4d_tile_s16s8s32_generic, %9 ], [ @iree_uk_mmt4d_tile_f16f16f32_generic, %10 ], [ %14, %11 ], [ @iree_uk_mmt4d_tile_bf16bf16f32_generic, %15 ], [ @iree_uk_mmt4d_tile_s8s8s32_generic, %1 ]
  ret ptr %22
}

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #11

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_generic_noskipround(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %244

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %244

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !172
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !168
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %202

32:                                               ; preds = %24
  br i1 %23, label %33, label %160

33:                                               ; preds = %32, %157
  %34 = phi i64 [ %158, %157 ], [ 0, %32 ]
  %35 = mul nuw nsw i64 %34, %19
  %36 = getelementptr [2 x i8], ptr %0, i64 %35
  br label %37

37:                                               ; preds = %153, %33
  %38 = phi i64 [ 0, %33 ], [ %155, %153 ]
  br i1 %29, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr [2 x i8], ptr %36, i64 %38
  %41 = load i16, ptr %40, align 2, !tbaa !135
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i16 [ 0, %37 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %150
  %45 = phi i64 [ %151, %150 ], [ 0, %42 ]
  %46 = phi i16 [ %147, %150 ], [ %43, %42 ]
  %47 = mul nuw nsw i64 %45, %9
  %48 = add nuw i64 %47, %34
  %49 = mul i64 %48, %22
  %50 = getelementptr [2 x i8], ptr %1, i64 %49
  %51 = mul nuw nsw i64 %45, %19
  %52 = add nuw i64 %51, %38
  %53 = mul i64 %52, %22
  %54 = getelementptr [2 x i8], ptr %2, i64 %53
  br label %55

55:                                               ; preds = %140, %44
  %56 = phi i64 [ 0, %44 ], [ %148, %140 ]
  %57 = phi i16 [ %46, %44 ], [ %147, %140 ]
  %58 = getelementptr [2 x i8], ptr %50, i64 %56
  %59 = load i16, ptr %58, align 2, !tbaa !135
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 31744
  %62 = and i32 %60, 1023
  switch i32 %61, label %66 [
    i32 31744, label %63
    i32 0, label %70
  ]

63:                                               ; preds = %55
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 0, i32 8388607
  br label %70

66:                                               ; preds = %55
  %67 = shl nuw nsw i32 %61, 13
  %68 = add nuw nsw i32 %67, 939524096
  %69 = shl nuw nsw i32 %62, 13
  br label %70

70:                                               ; preds = %66, %63, %55
  %71 = phi i32 [ %69, %66 ], [ %65, %63 ], [ %61, %55 ]
  %72 = phi i32 [ %68, %66 ], [ 2139095040, %63 ], [ %61, %55 ]
  %73 = sext i16 %59 to i32
  %74 = and i32 %73, -2147483648
  %75 = or disjoint i32 %71, %74
  %76 = or i32 %75, %72
  %77 = bitcast i32 %76 to float
  %78 = getelementptr [2 x i8], ptr %54, i64 %56
  %79 = load i16, ptr %78, align 2, !tbaa !135
  %80 = zext i16 %79 to i32
  %81 = and i32 %80, 31744
  %82 = and i32 %80, 1023
  switch i32 %81, label %86 [
    i32 31744, label %83
    i32 0, label %90
  ]

83:                                               ; preds = %70
  %84 = icmp eq i32 %82, 0
  %85 = select i1 %84, i32 0, i32 8388607
  br label %90

86:                                               ; preds = %70
  %87 = shl nuw nsw i32 %81, 13
  %88 = add nuw nsw i32 %87, 939524096
  %89 = shl nuw nsw i32 %82, 13
  br label %90

90:                                               ; preds = %86, %83, %70
  %91 = phi i32 [ %89, %86 ], [ %85, %83 ], [ %81, %70 ]
  %92 = phi i32 [ %88, %86 ], [ 2139095040, %83 ], [ %81, %70 ]
  %93 = sext i16 %79 to i32
  %94 = and i32 %93, -2147483648
  %95 = or disjoint i32 %91, %94
  %96 = or i32 %95, %92
  %97 = bitcast i32 %96 to float
  %98 = zext i16 %57 to i32
  %99 = and i32 %98, 31744
  %100 = and i32 %98, 1023
  switch i32 %99, label %104 [
    i32 31744, label %101
    i32 0, label %108
  ]

101:                                              ; preds = %90
  %102 = icmp eq i32 %100, 0
  %103 = select i1 %102, i32 0, i32 8388607
  br label %108

104:                                              ; preds = %90
  %105 = shl nuw nsw i32 %99, 13
  %106 = add nuw nsw i32 %105, 939524096
  %107 = shl nuw nsw i32 %100, 13
  br label %108

108:                                              ; preds = %104, %101, %90
  %109 = phi i32 [ %107, %104 ], [ %103, %101 ], [ %99, %90 ]
  %110 = phi i32 [ %106, %104 ], [ 2139095040, %101 ], [ %99, %90 ]
  %111 = sext i16 %57 to i32
  %112 = and i32 %111, -2147483648
  %113 = or disjoint i32 %109, %112
  %114 = or i32 %113, %110
  %115 = bitcast i32 %114 to float
  %116 = tail call float @llvm.fmuladd.f32(float %77, float %97, float %115)
  %117 = bitcast float %116 to i32
  %118 = and i32 %117, 2139095040
  %119 = and i32 %117, 8388607
  switch i32 %118, label %123 [
    i32 2139095040, label %120
    i32 0, label %140
  ]

120:                                              ; preds = %108
  %121 = icmp eq i32 %119, 0
  %122 = select i1 %121, i32 0, i32 1023
  br label %140

123:                                              ; preds = %108
  %124 = lshr exact i32 %118, 23
  %125 = icmp samesign ult i32 %118, 1207959552
  br i1 %125, label %126, label %140

126:                                              ; preds = %123
  %127 = icmp samesign ult i32 %118, 939524096
  br i1 %127, label %140, label %128

128:                                              ; preds = %126
  %129 = lshr i32 %117, 13
  %130 = and i32 %129, 1
  %131 = add nuw nsw i32 %130, %119
  %132 = add nuw nsw i32 %131, 4095
  %133 = icmp samesign ugt i32 %131, 8384512
  %134 = select i1 %133, i32 4194177, i32 4194176
  %135 = add nuw nsw i32 %134, %124
  %136 = shl i32 %135, 10
  %137 = add i32 %136, 16384
  %138 = lshr i32 %132, 13
  %139 = select i1 %133, i32 0, i32 %138
  br label %140

140:                                              ; preds = %128, %126, %123, %120, %108
  %141 = phi i32 [ 0, %126 ], [ %122, %120 ], [ %118, %108 ], [ %139, %128 ], [ 0, %123 ]
  %142 = phi i32 [ 0, %126 ], [ 31744, %120 ], [ %118, %108 ], [ %137, %128 ], [ 31744, %123 ]
  %143 = lshr i32 %117, 16
  %144 = and i32 %143, 32768
  %145 = or i32 %141, %144
  %146 = or i32 %145, %142
  %147 = trunc nuw i32 %146 to i16
  %148 = add nuw nsw i64 %56, 1
  %149 = icmp eq i64 %148, %22
  br i1 %149, label %150, label %55, !llvm.loop !180

150:                                              ; preds = %140
  %151 = add nuw nsw i64 %45, 1
  %152 = icmp eq i64 %151, %30
  br i1 %152, label %153, label %44, !llvm.loop !181

153:                                              ; preds = %150
  %154 = getelementptr [2 x i8], ptr %36, i64 %38
  store i16 %147, ptr %154, align 2, !tbaa !135
  %155 = add nuw nsw i64 %38, 1
  %156 = icmp eq i64 %155, %19
  br i1 %156, label %157, label %37, !llvm.loop !182

157:                                              ; preds = %153
  %158 = add nuw nsw i64 %34, 1
  %159 = icmp eq i64 %158, %9
  br i1 %159, label %244, label %33, !llvm.loop !183

160:                                              ; preds = %32
  br i1 %29, label %161, label %244

161:                                              ; preds = %160
  %162 = icmp ult i64 %19, 4
  %163 = icmp ult i64 %19, 16
  %164 = and i64 %17, 15
  %165 = sub nuw nsw i64 %19, %164
  %166 = icmp eq i64 %164, 0
  %167 = icmp samesign ult i64 %164, 4
  %168 = and i64 %17, 3
  %169 = sub nsw i64 %19, %168
  %170 = icmp eq i64 %168, 0
  br label %171

171:                                              ; preds = %161, %199
  %172 = phi i64 [ %200, %199 ], [ 0, %161 ]
  %173 = mul nuw nsw i64 %172, %19
  %174 = getelementptr [2 x i8], ptr %0, i64 %173
  br i1 %162, label %192, label %175

175:                                              ; preds = %171
  br i1 %163, label %184, label %176

176:                                              ; preds = %175, %176
  %177 = phi i64 [ %180, %176 ], [ 0, %175 ]
  %178 = getelementptr [2 x i8], ptr %174, i64 %177
  %179 = getelementptr i8, ptr %178, i64 16
  store <8 x i16> zeroinitializer, ptr %178, align 2, !tbaa !135
  store <8 x i16> zeroinitializer, ptr %179, align 2, !tbaa !135
  %180 = add nuw i64 %177, 16
  %181 = icmp eq i64 %180, %165
  br i1 %181, label %182, label %176, !llvm.loop !184

182:                                              ; preds = %176
  br i1 %166, label %199, label %183

183:                                              ; preds = %182
  br i1 %167, label %192, label %184, !prof !187

184:                                              ; preds = %175, %183
  %185 = phi i64 [ %165, %183 ], [ 0, %175 ]
  br label %186

186:                                              ; preds = %186, %184
  %187 = phi i64 [ %185, %184 ], [ %189, %186 ]
  %188 = getelementptr [2 x i8], ptr %174, i64 %187
  store <4 x i16> zeroinitializer, ptr %188, align 2, !tbaa !135
  %189 = add nuw i64 %187, 4
  %190 = icmp eq i64 %189, %169
  br i1 %190, label %191, label %186, !llvm.loop !188

191:                                              ; preds = %186
  br i1 %170, label %199, label %192

192:                                              ; preds = %171, %183, %191
  %193 = phi i64 [ 0, %171 ], [ %165, %183 ], [ %169, %191 ]
  br label %194

194:                                              ; preds = %192, %194
  %195 = phi i64 [ %197, %194 ], [ %193, %192 ]
  %196 = getelementptr [2 x i8], ptr %174, i64 %195
  store i16 0, ptr %196, align 2, !tbaa !135
  %197 = add nuw nsw i64 %195, 1
  %198 = icmp eq i64 %197, %19
  br i1 %198, label %199, label %194, !llvm.loop !189

199:                                              ; preds = %194, %191, %182
  %200 = add nuw nsw i64 %172, 1
  %201 = icmp eq i64 %200, %9
  br i1 %201, label %244, label %171, !llvm.loop !183

202:                                              ; preds = %24
  br i1 %29, label %203, label %244

203:                                              ; preds = %202
  %204 = icmp ult i64 %19, 4
  %205 = icmp ult i64 %19, 16
  %206 = and i64 %17, 15
  %207 = sub nuw nsw i64 %19, %206
  %208 = icmp eq i64 %206, 0
  %209 = icmp samesign ult i64 %206, 4
  %210 = and i64 %17, 3
  %211 = sub nsw i64 %19, %210
  %212 = icmp eq i64 %210, 0
  br label %213

213:                                              ; preds = %203, %241
  %214 = phi i64 [ %242, %241 ], [ 0, %203 ]
  %215 = mul nuw nsw i64 %214, %19
  %216 = getelementptr [2 x i8], ptr %0, i64 %215
  br i1 %204, label %234, label %217

217:                                              ; preds = %213
  br i1 %205, label %226, label %218

218:                                              ; preds = %217, %218
  %219 = phi i64 [ %222, %218 ], [ 0, %217 ]
  %220 = getelementptr [2 x i8], ptr %216, i64 %219
  %221 = getelementptr i8, ptr %220, i64 16
  store <8 x i16> zeroinitializer, ptr %220, align 2, !tbaa !135
  store <8 x i16> zeroinitializer, ptr %221, align 2, !tbaa !135
  %222 = add nuw i64 %219, 16
  %223 = icmp eq i64 %222, %207
  br i1 %223, label %224, label %218, !llvm.loop !190

224:                                              ; preds = %218
  br i1 %208, label %241, label %225

225:                                              ; preds = %224
  br i1 %209, label %234, label %226, !prof !187

226:                                              ; preds = %217, %225
  %227 = phi i64 [ %207, %225 ], [ 0, %217 ]
  br label %228

228:                                              ; preds = %228, %226
  %229 = phi i64 [ %227, %226 ], [ %231, %228 ]
  %230 = getelementptr [2 x i8], ptr %216, i64 %229
  store <4 x i16> zeroinitializer, ptr %230, align 2, !tbaa !135
  %231 = add nuw i64 %229, 4
  %232 = icmp eq i64 %231, %211
  br i1 %232, label %233, label %228, !llvm.loop !191

233:                                              ; preds = %228
  br i1 %212, label %241, label %234

234:                                              ; preds = %213, %225, %233
  %235 = phi i64 [ 0, %213 ], [ %207, %225 ], [ %211, %233 ]
  br label %236

236:                                              ; preds = %234, %236
  %237 = phi i64 [ %239, %236 ], [ %235, %234 ]
  %238 = getelementptr [2 x i8], ptr %216, i64 %237
  store i16 0, ptr %238, align 2, !tbaa !135
  %239 = add nuw nsw i64 %237, 1
  %240 = icmp eq i64 %239, %19
  br i1 %240, label %241, label %236, !llvm.loop !192

241:                                              ; preds = %236, %233, %224
  %242 = add nuw nsw i64 %214, 1
  %243 = icmp eq i64 %242, %9
  br i1 %243, label %244, label %213, !llvm.loop !183

244:                                              ; preds = %241, %199, %157, %202, %160, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_generic_skipround(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %161

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp slt i64 %22, 1
  br i1 %20, label %24, label %161

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !172
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !168
  %31 = icmp slt i64 %30, 1
  %32 = select i1 %31, i1 true, i1 %23
  br label %33

33:                                               ; preds = %158, %24
  %34 = phi i64 [ 0, %24 ], [ %159, %158 ]
  %35 = mul nuw nsw i64 %34, %19
  %36 = getelementptr [2 x i8], ptr %0, i64 %35
  br label %37

37:                                               ; preds = %33, %87
  %38 = phi i64 [ 0, %33 ], [ %96, %87 ]
  br i1 %29, label %60, label %39

39:                                               ; preds = %37
  %40 = getelementptr [2 x i8], ptr %36, i64 %38
  %41 = load i16, ptr %40, align 2, !tbaa !135
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 31744
  %44 = and i32 %42, 1023
  switch i32 %43, label %48 [
    i32 31744, label %45
    i32 0, label %52
  ]

45:                                               ; preds = %39
  %46 = icmp eq i32 %44, 0
  %47 = select i1 %46, i32 0, i32 8388607
  br label %52

48:                                               ; preds = %39
  %49 = shl nuw nsw i32 %43, 13
  %50 = add nuw nsw i32 %49, 939524096
  %51 = shl nuw nsw i32 %44, 13
  br label %52

52:                                               ; preds = %48, %45, %39
  %53 = phi i32 [ %51, %48 ], [ %47, %45 ], [ %43, %39 ]
  %54 = phi i32 [ %50, %48 ], [ 2139095040, %45 ], [ %43, %39 ]
  %55 = sext i16 %41 to i32
  %56 = and i32 %55, -2147483648
  %57 = or disjoint i32 %53, %56
  %58 = or i32 %57, %54
  %59 = bitcast i32 %58 to float
  br label %60

60:                                               ; preds = %52, %37
  %61 = phi float [ %59, %52 ], [ 0.000000e+00, %37 ]
  br i1 %32, label %62, label %98

62:                                               ; preds = %155, %60
  %63 = phi float [ %61, %60 ], [ %152, %155 ]
  %64 = bitcast float %63 to i32
  %65 = and i32 %64, 2139095040
  %66 = and i32 %64, 8388607
  switch i32 %65, label %70 [
    i32 2139095040, label %67
    i32 0, label %87
  ]

67:                                               ; preds = %62
  %68 = icmp eq i32 %66, 0
  %69 = select i1 %68, i32 0, i32 1023
  br label %87

70:                                               ; preds = %62
  %71 = lshr exact i32 %65, 23
  %72 = icmp samesign ult i32 %65, 1207959552
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = icmp samesign ult i32 %65, 939524096
  br i1 %74, label %87, label %75

75:                                               ; preds = %73
  %76 = lshr i32 %64, 13
  %77 = and i32 %76, 1
  %78 = add nuw nsw i32 %77, %66
  %79 = add nuw nsw i32 %78, 4095
  %80 = icmp samesign ugt i32 %78, 8384512
  %81 = select i1 %80, i32 4194177, i32 4194176
  %82 = add nuw nsw i32 %81, %71
  %83 = shl i32 %82, 10
  %84 = add i32 %83, 16384
  %85 = lshr i32 %79, 13
  %86 = select i1 %80, i32 0, i32 %85
  br label %87

87:                                               ; preds = %75, %73, %70, %67, %62
  %88 = phi i32 [ 0, %73 ], [ %69, %67 ], [ %65, %62 ], [ %86, %75 ], [ 0, %70 ]
  %89 = phi i32 [ 0, %73 ], [ 31744, %67 ], [ %65, %62 ], [ %84, %75 ], [ 31744, %70 ]
  %90 = lshr i32 %64, 16
  %91 = and i32 %90, 32768
  %92 = or i32 %88, %91
  %93 = or i32 %92, %89
  %94 = trunc nuw i32 %93 to i16
  %95 = getelementptr [2 x i8], ptr %36, i64 %38
  store i16 %94, ptr %95, align 2, !tbaa !135
  %96 = add nuw nsw i64 %38, 1
  %97 = icmp eq i64 %96, %19
  br i1 %97, label %158, label %37, !llvm.loop !193

98:                                               ; preds = %60, %155
  %99 = phi i64 [ %156, %155 ], [ 0, %60 ]
  %100 = phi float [ %152, %155 ], [ %61, %60 ]
  %101 = mul nuw nsw i64 %99, %9
  %102 = add nuw i64 %101, %34
  %103 = mul i64 %102, %22
  %104 = getelementptr [2 x i8], ptr %1, i64 %103
  %105 = mul nuw nsw i64 %99, %19
  %106 = add nuw i64 %105, %38
  %107 = mul i64 %106, %22
  %108 = getelementptr [2 x i8], ptr %2, i64 %107
  br label %109

109:                                              ; preds = %144, %98
  %110 = phi i64 [ 0, %98 ], [ %153, %144 ]
  %111 = phi float [ %100, %98 ], [ %152, %144 ]
  %112 = getelementptr [2 x i8], ptr %104, i64 %110
  %113 = load i16, ptr %112, align 2, !tbaa !135
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 31744
  %116 = and i32 %114, 1023
  switch i32 %115, label %120 [
    i32 31744, label %117
    i32 0, label %124
  ]

117:                                              ; preds = %109
  %118 = icmp eq i32 %116, 0
  %119 = select i1 %118, i32 0, i32 8388607
  br label %124

120:                                              ; preds = %109
  %121 = shl nuw nsw i32 %115, 13
  %122 = add nuw nsw i32 %121, 939524096
  %123 = shl nuw nsw i32 %116, 13
  br label %124

124:                                              ; preds = %120, %117, %109
  %125 = phi i32 [ %123, %120 ], [ %119, %117 ], [ %115, %109 ]
  %126 = phi i32 [ %122, %120 ], [ 2139095040, %117 ], [ %115, %109 ]
  %127 = sext i16 %113 to i32
  %128 = and i32 %127, -2147483648
  %129 = or disjoint i32 %125, %128
  %130 = or i32 %129, %126
  %131 = bitcast i32 %130 to float
  %132 = getelementptr [2 x i8], ptr %108, i64 %110
  %133 = load i16, ptr %132, align 2, !tbaa !135
  %134 = zext i16 %133 to i32
  %135 = and i32 %134, 31744
  %136 = and i32 %134, 1023
  switch i32 %135, label %140 [
    i32 31744, label %137
    i32 0, label %144
  ]

137:                                              ; preds = %124
  %138 = icmp eq i32 %136, 0
  %139 = select i1 %138, i32 0, i32 8388607
  br label %144

140:                                              ; preds = %124
  %141 = shl nuw nsw i32 %135, 13
  %142 = add nuw nsw i32 %141, 939524096
  %143 = shl nuw nsw i32 %136, 13
  br label %144

144:                                              ; preds = %140, %137, %124
  %145 = phi i32 [ %143, %140 ], [ %139, %137 ], [ %135, %124 ]
  %146 = phi i32 [ %142, %140 ], [ 2139095040, %137 ], [ %135, %124 ]
  %147 = sext i16 %133 to i32
  %148 = and i32 %147, -2147483648
  %149 = or disjoint i32 %145, %148
  %150 = or i32 %149, %146
  %151 = bitcast i32 %150 to float
  %152 = tail call float @llvm.fmuladd.f32(float %131, float %151, float %111)
  %153 = add nuw nsw i64 %110, 1
  %154 = icmp eq i64 %153, %22
  br i1 %154, label %155, label %109, !llvm.loop !194

155:                                              ; preds = %144
  %156 = add nuw nsw i64 %99, 1
  %157 = icmp eq i64 %156, %30
  br i1 %157, label %62, label %98, !llvm.loop !195

158:                                              ; preds = %87
  %159 = add nuw nsw i64 %34, 1
  %160 = icmp eq i64 %159, %9
  br i1 %160, label %161, label %33, !llvm.loop !196

161:                                              ; preds = %158, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_generic_noskipround(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %237

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %237

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !172
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !168
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %195

32:                                               ; preds = %24
  br i1 %23, label %33, label %153

33:                                               ; preds = %32, %150
  %34 = phi i64 [ %151, %150 ], [ 0, %32 ]
  %35 = mul nuw nsw i64 %34, %19
  %36 = getelementptr [2 x i8], ptr %0, i64 %35
  br label %37

37:                                               ; preds = %146, %33
  %38 = phi i64 [ 0, %33 ], [ %148, %146 ]
  br i1 %29, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr [2 x i8], ptr %36, i64 %38
  %41 = load i16, ptr %40, align 2, !tbaa !135
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i16 [ 0, %37 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %143
  %45 = phi i64 [ %144, %143 ], [ 0, %42 ]
  %46 = phi i16 [ %140, %143 ], [ %43, %42 ]
  %47 = mul nuw nsw i64 %45, %9
  %48 = add nuw i64 %47, %34
  %49 = mul i64 %48, %22
  %50 = getelementptr [2 x i8], ptr %1, i64 %49
  %51 = mul nuw nsw i64 %45, %19
  %52 = add nuw i64 %51, %38
  %53 = mul i64 %52, %22
  %54 = getelementptr [2 x i8], ptr %2, i64 %53
  br label %55

55:                                               ; preds = %133, %44
  %56 = phi i64 [ 0, %44 ], [ %141, %133 ]
  %57 = phi i16 [ %46, %44 ], [ %140, %133 ]
  %58 = getelementptr [2 x i8], ptr %50, i64 %56
  %59 = load i16, ptr %58, align 2, !tbaa !135
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 32640
  %62 = and i32 %60, 127
  switch i32 %61, label %66 [
    i32 32640, label %63
    i32 0, label %69
  ]

63:                                               ; preds = %55
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 0, i32 8388607
  br label %69

66:                                               ; preds = %55
  %67 = shl nuw nsw i32 %61, 16
  %68 = shl nuw nsw i32 %62, 16
  br label %69

69:                                               ; preds = %66, %63, %55
  %70 = phi i32 [ %68, %66 ], [ %65, %63 ], [ %61, %55 ]
  %71 = phi i32 [ %67, %66 ], [ 2139095040, %63 ], [ %61, %55 ]
  %72 = sext i16 %59 to i32
  %73 = and i32 %72, -2147483648
  %74 = or disjoint i32 %70, %73
  %75 = or i32 %74, %71
  %76 = bitcast i32 %75 to float
  %77 = getelementptr [2 x i8], ptr %54, i64 %56
  %78 = load i16, ptr %77, align 2, !tbaa !135
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 32640
  %81 = and i32 %79, 127
  switch i32 %80, label %85 [
    i32 32640, label %82
    i32 0, label %88
  ]

82:                                               ; preds = %69
  %83 = icmp eq i32 %81, 0
  %84 = select i1 %83, i32 0, i32 8388607
  br label %88

85:                                               ; preds = %69
  %86 = shl nuw nsw i32 %80, 16
  %87 = shl nuw nsw i32 %81, 16
  br label %88

88:                                               ; preds = %85, %82, %69
  %89 = phi i32 [ %87, %85 ], [ %84, %82 ], [ %80, %69 ]
  %90 = phi i32 [ %86, %85 ], [ 2139095040, %82 ], [ %80, %69 ]
  %91 = sext i16 %78 to i32
  %92 = and i32 %91, -2147483648
  %93 = or disjoint i32 %89, %92
  %94 = or i32 %93, %90
  %95 = bitcast i32 %94 to float
  %96 = zext i16 %57 to i32
  %97 = and i32 %96, 32640
  %98 = and i32 %96, 127
  switch i32 %97, label %102 [
    i32 32640, label %99
    i32 0, label %105
  ]

99:                                               ; preds = %88
  %100 = icmp eq i32 %98, 0
  %101 = select i1 %100, i32 0, i32 8388607
  br label %105

102:                                              ; preds = %88
  %103 = shl nuw nsw i32 %97, 16
  %104 = shl nuw nsw i32 %98, 16
  br label %105

105:                                              ; preds = %102, %99, %88
  %106 = phi i32 [ %104, %102 ], [ %101, %99 ], [ %97, %88 ]
  %107 = phi i32 [ %103, %102 ], [ 2139095040, %99 ], [ %97, %88 ]
  %108 = sext i16 %57 to i32
  %109 = and i32 %108, -2147483648
  %110 = or disjoint i32 %106, %109
  %111 = or i32 %110, %107
  %112 = bitcast i32 %111 to float
  %113 = tail call float @llvm.fmuladd.f32(float %76, float %95, float %112)
  %114 = bitcast float %113 to i32
  %115 = and i32 %114, 2139095040
  %116 = and i32 %114, 8388607
  switch i32 %115, label %120 [
    i32 2139095040, label %117
    i32 0, label %133
  ]

117:                                              ; preds = %105
  %118 = icmp eq i32 %116, 0
  %119 = select i1 %118, i32 0, i32 127
  br label %133

120:                                              ; preds = %105
  %121 = lshr exact i32 %115, 23
  %122 = lshr i32 %114, 16
  %123 = and i32 %122, 1
  %124 = add nuw nsw i32 %123, %116
  %125 = add nuw nsw i32 %124, 32767
  %126 = icmp samesign ugt i32 %124, 8355840
  %127 = select i1 %126, i32 33554305, i32 33554304
  %128 = add nuw nsw i32 %127, %121
  %129 = shl i32 %128, 7
  %130 = add i32 %129, 16384
  %131 = lshr i32 %125, 16
  %132 = select i1 %126, i32 0, i32 %131
  br label %133

133:                                              ; preds = %120, %117, %105
  %134 = phi i32 [ %132, %120 ], [ %119, %117 ], [ %115, %105 ]
  %135 = phi i32 [ %130, %120 ], [ 32640, %117 ], [ %115, %105 ]
  %136 = lshr i32 %114, 16
  %137 = and i32 %136, 32768
  %138 = or i32 %134, %137
  %139 = or i32 %138, %135
  %140 = trunc nuw i32 %139 to i16
  %141 = add nuw nsw i64 %56, 1
  %142 = icmp eq i64 %141, %22
  br i1 %142, label %143, label %55, !llvm.loop !197

143:                                              ; preds = %133
  %144 = add nuw nsw i64 %45, 1
  %145 = icmp eq i64 %144, %30
  br i1 %145, label %146, label %44, !llvm.loop !198

146:                                              ; preds = %143
  %147 = getelementptr [2 x i8], ptr %36, i64 %38
  store i16 %140, ptr %147, align 2, !tbaa !135
  %148 = add nuw nsw i64 %38, 1
  %149 = icmp eq i64 %148, %19
  br i1 %149, label %150, label %37, !llvm.loop !199

150:                                              ; preds = %146
  %151 = add nuw nsw i64 %34, 1
  %152 = icmp eq i64 %151, %9
  br i1 %152, label %237, label %33, !llvm.loop !200

153:                                              ; preds = %32
  br i1 %29, label %154, label %237

154:                                              ; preds = %153
  %155 = icmp ult i64 %19, 4
  %156 = icmp ult i64 %19, 16
  %157 = and i64 %17, 15
  %158 = sub nuw nsw i64 %19, %157
  %159 = icmp eq i64 %157, 0
  %160 = icmp samesign ult i64 %157, 4
  %161 = and i64 %17, 3
  %162 = sub nsw i64 %19, %161
  %163 = icmp eq i64 %161, 0
  br label %164

164:                                              ; preds = %154, %192
  %165 = phi i64 [ %193, %192 ], [ 0, %154 ]
  %166 = mul nuw nsw i64 %165, %19
  %167 = getelementptr [2 x i8], ptr %0, i64 %166
  br i1 %155, label %185, label %168

168:                                              ; preds = %164
  br i1 %156, label %177, label %169

169:                                              ; preds = %168, %169
  %170 = phi i64 [ %173, %169 ], [ 0, %168 ]
  %171 = getelementptr [2 x i8], ptr %167, i64 %170
  %172 = getelementptr i8, ptr %171, i64 16
  store <8 x i16> zeroinitializer, ptr %171, align 2, !tbaa !135
  store <8 x i16> zeroinitializer, ptr %172, align 2, !tbaa !135
  %173 = add nuw i64 %170, 16
  %174 = icmp eq i64 %173, %158
  br i1 %174, label %175, label %169, !llvm.loop !201

175:                                              ; preds = %169
  br i1 %159, label %192, label %176

176:                                              ; preds = %175
  br i1 %160, label %185, label %177, !prof !187

177:                                              ; preds = %168, %176
  %178 = phi i64 [ %158, %176 ], [ 0, %168 ]
  br label %179

179:                                              ; preds = %179, %177
  %180 = phi i64 [ %178, %177 ], [ %182, %179 ]
  %181 = getelementptr [2 x i8], ptr %167, i64 %180
  store <4 x i16> zeroinitializer, ptr %181, align 2, !tbaa !135
  %182 = add nuw i64 %180, 4
  %183 = icmp eq i64 %182, %162
  br i1 %183, label %184, label %179, !llvm.loop !202

184:                                              ; preds = %179
  br i1 %163, label %192, label %185

185:                                              ; preds = %164, %176, %184
  %186 = phi i64 [ 0, %164 ], [ %158, %176 ], [ %162, %184 ]
  br label %187

187:                                              ; preds = %185, %187
  %188 = phi i64 [ %190, %187 ], [ %186, %185 ]
  %189 = getelementptr [2 x i8], ptr %167, i64 %188
  store i16 0, ptr %189, align 2, !tbaa !135
  %190 = add nuw nsw i64 %188, 1
  %191 = icmp eq i64 %190, %19
  br i1 %191, label %192, label %187, !llvm.loop !203

192:                                              ; preds = %187, %184, %175
  %193 = add nuw nsw i64 %165, 1
  %194 = icmp eq i64 %193, %9
  br i1 %194, label %237, label %164, !llvm.loop !200

195:                                              ; preds = %24
  br i1 %29, label %196, label %237

196:                                              ; preds = %195
  %197 = icmp ult i64 %19, 4
  %198 = icmp ult i64 %19, 16
  %199 = and i64 %17, 15
  %200 = sub nuw nsw i64 %19, %199
  %201 = icmp eq i64 %199, 0
  %202 = icmp samesign ult i64 %199, 4
  %203 = and i64 %17, 3
  %204 = sub nsw i64 %19, %203
  %205 = icmp eq i64 %203, 0
  br label %206

206:                                              ; preds = %196, %234
  %207 = phi i64 [ %235, %234 ], [ 0, %196 ]
  %208 = mul nuw nsw i64 %207, %19
  %209 = getelementptr [2 x i8], ptr %0, i64 %208
  br i1 %197, label %227, label %210

210:                                              ; preds = %206
  br i1 %198, label %219, label %211

211:                                              ; preds = %210, %211
  %212 = phi i64 [ %215, %211 ], [ 0, %210 ]
  %213 = getelementptr [2 x i8], ptr %209, i64 %212
  %214 = getelementptr i8, ptr %213, i64 16
  store <8 x i16> zeroinitializer, ptr %213, align 2, !tbaa !135
  store <8 x i16> zeroinitializer, ptr %214, align 2, !tbaa !135
  %215 = add nuw i64 %212, 16
  %216 = icmp eq i64 %215, %200
  br i1 %216, label %217, label %211, !llvm.loop !204

217:                                              ; preds = %211
  br i1 %201, label %234, label %218

218:                                              ; preds = %217
  br i1 %202, label %227, label %219, !prof !187

219:                                              ; preds = %210, %218
  %220 = phi i64 [ %200, %218 ], [ 0, %210 ]
  br label %221

221:                                              ; preds = %221, %219
  %222 = phi i64 [ %220, %219 ], [ %224, %221 ]
  %223 = getelementptr [2 x i8], ptr %209, i64 %222
  store <4 x i16> zeroinitializer, ptr %223, align 2, !tbaa !135
  %224 = add nuw i64 %222, 4
  %225 = icmp eq i64 %224, %204
  br i1 %225, label %226, label %221, !llvm.loop !205

226:                                              ; preds = %221
  br i1 %205, label %234, label %227

227:                                              ; preds = %206, %218, %226
  %228 = phi i64 [ 0, %206 ], [ %200, %218 ], [ %204, %226 ]
  br label %229

229:                                              ; preds = %227, %229
  %230 = phi i64 [ %232, %229 ], [ %228, %227 ]
  %231 = getelementptr [2 x i8], ptr %209, i64 %230
  store i16 0, ptr %231, align 2, !tbaa !135
  %232 = add nuw nsw i64 %230, 1
  %233 = icmp eq i64 %232, %19
  br i1 %233, label %234, label %229, !llvm.loop !206

234:                                              ; preds = %229, %226, %217
  %235 = add nuw nsw i64 %207, 1
  %236 = icmp eq i64 %235, %9
  br i1 %236, label %237, label %206, !llvm.loop !200

237:                                              ; preds = %234, %192, %150, %195, %153, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_generic_skipround(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %269

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %269

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !172
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !168
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %211

32:                                               ; preds = %24
  br i1 %23, label %33, label %153

33:                                               ; preds = %32, %150
  %34 = phi i64 [ %151, %150 ], [ 0, %32 ]
  %35 = mul nuw nsw i64 %34, %19
  %36 = getelementptr [2 x i8], ptr %0, i64 %35
  br label %37

37:                                               ; preds = %77, %33
  %38 = phi i64 [ 0, %33 ], [ %86, %77 ]
  br i1 %29, label %39, label %41

39:                                               ; preds = %53, %37
  %40 = phi float [ 0.000000e+00, %37 ], [ %60, %53 ]
  br label %88

41:                                               ; preds = %37
  %42 = getelementptr [2 x i8], ptr %36, i64 %38
  %43 = load i16, ptr %42, align 2, !tbaa !135
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 32640
  %46 = and i32 %44, 127
  switch i32 %45, label %50 [
    i32 32640, label %47
    i32 0, label %53
  ]

47:                                               ; preds = %41
  %48 = icmp eq i32 %46, 0
  %49 = select i1 %48, i32 0, i32 8388607
  br label %53

50:                                               ; preds = %41
  %51 = shl nuw nsw i32 %45, 16
  %52 = shl nuw nsw i32 %46, 16
  br label %53

53:                                               ; preds = %50, %47, %41
  %54 = phi i32 [ %52, %50 ], [ %49, %47 ], [ %45, %41 ]
  %55 = phi i32 [ %51, %50 ], [ 2139095040, %47 ], [ %45, %41 ]
  %56 = sext i16 %43 to i32
  %57 = and i32 %56, -2147483648
  %58 = or disjoint i32 %54, %57
  %59 = or i32 %58, %55
  %60 = bitcast i32 %59 to float
  br label %39

61:                                               ; preds = %146
  %62 = icmp eq i32 %149, 0
  %63 = select i1 %62, i32 0, i32 127
  br label %77

64:                                               ; preds = %146
  %65 = lshr exact i32 %148, 23
  %66 = lshr i32 %147, 16
  %67 = and i32 %66, 1
  %68 = add nuw nsw i32 %67, %149
  %69 = add nuw nsw i32 %68, 32767
  %70 = icmp samesign ugt i32 %68, 8355840
  %71 = select i1 %70, i32 33554305, i32 33554304
  %72 = add nuw nsw i32 %71, %65
  %73 = shl i32 %72, 7
  %74 = add i32 %73, 16384
  %75 = lshr i32 %69, 16
  %76 = select i1 %70, i32 0, i32 %75
  br label %77

77:                                               ; preds = %146, %64, %61
  %78 = phi i32 [ %76, %64 ], [ %63, %61 ], [ %148, %146 ]
  %79 = phi i32 [ %74, %64 ], [ 32640, %61 ], [ %148, %146 ]
  %80 = lshr i32 %147, 16
  %81 = and i32 %80, 32768
  %82 = or i32 %78, %81
  %83 = or i32 %82, %79
  %84 = trunc nuw i32 %83 to i16
  %85 = getelementptr [2 x i8], ptr %36, i64 %38
  store i16 %84, ptr %85, align 2, !tbaa !135
  %86 = add nuw nsw i64 %38, 1
  %87 = icmp eq i64 %86, %19
  br i1 %87, label %150, label %37, !llvm.loop !207

88:                                               ; preds = %39, %143
  %89 = phi i64 [ %144, %143 ], [ 0, %39 ]
  %90 = phi float [ %140, %143 ], [ %40, %39 ]
  %91 = mul nuw nsw i64 %89, %9
  %92 = add nuw i64 %91, %34
  %93 = mul i64 %92, %22
  %94 = getelementptr [2 x i8], ptr %1, i64 %93
  %95 = mul nuw nsw i64 %89, %19
  %96 = add nuw i64 %95, %38
  %97 = mul i64 %96, %22
  %98 = getelementptr [2 x i8], ptr %2, i64 %97
  br label %99

99:                                               ; preds = %132, %88
  %100 = phi i64 [ 0, %88 ], [ %141, %132 ]
  %101 = phi float [ %90, %88 ], [ %140, %132 ]
  %102 = getelementptr [2 x i8], ptr %94, i64 %100
  %103 = load i16, ptr %102, align 2, !tbaa !135
  %104 = zext i16 %103 to i32
  %105 = and i32 %104, 32640
  %106 = and i32 %104, 127
  switch i32 %105, label %110 [
    i32 32640, label %107
    i32 0, label %113
  ]

107:                                              ; preds = %99
  %108 = icmp eq i32 %106, 0
  %109 = select i1 %108, i32 0, i32 8388607
  br label %113

110:                                              ; preds = %99
  %111 = shl nuw nsw i32 %105, 16
  %112 = shl nuw nsw i32 %106, 16
  br label %113

113:                                              ; preds = %110, %107, %99
  %114 = phi i32 [ %112, %110 ], [ %109, %107 ], [ %105, %99 ]
  %115 = phi i32 [ %111, %110 ], [ 2139095040, %107 ], [ %105, %99 ]
  %116 = sext i16 %103 to i32
  %117 = and i32 %116, -2147483648
  %118 = or disjoint i32 %114, %117
  %119 = or i32 %118, %115
  %120 = bitcast i32 %119 to float
  %121 = getelementptr [2 x i8], ptr %98, i64 %100
  %122 = load i16, ptr %121, align 2, !tbaa !135
  %123 = zext i16 %122 to i32
  %124 = and i32 %123, 32640
  %125 = and i32 %123, 127
  switch i32 %124, label %129 [
    i32 32640, label %126
    i32 0, label %132
  ]

126:                                              ; preds = %113
  %127 = icmp eq i32 %125, 0
  %128 = select i1 %127, i32 0, i32 8388607
  br label %132

129:                                              ; preds = %113
  %130 = shl nuw nsw i32 %124, 16
  %131 = shl nuw nsw i32 %125, 16
  br label %132

132:                                              ; preds = %129, %126, %113
  %133 = phi i32 [ %131, %129 ], [ %128, %126 ], [ %124, %113 ]
  %134 = phi i32 [ %130, %129 ], [ 2139095040, %126 ], [ %124, %113 ]
  %135 = sext i16 %122 to i32
  %136 = and i32 %135, -2147483648
  %137 = or disjoint i32 %133, %136
  %138 = or i32 %137, %134
  %139 = bitcast i32 %138 to float
  %140 = tail call float @llvm.fmuladd.f32(float %120, float %139, float %101)
  %141 = add nuw nsw i64 %100, 1
  %142 = icmp eq i64 %141, %22
  br i1 %142, label %143, label %99, !llvm.loop !208

143:                                              ; preds = %132
  %144 = add nuw nsw i64 %89, 1
  %145 = icmp eq i64 %144, %30
  br i1 %145, label %146, label %88, !llvm.loop !209

146:                                              ; preds = %143
  %147 = bitcast float %140 to i32
  %148 = and i32 %147, 2139095040
  %149 = and i32 %147, 8388607
  switch i32 %148, label %64 [
    i32 2139095040, label %61
    i32 0, label %77
  ]

150:                                              ; preds = %77
  %151 = add nuw nsw i64 %34, 1
  %152 = icmp eq i64 %151, %9
  br i1 %152, label %269, label %33, !llvm.loop !210

153:                                              ; preds = %32, %208
  %154 = phi i64 [ %209, %208 ], [ 0, %32 ]
  %155 = mul nuw nsw i64 %154, %19
  %156 = getelementptr [2 x i8], ptr %0, i64 %155
  br label %157

157:                                              ; preds = %196, %153
  %158 = phi i64 [ 0, %153 ], [ %206, %196 ]
  br i1 %29, label %196, label %159

159:                                              ; preds = %157
  %160 = getelementptr [2 x i8], ptr %156, i64 %158
  %161 = load i16, ptr %160, align 2, !tbaa !135
  %162 = zext i16 %161 to i32
  %163 = and i32 %162, 32640
  %164 = and i32 %162, 127
  switch i32 %163, label %168 [
    i32 32640, label %165
    i32 0, label %171
  ]

165:                                              ; preds = %159
  %166 = icmp eq i32 %164, 0
  %167 = select i1 %166, i32 0, i32 8388607
  br label %171

168:                                              ; preds = %159
  %169 = shl nuw nsw i32 %163, 16
  %170 = shl nuw nsw i32 %164, 16
  br label %171

171:                                              ; preds = %159, %165, %168
  %172 = phi i32 [ %170, %168 ], [ %167, %165 ], [ %163, %159 ]
  %173 = phi i32 [ %169, %168 ], [ 2139095040, %165 ], [ %163, %159 ]
  %174 = sext i16 %161 to i32
  %175 = and i32 %174, -2147483648
  %176 = or disjoint i32 %172, %175
  %177 = or i32 %176, %173
  %178 = and i32 %177, 2139095040
  %179 = and i32 %177, 8388607
  switch i32 %178, label %183 [
    i32 2139095040, label %180
    i32 0, label %196
  ]

180:                                              ; preds = %171
  %181 = icmp eq i32 %179, 0
  %182 = select i1 %181, i32 0, i32 127
  br label %196

183:                                              ; preds = %171
  %184 = lshr exact i32 %178, 23
  %185 = lshr i32 %177, 16
  %186 = and i32 %185, 1
  %187 = add nuw nsw i32 %186, %179
  %188 = add nuw nsw i32 %187, 32767
  %189 = icmp samesign ugt i32 %187, 8355840
  %190 = select i1 %189, i32 33554305, i32 33554304
  %191 = add nuw nsw i32 %190, %184
  %192 = shl i32 %191, 7
  %193 = add i32 %192, 16384
  %194 = lshr i32 %188, 16
  %195 = select i1 %189, i32 0, i32 %194
  br label %196

196:                                              ; preds = %157, %171, %183, %180
  %197 = phi i32 [ %177, %183 ], [ %177, %180 ], [ %177, %171 ], [ 0, %157 ]
  %198 = phi i32 [ %195, %183 ], [ %182, %180 ], [ %178, %171 ], [ 0, %157 ]
  %199 = phi i32 [ %193, %183 ], [ 32640, %180 ], [ %178, %171 ], [ 0, %157 ]
  %200 = lshr i32 %197, 16
  %201 = and i32 %200, 32768
  %202 = or i32 %198, %201
  %203 = or i32 %202, %199
  %204 = trunc nuw i32 %203 to i16
  %205 = getelementptr [2 x i8], ptr %156, i64 %158
  store i16 %204, ptr %205, align 2, !tbaa !135
  %206 = add nuw nsw i64 %158, 1
  %207 = icmp eq i64 %206, %19
  br i1 %207, label %208, label %157, !llvm.loop !207

208:                                              ; preds = %196
  %209 = add nuw nsw i64 %154, 1
  %210 = icmp eq i64 %209, %9
  br i1 %210, label %269, label %153, !llvm.loop !210

211:                                              ; preds = %24, %266
  %212 = phi i64 [ %267, %266 ], [ 0, %24 ]
  %213 = mul nuw nsw i64 %212, %19
  %214 = getelementptr [2 x i8], ptr %0, i64 %213
  br label %215

215:                                              ; preds = %211, %254
  %216 = phi i64 [ 0, %211 ], [ %264, %254 ]
  br i1 %29, label %254, label %217

217:                                              ; preds = %215
  %218 = getelementptr [2 x i8], ptr %214, i64 %216
  %219 = load i16, ptr %218, align 2, !tbaa !135
  %220 = zext i16 %219 to i32
  %221 = and i32 %220, 32640
  %222 = and i32 %220, 127
  switch i32 %221, label %226 [
    i32 32640, label %223
    i32 0, label %229
  ]

223:                                              ; preds = %217
  %224 = icmp eq i32 %222, 0
  %225 = select i1 %224, i32 0, i32 8388607
  br label %229

226:                                              ; preds = %217
  %227 = shl nuw nsw i32 %221, 16
  %228 = shl nuw nsw i32 %222, 16
  br label %229

229:                                              ; preds = %217, %223, %226
  %230 = phi i32 [ %228, %226 ], [ %225, %223 ], [ %221, %217 ]
  %231 = phi i32 [ %227, %226 ], [ 2139095040, %223 ], [ %221, %217 ]
  %232 = sext i16 %219 to i32
  %233 = and i32 %232, -2147483648
  %234 = or disjoint i32 %230, %233
  %235 = or i32 %234, %231
  %236 = and i32 %235, 2139095040
  %237 = and i32 %235, 8388607
  switch i32 %236, label %241 [
    i32 2139095040, label %238
    i32 0, label %254
  ]

238:                                              ; preds = %229
  %239 = icmp eq i32 %237, 0
  %240 = select i1 %239, i32 0, i32 127
  br label %254

241:                                              ; preds = %229
  %242 = lshr exact i32 %236, 23
  %243 = lshr i32 %235, 16
  %244 = and i32 %243, 1
  %245 = add nuw nsw i32 %244, %237
  %246 = add nuw nsw i32 %245, 32767
  %247 = icmp samesign ugt i32 %245, 8355840
  %248 = select i1 %247, i32 33554305, i32 33554304
  %249 = add nuw nsw i32 %248, %242
  %250 = shl i32 %249, 7
  %251 = add i32 %250, 16384
  %252 = lshr i32 %246, 16
  %253 = select i1 %247, i32 0, i32 %252
  br label %254

254:                                              ; preds = %215, %241, %238, %229
  %255 = phi i32 [ %235, %241 ], [ %235, %238 ], [ %235, %229 ], [ 0, %215 ]
  %256 = phi i32 [ %253, %241 ], [ %240, %238 ], [ %236, %229 ], [ 0, %215 ]
  %257 = phi i32 [ %251, %241 ], [ 32640, %238 ], [ %236, %229 ], [ 0, %215 ]
  %258 = lshr i32 %255, 16
  %259 = and i32 %258, 32768
  %260 = or i32 %256, %259
  %261 = or i32 %260, %257
  %262 = trunc nuw i32 %261 to i16
  %263 = getelementptr [2 x i8], ptr %214, i64 %216
  store i16 %262, ptr %263, align 2, !tbaa !135
  %264 = add nuw nsw i64 %216, 1
  %265 = icmp eq i64 %264, %19
  br i1 %265, label %266, label %215, !llvm.loop !207

266:                                              ; preds = %254
  %267 = add nuw nsw i64 %212, 1
  %268 = icmp eq i64 %267, %9
  br i1 %268, label %269, label %211, !llvm.loop !210

269:                                              ; preds = %266, %208, %150, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %249

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %249

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !172
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !168
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %222

32:                                               ; preds = %24
  br i1 %23, label %33, label %195

33:                                               ; preds = %32
  br i1 %29, label %40, label %34

34:                                               ; preds = %33
  %35 = and i64 %14, 3
  %36 = icmp ult i64 %22, 4
  %37 = sub nuw nsw i64 %22, %35
  %38 = icmp eq i64 %35, 0
  %39 = icmp ne i64 %35, 0
  br label %120

40:                                               ; preds = %33
  %41 = and i64 %14, 3
  %42 = icmp ult i64 %22, 4
  %43 = sub nuw nsw i64 %22, %41
  %44 = icmp eq i64 %41, 0
  %45 = icmp ne i64 %41, 0
  br label %46

46:                                               ; preds = %40, %117
  %47 = phi i64 [ %118, %117 ], [ 0, %40 ]
  %48 = mul nuw nsw i64 %47, %19
  %49 = getelementptr [4 x i8], ptr %0, i64 %48
  br label %50

50:                                               ; preds = %113, %46
  %51 = phi i64 [ 0, %46 ], [ %115, %113 ]
  br label %52

52:                                               ; preds = %109, %50
  %53 = phi i64 [ 0, %50 ], [ %111, %109 ]
  %54 = phi float [ 0.000000e+00, %50 ], [ %110, %109 ]
  %55 = mul nuw nsw i64 %53, %9
  %56 = add nuw i64 %55, %47
  %57 = mul i64 %56, %22
  %58 = getelementptr [4 x i8], ptr %1, i64 %57
  %59 = mul nuw nsw i64 %53, %19
  %60 = add nuw i64 %59, %51
  %61 = mul i64 %60, %22
  %62 = getelementptr [4 x i8], ptr %2, i64 %61
  br i1 %42, label %94, label %63

63:                                               ; preds = %52, %63
  %64 = phi i64 [ %90, %63 ], [ 0, %52 ]
  %65 = phi float [ %89, %63 ], [ %54, %52 ]
  %66 = phi i64 [ %91, %63 ], [ 0, %52 ]
  %67 = getelementptr [4 x i8], ptr %58, i64 %64
  %68 = load float, ptr %67, align 4, !tbaa !137
  %69 = getelementptr [4 x i8], ptr %62, i64 %64
  %70 = load float, ptr %69, align 4, !tbaa !137
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %70, float %65)
  %72 = or disjoint i64 %64, 1
  %73 = getelementptr [4 x i8], ptr %58, i64 %72
  %74 = load float, ptr %73, align 4, !tbaa !137
  %75 = getelementptr [4 x i8], ptr %62, i64 %72
  %76 = load float, ptr %75, align 4, !tbaa !137
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %76, float %71)
  %78 = or disjoint i64 %64, 2
  %79 = getelementptr [4 x i8], ptr %58, i64 %78
  %80 = load float, ptr %79, align 4, !tbaa !137
  %81 = getelementptr [4 x i8], ptr %62, i64 %78
  %82 = load float, ptr %81, align 4, !tbaa !137
  %83 = tail call float @llvm.fmuladd.f32(float %80, float %82, float %77)
  %84 = or disjoint i64 %64, 3
  %85 = getelementptr [4 x i8], ptr %58, i64 %84
  %86 = load float, ptr %85, align 4, !tbaa !137
  %87 = getelementptr [4 x i8], ptr %62, i64 %84
  %88 = load float, ptr %87, align 4, !tbaa !137
  %89 = tail call float @llvm.fmuladd.f32(float %86, float %88, float %83)
  %90 = add nuw nsw i64 %64, 4
  %91 = add i64 %66, 4
  %92 = icmp eq i64 %91, %43
  br i1 %92, label %93, label %63, !llvm.loop !211

93:                                               ; preds = %63
  br i1 %44, label %109, label %94

94:                                               ; preds = %93, %52
  %95 = phi i64 [ 0, %52 ], [ %90, %93 ]
  %96 = phi float [ %54, %52 ], [ %89, %93 ]
  tail call void @llvm.assume(i1 %45)
  br label %97

97:                                               ; preds = %97, %94
  %98 = phi i64 [ %95, %94 ], [ %106, %97 ]
  %99 = phi float [ %96, %94 ], [ %105, %97 ]
  %100 = phi i64 [ 0, %94 ], [ %107, %97 ]
  %101 = getelementptr [4 x i8], ptr %58, i64 %98
  %102 = load float, ptr %101, align 4, !tbaa !137
  %103 = getelementptr [4 x i8], ptr %62, i64 %98
  %104 = load float, ptr %103, align 4, !tbaa !137
  %105 = tail call float @llvm.fmuladd.f32(float %102, float %104, float %99)
  %106 = add nuw nsw i64 %98, 1
  %107 = add i64 %100, 1
  %108 = icmp eq i64 %107, %41
  br i1 %108, label %109, label %97, !llvm.loop !212

109:                                              ; preds = %97, %93
  %110 = phi float [ %89, %93 ], [ %105, %97 ]
  %111 = add nuw nsw i64 %53, 1
  %112 = icmp eq i64 %111, %30
  br i1 %112, label %113, label %52, !llvm.loop !213

113:                                              ; preds = %109
  %114 = getelementptr [4 x i8], ptr %49, i64 %51
  store float %110, ptr %114, align 4, !tbaa !137
  %115 = add nuw nsw i64 %51, 1
  %116 = icmp eq i64 %115, %19
  br i1 %116, label %117, label %50, !llvm.loop !214

117:                                              ; preds = %113
  %118 = add nuw nsw i64 %47, 1
  %119 = icmp eq i64 %118, %9
  br i1 %119, label %249, label %46, !llvm.loop !215

120:                                              ; preds = %34, %192
  %121 = phi i64 [ %193, %192 ], [ 0, %34 ]
  %122 = mul nuw nsw i64 %121, %19
  %123 = getelementptr [4 x i8], ptr %0, i64 %122
  br label %124

124:                                              ; preds = %189, %120
  %125 = phi i64 [ 0, %120 ], [ %190, %189 ]
  %126 = getelementptr [4 x i8], ptr %123, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !137
  br label %128

128:                                              ; preds = %185, %124
  %129 = phi i64 [ 0, %124 ], [ %187, %185 ]
  %130 = phi float [ %127, %124 ], [ %186, %185 ]
  %131 = mul nuw nsw i64 %129, %9
  %132 = add nuw i64 %131, %121
  %133 = mul i64 %132, %22
  %134 = getelementptr [4 x i8], ptr %1, i64 %133
  %135 = mul nuw nsw i64 %129, %19
  %136 = add nuw i64 %135, %125
  %137 = mul i64 %136, %22
  %138 = getelementptr [4 x i8], ptr %2, i64 %137
  br i1 %36, label %170, label %139

139:                                              ; preds = %128, %139
  %140 = phi i64 [ %166, %139 ], [ 0, %128 ]
  %141 = phi float [ %165, %139 ], [ %130, %128 ]
  %142 = phi i64 [ %167, %139 ], [ 0, %128 ]
  %143 = getelementptr [4 x i8], ptr %134, i64 %140
  %144 = load float, ptr %143, align 4, !tbaa !137
  %145 = getelementptr [4 x i8], ptr %138, i64 %140
  %146 = load float, ptr %145, align 4, !tbaa !137
  %147 = tail call float @llvm.fmuladd.f32(float %144, float %146, float %141)
  %148 = or disjoint i64 %140, 1
  %149 = getelementptr [4 x i8], ptr %134, i64 %148
  %150 = load float, ptr %149, align 4, !tbaa !137
  %151 = getelementptr [4 x i8], ptr %138, i64 %148
  %152 = load float, ptr %151, align 4, !tbaa !137
  %153 = tail call float @llvm.fmuladd.f32(float %150, float %152, float %147)
  %154 = or disjoint i64 %140, 2
  %155 = getelementptr [4 x i8], ptr %134, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !137
  %157 = getelementptr [4 x i8], ptr %138, i64 %154
  %158 = load float, ptr %157, align 4, !tbaa !137
  %159 = tail call float @llvm.fmuladd.f32(float %156, float %158, float %153)
  %160 = or disjoint i64 %140, 3
  %161 = getelementptr [4 x i8], ptr %134, i64 %160
  %162 = load float, ptr %161, align 4, !tbaa !137
  %163 = getelementptr [4 x i8], ptr %138, i64 %160
  %164 = load float, ptr %163, align 4, !tbaa !137
  %165 = tail call float @llvm.fmuladd.f32(float %162, float %164, float %159)
  %166 = add nuw nsw i64 %140, 4
  %167 = add i64 %142, 4
  %168 = icmp eq i64 %167, %37
  br i1 %168, label %169, label %139, !llvm.loop !211

169:                                              ; preds = %139
  br i1 %38, label %185, label %170

170:                                              ; preds = %169, %128
  %171 = phi i64 [ 0, %128 ], [ %166, %169 ]
  %172 = phi float [ %130, %128 ], [ %165, %169 ]
  tail call void @llvm.assume(i1 %39)
  br label %173

173:                                              ; preds = %173, %170
  %174 = phi i64 [ %171, %170 ], [ %182, %173 ]
  %175 = phi float [ %172, %170 ], [ %181, %173 ]
  %176 = phi i64 [ 0, %170 ], [ %183, %173 ]
  %177 = getelementptr [4 x i8], ptr %134, i64 %174
  %178 = load float, ptr %177, align 4, !tbaa !137
  %179 = getelementptr [4 x i8], ptr %138, i64 %174
  %180 = load float, ptr %179, align 4, !tbaa !137
  %181 = tail call float @llvm.fmuladd.f32(float %178, float %180, float %175)
  %182 = add nuw nsw i64 %174, 1
  %183 = add i64 %176, 1
  %184 = icmp eq i64 %183, %35
  br i1 %184, label %185, label %173, !llvm.loop !216

185:                                              ; preds = %173, %169
  %186 = phi float [ %165, %169 ], [ %181, %173 ]
  %187 = add nuw nsw i64 %129, 1
  %188 = icmp eq i64 %187, %30
  br i1 %188, label %189, label %128, !llvm.loop !213

189:                                              ; preds = %185
  store float %186, ptr %126, align 4, !tbaa !137
  %190 = add nuw nsw i64 %125, 1
  %191 = icmp eq i64 %190, %19
  br i1 %191, label %192, label %124, !llvm.loop !214

192:                                              ; preds = %189
  %193 = add nuw nsw i64 %121, 1
  %194 = icmp eq i64 %193, %9
  br i1 %194, label %249, label %120, !llvm.loop !215

195:                                              ; preds = %32
  br i1 %29, label %196, label %249

196:                                              ; preds = %195
  %197 = icmp ult i64 %19, 8
  %198 = and i64 %17, 7
  %199 = sub nuw nsw i64 %19, %198
  %200 = icmp eq i64 %198, 0
  br label %201

201:                                              ; preds = %196, %219
  %202 = phi i64 [ %220, %219 ], [ 0, %196 ]
  %203 = mul nuw nsw i64 %202, %19
  %204 = getelementptr [4 x i8], ptr %0, i64 %203
  br i1 %197, label %212, label %205

205:                                              ; preds = %201, %205
  %206 = phi i64 [ %209, %205 ], [ 0, %201 ]
  %207 = getelementptr [4 x i8], ptr %204, i64 %206
  %208 = getelementptr i8, ptr %207, i64 16
  store <4 x float> zeroinitializer, ptr %207, align 4, !tbaa !137
  store <4 x float> zeroinitializer, ptr %208, align 4, !tbaa !137
  %209 = add nuw i64 %206, 8
  %210 = icmp eq i64 %209, %199
  br i1 %210, label %211, label %205, !llvm.loop !217

211:                                              ; preds = %205
  br i1 %200, label %219, label %212

212:                                              ; preds = %201, %211
  %213 = phi i64 [ 0, %201 ], [ %199, %211 ]
  br label %214

214:                                              ; preds = %212, %214
  %215 = phi i64 [ %217, %214 ], [ %213, %212 ]
  %216 = getelementptr [4 x i8], ptr %204, i64 %215
  store float 0.000000e+00, ptr %216, align 4, !tbaa !137
  %217 = add nuw nsw i64 %215, 1
  %218 = icmp eq i64 %217, %19
  br i1 %218, label %219, label %214, !llvm.loop !218

219:                                              ; preds = %214, %211
  %220 = add nuw nsw i64 %202, 1
  %221 = icmp eq i64 %220, %9
  br i1 %221, label %249, label %201, !llvm.loop !215

222:                                              ; preds = %24
  br i1 %29, label %223, label %249

223:                                              ; preds = %222
  %224 = icmp ult i64 %19, 8
  %225 = and i64 %17, 7
  %226 = sub nuw nsw i64 %19, %225
  %227 = icmp eq i64 %225, 0
  br label %228

228:                                              ; preds = %223, %246
  %229 = phi i64 [ %247, %246 ], [ 0, %223 ]
  %230 = mul nuw nsw i64 %229, %19
  %231 = getelementptr [4 x i8], ptr %0, i64 %230
  br i1 %224, label %239, label %232

232:                                              ; preds = %228, %232
  %233 = phi i64 [ %236, %232 ], [ 0, %228 ]
  %234 = getelementptr [4 x i8], ptr %231, i64 %233
  %235 = getelementptr i8, ptr %234, i64 16
  store <4 x float> zeroinitializer, ptr %234, align 4, !tbaa !137
  store <4 x float> zeroinitializer, ptr %235, align 4, !tbaa !137
  %236 = add nuw i64 %233, 8
  %237 = icmp eq i64 %236, %226
  br i1 %237, label %238, label %232, !llvm.loop !219

238:                                              ; preds = %232
  br i1 %227, label %246, label %239

239:                                              ; preds = %228, %238
  %240 = phi i64 [ 0, %228 ], [ %226, %238 ]
  br label %241

241:                                              ; preds = %239, %241
  %242 = phi i64 [ %244, %241 ], [ %240, %239 ]
  %243 = getelementptr [4 x i8], ptr %231, i64 %242
  store float 0.000000e+00, ptr %243, align 4, !tbaa !137
  %244 = add nuw nsw i64 %242, 1
  %245 = icmp eq i64 %244, %19
  br i1 %245, label %246, label %241, !llvm.loop !220

246:                                              ; preds = %241, %238
  %247 = add nuw nsw i64 %229, 1
  %248 = icmp eq i64 %247, %9
  br i1 %248, label %249, label %228, !llvm.loop !215

249:                                              ; preds = %246, %219, %192, %117, %222, %195, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s4s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %314

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = trunc i32 %13 to i16
  %15 = sdiv i16 %14, 2
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %18 = load i32, ptr %17, align 4, !tbaa !170
  %19 = zext i32 %18 to i64
  %20 = shl i64 %19, 48
  %21 = ashr exact i64 %20, 48
  %22 = icmp sgt i64 %21, 0
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %24 = sext i16 %15 to i64
  %25 = icmp sgt i16 %14, 1
  %26 = shl i64 %16, 48
  %27 = ashr exact i64 %26, 48
  br i1 %22, label %28, label %314

28:                                               ; preds = %11
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %30 = load i64, ptr %29, align 8, !tbaa !168
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = and i64 %19, 1
  %34 = icmp eq i64 %20, 281474976710656
  %35 = sub nsw i64 %21, %33
  %36 = icmp eq i64 %33, 0
  %37 = trunc i32 %18 to i1
  br label %270

38:                                               ; preds = %28
  br i1 %25, label %45, label %39

39:                                               ; preds = %38
  %40 = and i64 %19, 1
  %41 = icmp eq i64 %20, 281474976710656
  %42 = sub nsw i64 %21, %40
  %43 = icmp eq i64 %40, 0
  %44 = trunc i32 %18 to i1
  br label %226

45:                                               ; preds = %38
  %46 = icmp ult i16 %15, 8
  %47 = and i64 %24, 16376
  %48 = icmp eq i64 %47, %24
  br label %49

49:                                               ; preds = %45, %223
  %50 = phi i64 [ %224, %223 ], [ 0, %45 ]
  %51 = mul nuw nsw i64 %50, %21
  %52 = getelementptr [4 x i8], ptr %0, i64 %51
  br label %53

53:                                               ; preds = %219, %49
  %54 = phi i64 [ 0, %49 ], [ %221, %219 ]
  %55 = load i32, ptr %23, align 4, !tbaa !172
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = getelementptr [4 x i8], ptr %52, i64 %54
  %60 = load i32, ptr %59, align 4, !tbaa !15
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i32 [ 0, %53 ], [ %60, %58 ]
  br label %63

63:                                               ; preds = %61, %215
  %64 = phi i64 [ %217, %215 ], [ 0, %61 ]
  %65 = phi i32 [ %216, %215 ], [ %62, %61 ]
  %66 = mul nuw nsw i64 %64, %9
  %67 = add nuw i64 %66, %50
  %68 = mul i64 %67, %27
  %69 = getelementptr i8, ptr %1, i64 %68
  %70 = mul nuw nsw i64 %64, %21
  %71 = add nuw i64 %70, %54
  %72 = mul i64 %71, %24
  %73 = getelementptr i8, ptr %2, i64 %72
  br i1 %46, label %184, label %74

74:                                               ; preds = %63
  %75 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %65, i64 0
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %179, %76 ]
  %78 = phi <4 x i32> [ %75, %74 ], [ %177, %76 ]
  %79 = phi <4 x i32> [ zeroinitializer, %74 ], [ %178, %76 ]
  %80 = shl nuw nsw i64 %77, 1
  %81 = shl i64 %77, 1
  %82 = shl i64 %77, 1
  %83 = shl i64 %77, 1
  %84 = shl i64 %77, 1
  %85 = shl i64 %77, 1
  %86 = shl i64 %77, 1
  %87 = shl i64 %77, 1
  %88 = getelementptr i8, ptr %69, i64 %80
  %89 = getelementptr i8, ptr %69, i64 %81
  %90 = getelementptr i8, ptr %89, i64 2
  %91 = getelementptr i8, ptr %69, i64 %82
  %92 = getelementptr i8, ptr %91, i64 4
  %93 = getelementptr i8, ptr %69, i64 %83
  %94 = getelementptr i8, ptr %93, i64 6
  %95 = getelementptr i8, ptr %69, i64 %84
  %96 = getelementptr i8, ptr %95, i64 8
  %97 = getelementptr i8, ptr %69, i64 %85
  %98 = getelementptr i8, ptr %97, i64 10
  %99 = getelementptr i8, ptr %69, i64 %86
  %100 = getelementptr i8, ptr %99, i64 12
  %101 = getelementptr i8, ptr %69, i64 %87
  %102 = getelementptr i8, ptr %101, i64 14
  %103 = load i8, ptr %88, align 1, !tbaa !221
  %104 = load i8, ptr %90, align 1, !tbaa !221
  %105 = load i8, ptr %92, align 1, !tbaa !221
  %106 = load i8, ptr %94, align 1, !tbaa !221
  %107 = insertelement <4 x i8> poison, i8 %103, i64 0
  %108 = insertelement <4 x i8> %107, i8 %104, i64 1
  %109 = insertelement <4 x i8> %108, i8 %105, i64 2
  %110 = insertelement <4 x i8> %109, i8 %106, i64 3
  %111 = load i8, ptr %96, align 1, !tbaa !221
  %112 = load i8, ptr %98, align 1, !tbaa !221
  %113 = load i8, ptr %100, align 1, !tbaa !221
  %114 = load i8, ptr %102, align 1, !tbaa !221
  %115 = insertelement <4 x i8> poison, i8 %111, i64 0
  %116 = insertelement <4 x i8> %115, i8 %112, i64 1
  %117 = insertelement <4 x i8> %116, i8 %113, i64 2
  %118 = insertelement <4 x i8> %117, i8 %114, i64 3
  %119 = sext <4 x i8> %110 to <4 x i32>
  %120 = sext <4 x i8> %118 to <4 x i32>
  %121 = getelementptr i8, ptr %88, i64 1
  %122 = getelementptr i8, ptr %89, i64 3
  %123 = getelementptr i8, ptr %91, i64 5
  %124 = getelementptr i8, ptr %93, i64 7
  %125 = getelementptr i8, ptr %95, i64 9
  %126 = getelementptr i8, ptr %97, i64 11
  %127 = getelementptr i8, ptr %99, i64 13
  %128 = getelementptr i8, ptr %101, i64 15
  %129 = load i8, ptr %121, align 1, !tbaa !221
  %130 = load i8, ptr %122, align 1, !tbaa !221
  %131 = load i8, ptr %123, align 1, !tbaa !221
  %132 = load i8, ptr %124, align 1, !tbaa !221
  %133 = insertelement <4 x i8> poison, i8 %129, i64 0
  %134 = insertelement <4 x i8> %133, i8 %130, i64 1
  %135 = insertelement <4 x i8> %134, i8 %131, i64 2
  %136 = insertelement <4 x i8> %135, i8 %132, i64 3
  %137 = load i8, ptr %125, align 1, !tbaa !221
  %138 = load i8, ptr %126, align 1, !tbaa !221
  %139 = load i8, ptr %127, align 1, !tbaa !221
  %140 = load i8, ptr %128, align 1, !tbaa !221
  %141 = insertelement <4 x i8> poison, i8 %137, i64 0
  %142 = insertelement <4 x i8> %141, i8 %138, i64 1
  %143 = insertelement <4 x i8> %142, i8 %139, i64 2
  %144 = insertelement <4 x i8> %143, i8 %140, i64 3
  %145 = sext <4 x i8> %136 to <4 x i32>
  %146 = sext <4 x i8> %144 to <4 x i32>
  %147 = getelementptr i8, ptr %73, i64 %77
  %148 = getelementptr i8, ptr %147, i64 4
  %149 = load <4 x i8>, ptr %147, align 1, !tbaa !221
  %150 = load <4 x i8>, ptr %148, align 1, !tbaa !221
  %151 = and <4 x i8> %149, splat (i8 15)
  %152 = and <4 x i8> %150, splat (i8 15)
  %153 = icmp samesign ult <4 x i8> %151, splat (i8 8)
  %154 = icmp samesign ult <4 x i8> %152, splat (i8 8)
  %155 = select <4 x i1> %153, <4 x i8> zeroinitializer, <4 x i8> splat (i8 -16)
  %156 = select <4 x i1> %154, <4 x i8> zeroinitializer, <4 x i8> splat (i8 -16)
  %157 = or disjoint <4 x i8> %155, %151
  %158 = or disjoint <4 x i8> %156, %152
  %159 = lshr <4 x i8> %149, splat (i8 4)
  %160 = lshr <4 x i8> %150, splat (i8 4)
  %161 = or disjoint <4 x i8> %159, splat (i8 -16)
  %162 = or disjoint <4 x i8> %160, splat (i8 -16)
  %163 = icmp slt <4 x i8> %149, zeroinitializer
  %164 = icmp slt <4 x i8> %150, zeroinitializer
  %165 = select <4 x i1> %163, <4 x i8> %161, <4 x i8> %159
  %166 = select <4 x i1> %164, <4 x i8> %162, <4 x i8> %160
  %167 = sext <4 x i8> %157 to <4 x i32>
  %168 = sext <4 x i8> %158 to <4 x i32>
  %169 = mul nsw <4 x i32> %167, %119
  %170 = mul nsw <4 x i32> %168, %120
  %171 = sext <4 x i8> %165 to <4 x i32>
  %172 = sext <4 x i8> %166 to <4 x i32>
  %173 = mul nsw <4 x i32> %171, %145
  %174 = mul nsw <4 x i32> %172, %146
  %175 = add <4 x i32> %173, %78
  %176 = add <4 x i32> %174, %79
  %177 = add <4 x i32> %175, %169
  %178 = add <4 x i32> %176, %170
  %179 = add nuw i64 %77, 8
  %180 = icmp eq i64 %179, %47
  br i1 %180, label %181, label %76, !llvm.loop !222

181:                                              ; preds = %76
  %182 = add <4 x i32> %178, %177
  %183 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %182)
  br i1 %48, label %215, label %184

184:                                              ; preds = %63, %181
  %185 = phi i64 [ 0, %63 ], [ %47, %181 ]
  %186 = phi i32 [ %65, %63 ], [ %183, %181 ]
  br label %187

187:                                              ; preds = %184, %187
  %188 = phi i64 [ %213, %187 ], [ %185, %184 ]
  %189 = phi i32 [ %212, %187 ], [ %186, %184 ]
  %190 = shl nuw nsw i64 %188, 1
  %191 = getelementptr i8, ptr %69, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !221
  %193 = sext i8 %192 to i32
  %194 = getelementptr i8, ptr %191, i64 1
  %195 = load i8, ptr %194, align 1, !tbaa !221
  %196 = sext i8 %195 to i32
  %197 = getelementptr i8, ptr %73, i64 %188
  %198 = load i8, ptr %197, align 1, !tbaa !221
  %199 = and i8 %198, 15
  %200 = icmp samesign ult i8 %199, 8
  %201 = select i1 %200, i8 0, i8 -16
  %202 = or disjoint i8 %201, %199
  %203 = lshr i8 %198, 4
  %204 = or disjoint i8 %203, -16
  %205 = icmp slt i8 %198, 0
  %206 = select i1 %205, i8 %204, i8 %203
  %207 = sext i8 %202 to i32
  %208 = mul nsw i32 %207, %193
  %209 = sext i8 %206 to i32
  %210 = mul nsw i32 %209, %196
  %211 = add i32 %210, %189
  %212 = add i32 %211, %208
  %213 = add nuw nsw i64 %188, 1
  %214 = icmp eq i64 %213, %24
  br i1 %214, label %215, label %187, !llvm.loop !223

215:                                              ; preds = %187, %181
  %216 = phi i32 [ %183, %181 ], [ %212, %187 ]
  %217 = add nuw nsw i64 %64, 1
  %218 = icmp eq i64 %217, %30
  br i1 %218, label %219, label %63, !llvm.loop !224

219:                                              ; preds = %215
  %220 = getelementptr [4 x i8], ptr %52, i64 %54
  store i32 %216, ptr %220, align 4, !tbaa !15
  %221 = add nuw nsw i64 %54, 1
  %222 = icmp eq i64 %221, %21
  br i1 %222, label %223, label %53, !llvm.loop !225

223:                                              ; preds = %219
  %224 = add nuw nsw i64 %50, 1
  %225 = icmp eq i64 %224, %9
  br i1 %225, label %314, label %49, !llvm.loop !226

226:                                              ; preds = %39, %267
  %227 = phi i64 [ %268, %267 ], [ 0, %39 ]
  %228 = mul nuw nsw i64 %227, %21
  %229 = getelementptr [4 x i8], ptr %0, i64 %228
  br i1 %41, label %256, label %230

230:                                              ; preds = %226, %249
  %231 = phi i64 [ %252, %249 ], [ 0, %226 ]
  %232 = phi i64 [ %253, %249 ], [ 0, %226 ]
  %233 = load i32, ptr %23, align 4, !tbaa !172
  %234 = and i32 %233, 256
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %230
  %237 = getelementptr [4 x i8], ptr %229, i64 %231
  %238 = load i32, ptr %237, align 4, !tbaa !15
  br label %239

239:                                              ; preds = %236, %230
  %240 = phi i32 [ %238, %236 ], [ 0, %230 ]
  %241 = getelementptr [4 x i8], ptr %229, i64 %231
  store i32 %240, ptr %241, align 4, !tbaa !15
  %242 = or disjoint i64 %231, 1
  %243 = load i32, ptr %23, align 4, !tbaa !172
  %244 = and i32 %243, 256
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %239
  %247 = getelementptr [4 x i8], ptr %229, i64 %242
  %248 = load i32, ptr %247, align 4, !tbaa !15
  br label %249

249:                                              ; preds = %246, %239
  %250 = phi i32 [ %248, %246 ], [ 0, %239 ]
  %251 = getelementptr [4 x i8], ptr %229, i64 %242
  store i32 %250, ptr %251, align 4, !tbaa !15
  %252 = add nuw nsw i64 %231, 2
  %253 = add i64 %232, 2
  %254 = icmp eq i64 %253, %42
  br i1 %254, label %255, label %230, !llvm.loop !225

255:                                              ; preds = %249
  br i1 %43, label %267, label %256

256:                                              ; preds = %255, %226
  %257 = phi i64 [ 0, %226 ], [ %252, %255 ]
  tail call void @llvm.assume(i1 %44)
  %258 = load i32, ptr %23, align 4, !tbaa !172
  %259 = and i32 %258, 256
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %256
  %262 = getelementptr [4 x i8], ptr %229, i64 %257
  %263 = load i32, ptr %262, align 4, !tbaa !15
  br label %264

264:                                              ; preds = %261, %256
  %265 = phi i32 [ %263, %261 ], [ 0, %256 ]
  %266 = getelementptr [4 x i8], ptr %229, i64 %257
  store i32 %265, ptr %266, align 4, !tbaa !15
  br label %267

267:                                              ; preds = %255, %264
  %268 = add nuw nsw i64 %227, 1
  %269 = icmp eq i64 %268, %9
  br i1 %269, label %314, label %226, !llvm.loop !226

270:                                              ; preds = %32, %311
  %271 = phi i64 [ %312, %311 ], [ 0, %32 ]
  %272 = mul nuw nsw i64 %271, %21
  %273 = getelementptr [4 x i8], ptr %0, i64 %272
  br i1 %34, label %300, label %274

274:                                              ; preds = %270, %293
  %275 = phi i64 [ %296, %293 ], [ 0, %270 ]
  %276 = phi i64 [ %297, %293 ], [ 0, %270 ]
  %277 = load i32, ptr %23, align 4, !tbaa !172
  %278 = and i32 %277, 256
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %274
  %281 = getelementptr [4 x i8], ptr %273, i64 %275
  %282 = load i32, ptr %281, align 4, !tbaa !15
  br label %283

283:                                              ; preds = %280, %274
  %284 = phi i32 [ %282, %280 ], [ 0, %274 ]
  %285 = getelementptr [4 x i8], ptr %273, i64 %275
  store i32 %284, ptr %285, align 4, !tbaa !15
  %286 = or disjoint i64 %275, 1
  %287 = load i32, ptr %23, align 4, !tbaa !172
  %288 = and i32 %287, 256
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %283
  %291 = getelementptr [4 x i8], ptr %273, i64 %286
  %292 = load i32, ptr %291, align 4, !tbaa !15
  br label %293

293:                                              ; preds = %290, %283
  %294 = phi i32 [ %292, %290 ], [ 0, %283 ]
  %295 = getelementptr [4 x i8], ptr %273, i64 %286
  store i32 %294, ptr %295, align 4, !tbaa !15
  %296 = add nuw nsw i64 %275, 2
  %297 = add i64 %276, 2
  %298 = icmp eq i64 %297, %35
  br i1 %298, label %299, label %274, !llvm.loop !225

299:                                              ; preds = %293
  br i1 %36, label %311, label %300

300:                                              ; preds = %299, %270
  %301 = phi i64 [ 0, %270 ], [ %296, %299 ]
  tail call void @llvm.assume(i1 %37)
  %302 = load i32, ptr %23, align 4, !tbaa !172
  %303 = and i32 %302, 256
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %300
  %306 = getelementptr [4 x i8], ptr %273, i64 %301
  %307 = load i32, ptr %306, align 4, !tbaa !15
  br label %308

308:                                              ; preds = %305, %300
  %309 = phi i32 [ %307, %305 ], [ 0, %300 ]
  %310 = getelementptr [4 x i8], ptr %273, i64 %301
  store i32 %309, ptr %310, align 4, !tbaa !15
  br label %311

311:                                              ; preds = %299, %308
  %312 = add nuw nsw i64 %271, 1
  %313 = icmp eq i64 %312, %9
  br i1 %313, label %314, label %270, !llvm.loop !226

314:                                              ; preds = %311, %267, %223, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %214

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %22 = shl i64 %14, 48
  %23 = ashr exact i64 %22, 48
  %24 = icmp sgt i64 %23, 0
  br i1 %20, label %25, label %214

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !168
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = and i64 %17, 1
  %31 = icmp eq i64 %18, 281474976710656
  %32 = sub nsw i64 %19, %30
  %33 = icmp eq i64 %30, 0
  %34 = trunc i32 %16 to i1
  br label %170

35:                                               ; preds = %25
  br i1 %24, label %42, label %36

36:                                               ; preds = %35
  %37 = and i64 %17, 1
  %38 = icmp eq i64 %18, 281474976710656
  %39 = sub nsw i64 %19, %37
  %40 = icmp eq i64 %37, 0
  %41 = trunc i32 %16 to i1
  br label %126

42:                                               ; preds = %35
  %43 = icmp ult i64 %23, 8
  %44 = and i64 %14, 7
  %45 = sub nuw nsw i64 %23, %44
  %46 = icmp eq i64 %44, 0
  br label %47

47:                                               ; preds = %42, %123
  %48 = phi i64 [ %124, %123 ], [ 0, %42 ]
  %49 = mul nuw nsw i64 %48, %19
  %50 = getelementptr [4 x i8], ptr %0, i64 %49
  br label %51

51:                                               ; preds = %119, %47
  %52 = phi i64 [ 0, %47 ], [ %121, %119 ]
  %53 = load i32, ptr %21, align 4, !tbaa !172
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr [4 x i8], ptr %50, i64 %52
  %58 = load i32, ptr %57, align 4, !tbaa !15
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i32 [ 0, %51 ], [ %58, %56 ]
  br label %61

61:                                               ; preds = %59, %115
  %62 = phi i64 [ %117, %115 ], [ 0, %59 ]
  %63 = phi i32 [ %116, %115 ], [ %60, %59 ]
  %64 = mul nuw nsw i64 %62, %9
  %65 = add nuw i64 %64, %48
  %66 = mul i64 %65, %23
  %67 = getelementptr [2 x i8], ptr %1, i64 %66
  %68 = mul nuw nsw i64 %62, %19
  %69 = add nuw i64 %68, %52
  %70 = mul i64 %69, %23
  %71 = getelementptr [2 x i8], ptr %2, i64 %70
  br i1 %43, label %99, label %72

72:                                               ; preds = %61
  %73 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %63, i64 0
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %94, %74 ]
  %76 = phi <4 x i32> [ %73, %72 ], [ %92, %74 ]
  %77 = phi <4 x i32> [ zeroinitializer, %72 ], [ %93, %74 ]
  %78 = getelementptr [2 x i8], ptr %67, i64 %75
  %79 = getelementptr i8, ptr %78, i64 8
  %80 = load <4 x i16>, ptr %78, align 2, !tbaa !135
  %81 = load <4 x i16>, ptr %79, align 2, !tbaa !135
  %82 = sext <4 x i16> %80 to <4 x i32>
  %83 = sext <4 x i16> %81 to <4 x i32>
  %84 = getelementptr [2 x i8], ptr %71, i64 %75
  %85 = getelementptr i8, ptr %84, i64 8
  %86 = load <4 x i16>, ptr %84, align 2, !tbaa !135
  %87 = load <4 x i16>, ptr %85, align 2, !tbaa !135
  %88 = sext <4 x i16> %86 to <4 x i32>
  %89 = sext <4 x i16> %87 to <4 x i32>
  %90 = mul nsw <4 x i32> %88, %82
  %91 = mul nsw <4 x i32> %89, %83
  %92 = add <4 x i32> %90, %76
  %93 = add <4 x i32> %91, %77
  %94 = add nuw i64 %75, 8
  %95 = icmp eq i64 %94, %45
  br i1 %95, label %96, label %74, !llvm.loop !227

96:                                               ; preds = %74
  %97 = add <4 x i32> %93, %92
  %98 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %97)
  br i1 %46, label %115, label %99

99:                                               ; preds = %61, %96
  %100 = phi i64 [ 0, %61 ], [ %45, %96 ]
  %101 = phi i32 [ %63, %61 ], [ %98, %96 ]
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi i64 [ %113, %102 ], [ %100, %99 ]
  %104 = phi i32 [ %112, %102 ], [ %101, %99 ]
  %105 = getelementptr [2 x i8], ptr %67, i64 %103
  %106 = load i16, ptr %105, align 2, !tbaa !135
  %107 = sext i16 %106 to i32
  %108 = getelementptr [2 x i8], ptr %71, i64 %103
  %109 = load i16, ptr %108, align 2, !tbaa !135
  %110 = sext i16 %109 to i32
  %111 = mul nsw i32 %110, %107
  %112 = add nsw i32 %111, %104
  %113 = add nuw nsw i64 %103, 1
  %114 = icmp eq i64 %113, %23
  br i1 %114, label %115, label %102, !llvm.loop !228

115:                                              ; preds = %102, %96
  %116 = phi i32 [ %98, %96 ], [ %112, %102 ]
  %117 = add nuw nsw i64 %62, 1
  %118 = icmp eq i64 %117, %27
  br i1 %118, label %119, label %61, !llvm.loop !229

119:                                              ; preds = %115
  %120 = getelementptr [4 x i8], ptr %50, i64 %52
  store i32 %116, ptr %120, align 4, !tbaa !15
  %121 = add nuw nsw i64 %52, 1
  %122 = icmp eq i64 %121, %19
  br i1 %122, label %123, label %51, !llvm.loop !230

123:                                              ; preds = %119
  %124 = add nuw nsw i64 %48, 1
  %125 = icmp eq i64 %124, %9
  br i1 %125, label %214, label %47, !llvm.loop !231

126:                                              ; preds = %36, %167
  %127 = phi i64 [ %168, %167 ], [ 0, %36 ]
  %128 = mul nuw nsw i64 %127, %19
  %129 = getelementptr [4 x i8], ptr %0, i64 %128
  br i1 %38, label %156, label %130

130:                                              ; preds = %126, %149
  %131 = phi i64 [ %152, %149 ], [ 0, %126 ]
  %132 = phi i64 [ %153, %149 ], [ 0, %126 ]
  %133 = load i32, ptr %21, align 4, !tbaa !172
  %134 = and i32 %133, 256
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = getelementptr [4 x i8], ptr %129, i64 %131
  %138 = load i32, ptr %137, align 4, !tbaa !15
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi i32 [ %138, %136 ], [ 0, %130 ]
  %141 = getelementptr [4 x i8], ptr %129, i64 %131
  store i32 %140, ptr %141, align 4, !tbaa !15
  %142 = or disjoint i64 %131, 1
  %143 = load i32, ptr %21, align 4, !tbaa !172
  %144 = and i32 %143, 256
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %139
  %147 = getelementptr [4 x i8], ptr %129, i64 %142
  %148 = load i32, ptr %147, align 4, !tbaa !15
  br label %149

149:                                              ; preds = %146, %139
  %150 = phi i32 [ %148, %146 ], [ 0, %139 ]
  %151 = getelementptr [4 x i8], ptr %129, i64 %142
  store i32 %150, ptr %151, align 4, !tbaa !15
  %152 = add nuw nsw i64 %131, 2
  %153 = add i64 %132, 2
  %154 = icmp eq i64 %153, %39
  br i1 %154, label %155, label %130, !llvm.loop !230

155:                                              ; preds = %149
  br i1 %40, label %167, label %156

156:                                              ; preds = %155, %126
  %157 = phi i64 [ 0, %126 ], [ %152, %155 ]
  tail call void @llvm.assume(i1 %41)
  %158 = load i32, ptr %21, align 4, !tbaa !172
  %159 = and i32 %158, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr [4 x i8], ptr %129, i64 %157
  %163 = load i32, ptr %162, align 4, !tbaa !15
  br label %164

164:                                              ; preds = %161, %156
  %165 = phi i32 [ %163, %161 ], [ 0, %156 ]
  %166 = getelementptr [4 x i8], ptr %129, i64 %157
  store i32 %165, ptr %166, align 4, !tbaa !15
  br label %167

167:                                              ; preds = %155, %164
  %168 = add nuw nsw i64 %127, 1
  %169 = icmp eq i64 %168, %9
  br i1 %169, label %214, label %126, !llvm.loop !231

170:                                              ; preds = %29, %211
  %171 = phi i64 [ %212, %211 ], [ 0, %29 ]
  %172 = mul nuw nsw i64 %171, %19
  %173 = getelementptr [4 x i8], ptr %0, i64 %172
  br i1 %31, label %200, label %174

174:                                              ; preds = %170, %193
  %175 = phi i64 [ %196, %193 ], [ 0, %170 ]
  %176 = phi i64 [ %197, %193 ], [ 0, %170 ]
  %177 = load i32, ptr %21, align 4, !tbaa !172
  %178 = and i32 %177, 256
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %174
  %181 = getelementptr [4 x i8], ptr %173, i64 %175
  %182 = load i32, ptr %181, align 4, !tbaa !15
  br label %183

183:                                              ; preds = %180, %174
  %184 = phi i32 [ %182, %180 ], [ 0, %174 ]
  %185 = getelementptr [4 x i8], ptr %173, i64 %175
  store i32 %184, ptr %185, align 4, !tbaa !15
  %186 = or disjoint i64 %175, 1
  %187 = load i32, ptr %21, align 4, !tbaa !172
  %188 = and i32 %187, 256
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %183
  %191 = getelementptr [4 x i8], ptr %173, i64 %186
  %192 = load i32, ptr %191, align 4, !tbaa !15
  br label %193

193:                                              ; preds = %190, %183
  %194 = phi i32 [ %192, %190 ], [ 0, %183 ]
  %195 = getelementptr [4 x i8], ptr %173, i64 %186
  store i32 %194, ptr %195, align 4, !tbaa !15
  %196 = add nuw nsw i64 %175, 2
  %197 = add i64 %176, 2
  %198 = icmp eq i64 %197, %32
  br i1 %198, label %199, label %174, !llvm.loop !230

199:                                              ; preds = %193
  br i1 %33, label %211, label %200

200:                                              ; preds = %199, %170
  %201 = phi i64 [ 0, %170 ], [ %196, %199 ]
  tail call void @llvm.assume(i1 %34)
  %202 = load i32, ptr %21, align 4, !tbaa !172
  %203 = and i32 %202, 256
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = getelementptr [4 x i8], ptr %173, i64 %201
  %207 = load i32, ptr %206, align 4, !tbaa !15
  br label %208

208:                                              ; preds = %205, %200
  %209 = phi i32 [ %207, %205 ], [ 0, %200 ]
  %210 = getelementptr [4 x i8], ptr %173, i64 %201
  store i32 %209, ptr %210, align 4, !tbaa !15
  br label %211

211:                                              ; preds = %199, %208
  %212 = add nuw nsw i64 %171, 1
  %213 = icmp eq i64 %212, %9
  br i1 %213, label %214, label %170, !llvm.loop !231

214:                                              ; preds = %211, %167, %123, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16u4s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %241

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = trunc i32 %13 to i16
  %15 = sdiv i16 %14, 2
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %18 = load i32, ptr %17, align 4, !tbaa !170
  %19 = zext i32 %18 to i64
  %20 = shl i64 %19, 48
  %21 = ashr exact i64 %20, 48
  %22 = icmp sgt i64 %21, 0
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %24 = sext i16 %15 to i64
  %25 = icmp sgt i16 %14, 1
  %26 = shl i64 %16, 48
  %27 = ashr exact i64 %26, 48
  br i1 %22, label %28, label %241

28:                                               ; preds = %11
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %30 = load i64, ptr %29, align 8, !tbaa !168
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = and i64 %19, 1
  %34 = icmp eq i64 %20, 281474976710656
  %35 = sub nsw i64 %21, %33
  %36 = icmp eq i64 %33, 0
  %37 = trunc i32 %18 to i1
  br label %197

38:                                               ; preds = %28
  br i1 %25, label %45, label %39

39:                                               ; preds = %38
  %40 = and i64 %19, 1
  %41 = icmp eq i64 %20, 281474976710656
  %42 = sub nsw i64 %21, %40
  %43 = icmp eq i64 %40, 0
  %44 = trunc i32 %18 to i1
  br label %153

45:                                               ; preds = %38
  %46 = icmp ult i16 %15, 8
  %47 = and i64 %24, 16376
  %48 = icmp eq i64 %47, %24
  br label %49

49:                                               ; preds = %45, %150
  %50 = phi i64 [ %151, %150 ], [ 0, %45 ]
  %51 = mul nuw nsw i64 %50, %21
  %52 = getelementptr [4 x i8], ptr %0, i64 %51
  br label %53

53:                                               ; preds = %146, %49
  %54 = phi i64 [ 0, %49 ], [ %148, %146 ]
  %55 = load i32, ptr %23, align 4, !tbaa !172
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = getelementptr [4 x i8], ptr %52, i64 %54
  %60 = load i32, ptr %59, align 4, !tbaa !15
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i32 [ 0, %53 ], [ %60, %58 ]
  br label %63

63:                                               ; preds = %61, %142
  %64 = phi i32 [ %143, %142 ], [ %62, %61 ]
  %65 = phi i64 [ %144, %142 ], [ 0, %61 ]
  %66 = mul nuw nsw i64 %65, %9
  %67 = add nuw i64 %66, %50
  %68 = mul i64 %67, %27
  %69 = getelementptr [2 x i8], ptr %1, i64 %68
  %70 = mul nuw nsw i64 %65, %21
  %71 = add nuw i64 %70, %54
  %72 = mul i64 %71, %24
  %73 = getelementptr i8, ptr %2, i64 %72
  br i1 %46, label %118, label %74

74:                                               ; preds = %63
  %75 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %64, i64 0
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %113, %76 ]
  %78 = phi <4 x i32> [ %75, %74 ], [ %111, %76 ]
  %79 = phi <4 x i32> [ zeroinitializer, %74 ], [ %112, %76 ]
  %80 = shl i64 %77, 2
  %81 = shl i64 %77, 2
  %82 = getelementptr i8, ptr %69, i64 %80
  %83 = getelementptr i8, ptr %69, i64 %81
  %84 = getelementptr i8, ptr %83, i64 16
  %85 = load <8 x i16>, ptr %82, align 2, !tbaa !135
  %86 = shufflevector <8 x i16> %85, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %87 = shufflevector <8 x i16> %85, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %88 = load <8 x i16>, ptr %84, align 2, !tbaa !135
  %89 = shufflevector <8 x i16> %88, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %90 = shufflevector <8 x i16> %88, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %91 = sext <4 x i16> %86 to <4 x i32>
  %92 = sext <4 x i16> %89 to <4 x i32>
  %93 = sext <4 x i16> %87 to <4 x i32>
  %94 = sext <4 x i16> %90 to <4 x i32>
  %95 = getelementptr i8, ptr %73, i64 %77
  %96 = getelementptr i8, ptr %95, i64 4
  %97 = load <4 x i8>, ptr %95, align 1, !tbaa !221
  %98 = load <4 x i8>, ptr %96, align 1, !tbaa !221
  %99 = zext <4 x i8> %97 to <4 x i32>
  %100 = zext <4 x i8> %98 to <4 x i32>
  %101 = and <4 x i32> %99, splat (i32 15)
  %102 = and <4 x i32> %100, splat (i32 15)
  %103 = lshr <4 x i32> %99, splat (i32 4)
  %104 = lshr <4 x i32> %100, splat (i32 4)
  %105 = mul nsw <4 x i32> %101, %91
  %106 = mul nsw <4 x i32> %102, %92
  %107 = mul nsw <4 x i32> %103, %93
  %108 = mul nsw <4 x i32> %104, %94
  %109 = add <4 x i32> %107, %78
  %110 = add <4 x i32> %108, %79
  %111 = add <4 x i32> %109, %105
  %112 = add <4 x i32> %110, %106
  %113 = add nuw i64 %77, 8
  %114 = icmp eq i64 %113, %47
  br i1 %114, label %115, label %76, !llvm.loop !232

115:                                              ; preds = %76
  %116 = add <4 x i32> %112, %111
  %117 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %116)
  br i1 %48, label %142, label %118

118:                                              ; preds = %63, %115
  %119 = phi i32 [ %64, %63 ], [ %117, %115 ]
  %120 = phi i64 [ 0, %63 ], [ %47, %115 ]
  br label %121

121:                                              ; preds = %118, %121
  %122 = phi i32 [ %139, %121 ], [ %119, %118 ]
  %123 = phi i64 [ %140, %121 ], [ %120, %118 ]
  %124 = shl i64 %123, 2
  %125 = getelementptr i8, ptr %69, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !135
  %127 = sext i16 %126 to i32
  %128 = getelementptr i8, ptr %125, i64 2
  %129 = load i16, ptr %128, align 2, !tbaa !135
  %130 = sext i16 %129 to i32
  %131 = getelementptr i8, ptr %73, i64 %123
  %132 = load i8, ptr %131, align 1, !tbaa !221
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 15
  %135 = lshr i32 %133, 4
  %136 = mul nsw i32 %134, %127
  %137 = mul nsw i32 %135, %130
  %138 = add i32 %137, %122
  %139 = add i32 %138, %136
  %140 = add nuw nsw i64 %123, 1
  %141 = icmp eq i64 %140, %24
  br i1 %141, label %142, label %121, !llvm.loop !233

142:                                              ; preds = %121, %115
  %143 = phi i32 [ %117, %115 ], [ %139, %121 ]
  %144 = add nuw nsw i64 %65, 1
  %145 = icmp eq i64 %144, %30
  br i1 %145, label %146, label %63, !llvm.loop !234

146:                                              ; preds = %142
  %147 = getelementptr [4 x i8], ptr %52, i64 %54
  store i32 %143, ptr %147, align 4, !tbaa !15
  %148 = add nuw nsw i64 %54, 1
  %149 = icmp eq i64 %148, %21
  br i1 %149, label %150, label %53, !llvm.loop !235

150:                                              ; preds = %146
  %151 = add nuw nsw i64 %50, 1
  %152 = icmp eq i64 %151, %9
  br i1 %152, label %241, label %49, !llvm.loop !236

153:                                              ; preds = %39, %194
  %154 = phi i64 [ %195, %194 ], [ 0, %39 ]
  %155 = mul nuw nsw i64 %154, %21
  %156 = getelementptr [4 x i8], ptr %0, i64 %155
  br i1 %41, label %183, label %157

157:                                              ; preds = %153, %176
  %158 = phi i64 [ %179, %176 ], [ 0, %153 ]
  %159 = phi i64 [ %180, %176 ], [ 0, %153 ]
  %160 = load i32, ptr %23, align 4, !tbaa !172
  %161 = and i32 %160, 256
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = getelementptr [4 x i8], ptr %156, i64 %158
  %165 = load i32, ptr %164, align 4, !tbaa !15
  br label %166

166:                                              ; preds = %163, %157
  %167 = phi i32 [ %165, %163 ], [ 0, %157 ]
  %168 = getelementptr [4 x i8], ptr %156, i64 %158
  store i32 %167, ptr %168, align 4, !tbaa !15
  %169 = or disjoint i64 %158, 1
  %170 = load i32, ptr %23, align 4, !tbaa !172
  %171 = and i32 %170, 256
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %166
  %174 = getelementptr [4 x i8], ptr %156, i64 %169
  %175 = load i32, ptr %174, align 4, !tbaa !15
  br label %176

176:                                              ; preds = %173, %166
  %177 = phi i32 [ %175, %173 ], [ 0, %166 ]
  %178 = getelementptr [4 x i8], ptr %156, i64 %169
  store i32 %177, ptr %178, align 4, !tbaa !15
  %179 = add nuw nsw i64 %158, 2
  %180 = add i64 %159, 2
  %181 = icmp eq i64 %180, %42
  br i1 %181, label %182, label %157, !llvm.loop !235

182:                                              ; preds = %176
  br i1 %43, label %194, label %183

183:                                              ; preds = %182, %153
  %184 = phi i64 [ 0, %153 ], [ %179, %182 ]
  tail call void @llvm.assume(i1 %44)
  %185 = load i32, ptr %23, align 4, !tbaa !172
  %186 = and i32 %185, 256
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = getelementptr [4 x i8], ptr %156, i64 %184
  %190 = load i32, ptr %189, align 4, !tbaa !15
  br label %191

191:                                              ; preds = %188, %183
  %192 = phi i32 [ %190, %188 ], [ 0, %183 ]
  %193 = getelementptr [4 x i8], ptr %156, i64 %184
  store i32 %192, ptr %193, align 4, !tbaa !15
  br label %194

194:                                              ; preds = %182, %191
  %195 = add nuw nsw i64 %154, 1
  %196 = icmp eq i64 %195, %9
  br i1 %196, label %241, label %153, !llvm.loop !236

197:                                              ; preds = %32, %238
  %198 = phi i64 [ %239, %238 ], [ 0, %32 ]
  %199 = mul nuw nsw i64 %198, %21
  %200 = getelementptr [4 x i8], ptr %0, i64 %199
  br i1 %34, label %227, label %201

201:                                              ; preds = %197, %220
  %202 = phi i64 [ %223, %220 ], [ 0, %197 ]
  %203 = phi i64 [ %224, %220 ], [ 0, %197 ]
  %204 = load i32, ptr %23, align 4, !tbaa !172
  %205 = and i32 %204, 256
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %201
  %208 = getelementptr [4 x i8], ptr %200, i64 %202
  %209 = load i32, ptr %208, align 4, !tbaa !15
  br label %210

210:                                              ; preds = %207, %201
  %211 = phi i32 [ %209, %207 ], [ 0, %201 ]
  %212 = getelementptr [4 x i8], ptr %200, i64 %202
  store i32 %211, ptr %212, align 4, !tbaa !15
  %213 = or disjoint i64 %202, 1
  %214 = load i32, ptr %23, align 4, !tbaa !172
  %215 = and i32 %214, 256
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %210
  %218 = getelementptr [4 x i8], ptr %200, i64 %213
  %219 = load i32, ptr %218, align 4, !tbaa !15
  br label %220

220:                                              ; preds = %217, %210
  %221 = phi i32 [ %219, %217 ], [ 0, %210 ]
  %222 = getelementptr [4 x i8], ptr %200, i64 %213
  store i32 %221, ptr %222, align 4, !tbaa !15
  %223 = add nuw nsw i64 %202, 2
  %224 = add i64 %203, 2
  %225 = icmp eq i64 %224, %35
  br i1 %225, label %226, label %201, !llvm.loop !235

226:                                              ; preds = %220
  br i1 %36, label %238, label %227

227:                                              ; preds = %226, %197
  %228 = phi i64 [ 0, %197 ], [ %223, %226 ]
  tail call void @llvm.assume(i1 %37)
  %229 = load i32, ptr %23, align 4, !tbaa !172
  %230 = and i32 %229, 256
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %227
  %233 = getelementptr [4 x i8], ptr %200, i64 %228
  %234 = load i32, ptr %233, align 4, !tbaa !15
  br label %235

235:                                              ; preds = %232, %227
  %236 = phi i32 [ %234, %232 ], [ 0, %227 ]
  %237 = getelementptr [4 x i8], ptr %200, i64 %228
  store i32 %236, ptr %237, align 4, !tbaa !15
  br label %238

238:                                              ; preds = %226, %235
  %239 = add nuw nsw i64 %198, 1
  %240 = icmp eq i64 %239, %9
  br i1 %240, label %241, label %197, !llvm.loop !236

241:                                              ; preds = %238, %194, %150, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s8s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %214

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %22 = shl i64 %14, 48
  %23 = ashr exact i64 %22, 48
  %24 = icmp sgt i64 %23, 0
  br i1 %20, label %25, label %214

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !168
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = and i64 %17, 1
  %31 = icmp eq i64 %18, 281474976710656
  %32 = sub nsw i64 %19, %30
  %33 = icmp eq i64 %30, 0
  %34 = trunc i32 %16 to i1
  br label %170

35:                                               ; preds = %25
  br i1 %24, label %42, label %36

36:                                               ; preds = %35
  %37 = and i64 %17, 1
  %38 = icmp eq i64 %18, 281474976710656
  %39 = sub nsw i64 %19, %37
  %40 = icmp eq i64 %37, 0
  %41 = trunc i32 %16 to i1
  br label %126

42:                                               ; preds = %35
  %43 = icmp ult i64 %23, 8
  %44 = and i64 %14, 7
  %45 = sub nuw nsw i64 %23, %44
  %46 = icmp eq i64 %44, 0
  br label %47

47:                                               ; preds = %42, %123
  %48 = phi i64 [ %124, %123 ], [ 0, %42 ]
  %49 = mul nuw nsw i64 %48, %19
  %50 = getelementptr [4 x i8], ptr %0, i64 %49
  br label %51

51:                                               ; preds = %119, %47
  %52 = phi i64 [ 0, %47 ], [ %121, %119 ]
  %53 = load i32, ptr %21, align 4, !tbaa !172
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr [4 x i8], ptr %50, i64 %52
  %58 = load i32, ptr %57, align 4, !tbaa !15
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i32 [ 0, %51 ], [ %58, %56 ]
  br label %61

61:                                               ; preds = %59, %115
  %62 = phi i64 [ %117, %115 ], [ 0, %59 ]
  %63 = phi i32 [ %116, %115 ], [ %60, %59 ]
  %64 = mul nuw nsw i64 %62, %9
  %65 = add nuw i64 %64, %48
  %66 = mul i64 %65, %23
  %67 = getelementptr [2 x i8], ptr %1, i64 %66
  %68 = mul nuw nsw i64 %62, %19
  %69 = add nuw i64 %68, %52
  %70 = mul i64 %69, %23
  %71 = getelementptr i8, ptr %2, i64 %70
  br i1 %43, label %99, label %72

72:                                               ; preds = %61
  %73 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %63, i64 0
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %94, %74 ]
  %76 = phi <4 x i32> [ %73, %72 ], [ %92, %74 ]
  %77 = phi <4 x i32> [ zeroinitializer, %72 ], [ %93, %74 ]
  %78 = getelementptr [2 x i8], ptr %67, i64 %75
  %79 = getelementptr i8, ptr %78, i64 8
  %80 = load <4 x i16>, ptr %78, align 2, !tbaa !135
  %81 = load <4 x i16>, ptr %79, align 2, !tbaa !135
  %82 = sext <4 x i16> %80 to <4 x i32>
  %83 = sext <4 x i16> %81 to <4 x i32>
  %84 = getelementptr i8, ptr %71, i64 %75
  %85 = getelementptr i8, ptr %84, i64 4
  %86 = load <4 x i8>, ptr %84, align 1, !tbaa !221
  %87 = load <4 x i8>, ptr %85, align 1, !tbaa !221
  %88 = sext <4 x i8> %86 to <4 x i32>
  %89 = sext <4 x i8> %87 to <4 x i32>
  %90 = mul nsw <4 x i32> %88, %82
  %91 = mul nsw <4 x i32> %89, %83
  %92 = add <4 x i32> %90, %76
  %93 = add <4 x i32> %91, %77
  %94 = add nuw i64 %75, 8
  %95 = icmp eq i64 %94, %45
  br i1 %95, label %96, label %74, !llvm.loop !237

96:                                               ; preds = %74
  %97 = add <4 x i32> %93, %92
  %98 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %97)
  br i1 %46, label %115, label %99

99:                                               ; preds = %61, %96
  %100 = phi i64 [ 0, %61 ], [ %45, %96 ]
  %101 = phi i32 [ %63, %61 ], [ %98, %96 ]
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi i64 [ %113, %102 ], [ %100, %99 ]
  %104 = phi i32 [ %112, %102 ], [ %101, %99 ]
  %105 = getelementptr [2 x i8], ptr %67, i64 %103
  %106 = load i16, ptr %105, align 2, !tbaa !135
  %107 = sext i16 %106 to i32
  %108 = getelementptr i8, ptr %71, i64 %103
  %109 = load i8, ptr %108, align 1, !tbaa !221
  %110 = sext i8 %109 to i32
  %111 = mul nsw i32 %110, %107
  %112 = add nsw i32 %111, %104
  %113 = add nuw nsw i64 %103, 1
  %114 = icmp eq i64 %113, %23
  br i1 %114, label %115, label %102, !llvm.loop !238

115:                                              ; preds = %102, %96
  %116 = phi i32 [ %98, %96 ], [ %112, %102 ]
  %117 = add nuw nsw i64 %62, 1
  %118 = icmp eq i64 %117, %27
  br i1 %118, label %119, label %61, !llvm.loop !239

119:                                              ; preds = %115
  %120 = getelementptr [4 x i8], ptr %50, i64 %52
  store i32 %116, ptr %120, align 4, !tbaa !15
  %121 = add nuw nsw i64 %52, 1
  %122 = icmp eq i64 %121, %19
  br i1 %122, label %123, label %51, !llvm.loop !240

123:                                              ; preds = %119
  %124 = add nuw nsw i64 %48, 1
  %125 = icmp eq i64 %124, %9
  br i1 %125, label %214, label %47, !llvm.loop !241

126:                                              ; preds = %36, %167
  %127 = phi i64 [ %168, %167 ], [ 0, %36 ]
  %128 = mul nuw nsw i64 %127, %19
  %129 = getelementptr [4 x i8], ptr %0, i64 %128
  br i1 %38, label %156, label %130

130:                                              ; preds = %126, %149
  %131 = phi i64 [ %152, %149 ], [ 0, %126 ]
  %132 = phi i64 [ %153, %149 ], [ 0, %126 ]
  %133 = load i32, ptr %21, align 4, !tbaa !172
  %134 = and i32 %133, 256
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = getelementptr [4 x i8], ptr %129, i64 %131
  %138 = load i32, ptr %137, align 4, !tbaa !15
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi i32 [ %138, %136 ], [ 0, %130 ]
  %141 = getelementptr [4 x i8], ptr %129, i64 %131
  store i32 %140, ptr %141, align 4, !tbaa !15
  %142 = or disjoint i64 %131, 1
  %143 = load i32, ptr %21, align 4, !tbaa !172
  %144 = and i32 %143, 256
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %139
  %147 = getelementptr [4 x i8], ptr %129, i64 %142
  %148 = load i32, ptr %147, align 4, !tbaa !15
  br label %149

149:                                              ; preds = %146, %139
  %150 = phi i32 [ %148, %146 ], [ 0, %139 ]
  %151 = getelementptr [4 x i8], ptr %129, i64 %142
  store i32 %150, ptr %151, align 4, !tbaa !15
  %152 = add nuw nsw i64 %131, 2
  %153 = add i64 %132, 2
  %154 = icmp eq i64 %153, %39
  br i1 %154, label %155, label %130, !llvm.loop !240

155:                                              ; preds = %149
  br i1 %40, label %167, label %156

156:                                              ; preds = %155, %126
  %157 = phi i64 [ 0, %126 ], [ %152, %155 ]
  tail call void @llvm.assume(i1 %41)
  %158 = load i32, ptr %21, align 4, !tbaa !172
  %159 = and i32 %158, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr [4 x i8], ptr %129, i64 %157
  %163 = load i32, ptr %162, align 4, !tbaa !15
  br label %164

164:                                              ; preds = %161, %156
  %165 = phi i32 [ %163, %161 ], [ 0, %156 ]
  %166 = getelementptr [4 x i8], ptr %129, i64 %157
  store i32 %165, ptr %166, align 4, !tbaa !15
  br label %167

167:                                              ; preds = %155, %164
  %168 = add nuw nsw i64 %127, 1
  %169 = icmp eq i64 %168, %9
  br i1 %169, label %214, label %126, !llvm.loop !241

170:                                              ; preds = %29, %211
  %171 = phi i64 [ %212, %211 ], [ 0, %29 ]
  %172 = mul nuw nsw i64 %171, %19
  %173 = getelementptr [4 x i8], ptr %0, i64 %172
  br i1 %31, label %200, label %174

174:                                              ; preds = %170, %193
  %175 = phi i64 [ %196, %193 ], [ 0, %170 ]
  %176 = phi i64 [ %197, %193 ], [ 0, %170 ]
  %177 = load i32, ptr %21, align 4, !tbaa !172
  %178 = and i32 %177, 256
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %174
  %181 = getelementptr [4 x i8], ptr %173, i64 %175
  %182 = load i32, ptr %181, align 4, !tbaa !15
  br label %183

183:                                              ; preds = %180, %174
  %184 = phi i32 [ %182, %180 ], [ 0, %174 ]
  %185 = getelementptr [4 x i8], ptr %173, i64 %175
  store i32 %184, ptr %185, align 4, !tbaa !15
  %186 = or disjoint i64 %175, 1
  %187 = load i32, ptr %21, align 4, !tbaa !172
  %188 = and i32 %187, 256
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %183
  %191 = getelementptr [4 x i8], ptr %173, i64 %186
  %192 = load i32, ptr %191, align 4, !tbaa !15
  br label %193

193:                                              ; preds = %190, %183
  %194 = phi i32 [ %192, %190 ], [ 0, %183 ]
  %195 = getelementptr [4 x i8], ptr %173, i64 %186
  store i32 %194, ptr %195, align 4, !tbaa !15
  %196 = add nuw nsw i64 %175, 2
  %197 = add i64 %176, 2
  %198 = icmp eq i64 %197, %32
  br i1 %198, label %199, label %174, !llvm.loop !240

199:                                              ; preds = %193
  br i1 %33, label %211, label %200

200:                                              ; preds = %199, %170
  %201 = phi i64 [ 0, %170 ], [ %196, %199 ]
  tail call void @llvm.assume(i1 %34)
  %202 = load i32, ptr %21, align 4, !tbaa !172
  %203 = and i32 %202, 256
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = getelementptr [4 x i8], ptr %173, i64 %201
  %207 = load i32, ptr %206, align 4, !tbaa !15
  br label %208

208:                                              ; preds = %205, %200
  %209 = phi i32 [ %207, %205 ], [ 0, %200 ]
  %210 = getelementptr [4 x i8], ptr %173, i64 %201
  store i32 %209, ptr %210, align 4, !tbaa !15
  br label %211

211:                                              ; preds = %199, %208
  %212 = add nuw nsw i64 %171, 1
  %213 = icmp eq i64 %212, %9
  br i1 %213, label %214, label %170, !llvm.loop !241

214:                                              ; preds = %211, %167, %123, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %165

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %165

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !172
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !168
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %138

32:                                               ; preds = %24
  br i1 %23, label %33, label %111

33:                                               ; preds = %32, %108
  %34 = phi i64 [ %109, %108 ], [ 0, %32 ]
  %35 = mul nuw nsw i64 %34, %19
  %36 = getelementptr [4 x i8], ptr %0, i64 %35
  br label %37

37:                                               ; preds = %104, %33
  %38 = phi i64 [ 0, %33 ], [ %106, %104 ]
  br i1 %29, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr [4 x i8], ptr %36, i64 %38
  %41 = load float, ptr %40, align 4, !tbaa !137
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi float [ 0.000000e+00, %37 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %101
  %45 = phi i64 [ %102, %101 ], [ 0, %42 ]
  %46 = phi float [ %98, %101 ], [ %43, %42 ]
  %47 = mul nuw nsw i64 %45, %9
  %48 = add nuw i64 %47, %34
  %49 = mul i64 %48, %22
  %50 = getelementptr [2 x i8], ptr %1, i64 %49
  %51 = mul nuw nsw i64 %45, %19
  %52 = add nuw i64 %51, %38
  %53 = mul i64 %52, %22
  %54 = getelementptr [2 x i8], ptr %2, i64 %53
  br label %55

55:                                               ; preds = %90, %44
  %56 = phi i64 [ 0, %44 ], [ %99, %90 ]
  %57 = phi float [ %46, %44 ], [ %98, %90 ]
  %58 = getelementptr [2 x i8], ptr %50, i64 %56
  %59 = load i16, ptr %58, align 2, !tbaa !135
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 31744
  %62 = and i32 %60, 1023
  switch i32 %61, label %66 [
    i32 31744, label %63
    i32 0, label %70
  ]

63:                                               ; preds = %55
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 0, i32 8388607
  br label %70

66:                                               ; preds = %55
  %67 = shl nuw nsw i32 %61, 13
  %68 = add nuw nsw i32 %67, 939524096
  %69 = shl nuw nsw i32 %62, 13
  br label %70

70:                                               ; preds = %66, %63, %55
  %71 = phi i32 [ %69, %66 ], [ %65, %63 ], [ %61, %55 ]
  %72 = phi i32 [ %68, %66 ], [ 2139095040, %63 ], [ %61, %55 ]
  %73 = sext i16 %59 to i32
  %74 = and i32 %73, -2147483648
  %75 = or disjoint i32 %71, %74
  %76 = or i32 %75, %72
  %77 = bitcast i32 %76 to float
  %78 = getelementptr [2 x i8], ptr %54, i64 %56
  %79 = load i16, ptr %78, align 2, !tbaa !135
  %80 = zext i16 %79 to i32
  %81 = and i32 %80, 31744
  %82 = and i32 %80, 1023
  switch i32 %81, label %86 [
    i32 31744, label %83
    i32 0, label %90
  ]

83:                                               ; preds = %70
  %84 = icmp eq i32 %82, 0
  %85 = select i1 %84, i32 0, i32 8388607
  br label %90

86:                                               ; preds = %70
  %87 = shl nuw nsw i32 %81, 13
  %88 = add nuw nsw i32 %87, 939524096
  %89 = shl nuw nsw i32 %82, 13
  br label %90

90:                                               ; preds = %86, %83, %70
  %91 = phi i32 [ %89, %86 ], [ %85, %83 ], [ %81, %70 ]
  %92 = phi i32 [ %88, %86 ], [ 2139095040, %83 ], [ %81, %70 ]
  %93 = sext i16 %79 to i32
  %94 = and i32 %93, -2147483648
  %95 = or disjoint i32 %91, %94
  %96 = or i32 %95, %92
  %97 = bitcast i32 %96 to float
  %98 = tail call float @llvm.fmuladd.f32(float %77, float %97, float %57)
  %99 = add nuw nsw i64 %56, 1
  %100 = icmp eq i64 %99, %22
  br i1 %100, label %101, label %55, !llvm.loop !242

101:                                              ; preds = %90
  %102 = add nuw nsw i64 %45, 1
  %103 = icmp eq i64 %102, %30
  br i1 %103, label %104, label %44, !llvm.loop !243

104:                                              ; preds = %101
  %105 = getelementptr [4 x i8], ptr %36, i64 %38
  store float %98, ptr %105, align 4, !tbaa !137
  %106 = add nuw nsw i64 %38, 1
  %107 = icmp eq i64 %106, %19
  br i1 %107, label %108, label %37, !llvm.loop !244

108:                                              ; preds = %104
  %109 = add nuw nsw i64 %34, 1
  %110 = icmp eq i64 %109, %9
  br i1 %110, label %165, label %33, !llvm.loop !245

111:                                              ; preds = %32
  br i1 %29, label %112, label %165

112:                                              ; preds = %111
  %113 = icmp ult i64 %19, 8
  %114 = and i64 %17, 7
  %115 = sub nuw nsw i64 %19, %114
  %116 = icmp eq i64 %114, 0
  br label %117

117:                                              ; preds = %112, %135
  %118 = phi i64 [ %136, %135 ], [ 0, %112 ]
  %119 = mul nuw nsw i64 %118, %19
  %120 = getelementptr [4 x i8], ptr %0, i64 %119
  br i1 %113, label %128, label %121

121:                                              ; preds = %117, %121
  %122 = phi i64 [ %125, %121 ], [ 0, %117 ]
  %123 = getelementptr [4 x i8], ptr %120, i64 %122
  %124 = getelementptr i8, ptr %123, i64 16
  store <4 x float> zeroinitializer, ptr %123, align 4, !tbaa !137
  store <4 x float> zeroinitializer, ptr %124, align 4, !tbaa !137
  %125 = add nuw i64 %122, 8
  %126 = icmp eq i64 %125, %115
  br i1 %126, label %127, label %121, !llvm.loop !246

127:                                              ; preds = %121
  br i1 %116, label %135, label %128

128:                                              ; preds = %117, %127
  %129 = phi i64 [ 0, %117 ], [ %115, %127 ]
  br label %130

130:                                              ; preds = %128, %130
  %131 = phi i64 [ %133, %130 ], [ %129, %128 ]
  %132 = getelementptr [4 x i8], ptr %120, i64 %131
  store float 0.000000e+00, ptr %132, align 4, !tbaa !137
  %133 = add nuw nsw i64 %131, 1
  %134 = icmp eq i64 %133, %19
  br i1 %134, label %135, label %130, !llvm.loop !247

135:                                              ; preds = %130, %127
  %136 = add nuw nsw i64 %118, 1
  %137 = icmp eq i64 %136, %9
  br i1 %137, label %165, label %117, !llvm.loop !245

138:                                              ; preds = %24
  br i1 %29, label %139, label %165

139:                                              ; preds = %138
  %140 = icmp ult i64 %19, 8
  %141 = and i64 %17, 7
  %142 = sub nuw nsw i64 %19, %141
  %143 = icmp eq i64 %141, 0
  br label %144

144:                                              ; preds = %139, %162
  %145 = phi i64 [ %163, %162 ], [ 0, %139 ]
  %146 = mul nuw nsw i64 %145, %19
  %147 = getelementptr [4 x i8], ptr %0, i64 %146
  br i1 %140, label %155, label %148

148:                                              ; preds = %144, %148
  %149 = phi i64 [ %152, %148 ], [ 0, %144 ]
  %150 = getelementptr [4 x i8], ptr %147, i64 %149
  %151 = getelementptr i8, ptr %150, i64 16
  store <4 x float> zeroinitializer, ptr %150, align 4, !tbaa !137
  store <4 x float> zeroinitializer, ptr %151, align 4, !tbaa !137
  %152 = add nuw i64 %149, 8
  %153 = icmp eq i64 %152, %142
  br i1 %153, label %154, label %148, !llvm.loop !248

154:                                              ; preds = %148
  br i1 %143, label %162, label %155

155:                                              ; preds = %144, %154
  %156 = phi i64 [ 0, %144 ], [ %142, %154 ]
  br label %157

157:                                              ; preds = %155, %157
  %158 = phi i64 [ %160, %157 ], [ %156, %155 ]
  %159 = getelementptr [4 x i8], ptr %147, i64 %158
  store float 0.000000e+00, ptr %159, align 4, !tbaa !137
  %160 = add nuw nsw i64 %158, 1
  %161 = icmp eq i64 %160, %19
  br i1 %161, label %162, label %157, !llvm.loop !249

162:                                              ; preds = %157, %154
  %163 = add nuw nsw i64 %145, 1
  %164 = icmp eq i64 %163, %9
  br i1 %164, label %165, label %144, !llvm.loop !245

165:                                              ; preds = %162, %135, %108, %138, %111, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %163

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = shl i64 %14, 48
  %22 = ashr exact i64 %21, 48
  %23 = icmp sgt i64 %22, 0
  br i1 %20, label %24, label %163

24:                                               ; preds = %11
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %27 = load i32, ptr %26, align 4, !tbaa !172
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %25, align 8, !tbaa !168
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %136

32:                                               ; preds = %24
  br i1 %23, label %33, label %109

33:                                               ; preds = %32, %106
  %34 = phi i64 [ %107, %106 ], [ 0, %32 ]
  %35 = mul nuw nsw i64 %34, %19
  %36 = getelementptr [4 x i8], ptr %0, i64 %35
  br label %37

37:                                               ; preds = %102, %33
  %38 = phi i64 [ 0, %33 ], [ %104, %102 ]
  br i1 %29, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr [4 x i8], ptr %36, i64 %38
  %41 = load float, ptr %40, align 4, !tbaa !137
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi float [ 0.000000e+00, %37 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %99
  %45 = phi i64 [ %100, %99 ], [ 0, %42 ]
  %46 = phi float [ %96, %99 ], [ %43, %42 ]
  %47 = mul nuw nsw i64 %45, %9
  %48 = add nuw i64 %47, %34
  %49 = mul i64 %48, %22
  %50 = getelementptr [2 x i8], ptr %1, i64 %49
  %51 = mul nuw nsw i64 %45, %19
  %52 = add nuw i64 %51, %38
  %53 = mul i64 %52, %22
  %54 = getelementptr [2 x i8], ptr %2, i64 %53
  br label %55

55:                                               ; preds = %88, %44
  %56 = phi i64 [ 0, %44 ], [ %97, %88 ]
  %57 = phi float [ %46, %44 ], [ %96, %88 ]
  %58 = getelementptr [2 x i8], ptr %50, i64 %56
  %59 = load i16, ptr %58, align 2, !tbaa !135
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 32640
  %62 = and i32 %60, 127
  switch i32 %61, label %66 [
    i32 32640, label %63
    i32 0, label %69
  ]

63:                                               ; preds = %55
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %64, i32 0, i32 8388607
  br label %69

66:                                               ; preds = %55
  %67 = shl nuw nsw i32 %61, 16
  %68 = shl nuw nsw i32 %62, 16
  br label %69

69:                                               ; preds = %66, %63, %55
  %70 = phi i32 [ %68, %66 ], [ %65, %63 ], [ %61, %55 ]
  %71 = phi i32 [ %67, %66 ], [ 2139095040, %63 ], [ %61, %55 ]
  %72 = sext i16 %59 to i32
  %73 = and i32 %72, -2147483648
  %74 = or disjoint i32 %70, %73
  %75 = or i32 %74, %71
  %76 = bitcast i32 %75 to float
  %77 = getelementptr [2 x i8], ptr %54, i64 %56
  %78 = load i16, ptr %77, align 2, !tbaa !135
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 32640
  %81 = and i32 %79, 127
  switch i32 %80, label %85 [
    i32 32640, label %82
    i32 0, label %88
  ]

82:                                               ; preds = %69
  %83 = icmp eq i32 %81, 0
  %84 = select i1 %83, i32 0, i32 8388607
  br label %88

85:                                               ; preds = %69
  %86 = shl nuw nsw i32 %80, 16
  %87 = shl nuw nsw i32 %81, 16
  br label %88

88:                                               ; preds = %85, %82, %69
  %89 = phi i32 [ %87, %85 ], [ %84, %82 ], [ %80, %69 ]
  %90 = phi i32 [ %86, %85 ], [ 2139095040, %82 ], [ %80, %69 ]
  %91 = sext i16 %78 to i32
  %92 = and i32 %91, -2147483648
  %93 = or disjoint i32 %89, %92
  %94 = or i32 %93, %90
  %95 = bitcast i32 %94 to float
  %96 = tail call float @llvm.fmuladd.f32(float %76, float %95, float %57)
  %97 = add nuw nsw i64 %56, 1
  %98 = icmp eq i64 %97, %22
  br i1 %98, label %99, label %55, !llvm.loop !250

99:                                               ; preds = %88
  %100 = add nuw nsw i64 %45, 1
  %101 = icmp eq i64 %100, %30
  br i1 %101, label %102, label %44, !llvm.loop !251

102:                                              ; preds = %99
  %103 = getelementptr [4 x i8], ptr %36, i64 %38
  store float %96, ptr %103, align 4, !tbaa !137
  %104 = add nuw nsw i64 %38, 1
  %105 = icmp eq i64 %104, %19
  br i1 %105, label %106, label %37, !llvm.loop !252

106:                                              ; preds = %102
  %107 = add nuw nsw i64 %34, 1
  %108 = icmp eq i64 %107, %9
  br i1 %108, label %163, label %33, !llvm.loop !253

109:                                              ; preds = %32
  br i1 %29, label %110, label %163

110:                                              ; preds = %109
  %111 = icmp ult i64 %19, 8
  %112 = and i64 %17, 7
  %113 = sub nuw nsw i64 %19, %112
  %114 = icmp eq i64 %112, 0
  br label %115

115:                                              ; preds = %110, %133
  %116 = phi i64 [ %134, %133 ], [ 0, %110 ]
  %117 = mul nuw nsw i64 %116, %19
  %118 = getelementptr [4 x i8], ptr %0, i64 %117
  br i1 %111, label %126, label %119

119:                                              ; preds = %115, %119
  %120 = phi i64 [ %123, %119 ], [ 0, %115 ]
  %121 = getelementptr [4 x i8], ptr %118, i64 %120
  %122 = getelementptr i8, ptr %121, i64 16
  store <4 x float> zeroinitializer, ptr %121, align 4, !tbaa !137
  store <4 x float> zeroinitializer, ptr %122, align 4, !tbaa !137
  %123 = add nuw i64 %120, 8
  %124 = icmp eq i64 %123, %113
  br i1 %124, label %125, label %119, !llvm.loop !254

125:                                              ; preds = %119
  br i1 %114, label %133, label %126

126:                                              ; preds = %115, %125
  %127 = phi i64 [ 0, %115 ], [ %113, %125 ]
  br label %128

128:                                              ; preds = %126, %128
  %129 = phi i64 [ %131, %128 ], [ %127, %126 ]
  %130 = getelementptr [4 x i8], ptr %118, i64 %129
  store float 0.000000e+00, ptr %130, align 4, !tbaa !137
  %131 = add nuw nsw i64 %129, 1
  %132 = icmp eq i64 %131, %19
  br i1 %132, label %133, label %128, !llvm.loop !255

133:                                              ; preds = %128, %125
  %134 = add nuw nsw i64 %116, 1
  %135 = icmp eq i64 %134, %9
  br i1 %135, label %163, label %115, !llvm.loop !253

136:                                              ; preds = %24
  br i1 %29, label %137, label %163

137:                                              ; preds = %136
  %138 = icmp ult i64 %19, 8
  %139 = and i64 %17, 7
  %140 = sub nuw nsw i64 %19, %139
  %141 = icmp eq i64 %139, 0
  br label %142

142:                                              ; preds = %137, %160
  %143 = phi i64 [ %161, %160 ], [ 0, %137 ]
  %144 = mul nuw nsw i64 %143, %19
  %145 = getelementptr [4 x i8], ptr %0, i64 %144
  br i1 %138, label %153, label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ %150, %146 ], [ 0, %142 ]
  %148 = getelementptr [4 x i8], ptr %145, i64 %147
  %149 = getelementptr i8, ptr %148, i64 16
  store <4 x float> zeroinitializer, ptr %148, align 4, !tbaa !137
  store <4 x float> zeroinitializer, ptr %149, align 4, !tbaa !137
  %150 = add nuw i64 %147, 8
  %151 = icmp eq i64 %150, %140
  br i1 %151, label %152, label %146, !llvm.loop !256

152:                                              ; preds = %146
  br i1 %141, label %160, label %153

153:                                              ; preds = %142, %152
  %154 = phi i64 [ 0, %142 ], [ %140, %152 ]
  br label %155

155:                                              ; preds = %153, %155
  %156 = phi i64 [ %158, %155 ], [ %154, %153 ]
  %157 = getelementptr [4 x i8], ptr %145, i64 %156
  store float 0.000000e+00, ptr %157, align 4, !tbaa !137
  %158 = add nuw nsw i64 %156, 1
  %159 = icmp eq i64 %158, %19
  br i1 %159, label %160, label %155, !llvm.loop !257

160:                                              ; preds = %155, %152
  %161 = add nuw nsw i64 %143, 1
  %162 = icmp eq i64 %161, %9
  br i1 %162, label %163, label %142, !llvm.loop !253

163:                                              ; preds = %160, %133, %106, %136, %109, %11, %4
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_generic(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #12 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = ashr exact i64 %8, 48
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %214

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 100
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 48
  %19 = ashr exact i64 %18, 48
  %20 = icmp sgt i64 %19, 0
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %22 = shl i64 %14, 48
  %23 = ashr exact i64 %22, 48
  %24 = icmp sgt i64 %23, 0
  br i1 %20, label %25, label %214

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !168
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = and i64 %17, 1
  %31 = icmp eq i64 %18, 281474976710656
  %32 = sub nsw i64 %19, %30
  %33 = icmp eq i64 %30, 0
  %34 = trunc i32 %16 to i1
  br label %170

35:                                               ; preds = %25
  br i1 %24, label %42, label %36

36:                                               ; preds = %35
  %37 = and i64 %17, 1
  %38 = icmp eq i64 %18, 281474976710656
  %39 = sub nsw i64 %19, %37
  %40 = icmp eq i64 %37, 0
  %41 = trunc i32 %16 to i1
  br label %126

42:                                               ; preds = %35
  %43 = icmp ult i64 %23, 8
  %44 = and i64 %14, 7
  %45 = sub nuw nsw i64 %23, %44
  %46 = icmp eq i64 %44, 0
  br label %47

47:                                               ; preds = %42, %123
  %48 = phi i64 [ %124, %123 ], [ 0, %42 ]
  %49 = mul nuw nsw i64 %48, %19
  %50 = getelementptr [4 x i8], ptr %0, i64 %49
  br label %51

51:                                               ; preds = %119, %47
  %52 = phi i64 [ 0, %47 ], [ %121, %119 ]
  %53 = load i32, ptr %21, align 4, !tbaa !172
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr [4 x i8], ptr %50, i64 %52
  %58 = load i32, ptr %57, align 4, !tbaa !15
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i32 [ 0, %51 ], [ %58, %56 ]
  br label %61

61:                                               ; preds = %59, %115
  %62 = phi i64 [ %117, %115 ], [ 0, %59 ]
  %63 = phi i32 [ %116, %115 ], [ %60, %59 ]
  %64 = mul nuw nsw i64 %62, %9
  %65 = add nuw i64 %64, %48
  %66 = mul i64 %65, %23
  %67 = getelementptr i8, ptr %1, i64 %66
  %68 = mul nuw nsw i64 %62, %19
  %69 = add nuw i64 %68, %52
  %70 = mul i64 %69, %23
  %71 = getelementptr i8, ptr %2, i64 %70
  br i1 %43, label %99, label %72

72:                                               ; preds = %61
  %73 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %63, i64 0
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %94, %74 ]
  %76 = phi <4 x i32> [ %73, %72 ], [ %92, %74 ]
  %77 = phi <4 x i32> [ zeroinitializer, %72 ], [ %93, %74 ]
  %78 = getelementptr i8, ptr %67, i64 %75
  %79 = getelementptr i8, ptr %78, i64 4
  %80 = load <4 x i8>, ptr %78, align 1, !tbaa !221
  %81 = load <4 x i8>, ptr %79, align 1, !tbaa !221
  %82 = sext <4 x i8> %80 to <4 x i32>
  %83 = sext <4 x i8> %81 to <4 x i32>
  %84 = getelementptr i8, ptr %71, i64 %75
  %85 = getelementptr i8, ptr %84, i64 4
  %86 = load <4 x i8>, ptr %84, align 1, !tbaa !221
  %87 = load <4 x i8>, ptr %85, align 1, !tbaa !221
  %88 = sext <4 x i8> %86 to <4 x i32>
  %89 = sext <4 x i8> %87 to <4 x i32>
  %90 = mul nsw <4 x i32> %88, %82
  %91 = mul nsw <4 x i32> %89, %83
  %92 = add <4 x i32> %90, %76
  %93 = add <4 x i32> %91, %77
  %94 = add nuw i64 %75, 8
  %95 = icmp eq i64 %94, %45
  br i1 %95, label %96, label %74, !llvm.loop !258

96:                                               ; preds = %74
  %97 = add <4 x i32> %93, %92
  %98 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %97)
  br i1 %46, label %115, label %99

99:                                               ; preds = %61, %96
  %100 = phi i64 [ 0, %61 ], [ %45, %96 ]
  %101 = phi i32 [ %63, %61 ], [ %98, %96 ]
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi i64 [ %113, %102 ], [ %100, %99 ]
  %104 = phi i32 [ %112, %102 ], [ %101, %99 ]
  %105 = getelementptr i8, ptr %67, i64 %103
  %106 = load i8, ptr %105, align 1, !tbaa !221
  %107 = sext i8 %106 to i32
  %108 = getelementptr i8, ptr %71, i64 %103
  %109 = load i8, ptr %108, align 1, !tbaa !221
  %110 = sext i8 %109 to i32
  %111 = mul nsw i32 %110, %107
  %112 = add nsw i32 %111, %104
  %113 = add nuw nsw i64 %103, 1
  %114 = icmp eq i64 %113, %23
  br i1 %114, label %115, label %102, !llvm.loop !259

115:                                              ; preds = %102, %96
  %116 = phi i32 [ %98, %96 ], [ %112, %102 ]
  %117 = add nuw nsw i64 %62, 1
  %118 = icmp eq i64 %117, %27
  br i1 %118, label %119, label %61, !llvm.loop !260

119:                                              ; preds = %115
  %120 = getelementptr [4 x i8], ptr %50, i64 %52
  store i32 %116, ptr %120, align 4, !tbaa !15
  %121 = add nuw nsw i64 %52, 1
  %122 = icmp eq i64 %121, %19
  br i1 %122, label %123, label %51, !llvm.loop !261

123:                                              ; preds = %119
  %124 = add nuw nsw i64 %48, 1
  %125 = icmp eq i64 %124, %9
  br i1 %125, label %214, label %47, !llvm.loop !262

126:                                              ; preds = %36, %167
  %127 = phi i64 [ %168, %167 ], [ 0, %36 ]
  %128 = mul nuw nsw i64 %127, %19
  %129 = getelementptr [4 x i8], ptr %0, i64 %128
  br i1 %38, label %156, label %130

130:                                              ; preds = %126, %149
  %131 = phi i64 [ %152, %149 ], [ 0, %126 ]
  %132 = phi i64 [ %153, %149 ], [ 0, %126 ]
  %133 = load i32, ptr %21, align 4, !tbaa !172
  %134 = and i32 %133, 256
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = getelementptr [4 x i8], ptr %129, i64 %131
  %138 = load i32, ptr %137, align 4, !tbaa !15
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi i32 [ %138, %136 ], [ 0, %130 ]
  %141 = getelementptr [4 x i8], ptr %129, i64 %131
  store i32 %140, ptr %141, align 4, !tbaa !15
  %142 = or disjoint i64 %131, 1
  %143 = load i32, ptr %21, align 4, !tbaa !172
  %144 = and i32 %143, 256
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %139
  %147 = getelementptr [4 x i8], ptr %129, i64 %142
  %148 = load i32, ptr %147, align 4, !tbaa !15
  br label %149

149:                                              ; preds = %146, %139
  %150 = phi i32 [ %148, %146 ], [ 0, %139 ]
  %151 = getelementptr [4 x i8], ptr %129, i64 %142
  store i32 %150, ptr %151, align 4, !tbaa !15
  %152 = add nuw nsw i64 %131, 2
  %153 = add i64 %132, 2
  %154 = icmp eq i64 %153, %39
  br i1 %154, label %155, label %130, !llvm.loop !261

155:                                              ; preds = %149
  br i1 %40, label %167, label %156

156:                                              ; preds = %155, %126
  %157 = phi i64 [ 0, %126 ], [ %152, %155 ]
  tail call void @llvm.assume(i1 %41)
  %158 = load i32, ptr %21, align 4, !tbaa !172
  %159 = and i32 %158, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr [4 x i8], ptr %129, i64 %157
  %163 = load i32, ptr %162, align 4, !tbaa !15
  br label %164

164:                                              ; preds = %161, %156
  %165 = phi i32 [ %163, %161 ], [ 0, %156 ]
  %166 = getelementptr [4 x i8], ptr %129, i64 %157
  store i32 %165, ptr %166, align 4, !tbaa !15
  br label %167

167:                                              ; preds = %155, %164
  %168 = add nuw nsw i64 %127, 1
  %169 = icmp eq i64 %168, %9
  br i1 %169, label %214, label %126, !llvm.loop !262

170:                                              ; preds = %29, %211
  %171 = phi i64 [ %212, %211 ], [ 0, %29 ]
  %172 = mul nuw nsw i64 %171, %19
  %173 = getelementptr [4 x i8], ptr %0, i64 %172
  br i1 %31, label %200, label %174

174:                                              ; preds = %170, %193
  %175 = phi i64 [ %196, %193 ], [ 0, %170 ]
  %176 = phi i64 [ %197, %193 ], [ 0, %170 ]
  %177 = load i32, ptr %21, align 4, !tbaa !172
  %178 = and i32 %177, 256
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %174
  %181 = getelementptr [4 x i8], ptr %173, i64 %175
  %182 = load i32, ptr %181, align 4, !tbaa !15
  br label %183

183:                                              ; preds = %180, %174
  %184 = phi i32 [ %182, %180 ], [ 0, %174 ]
  %185 = getelementptr [4 x i8], ptr %173, i64 %175
  store i32 %184, ptr %185, align 4, !tbaa !15
  %186 = or disjoint i64 %175, 1
  %187 = load i32, ptr %21, align 4, !tbaa !172
  %188 = and i32 %187, 256
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %183
  %191 = getelementptr [4 x i8], ptr %173, i64 %186
  %192 = load i32, ptr %191, align 4, !tbaa !15
  br label %193

193:                                              ; preds = %190, %183
  %194 = phi i32 [ %192, %190 ], [ 0, %183 ]
  %195 = getelementptr [4 x i8], ptr %173, i64 %186
  store i32 %194, ptr %195, align 4, !tbaa !15
  %196 = add nuw nsw i64 %175, 2
  %197 = add i64 %176, 2
  %198 = icmp eq i64 %197, %32
  br i1 %198, label %199, label %174, !llvm.loop !261

199:                                              ; preds = %193
  br i1 %33, label %211, label %200

200:                                              ; preds = %199, %170
  %201 = phi i64 [ 0, %170 ], [ %196, %199 ]
  tail call void @llvm.assume(i1 %34)
  %202 = load i32, ptr %21, align 4, !tbaa !172
  %203 = and i32 %202, 256
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = getelementptr [4 x i8], ptr %173, i64 %201
  %207 = load i32, ptr %206, align 4, !tbaa !15
  br label %208

208:                                              ; preds = %205, %200
  %209 = phi i32 [ %207, %205 ], [ 0, %200 ]
  %210 = getelementptr [4 x i8], ptr %173, i64 %201
  store i32 %209, ptr %210, align 4, !tbaa !15
  br label %211

211:                                              ; preds = %199, %208
  %212 = add nuw nsw i64 %171, 1
  %213 = icmp eq i64 %212, %9
  br i1 %213, label %214, label %170, !llvm.loop !262

214:                                              ; preds = %211, %167, %123, %11, %4
  ret void
}

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_1x8x2_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !266
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <4 x i64>, ptr %0, align 1, !tbaa !221, !noalias !269
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <4 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !266
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %11
  %17 = bitcast <4 x i64> %12 to <8 x i32>
  %18 = and i64 %14, 1
  %19 = icmp eq i64 %14, 1
  br i1 %19, label %53, label %20

20:                                               ; preds = %16
  %21 = and i64 %14, 9223372036854775806
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <8 x i32> [ %17, %20 ], [ %47, %22 ]
  %24 = phi ptr [ %1, %20 ], [ %48, %22 ]
  %25 = phi ptr [ %2, %20 ], [ %40, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %49, %22 ]
  %27 = load <16 x i8>, ptr %25, align 1, !tbaa !221, !noalias !263
  %28 = sext <16 x i8> %27 to <16 x i16>
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %30 = load i16, ptr %24, align 2, !tbaa !135, !alias.scope !263, !noalias !270
  %31 = insertelement <8 x i16> poison, i16 %30, i64 0
  %32 = bitcast <8 x i16> %31 to <16 x i8>
  %33 = shufflevector <16 x i8> %32, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %34 = sext <16 x i8> %33 to <16 x i16>
  %35 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %34, <16 x i16> %28)
  %36 = add <8 x i32> %35, %23
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %38 = load <16 x i8>, ptr %29, align 1, !tbaa !221, !noalias !263
  %39 = sext <16 x i8> %38 to <16 x i16>
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %41 = load i16, ptr %37, align 2, !tbaa !135, !alias.scope !263, !noalias !270
  %42 = insertelement <8 x i16> poison, i16 %41, i64 0
  %43 = bitcast <8 x i16> %42 to <16 x i8>
  %44 = shufflevector <16 x i8> %43, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %45 = sext <16 x i8> %44 to <16 x i16>
  %46 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %45, <16 x i16> %39)
  %47 = add <8 x i32> %46, %36
  %48 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %49 = add i64 %26, 2
  %50 = icmp eq i64 %49, %21
  br i1 %50, label %51, label %22, !llvm.loop !271

51:                                               ; preds = %22
  %52 = icmp eq i64 %18, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %51, %16
  %54 = phi <8 x i32> [ %17, %16 ], [ %47, %51 ]
  %55 = phi ptr [ %1, %16 ], [ %48, %51 ]
  %56 = phi ptr [ %2, %16 ], [ %40, %51 ]
  %57 = trunc i64 %14 to i1
  tail call void @llvm.assume(i1 %57)
  %58 = load <16 x i8>, ptr %56, align 1, !tbaa !221, !noalias !263
  %59 = sext <16 x i8> %58 to <16 x i16>
  %60 = load i16, ptr %55, align 2, !tbaa !135, !alias.scope !263, !noalias !270
  %61 = insertelement <8 x i16> poison, i16 %60, i64 0
  %62 = bitcast <8 x i16> %61 to <16 x i8>
  %63 = shufflevector <16 x i8> %62, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %64 = sext <16 x i8> %63 to <16 x i16>
  %65 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %64, <16 x i16> %59)
  %66 = add <8 x i32> %65, %54
  br label %67

67:                                               ; preds = %51, %53
  %68 = phi <8 x i32> [ %47, %51 ], [ %66, %53 ]
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  br label %70

70:                                               ; preds = %67, %11
  %71 = phi <4 x i64> [ %69, %67 ], [ %12, %11 ]
  store <4 x i64> %71, ptr %0, align 1, !tbaa !221, !noalias !263
  ret void
}

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: alwaysinline nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_2x8x2_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !275
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <4 x i64>, ptr %0, align 1, !tbaa !221, !noalias !278
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <4 x i64>, ptr %11, align 1, !tbaa !221, !noalias !278
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <4 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !275
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = bitcast <4 x i64> %15 to <8 x i32>
  %21 = bitcast <4 x i64> %14 to <8 x i32>
  %22 = and i64 %17, 1
  %23 = icmp eq i64 %17, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = and i64 %17, 9223372036854775806
  br label %60

26:                                               ; preds = %60
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %26, %19
  %29 = phi <8 x i32> [ %21, %19 ], [ %101, %26 ]
  %30 = phi <8 x i32> [ %20, %19 ], [ %93, %26 ]
  %31 = phi ptr [ %1, %19 ], [ %102, %26 ]
  %32 = phi ptr [ %2, %19 ], [ %103, %26 ]
  %33 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <16 x i8>, ptr %32, align 1, !tbaa !221, !noalias !272
  %35 = sext <16 x i8> %34 to <16 x i16>
  %36 = load i16, ptr %31, align 2, !tbaa !135, !alias.scope !272, !noalias !279
  %37 = insertelement <8 x i16> poison, i16 %36, i64 0
  %38 = bitcast <8 x i16> %37 to <16 x i8>
  %39 = shufflevector <16 x i8> %38, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %40 = sext <16 x i8> %39 to <16 x i16>
  %41 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %40, <16 x i16> %35)
  %42 = add <8 x i32> %41, %30
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %44 = load i16, ptr %43, align 2, !tbaa !135, !alias.scope !272, !noalias !279
  %45 = insertelement <8 x i16> poison, i16 %44, i64 0
  %46 = bitcast <8 x i16> %45 to <16 x i8>
  %47 = shufflevector <16 x i8> %46, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %48 = sext <16 x i8> %47 to <16 x i16>
  %49 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %48, <16 x i16> %35)
  %50 = add <8 x i32> %49, %29
  br label %51

51:                                               ; preds = %26, %28
  %52 = phi <8 x i32> [ %93, %26 ], [ %42, %28 ]
  %53 = phi <8 x i32> [ %101, %26 ], [ %50, %28 ]
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = bitcast <8 x i32> %52 to <4 x i64>
  br label %56

56:                                               ; preds = %51, %13
  %57 = phi <4 x i64> [ %54, %51 ], [ %14, %13 ]
  %58 = phi <4 x i64> [ %55, %51 ], [ %15, %13 ]
  store <4 x i64> %58, ptr %0, align 1, !tbaa !221, !noalias !272
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %57, ptr %59, align 1, !tbaa !221, !noalias !272
  ret void

60:                                               ; preds = %60, %24
  %61 = phi <8 x i32> [ %21, %24 ], [ %101, %60 ]
  %62 = phi <8 x i32> [ %20, %24 ], [ %93, %60 ]
  %63 = phi ptr [ %1, %24 ], [ %102, %60 ]
  %64 = phi ptr [ %2, %24 ], [ %103, %60 ]
  %65 = phi i64 [ 0, %24 ], [ %104, %60 ]
  %66 = load <16 x i8>, ptr %64, align 1, !tbaa !221, !noalias !272
  %67 = sext <16 x i8> %66 to <16 x i16>
  %68 = load i16, ptr %63, align 2, !tbaa !135, !alias.scope !272, !noalias !279
  %69 = insertelement <8 x i16> poison, i16 %68, i64 0
  %70 = bitcast <8 x i16> %69 to <16 x i8>
  %71 = shufflevector <16 x i8> %70, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %72 = sext <16 x i8> %71 to <16 x i16>
  %73 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %72, <16 x i16> %67)
  %74 = add <8 x i32> %73, %62
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 2
  %76 = load i16, ptr %75, align 2, !tbaa !135, !alias.scope !272, !noalias !279
  %77 = insertelement <8 x i16> poison, i16 %76, i64 0
  %78 = bitcast <8 x i16> %77 to <16 x i8>
  %79 = shufflevector <16 x i8> %78, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %80 = sext <16 x i8> %79 to <16 x i16>
  %81 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %80, <16 x i16> %67)
  %82 = add <8 x i32> %81, %61
  %83 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %84 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %85 = load <16 x i8>, ptr %84, align 1, !tbaa !221, !noalias !272
  %86 = sext <16 x i8> %85 to <16 x i16>
  %87 = load i16, ptr %83, align 2, !tbaa !135, !alias.scope !272, !noalias !279
  %88 = insertelement <8 x i16> poison, i16 %87, i64 0
  %89 = bitcast <8 x i16> %88 to <16 x i8>
  %90 = shufflevector <16 x i8> %89, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %91 = sext <16 x i8> %90 to <16 x i16>
  %92 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %91, <16 x i16> %86)
  %93 = add <8 x i32> %92, %74
  %94 = getelementptr inbounds nuw i8, ptr %63, i64 6
  %95 = load i16, ptr %94, align 2, !tbaa !135, !alias.scope !272, !noalias !279
  %96 = insertelement <8 x i16> poison, i16 %95, i64 0
  %97 = bitcast <8 x i16> %96 to <16 x i8>
  %98 = shufflevector <16 x i8> %97, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %99 = sext <16 x i8> %98 to <16 x i16>
  %100 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %99, <16 x i16> %86)
  %101 = add <8 x i32> %100, %82
  %102 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %103 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %104 = add i64 %65, 2
  %105 = icmp eq i64 %104, %25
  br i1 %105, label %26, label %60, !llvm.loop !271
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_4x8x2_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !283
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <4 x i64>, ptr %0, align 1, !tbaa !221, !noalias !286
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <4 x i64>, ptr %11, align 1, !tbaa !221, !noalias !286
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load <4 x i64>, ptr %13, align 1, !tbaa !221, !noalias !286
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %16 = load <4 x i64>, ptr %15, align 1, !tbaa !221, !noalias !286
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <4 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !283
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = bitcast <4 x i64> %21 to <8 x i32>
  %27 = bitcast <4 x i64> %20 to <8 x i32>
  %28 = bitcast <4 x i64> %19 to <8 x i32>
  %29 = bitcast <4 x i64> %18 to <8 x i32>
  br label %43

30:                                               ; preds = %43
  %31 = bitcast <8 x i32> %83 to <4 x i64>
  %32 = bitcast <8 x i32> %75 to <4 x i64>
  %33 = bitcast <8 x i32> %67 to <4 x i64>
  %34 = bitcast <8 x i32> %59 to <4 x i64>
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi <4 x i64> [ %31, %30 ], [ %18, %17 ]
  %37 = phi <4 x i64> [ %32, %30 ], [ %19, %17 ]
  %38 = phi <4 x i64> [ %33, %30 ], [ %20, %17 ]
  %39 = phi <4 x i64> [ %34, %30 ], [ %21, %17 ]
  store <4 x i64> %39, ptr %0, align 1, !tbaa !221, !noalias !280
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %38, ptr %40, align 1, !tbaa !221, !noalias !280
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i64> %37, ptr %41, align 1, !tbaa !221, !noalias !280
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i64> %36, ptr %42, align 1, !tbaa !221, !noalias !280
  ret void

43:                                               ; preds = %25, %43
  %44 = phi <8 x i32> [ %29, %25 ], [ %83, %43 ]
  %45 = phi <8 x i32> [ %28, %25 ], [ %75, %43 ]
  %46 = phi <8 x i32> [ %27, %25 ], [ %67, %43 ]
  %47 = phi <8 x i32> [ %26, %25 ], [ %59, %43 ]
  %48 = phi i64 [ 0, %25 ], [ %86, %43 ]
  %49 = phi ptr [ %1, %25 ], [ %84, %43 ]
  %50 = phi ptr [ %2, %25 ], [ %85, %43 ]
  %51 = load <16 x i8>, ptr %50, align 1, !tbaa !221, !noalias !280
  %52 = sext <16 x i8> %51 to <16 x i16>
  %53 = load i16, ptr %49, align 2, !tbaa !135, !alias.scope !280, !noalias !287
  %54 = insertelement <8 x i16> poison, i16 %53, i64 0
  %55 = bitcast <8 x i16> %54 to <16 x i8>
  %56 = shufflevector <16 x i8> %55, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %57 = sext <16 x i8> %56 to <16 x i16>
  %58 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %57, <16 x i16> %52)
  %59 = add <8 x i32> %58, %47
  %60 = getelementptr inbounds nuw i8, ptr %49, i64 2
  %61 = load i16, ptr %60, align 2, !tbaa !135, !alias.scope !280, !noalias !287
  %62 = insertelement <8 x i16> poison, i16 %61, i64 0
  %63 = bitcast <8 x i16> %62 to <16 x i8>
  %64 = shufflevector <16 x i8> %63, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %65 = sext <16 x i8> %64 to <16 x i16>
  %66 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %65, <16 x i16> %52)
  %67 = add <8 x i32> %66, %46
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %69 = load i16, ptr %68, align 2, !tbaa !135, !alias.scope !280, !noalias !287
  %70 = insertelement <8 x i16> poison, i16 %69, i64 0
  %71 = bitcast <8 x i16> %70 to <16 x i8>
  %72 = shufflevector <16 x i8> %71, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %73 = sext <16 x i8> %72 to <16 x i16>
  %74 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %73, <16 x i16> %52)
  %75 = add <8 x i32> %74, %45
  %76 = getelementptr inbounds nuw i8, ptr %49, i64 6
  %77 = load i16, ptr %76, align 2, !tbaa !135, !alias.scope !280, !noalias !287
  %78 = insertelement <8 x i16> poison, i16 %77, i64 0
  %79 = bitcast <8 x i16> %78 to <16 x i8>
  %80 = shufflevector <16 x i8> %79, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %81 = sext <16 x i8> %80 to <16 x i16>
  %82 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %81, <16 x i16> %52)
  %83 = add <8 x i32> %82, %44
  %84 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %50, i64 16
  %86 = add nuw nsw i64 %48, 1
  %87 = icmp eq i64 %86, %23
  br i1 %87, label %30, label %43, !llvm.loop !271
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_8x8x2_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %12 = load <2 x i64>, ptr %0, align 1, !tbaa !221
  %13 = load <2 x i64>, ptr %11, align 1, !tbaa !221
  %14 = shufflevector <2 x i64> %12, <2 x i64> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load <2 x i64>, ptr %15, align 1, !tbaa !221
  %17 = load <2 x i64>, ptr %10, align 1, !tbaa !221
  %18 = shufflevector <2 x i64> %16, <2 x i64> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %22 = load <2 x i64>, ptr %19, align 1, !tbaa !221
  %23 = load <2 x i64>, ptr %21, align 1, !tbaa !221
  %24 = shufflevector <2 x i64> %22, <2 x i64> %23, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %26 = load <2 x i64>, ptr %25, align 1, !tbaa !221
  %27 = load <2 x i64>, ptr %20, align 1, !tbaa !221
  %28 = shufflevector <2 x i64> %26, <2 x i64> %27, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %32 = load <2 x i64>, ptr %29, align 1, !tbaa !221
  %33 = load <2 x i64>, ptr %31, align 1, !tbaa !221
  %34 = shufflevector <2 x i64> %32, <2 x i64> %33, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %36 = load <2 x i64>, ptr %35, align 1, !tbaa !221
  %37 = load <2 x i64>, ptr %30, align 1, !tbaa !221
  %38 = shufflevector <2 x i64> %36, <2 x i64> %37, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %42 = load <2 x i64>, ptr %39, align 1, !tbaa !221
  %43 = load <2 x i64>, ptr %41, align 1, !tbaa !221
  %44 = shufflevector <2 x i64> %42, <2 x i64> %43, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %46 = load <2 x i64>, ptr %45, align 1, !tbaa !221
  %47 = load <2 x i64>, ptr %40, align 1, !tbaa !221
  %48 = shufflevector <2 x i64> %46, <2 x i64> %47, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %49

49:                                               ; preds = %4, %9
  %50 = phi <4 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <4 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <4 x i64> [ %24, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <4 x i64> [ %28, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <4 x i64> [ %34, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <4 x i64> [ %38, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <4 x i64> [ %44, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <4 x i64> [ %48, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !168
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %49
  %62 = bitcast <4 x i64> %51 to <8 x i32>
  %63 = bitcast <4 x i64> %50 to <8 x i32>
  %64 = bitcast <4 x i64> %52 to <8 x i32>
  %65 = bitcast <4 x i64> %53 to <8 x i32>
  %66 = bitcast <4 x i64> %54 to <8 x i32>
  %67 = bitcast <4 x i64> %55 to <8 x i32>
  %68 = bitcast <4 x i64> %56 to <8 x i32>
  %69 = bitcast <4 x i64> %57 to <8 x i32>
  br label %119

70:                                               ; preds = %119
  %71 = bitcast <8 x i32> %157 to <4 x i64>
  %72 = bitcast <8 x i32> %155 to <4 x i64>
  %73 = bitcast <8 x i32> %152 to <4 x i64>
  %74 = bitcast <8 x i32> %150 to <4 x i64>
  %75 = bitcast <8 x i32> %147 to <4 x i64>
  %76 = bitcast <8 x i32> %145 to <4 x i64>
  %77 = bitcast <8 x i32> %142 to <4 x i64>
  %78 = bitcast <8 x i32> %139 to <4 x i64>
  br label %79

79:                                               ; preds = %70, %49
  %80 = phi <4 x i64> [ %77, %70 ], [ %50, %49 ]
  %81 = phi <4 x i64> [ %78, %70 ], [ %51, %49 ]
  %82 = phi <4 x i64> [ %76, %70 ], [ %52, %49 ]
  %83 = phi <4 x i64> [ %75, %70 ], [ %53, %49 ]
  %84 = phi <4 x i64> [ %74, %70 ], [ %54, %49 ]
  %85 = phi <4 x i64> [ %73, %70 ], [ %55, %49 ]
  %86 = phi <4 x i64> [ %72, %70 ], [ %56, %49 ]
  %87 = phi <4 x i64> [ %71, %70 ], [ %57, %49 ]
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %90 = shufflevector <4 x i64> %81, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %91 = shufflevector <4 x i64> %81, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %90, ptr %0, align 1, !tbaa !221
  store <2 x i64> %91, ptr %89, align 1, !tbaa !221
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %93 = shufflevector <4 x i64> %80, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %94 = shufflevector <4 x i64> %80, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %93, ptr %92, align 1, !tbaa !221
  store <2 x i64> %94, ptr %88, align 1, !tbaa !221
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %98 = shufflevector <4 x i64> %82, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %99 = shufflevector <4 x i64> %82, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %98, ptr %95, align 1, !tbaa !221
  store <2 x i64> %99, ptr %97, align 1, !tbaa !221
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %101 = shufflevector <4 x i64> %83, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %102 = shufflevector <4 x i64> %83, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %101, ptr %100, align 1, !tbaa !221
  store <2 x i64> %102, ptr %96, align 1, !tbaa !221
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %106 = shufflevector <4 x i64> %84, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %107 = shufflevector <4 x i64> %84, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %106, ptr %103, align 1, !tbaa !221
  store <2 x i64> %107, ptr %105, align 1, !tbaa !221
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %109 = shufflevector <4 x i64> %85, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %110 = shufflevector <4 x i64> %85, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %109, ptr %108, align 1, !tbaa !221
  store <2 x i64> %110, ptr %104, align 1, !tbaa !221
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %114 = shufflevector <4 x i64> %86, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %115 = shufflevector <4 x i64> %86, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %114, ptr %111, align 1, !tbaa !221
  store <2 x i64> %115, ptr %113, align 1, !tbaa !221
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %117 = shufflevector <4 x i64> %87, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %118 = shufflevector <4 x i64> %87, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %117, ptr %116, align 1, !tbaa !221
  store <2 x i64> %118, ptr %112, align 1, !tbaa !221
  ret void

119:                                              ; preds = %61, %119
  %120 = phi <8 x i32> [ %63, %61 ], [ %142, %119 ]
  %121 = phi <8 x i32> [ %62, %61 ], [ %139, %119 ]
  %122 = phi <8 x i32> [ %64, %61 ], [ %145, %119 ]
  %123 = phi <8 x i32> [ %65, %61 ], [ %147, %119 ]
  %124 = phi <8 x i32> [ %66, %61 ], [ %150, %119 ]
  %125 = phi <8 x i32> [ %67, %61 ], [ %152, %119 ]
  %126 = phi <8 x i32> [ %68, %61 ], [ %155, %119 ]
  %127 = phi <8 x i32> [ %69, %61 ], [ %157, %119 ]
  %128 = phi i64 [ 0, %61 ], [ %160, %119 ]
  %129 = phi ptr [ %1, %61 ], [ %159, %119 ]
  %130 = phi ptr [ %2, %61 ], [ %158, %119 ]
  %131 = load <16 x i8>, ptr %130, align 1, !tbaa !221
  %132 = sext <16 x i8> %131 to <16 x i16>
  %133 = bitcast <16 x i16> %132 to <4 x i64>
  %134 = shufflevector <4 x i64> %133, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %135 = load <16 x i8>, ptr %129, align 1, !tbaa !221
  %136 = sext <16 x i8> %135 to <16 x i16>
  %137 = shufflevector <16 x i16> %136, <16 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 8, i32 9, i32 8, i32 9, i32 8, i32 9, i32 8, i32 9>
  %138 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %137, <16 x i16> %132)
  %139 = add <8 x i32> %138, %121
  %140 = bitcast <4 x i64> %134 to <16 x i16>
  %141 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %137, <16 x i16> %140)
  %142 = add <8 x i32> %141, %120
  %143 = shufflevector <16 x i16> %136, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 10, i32 11, i32 10, i32 11, i32 10, i32 11, i32 10, i32 11>
  %144 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %143, <16 x i16> %132)
  %145 = add <8 x i32> %144, %122
  %146 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %143, <16 x i16> %140)
  %147 = add <8 x i32> %146, %123
  %148 = shufflevector <16 x i16> %136, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 12, i32 13, i32 12, i32 13, i32 12, i32 13, i32 12, i32 13>
  %149 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %148, <16 x i16> %132)
  %150 = add <8 x i32> %149, %124
  %151 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %148, <16 x i16> %140)
  %152 = add <8 x i32> %151, %125
  %153 = shufflevector <16 x i16> %136, <16 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 14, i32 15, i32 14, i32 15, i32 14, i32 15, i32 14, i32 15>
  %154 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %153, <16 x i16> %132)
  %155 = add <8 x i32> %154, %126
  %156 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %153, <16 x i16> %140)
  %157 = add <8 x i32> %156, %127
  %158 = getelementptr inbounds nuw i8, ptr %130, i64 16
  %159 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %160 = add nuw nsw i64 %128, 1
  %161 = icmp eq i64 %160, %59
  br i1 %161, label %70, label %119, !llvm.loop !288
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_1x8x2_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !292
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <4 x i64>, ptr %0, align 1, !tbaa !221, !noalias !295
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <4 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !292
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %11
  %17 = bitcast <4 x i64> %12 to <8 x i32>
  %18 = and i64 %14, 3
  %19 = icmp ult i64 %14, 4
  br i1 %19, label %67, label %20

20:                                               ; preds = %16
  %21 = and i64 %14, 9223372036854775804
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <8 x i32> [ %17, %20 ], [ %61, %22 ]
  %24 = phi ptr [ %1, %20 ], [ %62, %22 ]
  %25 = phi ptr [ %2, %20 ], [ %55, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %63, %22 ]
  %27 = load <16 x i16>, ptr %25, align 1, !tbaa !221, !noalias !289
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %29 = load i32, ptr %24, align 4, !tbaa !15, !alias.scope !289, !noalias !296
  %30 = insertelement <8 x i32> poison, i32 %29, i64 0
  %31 = shufflevector <8 x i32> %30, <8 x i32> poison, <8 x i32> zeroinitializer
  %32 = bitcast <8 x i32> %31 to <16 x i16>
  %33 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %32, <16 x i16> %27)
  %34 = add <8 x i32> %33, %23
  %35 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %36 = load <16 x i16>, ptr %28, align 1, !tbaa !221, !noalias !289
  %37 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %38 = load i32, ptr %35, align 4, !tbaa !15, !alias.scope !289, !noalias !296
  %39 = insertelement <8 x i32> poison, i32 %38, i64 0
  %40 = shufflevector <8 x i32> %39, <8 x i32> poison, <8 x i32> zeroinitializer
  %41 = bitcast <8 x i32> %40 to <16 x i16>
  %42 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %41, <16 x i16> %36)
  %43 = add <8 x i32> %42, %34
  %44 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %45 = load <16 x i16>, ptr %37, align 1, !tbaa !221, !noalias !289
  %46 = getelementptr inbounds nuw i8, ptr %25, i64 96
  %47 = load i32, ptr %44, align 4, !tbaa !15, !alias.scope !289, !noalias !296
  %48 = insertelement <8 x i32> poison, i32 %47, i64 0
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer
  %50 = bitcast <8 x i32> %49 to <16 x i16>
  %51 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %50, <16 x i16> %45)
  %52 = add <8 x i32> %51, %43
  %53 = getelementptr inbounds nuw i8, ptr %24, i64 12
  %54 = load <16 x i16>, ptr %46, align 1, !tbaa !221, !noalias !289
  %55 = getelementptr inbounds nuw i8, ptr %25, i64 128
  %56 = load i32, ptr %53, align 4, !tbaa !15, !alias.scope !289, !noalias !296
  %57 = insertelement <8 x i32> poison, i32 %56, i64 0
  %58 = shufflevector <8 x i32> %57, <8 x i32> poison, <8 x i32> zeroinitializer
  %59 = bitcast <8 x i32> %58 to <16 x i16>
  %60 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %59, <16 x i16> %54)
  %61 = add <8 x i32> %60, %52
  %62 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %63 = add i64 %26, 4
  %64 = icmp eq i64 %63, %21
  br i1 %64, label %65, label %22, !llvm.loop !297

65:                                               ; preds = %22
  %66 = icmp eq i64 %18, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %65, %16
  %68 = phi <8 x i32> [ %17, %16 ], [ %61, %65 ]
  %69 = phi ptr [ %1, %16 ], [ %62, %65 ]
  %70 = phi ptr [ %2, %16 ], [ %55, %65 ]
  %71 = icmp ne i64 %18, 0
  tail call void @llvm.assume(i1 %71)
  br label %72

72:                                               ; preds = %72, %67
  %73 = phi <8 x i32> [ %68, %67 ], [ %84, %72 ]
  %74 = phi ptr [ %69, %67 ], [ %85, %72 ]
  %75 = phi ptr [ %70, %67 ], [ %78, %72 ]
  %76 = phi i64 [ 0, %67 ], [ %86, %72 ]
  %77 = load <16 x i16>, ptr %75, align 1, !tbaa !221, !noalias !289
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %79 = load i32, ptr %74, align 4, !tbaa !15, !alias.scope !289, !noalias !296
  %80 = insertelement <8 x i32> poison, i32 %79, i64 0
  %81 = shufflevector <8 x i32> %80, <8 x i32> poison, <8 x i32> zeroinitializer
  %82 = bitcast <8 x i32> %81 to <16 x i16>
  %83 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %82, <16 x i16> %77)
  %84 = add <8 x i32> %83, %73
  %85 = getelementptr inbounds nuw i8, ptr %74, i64 4
  %86 = add i64 %76, 1
  %87 = icmp eq i64 %86, %18
  br i1 %87, label %88, label %72, !llvm.loop !298

88:                                               ; preds = %72, %65
  %89 = phi <8 x i32> [ %61, %65 ], [ %84, %72 ]
  %90 = bitcast <8 x i32> %89 to <4 x i64>
  br label %91

91:                                               ; preds = %88, %11
  %92 = phi <4 x i64> [ %90, %88 ], [ %12, %11 ]
  store <4 x i64> %92, ptr %0, align 1, !tbaa !221, !noalias !289
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_2x8x2_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !302
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <4 x i64>, ptr %0, align 1, !tbaa !221, !noalias !305
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <4 x i64>, ptr %11, align 1, !tbaa !221, !noalias !305
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <4 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <4 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !302
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = bitcast <4 x i64> %15 to <8 x i32>
  %21 = bitcast <4 x i64> %14 to <8 x i32>
  %22 = and i64 %17, 1
  %23 = icmp eq i64 %17, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = and i64 %17, 9223372036854775806
  br label %57

26:                                               ; preds = %57
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %26, %19
  %29 = phi <8 x i32> [ %21, %19 ], [ %92, %26 ]
  %30 = phi <8 x i32> [ %20, %19 ], [ %85, %26 ]
  %31 = phi ptr [ %1, %19 ], [ %93, %26 ]
  %32 = phi ptr [ %2, %19 ], [ %94, %26 ]
  %33 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <16 x i16>, ptr %32, align 1, !tbaa !221, !noalias !299
  %35 = load i32, ptr %31, align 4, !tbaa !15, !alias.scope !299, !noalias !306
  %36 = insertelement <8 x i32> poison, i32 %35, i64 0
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> zeroinitializer
  %38 = bitcast <8 x i32> %37 to <16 x i16>
  %39 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %38, <16 x i16> %34)
  %40 = add <8 x i32> %39, %30
  %41 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !15, !alias.scope !299, !noalias !306
  %43 = insertelement <8 x i32> poison, i32 %42, i64 0
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> zeroinitializer
  %45 = bitcast <8 x i32> %44 to <16 x i16>
  %46 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %45, <16 x i16> %34)
  %47 = add <8 x i32> %46, %29
  br label %48

48:                                               ; preds = %26, %28
  %49 = phi <8 x i32> [ %85, %26 ], [ %40, %28 ]
  %50 = phi <8 x i32> [ %92, %26 ], [ %47, %28 ]
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = bitcast <8 x i32> %49 to <4 x i64>
  br label %53

53:                                               ; preds = %48, %13
  %54 = phi <4 x i64> [ %51, %48 ], [ %14, %13 ]
  %55 = phi <4 x i64> [ %52, %48 ], [ %15, %13 ]
  store <4 x i64> %55, ptr %0, align 1, !tbaa !221, !noalias !299
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %54, ptr %56, align 1, !tbaa !221, !noalias !299
  ret void

57:                                               ; preds = %57, %24
  %58 = phi <8 x i32> [ %21, %24 ], [ %92, %57 ]
  %59 = phi <8 x i32> [ %20, %24 ], [ %85, %57 ]
  %60 = phi ptr [ %1, %24 ], [ %93, %57 ]
  %61 = phi ptr [ %2, %24 ], [ %94, %57 ]
  %62 = phi i64 [ 0, %24 ], [ %95, %57 ]
  %63 = load <16 x i16>, ptr %61, align 1, !tbaa !221, !noalias !299
  %64 = load i32, ptr %60, align 4, !tbaa !15, !alias.scope !299, !noalias !306
  %65 = insertelement <8 x i32> poison, i32 %64, i64 0
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> zeroinitializer
  %67 = bitcast <8 x i32> %66 to <16 x i16>
  %68 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %67, <16 x i16> %63)
  %69 = add <8 x i32> %68, %59
  %70 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %71 = load i32, ptr %70, align 4, !tbaa !15, !alias.scope !299, !noalias !306
  %72 = insertelement <8 x i32> poison, i32 %71, i64 0
  %73 = shufflevector <8 x i32> %72, <8 x i32> poison, <8 x i32> zeroinitializer
  %74 = bitcast <8 x i32> %73 to <16 x i16>
  %75 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %74, <16 x i16> %63)
  %76 = add <8 x i32> %75, %58
  %77 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %78 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %79 = load <16 x i16>, ptr %78, align 1, !tbaa !221, !noalias !299
  %80 = load i32, ptr %77, align 4, !tbaa !15, !alias.scope !299, !noalias !306
  %81 = insertelement <8 x i32> poison, i32 %80, i64 0
  %82 = shufflevector <8 x i32> %81, <8 x i32> poison, <8 x i32> zeroinitializer
  %83 = bitcast <8 x i32> %82 to <16 x i16>
  %84 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %83, <16 x i16> %79)
  %85 = add <8 x i32> %84, %69
  %86 = getelementptr inbounds nuw i8, ptr %60, i64 12
  %87 = load i32, ptr %86, align 4, !tbaa !15, !alias.scope !299, !noalias !306
  %88 = insertelement <8 x i32> poison, i32 %87, i64 0
  %89 = shufflevector <8 x i32> %88, <8 x i32> poison, <8 x i32> zeroinitializer
  %90 = bitcast <8 x i32> %89 to <16 x i16>
  %91 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %90, <16 x i16> %79)
  %92 = add <8 x i32> %91, %76
  %93 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %94 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %95 = add i64 %62, 2
  %96 = icmp eq i64 %95, %25
  br i1 %96, label %26, label %57, !llvm.loop !297
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_4x8x2_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !310
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <4 x i64>, ptr %0, align 1, !tbaa !221, !noalias !313
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <4 x i64>, ptr %11, align 1, !tbaa !221, !noalias !313
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load <4 x i64>, ptr %13, align 1, !tbaa !221, !noalias !313
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %16 = load <4 x i64>, ptr %15, align 1, !tbaa !221, !noalias !313
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <4 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <4 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <4 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <4 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !310
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = bitcast <4 x i64> %21 to <8 x i32>
  %27 = bitcast <4 x i64> %20 to <8 x i32>
  %28 = bitcast <4 x i64> %19 to <8 x i32>
  %29 = bitcast <4 x i64> %18 to <8 x i32>
  br label %43

30:                                               ; preds = %43
  %31 = bitcast <8 x i32> %78 to <4 x i64>
  %32 = bitcast <8 x i32> %71 to <4 x i64>
  %33 = bitcast <8 x i32> %64 to <4 x i64>
  %34 = bitcast <8 x i32> %57 to <4 x i64>
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi <4 x i64> [ %31, %30 ], [ %18, %17 ]
  %37 = phi <4 x i64> [ %32, %30 ], [ %19, %17 ]
  %38 = phi <4 x i64> [ %33, %30 ], [ %20, %17 ]
  %39 = phi <4 x i64> [ %34, %30 ], [ %21, %17 ]
  store <4 x i64> %39, ptr %0, align 1, !tbaa !221, !noalias !307
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %38, ptr %40, align 1, !tbaa !221, !noalias !307
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i64> %37, ptr %41, align 1, !tbaa !221, !noalias !307
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i64> %36, ptr %42, align 1, !tbaa !221, !noalias !307
  ret void

43:                                               ; preds = %25, %43
  %44 = phi <8 x i32> [ %29, %25 ], [ %78, %43 ]
  %45 = phi <8 x i32> [ %28, %25 ], [ %71, %43 ]
  %46 = phi <8 x i32> [ %27, %25 ], [ %64, %43 ]
  %47 = phi <8 x i32> [ %26, %25 ], [ %57, %43 ]
  %48 = phi i64 [ 0, %25 ], [ %81, %43 ]
  %49 = phi ptr [ %1, %25 ], [ %79, %43 ]
  %50 = phi ptr [ %2, %25 ], [ %80, %43 ]
  %51 = load <16 x i16>, ptr %50, align 1, !tbaa !221, !noalias !307
  %52 = load i32, ptr %49, align 4, !tbaa !15, !alias.scope !307, !noalias !314
  %53 = insertelement <8 x i32> poison, i32 %52, i64 0
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> zeroinitializer
  %55 = bitcast <8 x i32> %54 to <16 x i16>
  %56 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %55, <16 x i16> %51)
  %57 = add <8 x i32> %56, %47
  %58 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !15, !alias.scope !307, !noalias !314
  %60 = insertelement <8 x i32> poison, i32 %59, i64 0
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> zeroinitializer
  %62 = bitcast <8 x i32> %61 to <16 x i16>
  %63 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %62, <16 x i16> %51)
  %64 = add <8 x i32> %63, %46
  %65 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %66 = load i32, ptr %65, align 4, !tbaa !15, !alias.scope !307, !noalias !314
  %67 = insertelement <8 x i32> poison, i32 %66, i64 0
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> zeroinitializer
  %69 = bitcast <8 x i32> %68 to <16 x i16>
  %70 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %69, <16 x i16> %51)
  %71 = add <8 x i32> %70, %45
  %72 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %73 = load i32, ptr %72, align 4, !tbaa !15, !alias.scope !307, !noalias !314
  %74 = insertelement <8 x i32> poison, i32 %73, i64 0
  %75 = shufflevector <8 x i32> %74, <8 x i32> poison, <8 x i32> zeroinitializer
  %76 = bitcast <8 x i32> %75 to <16 x i16>
  %77 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %76, <16 x i16> %51)
  %78 = add <8 x i32> %77, %44
  %79 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %80 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %81 = add nuw nsw i64 %48, 1
  %82 = icmp eq i64 %81, %23
  br i1 %82, label %30, label %43, !llvm.loop !297
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_8x8x2_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !318
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <4 x i64>, ptr %0, align 1, !tbaa !221, !noalias !321
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <4 x i64>, ptr %11, align 1, !tbaa !221, !noalias !321
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load <4 x i64>, ptr %13, align 1, !tbaa !221, !noalias !321
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %16 = load <4 x i64>, ptr %15, align 1, !tbaa !221, !noalias !321
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %18 = load <4 x i64>, ptr %17, align 1, !tbaa !221, !noalias !321
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %20 = load <4 x i64>, ptr %19, align 1, !tbaa !221, !noalias !321
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %22 = load <4 x i64>, ptr %21, align 1, !tbaa !221, !noalias !321
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %24 = load <4 x i64>, ptr %23, align 1, !tbaa !221, !noalias !321
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <4 x i64> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <4 x i64> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <4 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <4 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <4 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <4 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <4 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <4 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !318
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = bitcast <4 x i64> %33 to <8 x i32>
  %39 = bitcast <4 x i64> %32 to <8 x i32>
  %40 = bitcast <4 x i64> %31 to <8 x i32>
  %41 = bitcast <4 x i64> %30 to <8 x i32>
  %42 = bitcast <4 x i64> %29 to <8 x i32>
  %43 = bitcast <4 x i64> %28 to <8 x i32>
  %44 = bitcast <4 x i64> %27 to <8 x i32>
  %45 = bitcast <4 x i64> %26 to <8 x i32>
  br label %71

46:                                               ; preds = %71
  %47 = bitcast <8 x i32> %138 to <4 x i64>
  %48 = bitcast <8 x i32> %131 to <4 x i64>
  %49 = bitcast <8 x i32> %124 to <4 x i64>
  %50 = bitcast <8 x i32> %117 to <4 x i64>
  %51 = bitcast <8 x i32> %110 to <4 x i64>
  %52 = bitcast <8 x i32> %103 to <4 x i64>
  %53 = bitcast <8 x i32> %96 to <4 x i64>
  %54 = bitcast <8 x i32> %89 to <4 x i64>
  br label %55

55:                                               ; preds = %46, %25
  %56 = phi <4 x i64> [ %47, %46 ], [ %26, %25 ]
  %57 = phi <4 x i64> [ %48, %46 ], [ %27, %25 ]
  %58 = phi <4 x i64> [ %49, %46 ], [ %28, %25 ]
  %59 = phi <4 x i64> [ %50, %46 ], [ %29, %25 ]
  %60 = phi <4 x i64> [ %51, %46 ], [ %30, %25 ]
  %61 = phi <4 x i64> [ %52, %46 ], [ %31, %25 ]
  %62 = phi <4 x i64> [ %53, %46 ], [ %32, %25 ]
  %63 = phi <4 x i64> [ %54, %46 ], [ %33, %25 ]
  store <4 x i64> %63, ptr %0, align 1, !tbaa !221, !noalias !315
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %62, ptr %64, align 1, !tbaa !221, !noalias !315
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i64> %61, ptr %65, align 1, !tbaa !221, !noalias !315
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i64> %60, ptr %66, align 1, !tbaa !221, !noalias !315
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i64> %59, ptr %67, align 1, !tbaa !221, !noalias !315
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x i64> %58, ptr %68, align 1, !tbaa !221, !noalias !315
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x i64> %57, ptr %69, align 1, !tbaa !221, !noalias !315
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x i64> %56, ptr %70, align 1, !tbaa !221, !noalias !315
  ret void

71:                                               ; preds = %37, %71
  %72 = phi <8 x i32> [ %45, %37 ], [ %138, %71 ]
  %73 = phi <8 x i32> [ %44, %37 ], [ %131, %71 ]
  %74 = phi <8 x i32> [ %43, %37 ], [ %124, %71 ]
  %75 = phi <8 x i32> [ %42, %37 ], [ %117, %71 ]
  %76 = phi <8 x i32> [ %41, %37 ], [ %110, %71 ]
  %77 = phi <8 x i32> [ %40, %37 ], [ %103, %71 ]
  %78 = phi <8 x i32> [ %39, %37 ], [ %96, %71 ]
  %79 = phi <8 x i32> [ %38, %37 ], [ %89, %71 ]
  %80 = phi i64 [ 0, %37 ], [ %141, %71 ]
  %81 = phi ptr [ %1, %37 ], [ %139, %71 ]
  %82 = phi ptr [ %2, %37 ], [ %140, %71 ]
  %83 = load <16 x i16>, ptr %82, align 1, !tbaa !221, !noalias !315
  %84 = load i32, ptr %81, align 4, !tbaa !15, !alias.scope !315, !noalias !322
  %85 = insertelement <8 x i32> poison, i32 %84, i64 0
  %86 = shufflevector <8 x i32> %85, <8 x i32> poison, <8 x i32> zeroinitializer
  %87 = bitcast <8 x i32> %86 to <16 x i16>
  %88 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %87, <16 x i16> %83)
  %89 = add <8 x i32> %88, %79
  %90 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %91 = load i32, ptr %90, align 4, !tbaa !15, !alias.scope !315, !noalias !322
  %92 = insertelement <8 x i32> poison, i32 %91, i64 0
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> zeroinitializer
  %94 = bitcast <8 x i32> %93 to <16 x i16>
  %95 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %94, <16 x i16> %83)
  %96 = add <8 x i32> %95, %78
  %97 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %98 = load i32, ptr %97, align 4, !tbaa !15, !alias.scope !315, !noalias !322
  %99 = insertelement <8 x i32> poison, i32 %98, i64 0
  %100 = shufflevector <8 x i32> %99, <8 x i32> poison, <8 x i32> zeroinitializer
  %101 = bitcast <8 x i32> %100 to <16 x i16>
  %102 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %101, <16 x i16> %83)
  %103 = add <8 x i32> %102, %77
  %104 = getelementptr inbounds nuw i8, ptr %81, i64 12
  %105 = load i32, ptr %104, align 4, !tbaa !15, !alias.scope !315, !noalias !322
  %106 = insertelement <8 x i32> poison, i32 %105, i64 0
  %107 = shufflevector <8 x i32> %106, <8 x i32> poison, <8 x i32> zeroinitializer
  %108 = bitcast <8 x i32> %107 to <16 x i16>
  %109 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %108, <16 x i16> %83)
  %110 = add <8 x i32> %109, %76
  %111 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %112 = load i32, ptr %111, align 4, !tbaa !15, !alias.scope !315, !noalias !322
  %113 = insertelement <8 x i32> poison, i32 %112, i64 0
  %114 = shufflevector <8 x i32> %113, <8 x i32> poison, <8 x i32> zeroinitializer
  %115 = bitcast <8 x i32> %114 to <16 x i16>
  %116 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %115, <16 x i16> %83)
  %117 = add <8 x i32> %116, %75
  %118 = getelementptr inbounds nuw i8, ptr %81, i64 20
  %119 = load i32, ptr %118, align 4, !tbaa !15, !alias.scope !315, !noalias !322
  %120 = insertelement <8 x i32> poison, i32 %119, i64 0
  %121 = shufflevector <8 x i32> %120, <8 x i32> poison, <8 x i32> zeroinitializer
  %122 = bitcast <8 x i32> %121 to <16 x i16>
  %123 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %122, <16 x i16> %83)
  %124 = add <8 x i32> %123, %74
  %125 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %126 = load i32, ptr %125, align 4, !tbaa !15, !alias.scope !315, !noalias !322
  %127 = insertelement <8 x i32> poison, i32 %126, i64 0
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> zeroinitializer
  %129 = bitcast <8 x i32> %128 to <16 x i16>
  %130 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %129, <16 x i16> %83)
  %131 = add <8 x i32> %130, %73
  %132 = getelementptr inbounds nuw i8, ptr %81, i64 28
  %133 = load i32, ptr %132, align 4, !tbaa !15, !alias.scope !315, !noalias !322
  %134 = insertelement <8 x i32> poison, i32 %133, i64 0
  %135 = shufflevector <8 x i32> %134, <8 x i32> poison, <8 x i32> zeroinitializer
  %136 = bitcast <8 x i32> %135 to <16 x i16>
  %137 = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %136, <16 x i16> %83)
  %138 = add <8 x i32> %137, %72
  %139 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %140 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %141 = add nuw nsw i64 %80, 1
  %142 = icmp eq i64 %141, %35
  br i1 %142, label %46, label %71, !llvm.loop !297
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_1x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !323
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <8 x float>, ptr %0, align 1, !tbaa !221, !noalias !328
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <8 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !323
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %11
  %17 = and i64 %14, 3
  %18 = icmp ult i64 %14, 4
  br i1 %18, label %58, label %19

19:                                               ; preds = %16
  %20 = and i64 %14, 9223372036854775804
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi <8 x float> [ %12, %19 ], [ %52, %21 ]
  %23 = phi ptr [ %1, %19 ], [ %53, %21 ]
  %24 = phi ptr [ %2, %19 ], [ %48, %21 ]
  %25 = phi i64 [ 0, %19 ], [ %54, %21 ]
  %26 = load <8 x float>, ptr %24, align 1, !tbaa !221
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %28 = load float, ptr %23, align 1, !tbaa !221
  %29 = insertelement <8 x float> poison, float %28, i64 0
  %30 = shufflevector <8 x float> %29, <8 x float> poison, <8 x i32> zeroinitializer
  %31 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %30, <8 x float> %26, <8 x float> %22)
  %32 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %33 = load <8 x float>, ptr %27, align 1, !tbaa !221
  %34 = getelementptr inbounds nuw i8, ptr %24, i64 64
  %35 = load float, ptr %32, align 1, !tbaa !221
  %36 = insertelement <8 x float> poison, float %35, i64 0
  %37 = shufflevector <8 x float> %36, <8 x float> poison, <8 x i32> zeroinitializer
  %38 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %37, <8 x float> %33, <8 x float> %31)
  %39 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %40 = load <8 x float>, ptr %34, align 1, !tbaa !221
  %41 = getelementptr inbounds nuw i8, ptr %24, i64 96
  %42 = load float, ptr %39, align 1, !tbaa !221
  %43 = insertelement <8 x float> poison, float %42, i64 0
  %44 = shufflevector <8 x float> %43, <8 x float> poison, <8 x i32> zeroinitializer
  %45 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %44, <8 x float> %40, <8 x float> %38)
  %46 = getelementptr inbounds nuw i8, ptr %23, i64 12
  %47 = load <8 x float>, ptr %41, align 1, !tbaa !221
  %48 = getelementptr inbounds nuw i8, ptr %24, i64 128
  %49 = load float, ptr %46, align 1, !tbaa !221
  %50 = insertelement <8 x float> poison, float %49, i64 0
  %51 = shufflevector <8 x float> %50, <8 x float> poison, <8 x i32> zeroinitializer
  %52 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %51, <8 x float> %47, <8 x float> %45)
  %53 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %54 = add i64 %25, 4
  %55 = icmp eq i64 %54, %20
  br i1 %55, label %56, label %21, !llvm.loop !329

56:                                               ; preds = %21
  %57 = icmp eq i64 %17, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %56, %16
  %59 = phi <8 x float> [ %12, %16 ], [ %52, %56 ]
  %60 = phi ptr [ %1, %16 ], [ %53, %56 ]
  %61 = phi ptr [ %2, %16 ], [ %48, %56 ]
  %62 = icmp ne i64 %17, 0
  tail call void @llvm.assume(i1 %62)
  br label %63

63:                                               ; preds = %63, %58
  %64 = phi <8 x float> [ %73, %63 ], [ %59, %58 ]
  %65 = phi ptr [ %74, %63 ], [ %60, %58 ]
  %66 = phi ptr [ %69, %63 ], [ %61, %58 ]
  %67 = phi i64 [ %75, %63 ], [ 0, %58 ]
  %68 = load <8 x float>, ptr %66, align 1, !tbaa !221
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %70 = load float, ptr %65, align 1, !tbaa !221
  %71 = insertelement <8 x float> poison, float %70, i64 0
  %72 = shufflevector <8 x float> %71, <8 x float> poison, <8 x i32> zeroinitializer
  %73 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %72, <8 x float> %68, <8 x float> %64)
  %74 = getelementptr inbounds nuw i8, ptr %65, i64 4
  %75 = add i64 %67, 1
  %76 = icmp eq i64 %75, %17
  br i1 %76, label %77, label %63, !llvm.loop !330

77:                                               ; preds = %56, %63, %11
  %78 = phi <8 x float> [ %12, %11 ], [ %52, %56 ], [ %73, %63 ]
  store <8 x float> %78, ptr %0, align 1, !tbaa !221
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_2x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !331
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <8 x float>, ptr %0, align 1, !tbaa !221, !noalias !336
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <8 x float>, ptr %11, align 1, !tbaa !221, !noalias !336
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <8 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <8 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !331
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = and i64 %17, 1
  %21 = icmp eq i64 %17, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = and i64 %17, 9223372036854775806
  br label %46

24:                                               ; preds = %46
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %24, %19
  %27 = phi <8 x float> [ %14, %19 ], [ %73, %24 ]
  %28 = phi <8 x float> [ %15, %19 ], [ %68, %24 ]
  %29 = phi ptr [ %1, %19 ], [ %75, %24 ]
  %30 = phi ptr [ %2, %19 ], [ %74, %24 ]
  %31 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %31)
  %32 = load <8 x float>, ptr %30, align 1, !tbaa !221
  %33 = load float, ptr %29, align 1, !tbaa !221
  %34 = insertelement <8 x float> poison, float %33, i64 0
  %35 = shufflevector <8 x float> %34, <8 x float> poison, <8 x i32> zeroinitializer
  %36 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %35, <8 x float> %32, <8 x float> %28)
  %37 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %38 = load float, ptr %37, align 1, !tbaa !221
  %39 = insertelement <8 x float> poison, float %38, i64 0
  %40 = shufflevector <8 x float> %39, <8 x float> poison, <8 x i32> zeroinitializer
  %41 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %40, <8 x float> %32, <8 x float> %27)
  br label %42

42:                                               ; preds = %26, %24, %13
  %43 = phi <8 x float> [ %14, %13 ], [ %73, %24 ], [ %41, %26 ]
  %44 = phi <8 x float> [ %15, %13 ], [ %68, %24 ], [ %36, %26 ]
  store <8 x float> %44, ptr %0, align 1, !tbaa !221
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x float> %43, ptr %45, align 1, !tbaa !221
  ret void

46:                                               ; preds = %46, %22
  %47 = phi <8 x float> [ %14, %22 ], [ %73, %46 ]
  %48 = phi <8 x float> [ %15, %22 ], [ %68, %46 ]
  %49 = phi ptr [ %1, %22 ], [ %75, %46 ]
  %50 = phi ptr [ %2, %22 ], [ %74, %46 ]
  %51 = phi i64 [ 0, %22 ], [ %76, %46 ]
  %52 = load <8 x float>, ptr %50, align 1, !tbaa !221
  %53 = load float, ptr %49, align 1, !tbaa !221
  %54 = insertelement <8 x float> poison, float %53, i64 0
  %55 = shufflevector <8 x float> %54, <8 x float> poison, <8 x i32> zeroinitializer
  %56 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %55, <8 x float> %52, <8 x float> %48)
  %57 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %58 = load float, ptr %57, align 1, !tbaa !221
  %59 = insertelement <8 x float> poison, float %58, i64 0
  %60 = shufflevector <8 x float> %59, <8 x float> poison, <8 x i32> zeroinitializer
  %61 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %60, <8 x float> %52, <8 x float> %47)
  %62 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %63 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %64 = load <8 x float>, ptr %62, align 1, !tbaa !221
  %65 = load float, ptr %63, align 1, !tbaa !221
  %66 = insertelement <8 x float> poison, float %65, i64 0
  %67 = shufflevector <8 x float> %66, <8 x float> poison, <8 x i32> zeroinitializer
  %68 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %67, <8 x float> %64, <8 x float> %56)
  %69 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %70 = load float, ptr %69, align 1, !tbaa !221
  %71 = insertelement <8 x float> poison, float %70, i64 0
  %72 = shufflevector <8 x float> %71, <8 x float> poison, <8 x i32> zeroinitializer
  %73 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %72, <8 x float> %64, <8 x float> %61)
  %74 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %75 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %76 = add i64 %51, 2
  %77 = icmp eq i64 %76, %23
  br i1 %77, label %24, label %46, !llvm.loop !329
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_4x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !337
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <8 x float>, ptr %0, align 1, !tbaa !221, !noalias !342
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <8 x float>, ptr %11, align 1, !tbaa !221, !noalias !342
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load <8 x float>, ptr %13, align 1, !tbaa !221, !noalias !342
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %16 = load <8 x float>, ptr %15, align 1, !tbaa !221, !noalias !342
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <8 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <8 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <8 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <8 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !337
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <8 x float> [ %18, %17 ], [ %60, %33 ]
  %27 = phi <8 x float> [ %19, %17 ], [ %55, %33 ]
  %28 = phi <8 x float> [ %20, %17 ], [ %50, %33 ]
  %29 = phi <8 x float> [ %21, %17 ], [ %45, %33 ]
  store <8 x float> %29, ptr %0, align 1, !tbaa !221
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x float> %28, ptr %30, align 1, !tbaa !221
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x float> %27, ptr %31, align 1, !tbaa !221
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x float> %26, ptr %32, align 1, !tbaa !221
  ret void

33:                                               ; preds = %17, %33
  %34 = phi <8 x float> [ %60, %33 ], [ %18, %17 ]
  %35 = phi <8 x float> [ %55, %33 ], [ %19, %17 ]
  %36 = phi <8 x float> [ %50, %33 ], [ %20, %17 ]
  %37 = phi <8 x float> [ %45, %33 ], [ %21, %17 ]
  %38 = phi i64 [ %63, %33 ], [ 0, %17 ]
  %39 = phi ptr [ %62, %33 ], [ %1, %17 ]
  %40 = phi ptr [ %61, %33 ], [ %2, %17 ]
  %41 = load <8 x float>, ptr %40, align 1, !tbaa !221
  %42 = load float, ptr %39, align 1, !tbaa !221
  %43 = insertelement <8 x float> poison, float %42, i64 0
  %44 = shufflevector <8 x float> %43, <8 x float> poison, <8 x i32> zeroinitializer
  %45 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %44, <8 x float> %41, <8 x float> %37)
  %46 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %47 = load float, ptr %46, align 1, !tbaa !221
  %48 = insertelement <8 x float> poison, float %47, i64 0
  %49 = shufflevector <8 x float> %48, <8 x float> poison, <8 x i32> zeroinitializer
  %50 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %49, <8 x float> %41, <8 x float> %36)
  %51 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %52 = load float, ptr %51, align 1, !tbaa !221
  %53 = insertelement <8 x float> poison, float %52, i64 0
  %54 = shufflevector <8 x float> %53, <8 x float> poison, <8 x i32> zeroinitializer
  %55 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %54, <8 x float> %41, <8 x float> %35)
  %56 = getelementptr inbounds nuw i8, ptr %39, i64 12
  %57 = load float, ptr %56, align 1, !tbaa !221
  %58 = insertelement <8 x float> poison, float %57, i64 0
  %59 = shufflevector <8 x float> %58, <8 x float> poison, <8 x i32> zeroinitializer
  %60 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %59, <8 x float> %41, <8 x float> %34)
  %61 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %62 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %63 = add nuw nsw i64 %38, 1
  %64 = icmp eq i64 %63, %23
  br i1 %64, label %25, label %33, !llvm.loop !329
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_8x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #16 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !343
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <8 x float>, ptr %0, align 1, !tbaa !221, !noalias !348
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <8 x float>, ptr %11, align 1, !tbaa !221, !noalias !348
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load <8 x float>, ptr %13, align 1, !tbaa !221, !noalias !348
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %16 = load <8 x float>, ptr %15, align 1, !tbaa !221, !noalias !348
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %18 = load <8 x float>, ptr %17, align 1, !tbaa !221, !noalias !348
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %20 = load <8 x float>, ptr %19, align 1, !tbaa !221, !noalias !348
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %22 = load <8 x float>, ptr %21, align 1, !tbaa !221, !noalias !348
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %24 = load <8 x float>, ptr %23, align 1, !tbaa !221, !noalias !348
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <8 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <8 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <8 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <8 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <8 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <8 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <8 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <8 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !343
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <8 x float> [ %26, %25 ], [ %104, %53 ]
  %39 = phi <8 x float> [ %27, %25 ], [ %99, %53 ]
  %40 = phi <8 x float> [ %28, %25 ], [ %94, %53 ]
  %41 = phi <8 x float> [ %29, %25 ], [ %89, %53 ]
  %42 = phi <8 x float> [ %30, %25 ], [ %84, %53 ]
  %43 = phi <8 x float> [ %31, %25 ], [ %79, %53 ]
  %44 = phi <8 x float> [ %32, %25 ], [ %74, %53 ]
  %45 = phi <8 x float> [ %33, %25 ], [ %69, %53 ]
  store <8 x float> %45, ptr %0, align 1, !tbaa !221
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x float> %44, ptr %46, align 1, !tbaa !221
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x float> %43, ptr %47, align 1, !tbaa !221
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x float> %42, ptr %48, align 1, !tbaa !221
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x float> %41, ptr %49, align 1, !tbaa !221
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <8 x float> %40, ptr %50, align 1, !tbaa !221
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x float> %39, ptr %51, align 1, !tbaa !221
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <8 x float> %38, ptr %52, align 1, !tbaa !221
  ret void

53:                                               ; preds = %25, %53
  %54 = phi <8 x float> [ %104, %53 ], [ %26, %25 ]
  %55 = phi <8 x float> [ %99, %53 ], [ %27, %25 ]
  %56 = phi <8 x float> [ %94, %53 ], [ %28, %25 ]
  %57 = phi <8 x float> [ %89, %53 ], [ %29, %25 ]
  %58 = phi <8 x float> [ %84, %53 ], [ %30, %25 ]
  %59 = phi <8 x float> [ %79, %53 ], [ %31, %25 ]
  %60 = phi <8 x float> [ %74, %53 ], [ %32, %25 ]
  %61 = phi <8 x float> [ %69, %53 ], [ %33, %25 ]
  %62 = phi i64 [ %107, %53 ], [ 0, %25 ]
  %63 = phi ptr [ %106, %53 ], [ %1, %25 ]
  %64 = phi ptr [ %105, %53 ], [ %2, %25 ]
  %65 = load <8 x float>, ptr %64, align 1, !tbaa !221
  %66 = load float, ptr %63, align 1, !tbaa !221
  %67 = insertelement <8 x float> poison, float %66, i64 0
  %68 = shufflevector <8 x float> %67, <8 x float> poison, <8 x i32> zeroinitializer
  %69 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %68, <8 x float> %65, <8 x float> %61)
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %71 = load float, ptr %70, align 1, !tbaa !221
  %72 = insertelement <8 x float> poison, float %71, i64 0
  %73 = shufflevector <8 x float> %72, <8 x float> poison, <8 x i32> zeroinitializer
  %74 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %73, <8 x float> %65, <8 x float> %60)
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %76 = load float, ptr %75, align 1, !tbaa !221
  %77 = insertelement <8 x float> poison, float %76, i64 0
  %78 = shufflevector <8 x float> %77, <8 x float> poison, <8 x i32> zeroinitializer
  %79 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %78, <8 x float> %65, <8 x float> %59)
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 12
  %81 = load float, ptr %80, align 1, !tbaa !221
  %82 = insertelement <8 x float> poison, float %81, i64 0
  %83 = shufflevector <8 x float> %82, <8 x float> poison, <8 x i32> zeroinitializer
  %84 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %83, <8 x float> %65, <8 x float> %58)
  %85 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %86 = load float, ptr %85, align 1, !tbaa !221
  %87 = insertelement <8 x float> poison, float %86, i64 0
  %88 = shufflevector <8 x float> %87, <8 x float> poison, <8 x i32> zeroinitializer
  %89 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %88, <8 x float> %65, <8 x float> %57)
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 20
  %91 = load float, ptr %90, align 1, !tbaa !221
  %92 = insertelement <8 x float> poison, float %91, i64 0
  %93 = shufflevector <8 x float> %92, <8 x float> poison, <8 x i32> zeroinitializer
  %94 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %93, <8 x float> %65, <8 x float> %56)
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 24
  %96 = load float, ptr %95, align 1, !tbaa !221
  %97 = insertelement <8 x float> poison, float %96, i64 0
  %98 = shufflevector <8 x float> %97, <8 x float> poison, <8 x i32> zeroinitializer
  %99 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %98, <8 x float> %65, <8 x float> %55)
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 28
  %101 = load float, ptr %100, align 1, !tbaa !221
  %102 = insertelement <8 x float> poison, float %101, i64 0
  %103 = shufflevector <8 x float> %102, <8 x float> poison, <8 x i32> zeroinitializer
  %104 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %103, <8 x float> %65, <8 x float> %54)
  %105 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %106 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %107 = add nuw nsw i64 %62, 1
  %108 = icmp eq i64 %107, %35
  br i1 %108, label %37, label %53, !llvm.loop !329
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_1x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !356
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <8 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !349, !noalias !357
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <8 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !356
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %11
  %17 = and i64 %14, 1
  %18 = icmp eq i64 %14, 1
  br i1 %18, label %50, label %19

19:                                               ; preds = %16
  %20 = and i64 %14, 9223372036854775806
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi <8 x float> [ %12, %19 ], [ %44, %21 ]
  %23 = phi ptr [ %1, %19 ], [ %45, %21 ]
  %24 = phi ptr [ %2, %19 ], [ %38, %21 ]
  %25 = phi i64 [ 0, %19 ], [ %46, %21 ]
  %26 = load <8 x half>, ptr %24, align 1, !tbaa !221, !alias.scope !354, !noalias !358
  %27 = fpext <8 x half> %26 to <8 x float>
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %29 = load i16, ptr %23, align 2, !tbaa !135, !alias.scope !352, !noalias !359
  %30 = insertelement <8 x i16> poison, i16 %29, i64 0
  %31 = bitcast <8 x i16> %30 to <8 x half>
  %32 = shufflevector <8 x half> %31, <8 x half> poison, <8 x i32> zeroinitializer
  %33 = fpext <8 x half> %32 to <8 x float>
  %34 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %33, <8 x float> %27, <8 x float> %22)
  %35 = getelementptr inbounds nuw i8, ptr %23, i64 2
  %36 = load <8 x half>, ptr %28, align 1, !tbaa !221, !alias.scope !354, !noalias !358
  %37 = fpext <8 x half> %36 to <8 x float>
  %38 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %39 = load i16, ptr %35, align 2, !tbaa !135, !alias.scope !352, !noalias !359
  %40 = insertelement <8 x i16> poison, i16 %39, i64 0
  %41 = bitcast <8 x i16> %40 to <8 x half>
  %42 = shufflevector <8 x half> %41, <8 x half> poison, <8 x i32> zeroinitializer
  %43 = fpext <8 x half> %42 to <8 x float>
  %44 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %43, <8 x float> %37, <8 x float> %34)
  %45 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %46 = add i64 %25, 2
  %47 = icmp eq i64 %46, %20
  br i1 %47, label %48, label %21, !llvm.loop !360

48:                                               ; preds = %21
  %49 = icmp eq i64 %17, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %48, %16
  %51 = phi <8 x float> [ %12, %16 ], [ %44, %48 ]
  %52 = phi ptr [ %1, %16 ], [ %45, %48 ]
  %53 = phi ptr [ %2, %16 ], [ %38, %48 ]
  %54 = trunc i64 %14 to i1
  tail call void @llvm.assume(i1 %54)
  %55 = load <8 x half>, ptr %53, align 1, !tbaa !221, !alias.scope !354, !noalias !358
  %56 = fpext <8 x half> %55 to <8 x float>
  %57 = load i16, ptr %52, align 2, !tbaa !135, !alias.scope !352, !noalias !359
  %58 = insertelement <8 x i16> poison, i16 %57, i64 0
  %59 = bitcast <8 x i16> %58 to <8 x half>
  %60 = shufflevector <8 x half> %59, <8 x half> poison, <8 x i32> zeroinitializer
  %61 = fpext <8 x half> %60 to <8 x float>
  %62 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %61, <8 x float> %56, <8 x float> %51)
  br label %63

63:                                               ; preds = %50, %48, %11
  %64 = phi <8 x float> [ %12, %11 ], [ %44, %48 ], [ %62, %50 ]
  store <8 x float> %64, ptr %0, align 1, !tbaa !221, !alias.scope !349, !noalias !357
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_2x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !368
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <8 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !361, !noalias !369
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <8 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !361, !noalias !369
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <8 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <8 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !368
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = and i64 %17, 1
  %21 = icmp eq i64 %17, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = and i64 %17, 9223372036854775806
  br label %51

24:                                               ; preds = %51
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %24, %19
  %27 = phi <8 x float> [ %14, %19 ], [ %88, %24 ]
  %28 = phi <8 x float> [ %15, %19 ], [ %81, %24 ]
  %29 = phi ptr [ %1, %19 ], [ %90, %24 ]
  %30 = phi ptr [ %2, %19 ], [ %89, %24 ]
  %31 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %31)
  %32 = load <8 x half>, ptr %30, align 1, !tbaa !221, !alias.scope !366, !noalias !370
  %33 = fpext <8 x half> %32 to <8 x float>
  %34 = load i16, ptr %29, align 2, !tbaa !135, !alias.scope !364, !noalias !371
  %35 = insertelement <8 x i16> poison, i16 %34, i64 0
  %36 = bitcast <8 x i16> %35 to <8 x half>
  %37 = shufflevector <8 x half> %36, <8 x half> poison, <8 x i32> zeroinitializer
  %38 = fpext <8 x half> %37 to <8 x float>
  %39 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %38, <8 x float> %33, <8 x float> %28)
  %40 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %41 = load i16, ptr %40, align 2, !tbaa !135, !alias.scope !364, !noalias !371
  %42 = insertelement <8 x i16> poison, i16 %41, i64 0
  %43 = bitcast <8 x i16> %42 to <8 x half>
  %44 = shufflevector <8 x half> %43, <8 x half> poison, <8 x i32> zeroinitializer
  %45 = fpext <8 x half> %44 to <8 x float>
  %46 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %45, <8 x float> %33, <8 x float> %27)
  br label %47

47:                                               ; preds = %26, %24, %13
  %48 = phi <8 x float> [ %14, %13 ], [ %88, %24 ], [ %46, %26 ]
  %49 = phi <8 x float> [ %15, %13 ], [ %81, %24 ], [ %39, %26 ]
  store <8 x float> %49, ptr %0, align 1, !tbaa !221, !alias.scope !361, !noalias !369
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x float> %48, ptr %50, align 1, !tbaa !221, !alias.scope !361, !noalias !369
  ret void

51:                                               ; preds = %51, %22
  %52 = phi <8 x float> [ %14, %22 ], [ %88, %51 ]
  %53 = phi <8 x float> [ %15, %22 ], [ %81, %51 ]
  %54 = phi ptr [ %1, %22 ], [ %90, %51 ]
  %55 = phi ptr [ %2, %22 ], [ %89, %51 ]
  %56 = phi i64 [ 0, %22 ], [ %91, %51 ]
  %57 = load <8 x half>, ptr %55, align 1, !tbaa !221, !alias.scope !366, !noalias !370
  %58 = fpext <8 x half> %57 to <8 x float>
  %59 = load i16, ptr %54, align 2, !tbaa !135, !alias.scope !364, !noalias !371
  %60 = insertelement <8 x i16> poison, i16 %59, i64 0
  %61 = bitcast <8 x i16> %60 to <8 x half>
  %62 = shufflevector <8 x half> %61, <8 x half> poison, <8 x i32> zeroinitializer
  %63 = fpext <8 x half> %62 to <8 x float>
  %64 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %63, <8 x float> %58, <8 x float> %53)
  %65 = getelementptr inbounds nuw i8, ptr %54, i64 2
  %66 = load i16, ptr %65, align 2, !tbaa !135, !alias.scope !364, !noalias !371
  %67 = insertelement <8 x i16> poison, i16 %66, i64 0
  %68 = bitcast <8 x i16> %67 to <8 x half>
  %69 = shufflevector <8 x half> %68, <8 x half> poison, <8 x i32> zeroinitializer
  %70 = fpext <8 x half> %69 to <8 x float>
  %71 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %70, <8 x float> %58, <8 x float> %52)
  %72 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %73 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %74 = load <8 x half>, ptr %72, align 1, !tbaa !221, !alias.scope !366, !noalias !370
  %75 = fpext <8 x half> %74 to <8 x float>
  %76 = load i16, ptr %73, align 2, !tbaa !135, !alias.scope !364, !noalias !371
  %77 = insertelement <8 x i16> poison, i16 %76, i64 0
  %78 = bitcast <8 x i16> %77 to <8 x half>
  %79 = shufflevector <8 x half> %78, <8 x half> poison, <8 x i32> zeroinitializer
  %80 = fpext <8 x half> %79 to <8 x float>
  %81 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %80, <8 x float> %75, <8 x float> %64)
  %82 = getelementptr inbounds nuw i8, ptr %54, i64 6
  %83 = load i16, ptr %82, align 2, !tbaa !135, !alias.scope !364, !noalias !371
  %84 = insertelement <8 x i16> poison, i16 %83, i64 0
  %85 = bitcast <8 x i16> %84 to <8 x half>
  %86 = shufflevector <8 x half> %85, <8 x half> poison, <8 x i32> zeroinitializer
  %87 = fpext <8 x half> %86 to <8 x float>
  %88 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %87, <8 x float> %75, <8 x float> %71)
  %89 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %90 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %91 = add i64 %56, 2
  %92 = icmp eq i64 %91, %23
  br i1 %92, label %24, label %51, !llvm.loop !360
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_4x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !379
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <8 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !372, !noalias !380
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <8 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !372, !noalias !380
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load <8 x float>, ptr %13, align 1, !tbaa !221, !alias.scope !372, !noalias !380
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %16 = load <8 x float>, ptr %15, align 1, !tbaa !221, !alias.scope !372, !noalias !380
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <8 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <8 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <8 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <8 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !379
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <8 x float> [ %18, %17 ], [ %69, %33 ]
  %27 = phi <8 x float> [ %19, %17 ], [ %62, %33 ]
  %28 = phi <8 x float> [ %20, %17 ], [ %55, %33 ]
  %29 = phi <8 x float> [ %21, %17 ], [ %48, %33 ]
  store <8 x float> %29, ptr %0, align 1, !tbaa !221, !alias.scope !372, !noalias !380
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x float> %28, ptr %30, align 1, !tbaa !221, !alias.scope !372, !noalias !380
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x float> %27, ptr %31, align 1, !tbaa !221, !alias.scope !372, !noalias !380
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x float> %26, ptr %32, align 1, !tbaa !221, !alias.scope !372, !noalias !380
  ret void

33:                                               ; preds = %17, %33
  %34 = phi <8 x float> [ %69, %33 ], [ %18, %17 ]
  %35 = phi <8 x float> [ %62, %33 ], [ %19, %17 ]
  %36 = phi <8 x float> [ %55, %33 ], [ %20, %17 ]
  %37 = phi <8 x float> [ %48, %33 ], [ %21, %17 ]
  %38 = phi i64 [ %72, %33 ], [ 0, %17 ]
  %39 = phi ptr [ %71, %33 ], [ %1, %17 ]
  %40 = phi ptr [ %70, %33 ], [ %2, %17 ]
  %41 = load <8 x half>, ptr %40, align 1, !tbaa !221, !alias.scope !377, !noalias !381
  %42 = fpext <8 x half> %41 to <8 x float>
  %43 = load i16, ptr %39, align 2, !tbaa !135, !alias.scope !375, !noalias !382
  %44 = insertelement <8 x i16> poison, i16 %43, i64 0
  %45 = bitcast <8 x i16> %44 to <8 x half>
  %46 = shufflevector <8 x half> %45, <8 x half> poison, <8 x i32> zeroinitializer
  %47 = fpext <8 x half> %46 to <8 x float>
  %48 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %47, <8 x float> %42, <8 x float> %37)
  %49 = getelementptr inbounds nuw i8, ptr %39, i64 2
  %50 = load i16, ptr %49, align 2, !tbaa !135, !alias.scope !375, !noalias !382
  %51 = insertelement <8 x i16> poison, i16 %50, i64 0
  %52 = bitcast <8 x i16> %51 to <8 x half>
  %53 = shufflevector <8 x half> %52, <8 x half> poison, <8 x i32> zeroinitializer
  %54 = fpext <8 x half> %53 to <8 x float>
  %55 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %54, <8 x float> %42, <8 x float> %36)
  %56 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %57 = load i16, ptr %56, align 2, !tbaa !135, !alias.scope !375, !noalias !382
  %58 = insertelement <8 x i16> poison, i16 %57, i64 0
  %59 = bitcast <8 x i16> %58 to <8 x half>
  %60 = shufflevector <8 x half> %59, <8 x half> poison, <8 x i32> zeroinitializer
  %61 = fpext <8 x half> %60 to <8 x float>
  %62 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %61, <8 x float> %42, <8 x float> %35)
  %63 = getelementptr inbounds nuw i8, ptr %39, i64 6
  %64 = load i16, ptr %63, align 2, !tbaa !135, !alias.scope !375, !noalias !382
  %65 = insertelement <8 x i16> poison, i16 %64, i64 0
  %66 = bitcast <8 x i16> %65 to <8 x half>
  %67 = shufflevector <8 x half> %66, <8 x half> poison, <8 x i32> zeroinitializer
  %68 = fpext <8 x half> %67 to <8 x float>
  %69 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %68, <8 x float> %42, <8 x float> %34)
  %70 = getelementptr inbounds nuw i8, ptr %40, i64 16
  %71 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %72 = add nuw nsw i64 %38, 1
  %73 = icmp eq i64 %72, %23
  br i1 %73, label %25, label %33, !llvm.loop !360
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_8x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !390
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <8 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load <8 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load <8 x float>, ptr %13, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %16 = load <8 x float>, ptr %15, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %18 = load <8 x float>, ptr %17, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %20 = load <8 x float>, ptr %19, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %22 = load <8 x float>, ptr %21, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %24 = load <8 x float>, ptr %23, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <8 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <8 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <8 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <8 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <8 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <8 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <8 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <8 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !390
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <8 x float> [ %26, %25 ], [ %121, %53 ]
  %39 = phi <8 x float> [ %27, %25 ], [ %114, %53 ]
  %40 = phi <8 x float> [ %28, %25 ], [ %107, %53 ]
  %41 = phi <8 x float> [ %29, %25 ], [ %100, %53 ]
  %42 = phi <8 x float> [ %30, %25 ], [ %93, %53 ]
  %43 = phi <8 x float> [ %31, %25 ], [ %86, %53 ]
  %44 = phi <8 x float> [ %32, %25 ], [ %79, %53 ]
  %45 = phi <8 x float> [ %33, %25 ], [ %72, %53 ]
  store <8 x float> %45, ptr %0, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x float> %44, ptr %46, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x float> %43, ptr %47, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x float> %42, ptr %48, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x float> %41, ptr %49, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <8 x float> %40, ptr %50, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x float> %39, ptr %51, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <8 x float> %38, ptr %52, align 1, !tbaa !221, !alias.scope !383, !noalias !391
  ret void

53:                                               ; preds = %25, %53
  %54 = phi <8 x float> [ %121, %53 ], [ %26, %25 ]
  %55 = phi <8 x float> [ %114, %53 ], [ %27, %25 ]
  %56 = phi <8 x float> [ %107, %53 ], [ %28, %25 ]
  %57 = phi <8 x float> [ %100, %53 ], [ %29, %25 ]
  %58 = phi <8 x float> [ %93, %53 ], [ %30, %25 ]
  %59 = phi <8 x float> [ %86, %53 ], [ %31, %25 ]
  %60 = phi <8 x float> [ %79, %53 ], [ %32, %25 ]
  %61 = phi <8 x float> [ %72, %53 ], [ %33, %25 ]
  %62 = phi i64 [ %124, %53 ], [ 0, %25 ]
  %63 = phi ptr [ %123, %53 ], [ %1, %25 ]
  %64 = phi ptr [ %122, %53 ], [ %2, %25 ]
  %65 = load <8 x half>, ptr %64, align 1, !tbaa !221, !alias.scope !388, !noalias !392
  %66 = fpext <8 x half> %65 to <8 x float>
  %67 = load i16, ptr %63, align 2, !tbaa !135, !alias.scope !386, !noalias !393
  %68 = insertelement <8 x i16> poison, i16 %67, i64 0
  %69 = bitcast <8 x i16> %68 to <8 x half>
  %70 = shufflevector <8 x half> %69, <8 x half> poison, <8 x i32> zeroinitializer
  %71 = fpext <8 x half> %70 to <8 x float>
  %72 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %71, <8 x float> %66, <8 x float> %61)
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 2
  %74 = load i16, ptr %73, align 2, !tbaa !135, !alias.scope !386, !noalias !393
  %75 = insertelement <8 x i16> poison, i16 %74, i64 0
  %76 = bitcast <8 x i16> %75 to <8 x half>
  %77 = shufflevector <8 x half> %76, <8 x half> poison, <8 x i32> zeroinitializer
  %78 = fpext <8 x half> %77 to <8 x float>
  %79 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %78, <8 x float> %66, <8 x float> %60)
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %81 = load i16, ptr %80, align 2, !tbaa !135, !alias.scope !386, !noalias !393
  %82 = insertelement <8 x i16> poison, i16 %81, i64 0
  %83 = bitcast <8 x i16> %82 to <8 x half>
  %84 = shufflevector <8 x half> %83, <8 x half> poison, <8 x i32> zeroinitializer
  %85 = fpext <8 x half> %84 to <8 x float>
  %86 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %85, <8 x float> %66, <8 x float> %59)
  %87 = getelementptr inbounds nuw i8, ptr %63, i64 6
  %88 = load i16, ptr %87, align 2, !tbaa !135, !alias.scope !386, !noalias !393
  %89 = insertelement <8 x i16> poison, i16 %88, i64 0
  %90 = bitcast <8 x i16> %89 to <8 x half>
  %91 = shufflevector <8 x half> %90, <8 x half> poison, <8 x i32> zeroinitializer
  %92 = fpext <8 x half> %91 to <8 x float>
  %93 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %92, <8 x float> %66, <8 x float> %58)
  %94 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %95 = load i16, ptr %94, align 2, !tbaa !135, !alias.scope !386, !noalias !393
  %96 = insertelement <8 x i16> poison, i16 %95, i64 0
  %97 = bitcast <8 x i16> %96 to <8 x half>
  %98 = shufflevector <8 x half> %97, <8 x half> poison, <8 x i32> zeroinitializer
  %99 = fpext <8 x half> %98 to <8 x float>
  %100 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %99, <8 x float> %66, <8 x float> %57)
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 10
  %102 = load i16, ptr %101, align 2, !tbaa !135, !alias.scope !386, !noalias !393
  %103 = insertelement <8 x i16> poison, i16 %102, i64 0
  %104 = bitcast <8 x i16> %103 to <8 x half>
  %105 = shufflevector <8 x half> %104, <8 x half> poison, <8 x i32> zeroinitializer
  %106 = fpext <8 x half> %105 to <8 x float>
  %107 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %106, <8 x float> %66, <8 x float> %56)
  %108 = getelementptr inbounds nuw i8, ptr %63, i64 12
  %109 = load i16, ptr %108, align 2, !tbaa !135, !alias.scope !386, !noalias !393
  %110 = insertelement <8 x i16> poison, i16 %109, i64 0
  %111 = bitcast <8 x i16> %110 to <8 x half>
  %112 = shufflevector <8 x half> %111, <8 x half> poison, <8 x i32> zeroinitializer
  %113 = fpext <8 x half> %112 to <8 x float>
  %114 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %113, <8 x float> %66, <8 x float> %55)
  %115 = getelementptr inbounds nuw i8, ptr %63, i64 14
  %116 = load i16, ptr %115, align 2, !tbaa !135, !alias.scope !386, !noalias !393
  %117 = insertelement <8 x i16> poison, i16 %116, i64 0
  %118 = bitcast <8 x i16> %117 to <8 x half>
  %119 = shufflevector <8 x half> %118, <8 x half> poison, <8 x i32> zeroinitializer
  %120 = fpext <8 x half> %119 to <8 x float>
  %121 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %120, <8 x float> %66, <8 x float> %54)
  %122 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %123 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %124 = add nuw nsw i64 %62, 1
  %125 = icmp eq i64 %124, %35
  br i1 %125, label %37, label %53, !llvm.loop !360
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_1x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !401
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load <8 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !394, !noalias !402
  %11 = fpext <8 x half> %10 to <8 x float>
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi <8 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %15 = load i64, ptr %14, align 8, !tbaa !168, !noalias !401
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %12
  %18 = and i64 %15, 1
  %19 = icmp eq i64 %15, 1
  br i1 %19, label %51, label %20

20:                                               ; preds = %17
  %21 = and i64 %15, 9223372036854775806
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <8 x float> [ %13, %20 ], [ %45, %22 ]
  %24 = phi ptr [ %1, %20 ], [ %46, %22 ]
  %25 = phi ptr [ %2, %20 ], [ %39, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %47, %22 ]
  %27 = load <8 x half>, ptr %25, align 1, !tbaa !221, !alias.scope !399, !noalias !403
  %28 = fpext <8 x half> %27 to <8 x float>
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %30 = load i16, ptr %24, align 2, !tbaa !135, !alias.scope !397, !noalias !404
  %31 = insertelement <8 x i16> poison, i16 %30, i64 0
  %32 = bitcast <8 x i16> %31 to <8 x half>
  %33 = shufflevector <8 x half> %32, <8 x half> poison, <8 x i32> zeroinitializer
  %34 = fpext <8 x half> %33 to <8 x float>
  %35 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %34, <8 x float> %28, <8 x float> %23)
  %36 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %37 = load <8 x half>, ptr %29, align 1, !tbaa !221, !alias.scope !399, !noalias !403
  %38 = fpext <8 x half> %37 to <8 x float>
  %39 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %40 = load i16, ptr %36, align 2, !tbaa !135, !alias.scope !397, !noalias !404
  %41 = insertelement <8 x i16> poison, i16 %40, i64 0
  %42 = bitcast <8 x i16> %41 to <8 x half>
  %43 = shufflevector <8 x half> %42, <8 x half> poison, <8 x i32> zeroinitializer
  %44 = fpext <8 x half> %43 to <8 x float>
  %45 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %44, <8 x float> %38, <8 x float> %35)
  %46 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %47 = add i64 %26, 2
  %48 = icmp eq i64 %47, %21
  br i1 %48, label %49, label %22, !llvm.loop !360

49:                                               ; preds = %22
  %50 = icmp eq i64 %18, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %49, %17
  %52 = phi <8 x float> [ %13, %17 ], [ %45, %49 ]
  %53 = phi ptr [ %1, %17 ], [ %46, %49 ]
  %54 = phi ptr [ %2, %17 ], [ %39, %49 ]
  %55 = trunc i64 %15 to i1
  tail call void @llvm.assume(i1 %55)
  %56 = load <8 x half>, ptr %54, align 1, !tbaa !221, !alias.scope !399, !noalias !403
  %57 = fpext <8 x half> %56 to <8 x float>
  %58 = load i16, ptr %53, align 2, !tbaa !135, !alias.scope !397, !noalias !404
  %59 = insertelement <8 x i16> poison, i16 %58, i64 0
  %60 = bitcast <8 x i16> %59 to <8 x half>
  %61 = shufflevector <8 x half> %60, <8 x half> poison, <8 x i32> zeroinitializer
  %62 = fpext <8 x half> %61 to <8 x float>
  %63 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %62, <8 x float> %57, <8 x float> %52)
  br label %64

64:                                               ; preds = %51, %49, %12
  %65 = phi <8 x float> [ %13, %12 ], [ %45, %49 ], [ %63, %51 ]
  %66 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %65, i32 0)
  store <8 x i16> %66, ptr %0, align 1, !tbaa !221, !noalias !402
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_2x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !412
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load <8 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !405, !noalias !413
  %11 = fpext <8 x half> %10 to <8 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load <8 x half>, ptr %12, align 1, !tbaa !221, !alias.scope !405, !noalias !413
  %14 = fpext <8 x half> %13 to <8 x float>
  br label %15

15:                                               ; preds = %4, %9
  %16 = phi <8 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %17 = phi <8 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %19 = load i64, ptr %18, align 8, !tbaa !168, !noalias !412
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = and i64 %19, 1
  %23 = icmp eq i64 %19, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = and i64 %19, 9223372036854775806
  br label %55

26:                                               ; preds = %55
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %26, %21
  %29 = phi <8 x float> [ %16, %21 ], [ %92, %26 ]
  %30 = phi <8 x float> [ %17, %21 ], [ %85, %26 ]
  %31 = phi ptr [ %1, %21 ], [ %94, %26 ]
  %32 = phi ptr [ %2, %21 ], [ %93, %26 ]
  %33 = trunc i64 %19 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <8 x half>, ptr %32, align 1, !tbaa !221, !alias.scope !410, !noalias !414
  %35 = fpext <8 x half> %34 to <8 x float>
  %36 = load i16, ptr %31, align 2, !tbaa !135, !alias.scope !408, !noalias !415
  %37 = insertelement <8 x i16> poison, i16 %36, i64 0
  %38 = bitcast <8 x i16> %37 to <8 x half>
  %39 = shufflevector <8 x half> %38, <8 x half> poison, <8 x i32> zeroinitializer
  %40 = fpext <8 x half> %39 to <8 x float>
  %41 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %40, <8 x float> %35, <8 x float> %30)
  %42 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %43 = load i16, ptr %42, align 2, !tbaa !135, !alias.scope !408, !noalias !415
  %44 = insertelement <8 x i16> poison, i16 %43, i64 0
  %45 = bitcast <8 x i16> %44 to <8 x half>
  %46 = shufflevector <8 x half> %45, <8 x half> poison, <8 x i32> zeroinitializer
  %47 = fpext <8 x half> %46 to <8 x float>
  %48 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %47, <8 x float> %35, <8 x float> %29)
  br label %49

49:                                               ; preds = %28, %26, %15
  %50 = phi <8 x float> [ %16, %15 ], [ %92, %26 ], [ %48, %28 ]
  %51 = phi <8 x float> [ %17, %15 ], [ %85, %26 ], [ %41, %28 ]
  %52 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %51, i32 0)
  store <8 x i16> %52, ptr %0, align 1, !tbaa !221, !noalias !413
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %54 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %50, i32 0)
  store <8 x i16> %54, ptr %53, align 1, !tbaa !221, !noalias !413
  ret void

55:                                               ; preds = %55, %24
  %56 = phi <8 x float> [ %16, %24 ], [ %92, %55 ]
  %57 = phi <8 x float> [ %17, %24 ], [ %85, %55 ]
  %58 = phi ptr [ %1, %24 ], [ %94, %55 ]
  %59 = phi ptr [ %2, %24 ], [ %93, %55 ]
  %60 = phi i64 [ 0, %24 ], [ %95, %55 ]
  %61 = load <8 x half>, ptr %59, align 1, !tbaa !221, !alias.scope !410, !noalias !414
  %62 = fpext <8 x half> %61 to <8 x float>
  %63 = load i16, ptr %58, align 2, !tbaa !135, !alias.scope !408, !noalias !415
  %64 = insertelement <8 x i16> poison, i16 %63, i64 0
  %65 = bitcast <8 x i16> %64 to <8 x half>
  %66 = shufflevector <8 x half> %65, <8 x half> poison, <8 x i32> zeroinitializer
  %67 = fpext <8 x half> %66 to <8 x float>
  %68 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %67, <8 x float> %62, <8 x float> %57)
  %69 = getelementptr inbounds nuw i8, ptr %58, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !135, !alias.scope !408, !noalias !415
  %71 = insertelement <8 x i16> poison, i16 %70, i64 0
  %72 = bitcast <8 x i16> %71 to <8 x half>
  %73 = shufflevector <8 x half> %72, <8 x half> poison, <8 x i32> zeroinitializer
  %74 = fpext <8 x half> %73 to <8 x float>
  %75 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %74, <8 x float> %62, <8 x float> %56)
  %76 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %77 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %78 = load <8 x half>, ptr %76, align 1, !tbaa !221, !alias.scope !410, !noalias !414
  %79 = fpext <8 x half> %78 to <8 x float>
  %80 = load i16, ptr %77, align 2, !tbaa !135, !alias.scope !408, !noalias !415
  %81 = insertelement <8 x i16> poison, i16 %80, i64 0
  %82 = bitcast <8 x i16> %81 to <8 x half>
  %83 = shufflevector <8 x half> %82, <8 x half> poison, <8 x i32> zeroinitializer
  %84 = fpext <8 x half> %83 to <8 x float>
  %85 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %84, <8 x float> %79, <8 x float> %68)
  %86 = getelementptr inbounds nuw i8, ptr %58, i64 6
  %87 = load i16, ptr %86, align 2, !tbaa !135, !alias.scope !408, !noalias !415
  %88 = insertelement <8 x i16> poison, i16 %87, i64 0
  %89 = bitcast <8 x i16> %88 to <8 x half>
  %90 = shufflevector <8 x half> %89, <8 x half> poison, <8 x i32> zeroinitializer
  %91 = fpext <8 x half> %90 to <8 x float>
  %92 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %91, <8 x float> %79, <8 x float> %75)
  %93 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %94 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %95 = add i64 %60, 2
  %96 = icmp eq i64 %95, %25
  br i1 %96, label %26, label %55, !llvm.loop !360
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_4x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !423
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = load <8 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !416, !noalias !424
  %11 = fpext <8 x half> %10 to <8 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load <8 x half>, ptr %12, align 1, !tbaa !221, !alias.scope !416, !noalias !424
  %14 = fpext <8 x half> %13 to <8 x float>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load <8 x half>, ptr %15, align 1, !tbaa !221, !alias.scope !416, !noalias !424
  %17 = fpext <8 x half> %16 to <8 x float>
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = load <8 x half>, ptr %18, align 1, !tbaa !221, !alias.scope !416, !noalias !424
  %20 = fpext <8 x half> %19 to <8 x float>
  br label %21

21:                                               ; preds = %4, %9
  %22 = phi <8 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %23 = phi <8 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %24 = phi <8 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %25 = phi <8 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !168, !noalias !423
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %41, %21
  %30 = phi <8 x float> [ %22, %21 ], [ %77, %41 ]
  %31 = phi <8 x float> [ %23, %21 ], [ %70, %41 ]
  %32 = phi <8 x float> [ %24, %21 ], [ %63, %41 ]
  %33 = phi <8 x float> [ %25, %21 ], [ %56, %41 ]
  %34 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %33, i32 0)
  store <8 x i16> %34, ptr %0, align 1, !tbaa !221, !noalias !424
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %36 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %32, i32 0)
  store <8 x i16> %36, ptr %35, align 1, !tbaa !221, !noalias !424
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %38 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %31, i32 0)
  store <8 x i16> %38, ptr %37, align 1, !tbaa !221, !noalias !424
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %40 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %30, i32 0)
  store <8 x i16> %40, ptr %39, align 1, !tbaa !221, !noalias !424
  ret void

41:                                               ; preds = %21, %41
  %42 = phi <8 x float> [ %77, %41 ], [ %22, %21 ]
  %43 = phi <8 x float> [ %70, %41 ], [ %23, %21 ]
  %44 = phi <8 x float> [ %63, %41 ], [ %24, %21 ]
  %45 = phi <8 x float> [ %56, %41 ], [ %25, %21 ]
  %46 = phi i64 [ %80, %41 ], [ 0, %21 ]
  %47 = phi ptr [ %79, %41 ], [ %1, %21 ]
  %48 = phi ptr [ %78, %41 ], [ %2, %21 ]
  %49 = load <8 x half>, ptr %48, align 1, !tbaa !221, !alias.scope !421, !noalias !425
  %50 = fpext <8 x half> %49 to <8 x float>
  %51 = load i16, ptr %47, align 2, !tbaa !135, !alias.scope !419, !noalias !426
  %52 = insertelement <8 x i16> poison, i16 %51, i64 0
  %53 = bitcast <8 x i16> %52 to <8 x half>
  %54 = shufflevector <8 x half> %53, <8 x half> poison, <8 x i32> zeroinitializer
  %55 = fpext <8 x half> %54 to <8 x float>
  %56 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %55, <8 x float> %50, <8 x float> %45)
  %57 = getelementptr inbounds nuw i8, ptr %47, i64 2
  %58 = load i16, ptr %57, align 2, !tbaa !135, !alias.scope !419, !noalias !426
  %59 = insertelement <8 x i16> poison, i16 %58, i64 0
  %60 = bitcast <8 x i16> %59 to <8 x half>
  %61 = shufflevector <8 x half> %60, <8 x half> poison, <8 x i32> zeroinitializer
  %62 = fpext <8 x half> %61 to <8 x float>
  %63 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %62, <8 x float> %50, <8 x float> %44)
  %64 = getelementptr inbounds nuw i8, ptr %47, i64 4
  %65 = load i16, ptr %64, align 2, !tbaa !135, !alias.scope !419, !noalias !426
  %66 = insertelement <8 x i16> poison, i16 %65, i64 0
  %67 = bitcast <8 x i16> %66 to <8 x half>
  %68 = shufflevector <8 x half> %67, <8 x half> poison, <8 x i32> zeroinitializer
  %69 = fpext <8 x half> %68 to <8 x float>
  %70 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %69, <8 x float> %50, <8 x float> %43)
  %71 = getelementptr inbounds nuw i8, ptr %47, i64 6
  %72 = load i16, ptr %71, align 2, !tbaa !135, !alias.scope !419, !noalias !426
  %73 = insertelement <8 x i16> poison, i16 %72, i64 0
  %74 = bitcast <8 x i16> %73 to <8 x half>
  %75 = shufflevector <8 x half> %74, <8 x half> poison, <8 x i32> zeroinitializer
  %76 = fpext <8 x half> %75 to <8 x float>
  %77 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %76, <8 x float> %50, <8 x float> %42)
  %78 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %79 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %80 = add nuw nsw i64 %46, 1
  %81 = icmp eq i64 %80, %27
  br i1 %81, label %29, label %41, !llvm.loop !360
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_8x8x1_x86_64_avx2_fma(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #14 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !434
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = load <8 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !427, !noalias !435
  %11 = fpext <8 x half> %10 to <8 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load <8 x half>, ptr %12, align 1, !tbaa !221, !alias.scope !427, !noalias !435
  %14 = fpext <8 x half> %13 to <8 x float>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load <8 x half>, ptr %15, align 1, !tbaa !221, !alias.scope !427, !noalias !435
  %17 = fpext <8 x half> %16 to <8 x float>
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = load <8 x half>, ptr %18, align 1, !tbaa !221, !alias.scope !427, !noalias !435
  %20 = fpext <8 x half> %19 to <8 x float>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %22 = load <8 x half>, ptr %21, align 1, !tbaa !221, !alias.scope !427, !noalias !435
  %23 = fpext <8 x half> %22 to <8 x float>
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %25 = load <8 x half>, ptr %24, align 1, !tbaa !221, !alias.scope !427, !noalias !435
  %26 = fpext <8 x half> %25 to <8 x float>
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %28 = load <8 x half>, ptr %27, align 1, !tbaa !221, !alias.scope !427, !noalias !435
  %29 = fpext <8 x half> %28 to <8 x float>
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %31 = load <8 x half>, ptr %30, align 1, !tbaa !221, !alias.scope !427, !noalias !435
  %32 = fpext <8 x half> %31 to <8 x float>
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi <8 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %35 = phi <8 x float> [ %29, %9 ], [ zeroinitializer, %4 ]
  %36 = phi <8 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %37 = phi <8 x float> [ %23, %9 ], [ zeroinitializer, %4 ]
  %38 = phi <8 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %39 = phi <8 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %40 = phi <8 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %41 = phi <8 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %43 = load i64, ptr %42, align 8, !tbaa !168, !noalias !434
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %69, %33
  %46 = phi <8 x float> [ %34, %33 ], [ %137, %69 ]
  %47 = phi <8 x float> [ %35, %33 ], [ %130, %69 ]
  %48 = phi <8 x float> [ %36, %33 ], [ %123, %69 ]
  %49 = phi <8 x float> [ %37, %33 ], [ %116, %69 ]
  %50 = phi <8 x float> [ %38, %33 ], [ %109, %69 ]
  %51 = phi <8 x float> [ %39, %33 ], [ %102, %69 ]
  %52 = phi <8 x float> [ %40, %33 ], [ %95, %69 ]
  %53 = phi <8 x float> [ %41, %33 ], [ %88, %69 ]
  %54 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %53, i32 0)
  store <8 x i16> %54, ptr %0, align 1, !tbaa !221, !noalias !435
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %56 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %52, i32 0)
  store <8 x i16> %56, ptr %55, align 1, !tbaa !221, !noalias !435
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %58 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %51, i32 0)
  store <8 x i16> %58, ptr %57, align 1, !tbaa !221, !noalias !435
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %60 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %50, i32 0)
  store <8 x i16> %60, ptr %59, align 1, !tbaa !221, !noalias !435
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %62 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %49, i32 0)
  store <8 x i16> %62, ptr %61, align 1, !tbaa !221, !noalias !435
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %64 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %48, i32 0)
  store <8 x i16> %64, ptr %63, align 1, !tbaa !221, !noalias !435
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %66 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %47, i32 0)
  store <8 x i16> %66, ptr %65, align 1, !tbaa !221, !noalias !435
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %68 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %46, i32 0)
  store <8 x i16> %68, ptr %67, align 1, !tbaa !221, !noalias !435
  ret void

69:                                               ; preds = %33, %69
  %70 = phi <8 x float> [ %137, %69 ], [ %34, %33 ]
  %71 = phi <8 x float> [ %130, %69 ], [ %35, %33 ]
  %72 = phi <8 x float> [ %123, %69 ], [ %36, %33 ]
  %73 = phi <8 x float> [ %116, %69 ], [ %37, %33 ]
  %74 = phi <8 x float> [ %109, %69 ], [ %38, %33 ]
  %75 = phi <8 x float> [ %102, %69 ], [ %39, %33 ]
  %76 = phi <8 x float> [ %95, %69 ], [ %40, %33 ]
  %77 = phi <8 x float> [ %88, %69 ], [ %41, %33 ]
  %78 = phi i64 [ %140, %69 ], [ 0, %33 ]
  %79 = phi ptr [ %139, %69 ], [ %1, %33 ]
  %80 = phi ptr [ %138, %69 ], [ %2, %33 ]
  %81 = load <8 x half>, ptr %80, align 1, !tbaa !221, !alias.scope !432, !noalias !436
  %82 = fpext <8 x half> %81 to <8 x float>
  %83 = load i16, ptr %79, align 2, !tbaa !135, !alias.scope !430, !noalias !437
  %84 = insertelement <8 x i16> poison, i16 %83, i64 0
  %85 = bitcast <8 x i16> %84 to <8 x half>
  %86 = shufflevector <8 x half> %85, <8 x half> poison, <8 x i32> zeroinitializer
  %87 = fpext <8 x half> %86 to <8 x float>
  %88 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %87, <8 x float> %82, <8 x float> %77)
  %89 = getelementptr inbounds nuw i8, ptr %79, i64 2
  %90 = load i16, ptr %89, align 2, !tbaa !135, !alias.scope !430, !noalias !437
  %91 = insertelement <8 x i16> poison, i16 %90, i64 0
  %92 = bitcast <8 x i16> %91 to <8 x half>
  %93 = shufflevector <8 x half> %92, <8 x half> poison, <8 x i32> zeroinitializer
  %94 = fpext <8 x half> %93 to <8 x float>
  %95 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %94, <8 x float> %82, <8 x float> %76)
  %96 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %97 = load i16, ptr %96, align 2, !tbaa !135, !alias.scope !430, !noalias !437
  %98 = insertelement <8 x i16> poison, i16 %97, i64 0
  %99 = bitcast <8 x i16> %98 to <8 x half>
  %100 = shufflevector <8 x half> %99, <8 x half> poison, <8 x i32> zeroinitializer
  %101 = fpext <8 x half> %100 to <8 x float>
  %102 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %101, <8 x float> %82, <8 x float> %75)
  %103 = getelementptr inbounds nuw i8, ptr %79, i64 6
  %104 = load i16, ptr %103, align 2, !tbaa !135, !alias.scope !430, !noalias !437
  %105 = insertelement <8 x i16> poison, i16 %104, i64 0
  %106 = bitcast <8 x i16> %105 to <8 x half>
  %107 = shufflevector <8 x half> %106, <8 x half> poison, <8 x i32> zeroinitializer
  %108 = fpext <8 x half> %107 to <8 x float>
  %109 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %108, <8 x float> %82, <8 x float> %74)
  %110 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %111 = load i16, ptr %110, align 2, !tbaa !135, !alias.scope !430, !noalias !437
  %112 = insertelement <8 x i16> poison, i16 %111, i64 0
  %113 = bitcast <8 x i16> %112 to <8 x half>
  %114 = shufflevector <8 x half> %113, <8 x half> poison, <8 x i32> zeroinitializer
  %115 = fpext <8 x half> %114 to <8 x float>
  %116 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %115, <8 x float> %82, <8 x float> %73)
  %117 = getelementptr inbounds nuw i8, ptr %79, i64 10
  %118 = load i16, ptr %117, align 2, !tbaa !135, !alias.scope !430, !noalias !437
  %119 = insertelement <8 x i16> poison, i16 %118, i64 0
  %120 = bitcast <8 x i16> %119 to <8 x half>
  %121 = shufflevector <8 x half> %120, <8 x half> poison, <8 x i32> zeroinitializer
  %122 = fpext <8 x half> %121 to <8 x float>
  %123 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %122, <8 x float> %82, <8 x float> %72)
  %124 = getelementptr inbounds nuw i8, ptr %79, i64 12
  %125 = load i16, ptr %124, align 2, !tbaa !135, !alias.scope !430, !noalias !437
  %126 = insertelement <8 x i16> poison, i16 %125, i64 0
  %127 = bitcast <8 x i16> %126 to <8 x half>
  %128 = shufflevector <8 x half> %127, <8 x half> poison, <8 x i32> zeroinitializer
  %129 = fpext <8 x half> %128 to <8 x float>
  %130 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %129, <8 x float> %82, <8 x float> %71)
  %131 = getelementptr inbounds nuw i8, ptr %79, i64 14
  %132 = load i16, ptr %131, align 2, !tbaa !135, !alias.scope !430, !noalias !437
  %133 = insertelement <8 x i16> poison, i16 %132, i64 0
  %134 = bitcast <8 x i16> %133 to <8 x half>
  %135 = shufflevector <8 x half> %134, <8 x half> poison, <8 x i32> zeroinitializer
  %136 = fpext <8 x half> %135 to <8 x float>
  %137 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %136, <8 x float> %82, <8 x float> %70)
  %138 = getelementptr inbounds nuw i8, ptr %80, i64 16
  %139 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %140 = add nuw nsw i64 %78, 1
  %141 = icmp eq i64 %140, %43
  br i1 %141, label %45, label %69, !llvm.loop !360
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_1x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !441
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !noalias !444
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !441
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %11
  %17 = and i64 %14, 3
  %18 = icmp ult i64 %14, 4
  br i1 %18, label %58, label %19

19:                                               ; preds = %16
  %20 = and i64 %14, 9223372036854775804
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi <16 x float> [ %12, %19 ], [ %52, %21 ]
  %23 = phi ptr [ %1, %19 ], [ %53, %21 ]
  %24 = phi ptr [ %2, %19 ], [ %48, %21 ]
  %25 = phi i64 [ 0, %19 ], [ %54, %21 ]
  %26 = load <16 x float>, ptr %24, align 1, !tbaa !221, !noalias !438
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 64
  %28 = load float, ptr %23, align 4, !tbaa !137, !alias.scope !438, !noalias !445
  %29 = insertelement <16 x float> poison, float %28, i64 0
  %30 = shufflevector <16 x float> %29, <16 x float> poison, <16 x i32> zeroinitializer
  %31 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %26, <16 x float> %30, <16 x float> %22)
  %32 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %33 = load <16 x float>, ptr %27, align 1, !tbaa !221, !noalias !438
  %34 = getelementptr inbounds nuw i8, ptr %24, i64 128
  %35 = load float, ptr %32, align 4, !tbaa !137, !alias.scope !438, !noalias !445
  %36 = insertelement <16 x float> poison, float %35, i64 0
  %37 = shufflevector <16 x float> %36, <16 x float> poison, <16 x i32> zeroinitializer
  %38 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %33, <16 x float> %37, <16 x float> %31)
  %39 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %40 = load <16 x float>, ptr %34, align 1, !tbaa !221, !noalias !438
  %41 = getelementptr inbounds nuw i8, ptr %24, i64 192
  %42 = load float, ptr %39, align 4, !tbaa !137, !alias.scope !438, !noalias !445
  %43 = insertelement <16 x float> poison, float %42, i64 0
  %44 = shufflevector <16 x float> %43, <16 x float> poison, <16 x i32> zeroinitializer
  %45 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %40, <16 x float> %44, <16 x float> %38)
  %46 = getelementptr inbounds nuw i8, ptr %23, i64 12
  %47 = load <16 x float>, ptr %41, align 1, !tbaa !221, !noalias !438
  %48 = getelementptr inbounds nuw i8, ptr %24, i64 256
  %49 = load float, ptr %46, align 4, !tbaa !137, !alias.scope !438, !noalias !445
  %50 = insertelement <16 x float> poison, float %49, i64 0
  %51 = shufflevector <16 x float> %50, <16 x float> poison, <16 x i32> zeroinitializer
  %52 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %47, <16 x float> %51, <16 x float> %45)
  %53 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %54 = add i64 %25, 4
  %55 = icmp eq i64 %54, %20
  br i1 %55, label %56, label %21, !llvm.loop !446

56:                                               ; preds = %21
  %57 = icmp eq i64 %17, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %56, %16
  %59 = phi <16 x float> [ %12, %16 ], [ %52, %56 ]
  %60 = phi ptr [ %1, %16 ], [ %53, %56 ]
  %61 = phi ptr [ %2, %16 ], [ %48, %56 ]
  %62 = icmp ne i64 %17, 0
  tail call void @llvm.assume(i1 %62)
  br label %63

63:                                               ; preds = %63, %58
  %64 = phi <16 x float> [ %73, %63 ], [ %59, %58 ]
  %65 = phi ptr [ %74, %63 ], [ %60, %58 ]
  %66 = phi ptr [ %69, %63 ], [ %61, %58 ]
  %67 = phi i64 [ %75, %63 ], [ 0, %58 ]
  %68 = load <16 x float>, ptr %66, align 1, !tbaa !221, !noalias !438
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 64
  %70 = load float, ptr %65, align 4, !tbaa !137, !alias.scope !438, !noalias !445
  %71 = insertelement <16 x float> poison, float %70, i64 0
  %72 = shufflevector <16 x float> %71, <16 x float> poison, <16 x i32> zeroinitializer
  %73 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %68, <16 x float> %72, <16 x float> %64)
  %74 = getelementptr inbounds nuw i8, ptr %65, i64 4
  %75 = add i64 %67, 1
  %76 = icmp eq i64 %75, %17
  br i1 %76, label %77, label %63, !llvm.loop !447

77:                                               ; preds = %56, %63, %11
  %78 = phi <16 x float> [ %12, %11 ], [ %52, %56 ], [ %73, %63 ]
  store <16 x float> %78, ptr %0, align 1, !tbaa !221, !noalias !438
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_2x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !451
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !noalias !454
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !noalias !454
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !451
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = and i64 %17, 1
  %21 = icmp eq i64 %17, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = and i64 %17, 9223372036854775806
  br label %46

24:                                               ; preds = %46
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %24, %19
  %27 = phi <16 x float> [ %14, %19 ], [ %73, %24 ]
  %28 = phi <16 x float> [ %15, %19 ], [ %68, %24 ]
  %29 = phi ptr [ %1, %19 ], [ %75, %24 ]
  %30 = phi ptr [ %2, %19 ], [ %74, %24 ]
  %31 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %31)
  %32 = load <16 x float>, ptr %30, align 1, !tbaa !221, !noalias !448
  %33 = load float, ptr %29, align 4, !tbaa !137, !alias.scope !448, !noalias !455
  %34 = insertelement <16 x float> poison, float %33, i64 0
  %35 = shufflevector <16 x float> %34, <16 x float> poison, <16 x i32> zeroinitializer
  %36 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %32, <16 x float> %35, <16 x float> %28)
  %37 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %38 = load float, ptr %37, align 4, !tbaa !137, !alias.scope !448, !noalias !455
  %39 = insertelement <16 x float> poison, float %38, i64 0
  %40 = shufflevector <16 x float> %39, <16 x float> poison, <16 x i32> zeroinitializer
  %41 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %32, <16 x float> %40, <16 x float> %27)
  br label %42

42:                                               ; preds = %26, %24, %13
  %43 = phi <16 x float> [ %14, %13 ], [ %73, %24 ], [ %41, %26 ]
  %44 = phi <16 x float> [ %15, %13 ], [ %68, %24 ], [ %36, %26 ]
  store <16 x float> %44, ptr %0, align 1, !tbaa !221, !noalias !448
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %43, ptr %45, align 1, !tbaa !221, !noalias !448
  ret void

46:                                               ; preds = %46, %22
  %47 = phi <16 x float> [ %14, %22 ], [ %73, %46 ]
  %48 = phi <16 x float> [ %15, %22 ], [ %68, %46 ]
  %49 = phi ptr [ %1, %22 ], [ %75, %46 ]
  %50 = phi ptr [ %2, %22 ], [ %74, %46 ]
  %51 = phi i64 [ 0, %22 ], [ %76, %46 ]
  %52 = load <16 x float>, ptr %50, align 1, !tbaa !221, !noalias !448
  %53 = load float, ptr %49, align 4, !tbaa !137, !alias.scope !448, !noalias !455
  %54 = insertelement <16 x float> poison, float %53, i64 0
  %55 = shufflevector <16 x float> %54, <16 x float> poison, <16 x i32> zeroinitializer
  %56 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %52, <16 x float> %55, <16 x float> %48)
  %57 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %58 = load float, ptr %57, align 4, !tbaa !137, !alias.scope !448, !noalias !455
  %59 = insertelement <16 x float> poison, float %58, i64 0
  %60 = shufflevector <16 x float> %59, <16 x float> poison, <16 x i32> zeroinitializer
  %61 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %52, <16 x float> %60, <16 x float> %47)
  %62 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %63 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %64 = load <16 x float>, ptr %62, align 1, !tbaa !221, !noalias !448
  %65 = load float, ptr %63, align 4, !tbaa !137, !alias.scope !448, !noalias !455
  %66 = insertelement <16 x float> poison, float %65, i64 0
  %67 = shufflevector <16 x float> %66, <16 x float> poison, <16 x i32> zeroinitializer
  %68 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %64, <16 x float> %67, <16 x float> %56)
  %69 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %70 = load float, ptr %69, align 4, !tbaa !137, !alias.scope !448, !noalias !455
  %71 = insertelement <16 x float> poison, float %70, i64 0
  %72 = shufflevector <16 x float> %71, <16 x float> poison, <16 x i32> zeroinitializer
  %73 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %64, <16 x float> %72, <16 x float> %61)
  %74 = getelementptr inbounds nuw i8, ptr %50, i64 128
  %75 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %76 = add i64 %51, 2
  %77 = icmp eq i64 %76, %23
  br i1 %77, label %24, label %46, !llvm.loop !446
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_4x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !459
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !noalias !462
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !noalias !462
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !noalias !462
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !noalias !462
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !459
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <16 x float> [ %18, %17 ], [ %60, %33 ]
  %27 = phi <16 x float> [ %19, %17 ], [ %55, %33 ]
  %28 = phi <16 x float> [ %20, %17 ], [ %50, %33 ]
  %29 = phi <16 x float> [ %21, %17 ], [ %45, %33 ]
  store <16 x float> %29, ptr %0, align 1, !tbaa !221, !noalias !456
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %28, ptr %30, align 1, !tbaa !221, !noalias !456
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <16 x float> %27, ptr %31, align 1, !tbaa !221, !noalias !456
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x float> %26, ptr %32, align 1, !tbaa !221, !noalias !456
  ret void

33:                                               ; preds = %17, %33
  %34 = phi <16 x float> [ %60, %33 ], [ %18, %17 ]
  %35 = phi <16 x float> [ %55, %33 ], [ %19, %17 ]
  %36 = phi <16 x float> [ %50, %33 ], [ %20, %17 ]
  %37 = phi <16 x float> [ %45, %33 ], [ %21, %17 ]
  %38 = phi i64 [ %63, %33 ], [ 0, %17 ]
  %39 = phi ptr [ %62, %33 ], [ %1, %17 ]
  %40 = phi ptr [ %61, %33 ], [ %2, %17 ]
  %41 = load <16 x float>, ptr %40, align 1, !tbaa !221, !noalias !456
  %42 = load float, ptr %39, align 4, !tbaa !137, !alias.scope !456, !noalias !463
  %43 = insertelement <16 x float> poison, float %42, i64 0
  %44 = shufflevector <16 x float> %43, <16 x float> poison, <16 x i32> zeroinitializer
  %45 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %41, <16 x float> %44, <16 x float> %37)
  %46 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %47 = load float, ptr %46, align 4, !tbaa !137, !alias.scope !456, !noalias !463
  %48 = insertelement <16 x float> poison, float %47, i64 0
  %49 = shufflevector <16 x float> %48, <16 x float> poison, <16 x i32> zeroinitializer
  %50 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %41, <16 x float> %49, <16 x float> %36)
  %51 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %52 = load float, ptr %51, align 4, !tbaa !137, !alias.scope !456, !noalias !463
  %53 = insertelement <16 x float> poison, float %52, i64 0
  %54 = shufflevector <16 x float> %53, <16 x float> poison, <16 x i32> zeroinitializer
  %55 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %41, <16 x float> %54, <16 x float> %35)
  %56 = getelementptr inbounds nuw i8, ptr %39, i64 12
  %57 = load float, ptr %56, align 4, !tbaa !137, !alias.scope !456, !noalias !463
  %58 = insertelement <16 x float> poison, float %57, i64 0
  %59 = shufflevector <16 x float> %58, <16 x float> poison, <16 x i32> zeroinitializer
  %60 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %41, <16 x float> %59, <16 x float> %34)
  %61 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %63 = add nuw nsw i64 %38, 1
  %64 = icmp eq i64 %63, %23
  br i1 %64, label %25, label %33, !llvm.loop !446
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_8x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !467
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !noalias !470
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !noalias !470
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !noalias !470
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !noalias !470
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <16 x float>, ptr %17, align 1, !tbaa !221, !noalias !470
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <16 x float>, ptr %19, align 1, !tbaa !221, !noalias !470
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <16 x float>, ptr %21, align 1, !tbaa !221, !noalias !470
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <16 x float>, ptr %23, align 1, !tbaa !221, !noalias !470
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <16 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <16 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <16 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !467
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <16 x float> [ %26, %25 ], [ %104, %53 ]
  %39 = phi <16 x float> [ %27, %25 ], [ %99, %53 ]
  %40 = phi <16 x float> [ %28, %25 ], [ %94, %53 ]
  %41 = phi <16 x float> [ %29, %25 ], [ %89, %53 ]
  %42 = phi <16 x float> [ %30, %25 ], [ %84, %53 ]
  %43 = phi <16 x float> [ %31, %25 ], [ %79, %53 ]
  %44 = phi <16 x float> [ %32, %25 ], [ %74, %53 ]
  %45 = phi <16 x float> [ %33, %25 ], [ %69, %53 ]
  store <16 x float> %45, ptr %0, align 1, !tbaa !221, !noalias !464
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %44, ptr %46, align 1, !tbaa !221, !noalias !464
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <16 x float> %43, ptr %47, align 1, !tbaa !221, !noalias !464
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x float> %42, ptr %48, align 1, !tbaa !221, !noalias !464
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <16 x float> %41, ptr %49, align 1, !tbaa !221, !noalias !464
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <16 x float> %40, ptr %50, align 1, !tbaa !221, !noalias !464
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <16 x float> %39, ptr %51, align 1, !tbaa !221, !noalias !464
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x float> %38, ptr %52, align 1, !tbaa !221, !noalias !464
  ret void

53:                                               ; preds = %25, %53
  %54 = phi <16 x float> [ %104, %53 ], [ %26, %25 ]
  %55 = phi <16 x float> [ %99, %53 ], [ %27, %25 ]
  %56 = phi <16 x float> [ %94, %53 ], [ %28, %25 ]
  %57 = phi <16 x float> [ %89, %53 ], [ %29, %25 ]
  %58 = phi <16 x float> [ %84, %53 ], [ %30, %25 ]
  %59 = phi <16 x float> [ %79, %53 ], [ %31, %25 ]
  %60 = phi <16 x float> [ %74, %53 ], [ %32, %25 ]
  %61 = phi <16 x float> [ %69, %53 ], [ %33, %25 ]
  %62 = phi i64 [ %107, %53 ], [ 0, %25 ]
  %63 = phi ptr [ %106, %53 ], [ %1, %25 ]
  %64 = phi ptr [ %105, %53 ], [ %2, %25 ]
  %65 = load <16 x float>, ptr %64, align 1, !tbaa !221, !noalias !464
  %66 = load float, ptr %63, align 4, !tbaa !137, !alias.scope !464, !noalias !471
  %67 = insertelement <16 x float> poison, float %66, i64 0
  %68 = shufflevector <16 x float> %67, <16 x float> poison, <16 x i32> zeroinitializer
  %69 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %65, <16 x float> %68, <16 x float> %61)
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %71 = load float, ptr %70, align 4, !tbaa !137, !alias.scope !464, !noalias !471
  %72 = insertelement <16 x float> poison, float %71, i64 0
  %73 = shufflevector <16 x float> %72, <16 x float> poison, <16 x i32> zeroinitializer
  %74 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %65, <16 x float> %73, <16 x float> %60)
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %76 = load float, ptr %75, align 4, !tbaa !137, !alias.scope !464, !noalias !471
  %77 = insertelement <16 x float> poison, float %76, i64 0
  %78 = shufflevector <16 x float> %77, <16 x float> poison, <16 x i32> zeroinitializer
  %79 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %65, <16 x float> %78, <16 x float> %59)
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 12
  %81 = load float, ptr %80, align 4, !tbaa !137, !alias.scope !464, !noalias !471
  %82 = insertelement <16 x float> poison, float %81, i64 0
  %83 = shufflevector <16 x float> %82, <16 x float> poison, <16 x i32> zeroinitializer
  %84 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %65, <16 x float> %83, <16 x float> %58)
  %85 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %86 = load float, ptr %85, align 4, !tbaa !137, !alias.scope !464, !noalias !471
  %87 = insertelement <16 x float> poison, float %86, i64 0
  %88 = shufflevector <16 x float> %87, <16 x float> poison, <16 x i32> zeroinitializer
  %89 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %65, <16 x float> %88, <16 x float> %57)
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 20
  %91 = load float, ptr %90, align 4, !tbaa !137, !alias.scope !464, !noalias !471
  %92 = insertelement <16 x float> poison, float %91, i64 0
  %93 = shufflevector <16 x float> %92, <16 x float> poison, <16 x i32> zeroinitializer
  %94 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %65, <16 x float> %93, <16 x float> %56)
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 24
  %96 = load float, ptr %95, align 4, !tbaa !137, !alias.scope !464, !noalias !471
  %97 = insertelement <16 x float> poison, float %96, i64 0
  %98 = shufflevector <16 x float> %97, <16 x float> poison, <16 x i32> zeroinitializer
  %99 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %65, <16 x float> %98, <16 x float> %55)
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 28
  %101 = load float, ptr %100, align 4, !tbaa !137, !alias.scope !464, !noalias !471
  %102 = insertelement <16 x float> poison, float %101, i64 0
  %103 = shufflevector <16 x float> %102, <16 x float> poison, <16 x i32> zeroinitializer
  %104 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %65, <16 x float> %103, <16 x float> %54)
  %105 = getelementptr inbounds nuw i8, ptr %64, i64 64
  %106 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %107 = add nuw nsw i64 %62, 1
  %108 = icmp eq i64 %107, %35
  br i1 %108, label %37, label %53, !llvm.loop !446
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f32f32f32_16x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !475
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !noalias !478
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !noalias !478
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !noalias !478
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !noalias !478
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <16 x float>, ptr %17, align 1, !tbaa !221, !noalias !478
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <16 x float>, ptr %19, align 1, !tbaa !221, !noalias !478
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <16 x float>, ptr %21, align 1, !tbaa !221, !noalias !478
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <16 x float>, ptr %23, align 1, !tbaa !221, !noalias !478
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %26 = load <16 x float>, ptr %25, align 1, !tbaa !221, !noalias !478
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %28 = load <16 x float>, ptr %27, align 1, !tbaa !221, !noalias !478
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %30 = load <16 x float>, ptr %29, align 1, !tbaa !221, !noalias !478
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %32 = load <16 x float>, ptr %31, align 1, !tbaa !221, !noalias !478
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %34 = load <16 x float>, ptr %33, align 1, !tbaa !221, !noalias !478
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %36 = load <16 x float>, ptr %35, align 1, !tbaa !221, !noalias !478
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %38 = load <16 x float>, ptr %37, align 1, !tbaa !221, !noalias !478
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %40 = load <16 x float>, ptr %39, align 1, !tbaa !221, !noalias !478
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <16 x float> [ %40, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <16 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <16 x float> [ %36, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <16 x float> [ %34, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <16 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <16 x float> [ %30, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <16 x float> [ %28, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <16 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <16 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <16 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <16 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !168, !noalias !475
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %93, %41
  %62 = phi <16 x float> [ %42, %41 ], [ %192, %93 ]
  %63 = phi <16 x float> [ %43, %41 ], [ %187, %93 ]
  %64 = phi <16 x float> [ %44, %41 ], [ %182, %93 ]
  %65 = phi <16 x float> [ %45, %41 ], [ %177, %93 ]
  %66 = phi <16 x float> [ %46, %41 ], [ %172, %93 ]
  %67 = phi <16 x float> [ %47, %41 ], [ %167, %93 ]
  %68 = phi <16 x float> [ %48, %41 ], [ %162, %93 ]
  %69 = phi <16 x float> [ %49, %41 ], [ %157, %93 ]
  %70 = phi <16 x float> [ %50, %41 ], [ %152, %93 ]
  %71 = phi <16 x float> [ %51, %41 ], [ %147, %93 ]
  %72 = phi <16 x float> [ %52, %41 ], [ %142, %93 ]
  %73 = phi <16 x float> [ %53, %41 ], [ %137, %93 ]
  %74 = phi <16 x float> [ %54, %41 ], [ %132, %93 ]
  %75 = phi <16 x float> [ %55, %41 ], [ %127, %93 ]
  %76 = phi <16 x float> [ %56, %41 ], [ %122, %93 ]
  %77 = phi <16 x float> [ %57, %41 ], [ %117, %93 ]
  store <16 x float> %77, ptr %0, align 1, !tbaa !221, !noalias !472
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %76, ptr %78, align 1, !tbaa !221, !noalias !472
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <16 x float> %75, ptr %79, align 1, !tbaa !221, !noalias !472
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x float> %74, ptr %80, align 1, !tbaa !221, !noalias !472
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <16 x float> %73, ptr %81, align 1, !tbaa !221, !noalias !472
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <16 x float> %72, ptr %82, align 1, !tbaa !221, !noalias !472
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <16 x float> %71, ptr %83, align 1, !tbaa !221, !noalias !472
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x float> %70, ptr %84, align 1, !tbaa !221, !noalias !472
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <16 x float> %69, ptr %85, align 1, !tbaa !221, !noalias !472
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 576
  store <16 x float> %68, ptr %86, align 1, !tbaa !221, !noalias !472
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <16 x float> %67, ptr %87, align 1, !tbaa !221, !noalias !472
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <16 x float> %66, ptr %88, align 1, !tbaa !221, !noalias !472
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <16 x float> %65, ptr %89, align 1, !tbaa !221, !noalias !472
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <16 x float> %64, ptr %90, align 1, !tbaa !221, !noalias !472
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <16 x float> %63, ptr %91, align 1, !tbaa !221, !noalias !472
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <16 x float> %62, ptr %92, align 1, !tbaa !221, !noalias !472
  ret void

93:                                               ; preds = %41, %93
  %94 = phi <16 x float> [ %192, %93 ], [ %42, %41 ]
  %95 = phi <16 x float> [ %187, %93 ], [ %43, %41 ]
  %96 = phi <16 x float> [ %182, %93 ], [ %44, %41 ]
  %97 = phi <16 x float> [ %177, %93 ], [ %45, %41 ]
  %98 = phi <16 x float> [ %172, %93 ], [ %46, %41 ]
  %99 = phi <16 x float> [ %167, %93 ], [ %47, %41 ]
  %100 = phi <16 x float> [ %162, %93 ], [ %48, %41 ]
  %101 = phi <16 x float> [ %157, %93 ], [ %49, %41 ]
  %102 = phi <16 x float> [ %152, %93 ], [ %50, %41 ]
  %103 = phi <16 x float> [ %147, %93 ], [ %51, %41 ]
  %104 = phi <16 x float> [ %142, %93 ], [ %52, %41 ]
  %105 = phi <16 x float> [ %137, %93 ], [ %53, %41 ]
  %106 = phi <16 x float> [ %132, %93 ], [ %54, %41 ]
  %107 = phi <16 x float> [ %127, %93 ], [ %55, %41 ]
  %108 = phi <16 x float> [ %122, %93 ], [ %56, %41 ]
  %109 = phi <16 x float> [ %117, %93 ], [ %57, %41 ]
  %110 = phi i64 [ %195, %93 ], [ 0, %41 ]
  %111 = phi ptr [ %194, %93 ], [ %1, %41 ]
  %112 = phi ptr [ %193, %93 ], [ %2, %41 ]
  %113 = load <16 x float>, ptr %112, align 1, !tbaa !221, !noalias !472
  %114 = load float, ptr %111, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %115 = insertelement <16 x float> poison, float %114, i64 0
  %116 = shufflevector <16 x float> %115, <16 x float> poison, <16 x i32> zeroinitializer
  %117 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %116, <16 x float> %109)
  %118 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %119 = load float, ptr %118, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %120 = insertelement <16 x float> poison, float %119, i64 0
  %121 = shufflevector <16 x float> %120, <16 x float> poison, <16 x i32> zeroinitializer
  %122 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %121, <16 x float> %108)
  %123 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %124 = load float, ptr %123, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %125 = insertelement <16 x float> poison, float %124, i64 0
  %126 = shufflevector <16 x float> %125, <16 x float> poison, <16 x i32> zeroinitializer
  %127 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %126, <16 x float> %107)
  %128 = getelementptr inbounds nuw i8, ptr %111, i64 12
  %129 = load float, ptr %128, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %130 = insertelement <16 x float> poison, float %129, i64 0
  %131 = shufflevector <16 x float> %130, <16 x float> poison, <16 x i32> zeroinitializer
  %132 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %131, <16 x float> %106)
  %133 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %134 = load float, ptr %133, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %135 = insertelement <16 x float> poison, float %134, i64 0
  %136 = shufflevector <16 x float> %135, <16 x float> poison, <16 x i32> zeroinitializer
  %137 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %136, <16 x float> %105)
  %138 = getelementptr inbounds nuw i8, ptr %111, i64 20
  %139 = load float, ptr %138, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %140 = insertelement <16 x float> poison, float %139, i64 0
  %141 = shufflevector <16 x float> %140, <16 x float> poison, <16 x i32> zeroinitializer
  %142 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %141, <16 x float> %104)
  %143 = getelementptr inbounds nuw i8, ptr %111, i64 24
  %144 = load float, ptr %143, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %145 = insertelement <16 x float> poison, float %144, i64 0
  %146 = shufflevector <16 x float> %145, <16 x float> poison, <16 x i32> zeroinitializer
  %147 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %146, <16 x float> %103)
  %148 = getelementptr inbounds nuw i8, ptr %111, i64 28
  %149 = load float, ptr %148, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %150 = insertelement <16 x float> poison, float %149, i64 0
  %151 = shufflevector <16 x float> %150, <16 x float> poison, <16 x i32> zeroinitializer
  %152 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %151, <16 x float> %102)
  %153 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %154 = load float, ptr %153, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %155 = insertelement <16 x float> poison, float %154, i64 0
  %156 = shufflevector <16 x float> %155, <16 x float> poison, <16 x i32> zeroinitializer
  %157 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %156, <16 x float> %101)
  %158 = getelementptr inbounds nuw i8, ptr %111, i64 36
  %159 = load float, ptr %158, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %160 = insertelement <16 x float> poison, float %159, i64 0
  %161 = shufflevector <16 x float> %160, <16 x float> poison, <16 x i32> zeroinitializer
  %162 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %161, <16 x float> %100)
  %163 = getelementptr inbounds nuw i8, ptr %111, i64 40
  %164 = load float, ptr %163, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %165 = insertelement <16 x float> poison, float %164, i64 0
  %166 = shufflevector <16 x float> %165, <16 x float> poison, <16 x i32> zeroinitializer
  %167 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %166, <16 x float> %99)
  %168 = getelementptr inbounds nuw i8, ptr %111, i64 44
  %169 = load float, ptr %168, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %170 = insertelement <16 x float> poison, float %169, i64 0
  %171 = shufflevector <16 x float> %170, <16 x float> poison, <16 x i32> zeroinitializer
  %172 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %171, <16 x float> %98)
  %173 = getelementptr inbounds nuw i8, ptr %111, i64 48
  %174 = load float, ptr %173, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %175 = insertelement <16 x float> poison, float %174, i64 0
  %176 = shufflevector <16 x float> %175, <16 x float> poison, <16 x i32> zeroinitializer
  %177 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %176, <16 x float> %97)
  %178 = getelementptr inbounds nuw i8, ptr %111, i64 52
  %179 = load float, ptr %178, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %180 = insertelement <16 x float> poison, float %179, i64 0
  %181 = shufflevector <16 x float> %180, <16 x float> poison, <16 x i32> zeroinitializer
  %182 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %181, <16 x float> %96)
  %183 = getelementptr inbounds nuw i8, ptr %111, i64 56
  %184 = load float, ptr %183, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %185 = insertelement <16 x float> poison, float %184, i64 0
  %186 = shufflevector <16 x float> %185, <16 x float> poison, <16 x i32> zeroinitializer
  %187 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %186, <16 x float> %95)
  %188 = getelementptr inbounds nuw i8, ptr %111, i64 60
  %189 = load float, ptr %188, align 4, !tbaa !137, !alias.scope !472, !noalias !479
  %190 = insertelement <16 x float> poison, float %189, i64 0
  %191 = shufflevector <16 x float> %190, <16 x float> poison, <16 x i32> zeroinitializer
  %192 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %191, <16 x float> %94)
  %193 = getelementptr inbounds nuw i8, ptr %112, i64 64
  %194 = getelementptr inbounds nuw i8, ptr %111, i64 64
  %195 = add nuw nsw i64 %110, 1
  %196 = icmp eq i64 %195, %59
  br i1 %196, label %61, label %93, !llvm.loop !446
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_1x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !487
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !480, !noalias !488
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !487
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %11
  %17 = and i64 %14, 1
  %18 = icmp eq i64 %14, 1
  br i1 %18, label %50, label %19

19:                                               ; preds = %16
  %20 = and i64 %14, 9223372036854775806
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi <16 x float> [ %12, %19 ], [ %44, %21 ]
  %23 = phi ptr [ %1, %19 ], [ %45, %21 ]
  %24 = phi ptr [ %2, %19 ], [ %38, %21 ]
  %25 = phi i64 [ 0, %19 ], [ %46, %21 ]
  %26 = load <16 x half>, ptr %24, align 1, !tbaa !221, !alias.scope !485, !noalias !489
  %27 = fpext <16 x half> %26 to <16 x float>
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %29 = load i16, ptr %23, align 2, !tbaa !135, !alias.scope !483, !noalias !490
  %30 = insertelement <16 x i16> poison, i16 %29, i64 0
  %31 = bitcast <16 x i16> %30 to <16 x half>
  %32 = shufflevector <16 x half> %31, <16 x half> poison, <16 x i32> zeroinitializer
  %33 = fpext <16 x half> %32 to <16 x float>
  %34 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %33, <16 x float> %27, <16 x float> %22)
  %35 = getelementptr inbounds nuw i8, ptr %23, i64 2
  %36 = load <16 x half>, ptr %28, align 1, !tbaa !221, !alias.scope !485, !noalias !489
  %37 = fpext <16 x half> %36 to <16 x float>
  %38 = getelementptr inbounds nuw i8, ptr %24, i64 64
  %39 = load i16, ptr %35, align 2, !tbaa !135, !alias.scope !483, !noalias !490
  %40 = insertelement <16 x i16> poison, i16 %39, i64 0
  %41 = bitcast <16 x i16> %40 to <16 x half>
  %42 = shufflevector <16 x half> %41, <16 x half> poison, <16 x i32> zeroinitializer
  %43 = fpext <16 x half> %42 to <16 x float>
  %44 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %43, <16 x float> %37, <16 x float> %34)
  %45 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %46 = add i64 %25, 2
  %47 = icmp eq i64 %46, %20
  br i1 %47, label %48, label %21, !llvm.loop !491

48:                                               ; preds = %21
  %49 = icmp eq i64 %17, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %48, %16
  %51 = phi <16 x float> [ %12, %16 ], [ %44, %48 ]
  %52 = phi ptr [ %1, %16 ], [ %45, %48 ]
  %53 = phi ptr [ %2, %16 ], [ %38, %48 ]
  %54 = trunc i64 %14 to i1
  tail call void @llvm.assume(i1 %54)
  %55 = load <16 x half>, ptr %53, align 1, !tbaa !221, !alias.scope !485, !noalias !489
  %56 = fpext <16 x half> %55 to <16 x float>
  %57 = load i16, ptr %52, align 2, !tbaa !135, !alias.scope !483, !noalias !490
  %58 = insertelement <16 x i16> poison, i16 %57, i64 0
  %59 = bitcast <16 x i16> %58 to <16 x half>
  %60 = shufflevector <16 x half> %59, <16 x half> poison, <16 x i32> zeroinitializer
  %61 = fpext <16 x half> %60 to <16 x float>
  %62 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %61, <16 x float> %56, <16 x float> %51)
  br label %63

63:                                               ; preds = %50, %48, %11
  %64 = phi <16 x float> [ %12, %11 ], [ %44, %48 ], [ %62, %50 ]
  store <16 x float> %64, ptr %0, align 1, !tbaa !221, !alias.scope !480, !noalias !488
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_2x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !499
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !492, !noalias !500
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !492, !noalias !500
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !499
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = and i64 %17, 1
  %21 = icmp eq i64 %17, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = and i64 %17, 9223372036854775806
  br label %51

24:                                               ; preds = %51
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %24, %19
  %27 = phi <16 x float> [ %14, %19 ], [ %88, %24 ]
  %28 = phi <16 x float> [ %15, %19 ], [ %81, %24 ]
  %29 = phi ptr [ %1, %19 ], [ %90, %24 ]
  %30 = phi ptr [ %2, %19 ], [ %89, %24 ]
  %31 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %31)
  %32 = load <16 x half>, ptr %30, align 1, !tbaa !221, !alias.scope !497, !noalias !501
  %33 = fpext <16 x half> %32 to <16 x float>
  %34 = load i16, ptr %29, align 2, !tbaa !135, !alias.scope !495, !noalias !502
  %35 = insertelement <16 x i16> poison, i16 %34, i64 0
  %36 = bitcast <16 x i16> %35 to <16 x half>
  %37 = shufflevector <16 x half> %36, <16 x half> poison, <16 x i32> zeroinitializer
  %38 = fpext <16 x half> %37 to <16 x float>
  %39 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %38, <16 x float> %33, <16 x float> %28)
  %40 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %41 = load i16, ptr %40, align 2, !tbaa !135, !alias.scope !495, !noalias !502
  %42 = insertelement <16 x i16> poison, i16 %41, i64 0
  %43 = bitcast <16 x i16> %42 to <16 x half>
  %44 = shufflevector <16 x half> %43, <16 x half> poison, <16 x i32> zeroinitializer
  %45 = fpext <16 x half> %44 to <16 x float>
  %46 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %45, <16 x float> %33, <16 x float> %27)
  br label %47

47:                                               ; preds = %26, %24, %13
  %48 = phi <16 x float> [ %14, %13 ], [ %88, %24 ], [ %46, %26 ]
  %49 = phi <16 x float> [ %15, %13 ], [ %81, %24 ], [ %39, %26 ]
  store <16 x float> %49, ptr %0, align 1, !tbaa !221, !alias.scope !492, !noalias !500
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %48, ptr %50, align 1, !tbaa !221, !alias.scope !492, !noalias !500
  ret void

51:                                               ; preds = %51, %22
  %52 = phi <16 x float> [ %14, %22 ], [ %88, %51 ]
  %53 = phi <16 x float> [ %15, %22 ], [ %81, %51 ]
  %54 = phi ptr [ %1, %22 ], [ %90, %51 ]
  %55 = phi ptr [ %2, %22 ], [ %89, %51 ]
  %56 = phi i64 [ 0, %22 ], [ %91, %51 ]
  %57 = load <16 x half>, ptr %55, align 1, !tbaa !221, !alias.scope !497, !noalias !501
  %58 = fpext <16 x half> %57 to <16 x float>
  %59 = load i16, ptr %54, align 2, !tbaa !135, !alias.scope !495, !noalias !502
  %60 = insertelement <16 x i16> poison, i16 %59, i64 0
  %61 = bitcast <16 x i16> %60 to <16 x half>
  %62 = shufflevector <16 x half> %61, <16 x half> poison, <16 x i32> zeroinitializer
  %63 = fpext <16 x half> %62 to <16 x float>
  %64 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %63, <16 x float> %58, <16 x float> %53)
  %65 = getelementptr inbounds nuw i8, ptr %54, i64 2
  %66 = load i16, ptr %65, align 2, !tbaa !135, !alias.scope !495, !noalias !502
  %67 = insertelement <16 x i16> poison, i16 %66, i64 0
  %68 = bitcast <16 x i16> %67 to <16 x half>
  %69 = shufflevector <16 x half> %68, <16 x half> poison, <16 x i32> zeroinitializer
  %70 = fpext <16 x half> %69 to <16 x float>
  %71 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %70, <16 x float> %58, <16 x float> %52)
  %72 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %73 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %74 = load <16 x half>, ptr %72, align 1, !tbaa !221, !alias.scope !497, !noalias !501
  %75 = fpext <16 x half> %74 to <16 x float>
  %76 = load i16, ptr %73, align 2, !tbaa !135, !alias.scope !495, !noalias !502
  %77 = insertelement <16 x i16> poison, i16 %76, i64 0
  %78 = bitcast <16 x i16> %77 to <16 x half>
  %79 = shufflevector <16 x half> %78, <16 x half> poison, <16 x i32> zeroinitializer
  %80 = fpext <16 x half> %79 to <16 x float>
  %81 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %80, <16 x float> %75, <16 x float> %64)
  %82 = getelementptr inbounds nuw i8, ptr %54, i64 6
  %83 = load i16, ptr %82, align 2, !tbaa !135, !alias.scope !495, !noalias !502
  %84 = insertelement <16 x i16> poison, i16 %83, i64 0
  %85 = bitcast <16 x i16> %84 to <16 x half>
  %86 = shufflevector <16 x half> %85, <16 x half> poison, <16 x i32> zeroinitializer
  %87 = fpext <16 x half> %86 to <16 x float>
  %88 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %87, <16 x float> %75, <16 x float> %71)
  %89 = getelementptr inbounds nuw i8, ptr %55, i64 64
  %90 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %91 = add i64 %56, 2
  %92 = icmp eq i64 %91, %23
  br i1 %92, label %24, label %51, !llvm.loop !491
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_4x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !510
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !503, !noalias !511
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !503, !noalias !511
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !alias.scope !503, !noalias !511
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !alias.scope !503, !noalias !511
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !510
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <16 x float> [ %18, %17 ], [ %69, %33 ]
  %27 = phi <16 x float> [ %19, %17 ], [ %62, %33 ]
  %28 = phi <16 x float> [ %20, %17 ], [ %55, %33 ]
  %29 = phi <16 x float> [ %21, %17 ], [ %48, %33 ]
  store <16 x float> %29, ptr %0, align 1, !tbaa !221, !alias.scope !503, !noalias !511
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %28, ptr %30, align 1, !tbaa !221, !alias.scope !503, !noalias !511
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <16 x float> %27, ptr %31, align 1, !tbaa !221, !alias.scope !503, !noalias !511
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x float> %26, ptr %32, align 1, !tbaa !221, !alias.scope !503, !noalias !511
  ret void

33:                                               ; preds = %17, %33
  %34 = phi <16 x float> [ %69, %33 ], [ %18, %17 ]
  %35 = phi <16 x float> [ %62, %33 ], [ %19, %17 ]
  %36 = phi <16 x float> [ %55, %33 ], [ %20, %17 ]
  %37 = phi <16 x float> [ %48, %33 ], [ %21, %17 ]
  %38 = phi i64 [ %72, %33 ], [ 0, %17 ]
  %39 = phi ptr [ %71, %33 ], [ %1, %17 ]
  %40 = phi ptr [ %70, %33 ], [ %2, %17 ]
  %41 = load <16 x half>, ptr %40, align 1, !tbaa !221, !alias.scope !508, !noalias !512
  %42 = fpext <16 x half> %41 to <16 x float>
  %43 = load i16, ptr %39, align 2, !tbaa !135, !alias.scope !506, !noalias !513
  %44 = insertelement <16 x i16> poison, i16 %43, i64 0
  %45 = bitcast <16 x i16> %44 to <16 x half>
  %46 = shufflevector <16 x half> %45, <16 x half> poison, <16 x i32> zeroinitializer
  %47 = fpext <16 x half> %46 to <16 x float>
  %48 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %47, <16 x float> %42, <16 x float> %37)
  %49 = getelementptr inbounds nuw i8, ptr %39, i64 2
  %50 = load i16, ptr %49, align 2, !tbaa !135, !alias.scope !506, !noalias !513
  %51 = insertelement <16 x i16> poison, i16 %50, i64 0
  %52 = bitcast <16 x i16> %51 to <16 x half>
  %53 = shufflevector <16 x half> %52, <16 x half> poison, <16 x i32> zeroinitializer
  %54 = fpext <16 x half> %53 to <16 x float>
  %55 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %54, <16 x float> %42, <16 x float> %36)
  %56 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %57 = load i16, ptr %56, align 2, !tbaa !135, !alias.scope !506, !noalias !513
  %58 = insertelement <16 x i16> poison, i16 %57, i64 0
  %59 = bitcast <16 x i16> %58 to <16 x half>
  %60 = shufflevector <16 x half> %59, <16 x half> poison, <16 x i32> zeroinitializer
  %61 = fpext <16 x half> %60 to <16 x float>
  %62 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %61, <16 x float> %42, <16 x float> %35)
  %63 = getelementptr inbounds nuw i8, ptr %39, i64 6
  %64 = load i16, ptr %63, align 2, !tbaa !135, !alias.scope !506, !noalias !513
  %65 = insertelement <16 x i16> poison, i16 %64, i64 0
  %66 = bitcast <16 x i16> %65 to <16 x half>
  %67 = shufflevector <16 x half> %66, <16 x half> poison, <16 x i32> zeroinitializer
  %68 = fpext <16 x half> %67 to <16 x float>
  %69 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %68, <16 x float> %42, <16 x float> %34)
  %70 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %71 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %72 = add nuw nsw i64 %38, 1
  %73 = icmp eq i64 %72, %23
  br i1 %73, label %25, label %33, !llvm.loop !491
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_8x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !521
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <16 x float>, ptr %17, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <16 x float>, ptr %19, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <16 x float>, ptr %21, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <16 x float>, ptr %23, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <16 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <16 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <16 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !521
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <16 x float> [ %26, %25 ], [ %121, %53 ]
  %39 = phi <16 x float> [ %27, %25 ], [ %114, %53 ]
  %40 = phi <16 x float> [ %28, %25 ], [ %107, %53 ]
  %41 = phi <16 x float> [ %29, %25 ], [ %100, %53 ]
  %42 = phi <16 x float> [ %30, %25 ], [ %93, %53 ]
  %43 = phi <16 x float> [ %31, %25 ], [ %86, %53 ]
  %44 = phi <16 x float> [ %32, %25 ], [ %79, %53 ]
  %45 = phi <16 x float> [ %33, %25 ], [ %72, %53 ]
  store <16 x float> %45, ptr %0, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %44, ptr %46, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <16 x float> %43, ptr %47, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x float> %42, ptr %48, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <16 x float> %41, ptr %49, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <16 x float> %40, ptr %50, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <16 x float> %39, ptr %51, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x float> %38, ptr %52, align 1, !tbaa !221, !alias.scope !514, !noalias !522
  ret void

53:                                               ; preds = %25, %53
  %54 = phi <16 x float> [ %121, %53 ], [ %26, %25 ]
  %55 = phi <16 x float> [ %114, %53 ], [ %27, %25 ]
  %56 = phi <16 x float> [ %107, %53 ], [ %28, %25 ]
  %57 = phi <16 x float> [ %100, %53 ], [ %29, %25 ]
  %58 = phi <16 x float> [ %93, %53 ], [ %30, %25 ]
  %59 = phi <16 x float> [ %86, %53 ], [ %31, %25 ]
  %60 = phi <16 x float> [ %79, %53 ], [ %32, %25 ]
  %61 = phi <16 x float> [ %72, %53 ], [ %33, %25 ]
  %62 = phi i64 [ %124, %53 ], [ 0, %25 ]
  %63 = phi ptr [ %123, %53 ], [ %1, %25 ]
  %64 = phi ptr [ %122, %53 ], [ %2, %25 ]
  %65 = load <16 x half>, ptr %64, align 1, !tbaa !221, !alias.scope !519, !noalias !523
  %66 = fpext <16 x half> %65 to <16 x float>
  %67 = load i16, ptr %63, align 2, !tbaa !135, !alias.scope !517, !noalias !524
  %68 = insertelement <16 x i16> poison, i16 %67, i64 0
  %69 = bitcast <16 x i16> %68 to <16 x half>
  %70 = shufflevector <16 x half> %69, <16 x half> poison, <16 x i32> zeroinitializer
  %71 = fpext <16 x half> %70 to <16 x float>
  %72 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %71, <16 x float> %66, <16 x float> %61)
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 2
  %74 = load i16, ptr %73, align 2, !tbaa !135, !alias.scope !517, !noalias !524
  %75 = insertelement <16 x i16> poison, i16 %74, i64 0
  %76 = bitcast <16 x i16> %75 to <16 x half>
  %77 = shufflevector <16 x half> %76, <16 x half> poison, <16 x i32> zeroinitializer
  %78 = fpext <16 x half> %77 to <16 x float>
  %79 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %78, <16 x float> %66, <16 x float> %60)
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %81 = load i16, ptr %80, align 2, !tbaa !135, !alias.scope !517, !noalias !524
  %82 = insertelement <16 x i16> poison, i16 %81, i64 0
  %83 = bitcast <16 x i16> %82 to <16 x half>
  %84 = shufflevector <16 x half> %83, <16 x half> poison, <16 x i32> zeroinitializer
  %85 = fpext <16 x half> %84 to <16 x float>
  %86 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %85, <16 x float> %66, <16 x float> %59)
  %87 = getelementptr inbounds nuw i8, ptr %63, i64 6
  %88 = load i16, ptr %87, align 2, !tbaa !135, !alias.scope !517, !noalias !524
  %89 = insertelement <16 x i16> poison, i16 %88, i64 0
  %90 = bitcast <16 x i16> %89 to <16 x half>
  %91 = shufflevector <16 x half> %90, <16 x half> poison, <16 x i32> zeroinitializer
  %92 = fpext <16 x half> %91 to <16 x float>
  %93 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %92, <16 x float> %66, <16 x float> %58)
  %94 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %95 = load i16, ptr %94, align 2, !tbaa !135, !alias.scope !517, !noalias !524
  %96 = insertelement <16 x i16> poison, i16 %95, i64 0
  %97 = bitcast <16 x i16> %96 to <16 x half>
  %98 = shufflevector <16 x half> %97, <16 x half> poison, <16 x i32> zeroinitializer
  %99 = fpext <16 x half> %98 to <16 x float>
  %100 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %99, <16 x float> %66, <16 x float> %57)
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 10
  %102 = load i16, ptr %101, align 2, !tbaa !135, !alias.scope !517, !noalias !524
  %103 = insertelement <16 x i16> poison, i16 %102, i64 0
  %104 = bitcast <16 x i16> %103 to <16 x half>
  %105 = shufflevector <16 x half> %104, <16 x half> poison, <16 x i32> zeroinitializer
  %106 = fpext <16 x half> %105 to <16 x float>
  %107 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %106, <16 x float> %66, <16 x float> %56)
  %108 = getelementptr inbounds nuw i8, ptr %63, i64 12
  %109 = load i16, ptr %108, align 2, !tbaa !135, !alias.scope !517, !noalias !524
  %110 = insertelement <16 x i16> poison, i16 %109, i64 0
  %111 = bitcast <16 x i16> %110 to <16 x half>
  %112 = shufflevector <16 x half> %111, <16 x half> poison, <16 x i32> zeroinitializer
  %113 = fpext <16 x half> %112 to <16 x float>
  %114 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %113, <16 x float> %66, <16 x float> %55)
  %115 = getelementptr inbounds nuw i8, ptr %63, i64 14
  %116 = load i16, ptr %115, align 2, !tbaa !135, !alias.scope !517, !noalias !524
  %117 = insertelement <16 x i16> poison, i16 %116, i64 0
  %118 = bitcast <16 x i16> %117 to <16 x half>
  %119 = shufflevector <16 x half> %118, <16 x half> poison, <16 x i32> zeroinitializer
  %120 = fpext <16 x half> %119 to <16 x float>
  %121 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %120, <16 x float> %66, <16 x float> %54)
  %122 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %123 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %124 = add nuw nsw i64 %62, 1
  %125 = icmp eq i64 %124, %35
  br i1 %125, label %37, label %53, !llvm.loop !491
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f32_16x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !532
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <16 x float>, ptr %17, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <16 x float>, ptr %19, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <16 x float>, ptr %21, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <16 x float>, ptr %23, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %26 = load <16 x float>, ptr %25, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %28 = load <16 x float>, ptr %27, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %30 = load <16 x float>, ptr %29, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %32 = load <16 x float>, ptr %31, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %34 = load <16 x float>, ptr %33, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %36 = load <16 x float>, ptr %35, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %38 = load <16 x float>, ptr %37, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %40 = load <16 x float>, ptr %39, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <16 x float> [ %40, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <16 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <16 x float> [ %36, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <16 x float> [ %34, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <16 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <16 x float> [ %30, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <16 x float> [ %28, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <16 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <16 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <16 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <16 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !168, !noalias !532
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %93, %41
  %62 = phi <16 x float> [ %42, %41 ], [ %225, %93 ]
  %63 = phi <16 x float> [ %43, %41 ], [ %218, %93 ]
  %64 = phi <16 x float> [ %44, %41 ], [ %211, %93 ]
  %65 = phi <16 x float> [ %45, %41 ], [ %204, %93 ]
  %66 = phi <16 x float> [ %46, %41 ], [ %197, %93 ]
  %67 = phi <16 x float> [ %47, %41 ], [ %190, %93 ]
  %68 = phi <16 x float> [ %48, %41 ], [ %183, %93 ]
  %69 = phi <16 x float> [ %49, %41 ], [ %176, %93 ]
  %70 = phi <16 x float> [ %50, %41 ], [ %169, %93 ]
  %71 = phi <16 x float> [ %51, %41 ], [ %162, %93 ]
  %72 = phi <16 x float> [ %52, %41 ], [ %155, %93 ]
  %73 = phi <16 x float> [ %53, %41 ], [ %148, %93 ]
  %74 = phi <16 x float> [ %54, %41 ], [ %141, %93 ]
  %75 = phi <16 x float> [ %55, %41 ], [ %134, %93 ]
  %76 = phi <16 x float> [ %56, %41 ], [ %127, %93 ]
  %77 = phi <16 x float> [ %57, %41 ], [ %120, %93 ]
  store <16 x float> %77, ptr %0, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %76, ptr %78, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <16 x float> %75, ptr %79, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x float> %74, ptr %80, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <16 x float> %73, ptr %81, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <16 x float> %72, ptr %82, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <16 x float> %71, ptr %83, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x float> %70, ptr %84, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <16 x float> %69, ptr %85, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 576
  store <16 x float> %68, ptr %86, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <16 x float> %67, ptr %87, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <16 x float> %66, ptr %88, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <16 x float> %65, ptr %89, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <16 x float> %64, ptr %90, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <16 x float> %63, ptr %91, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <16 x float> %62, ptr %92, align 1, !tbaa !221, !alias.scope !525, !noalias !533
  ret void

93:                                               ; preds = %41, %93
  %94 = phi <16 x float> [ %225, %93 ], [ %42, %41 ]
  %95 = phi <16 x float> [ %218, %93 ], [ %43, %41 ]
  %96 = phi <16 x float> [ %211, %93 ], [ %44, %41 ]
  %97 = phi <16 x float> [ %204, %93 ], [ %45, %41 ]
  %98 = phi <16 x float> [ %197, %93 ], [ %46, %41 ]
  %99 = phi <16 x float> [ %190, %93 ], [ %47, %41 ]
  %100 = phi <16 x float> [ %183, %93 ], [ %48, %41 ]
  %101 = phi <16 x float> [ %176, %93 ], [ %49, %41 ]
  %102 = phi <16 x float> [ %169, %93 ], [ %50, %41 ]
  %103 = phi <16 x float> [ %162, %93 ], [ %51, %41 ]
  %104 = phi <16 x float> [ %155, %93 ], [ %52, %41 ]
  %105 = phi <16 x float> [ %148, %93 ], [ %53, %41 ]
  %106 = phi <16 x float> [ %141, %93 ], [ %54, %41 ]
  %107 = phi <16 x float> [ %134, %93 ], [ %55, %41 ]
  %108 = phi <16 x float> [ %127, %93 ], [ %56, %41 ]
  %109 = phi <16 x float> [ %120, %93 ], [ %57, %41 ]
  %110 = phi i64 [ %228, %93 ], [ 0, %41 ]
  %111 = phi ptr [ %227, %93 ], [ %1, %41 ]
  %112 = phi ptr [ %226, %93 ], [ %2, %41 ]
  %113 = load <16 x half>, ptr %112, align 1, !tbaa !221, !alias.scope !530, !noalias !534
  %114 = fpext <16 x half> %113 to <16 x float>
  %115 = load i16, ptr %111, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %116 = insertelement <16 x i16> poison, i16 %115, i64 0
  %117 = bitcast <16 x i16> %116 to <16 x half>
  %118 = shufflevector <16 x half> %117, <16 x half> poison, <16 x i32> zeroinitializer
  %119 = fpext <16 x half> %118 to <16 x float>
  %120 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %119, <16 x float> %114, <16 x float> %109)
  %121 = getelementptr inbounds nuw i8, ptr %111, i64 2
  %122 = load i16, ptr %121, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %123 = insertelement <16 x i16> poison, i16 %122, i64 0
  %124 = bitcast <16 x i16> %123 to <16 x half>
  %125 = shufflevector <16 x half> %124, <16 x half> poison, <16 x i32> zeroinitializer
  %126 = fpext <16 x half> %125 to <16 x float>
  %127 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %126, <16 x float> %114, <16 x float> %108)
  %128 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %129 = load i16, ptr %128, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %130 = insertelement <16 x i16> poison, i16 %129, i64 0
  %131 = bitcast <16 x i16> %130 to <16 x half>
  %132 = shufflevector <16 x half> %131, <16 x half> poison, <16 x i32> zeroinitializer
  %133 = fpext <16 x half> %132 to <16 x float>
  %134 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %133, <16 x float> %114, <16 x float> %107)
  %135 = getelementptr inbounds nuw i8, ptr %111, i64 6
  %136 = load i16, ptr %135, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %137 = insertelement <16 x i16> poison, i16 %136, i64 0
  %138 = bitcast <16 x i16> %137 to <16 x half>
  %139 = shufflevector <16 x half> %138, <16 x half> poison, <16 x i32> zeroinitializer
  %140 = fpext <16 x half> %139 to <16 x float>
  %141 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %140, <16 x float> %114, <16 x float> %106)
  %142 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %143 = load i16, ptr %142, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %144 = insertelement <16 x i16> poison, i16 %143, i64 0
  %145 = bitcast <16 x i16> %144 to <16 x half>
  %146 = shufflevector <16 x half> %145, <16 x half> poison, <16 x i32> zeroinitializer
  %147 = fpext <16 x half> %146 to <16 x float>
  %148 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %147, <16 x float> %114, <16 x float> %105)
  %149 = getelementptr inbounds nuw i8, ptr %111, i64 10
  %150 = load i16, ptr %149, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %151 = insertelement <16 x i16> poison, i16 %150, i64 0
  %152 = bitcast <16 x i16> %151 to <16 x half>
  %153 = shufflevector <16 x half> %152, <16 x half> poison, <16 x i32> zeroinitializer
  %154 = fpext <16 x half> %153 to <16 x float>
  %155 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %154, <16 x float> %114, <16 x float> %104)
  %156 = getelementptr inbounds nuw i8, ptr %111, i64 12
  %157 = load i16, ptr %156, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %158 = insertelement <16 x i16> poison, i16 %157, i64 0
  %159 = bitcast <16 x i16> %158 to <16 x half>
  %160 = shufflevector <16 x half> %159, <16 x half> poison, <16 x i32> zeroinitializer
  %161 = fpext <16 x half> %160 to <16 x float>
  %162 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %161, <16 x float> %114, <16 x float> %103)
  %163 = getelementptr inbounds nuw i8, ptr %111, i64 14
  %164 = load i16, ptr %163, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %165 = insertelement <16 x i16> poison, i16 %164, i64 0
  %166 = bitcast <16 x i16> %165 to <16 x half>
  %167 = shufflevector <16 x half> %166, <16 x half> poison, <16 x i32> zeroinitializer
  %168 = fpext <16 x half> %167 to <16 x float>
  %169 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %168, <16 x float> %114, <16 x float> %102)
  %170 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %171 = load i16, ptr %170, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %172 = insertelement <16 x i16> poison, i16 %171, i64 0
  %173 = bitcast <16 x i16> %172 to <16 x half>
  %174 = shufflevector <16 x half> %173, <16 x half> poison, <16 x i32> zeroinitializer
  %175 = fpext <16 x half> %174 to <16 x float>
  %176 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %175, <16 x float> %114, <16 x float> %101)
  %177 = getelementptr inbounds nuw i8, ptr %111, i64 18
  %178 = load i16, ptr %177, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %179 = insertelement <16 x i16> poison, i16 %178, i64 0
  %180 = bitcast <16 x i16> %179 to <16 x half>
  %181 = shufflevector <16 x half> %180, <16 x half> poison, <16 x i32> zeroinitializer
  %182 = fpext <16 x half> %181 to <16 x float>
  %183 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %182, <16 x float> %114, <16 x float> %100)
  %184 = getelementptr inbounds nuw i8, ptr %111, i64 20
  %185 = load i16, ptr %184, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %186 = insertelement <16 x i16> poison, i16 %185, i64 0
  %187 = bitcast <16 x i16> %186 to <16 x half>
  %188 = shufflevector <16 x half> %187, <16 x half> poison, <16 x i32> zeroinitializer
  %189 = fpext <16 x half> %188 to <16 x float>
  %190 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %189, <16 x float> %114, <16 x float> %99)
  %191 = getelementptr inbounds nuw i8, ptr %111, i64 22
  %192 = load i16, ptr %191, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %193 = insertelement <16 x i16> poison, i16 %192, i64 0
  %194 = bitcast <16 x i16> %193 to <16 x half>
  %195 = shufflevector <16 x half> %194, <16 x half> poison, <16 x i32> zeroinitializer
  %196 = fpext <16 x half> %195 to <16 x float>
  %197 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %196, <16 x float> %114, <16 x float> %98)
  %198 = getelementptr inbounds nuw i8, ptr %111, i64 24
  %199 = load i16, ptr %198, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %200 = insertelement <16 x i16> poison, i16 %199, i64 0
  %201 = bitcast <16 x i16> %200 to <16 x half>
  %202 = shufflevector <16 x half> %201, <16 x half> poison, <16 x i32> zeroinitializer
  %203 = fpext <16 x half> %202 to <16 x float>
  %204 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %203, <16 x float> %114, <16 x float> %97)
  %205 = getelementptr inbounds nuw i8, ptr %111, i64 26
  %206 = load i16, ptr %205, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %207 = insertelement <16 x i16> poison, i16 %206, i64 0
  %208 = bitcast <16 x i16> %207 to <16 x half>
  %209 = shufflevector <16 x half> %208, <16 x half> poison, <16 x i32> zeroinitializer
  %210 = fpext <16 x half> %209 to <16 x float>
  %211 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %210, <16 x float> %114, <16 x float> %96)
  %212 = getelementptr inbounds nuw i8, ptr %111, i64 28
  %213 = load i16, ptr %212, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %214 = insertelement <16 x i16> poison, i16 %213, i64 0
  %215 = bitcast <16 x i16> %214 to <16 x half>
  %216 = shufflevector <16 x half> %215, <16 x half> poison, <16 x i32> zeroinitializer
  %217 = fpext <16 x half> %216 to <16 x float>
  %218 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %217, <16 x float> %114, <16 x float> %95)
  %219 = getelementptr inbounds nuw i8, ptr %111, i64 30
  %220 = load i16, ptr %219, align 2, !tbaa !135, !alias.scope !528, !noalias !535
  %221 = insertelement <16 x i16> poison, i16 %220, i64 0
  %222 = bitcast <16 x i16> %221 to <16 x half>
  %223 = shufflevector <16 x half> %222, <16 x half> poison, <16 x i32> zeroinitializer
  %224 = fpext <16 x half> %223 to <16 x float>
  %225 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %224, <16 x float> %114, <16 x float> %94)
  %226 = getelementptr inbounds nuw i8, ptr %112, i64 32
  %227 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %228 = add nuw nsw i64 %110, 1
  %229 = icmp eq i64 %228, %59
  br i1 %229, label %61, label %93, !llvm.loop !491
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !550
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !551, !noalias !552
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !550
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = and i64 %14, 3
  %18 = icmp ult i64 %14, 4
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = and i64 %14, 9223372036854775804
  br label %45

21:                                               ; preds = %45
  %22 = icmp eq i64 %17, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %21, %16
  %24 = phi <16 x float> [ %12, %16 ], [ %79, %21 ]
  %25 = phi ptr [ %1, %16 ], [ %81, %21 ]
  %26 = phi ptr [ %2, %16 ], [ %80, %21 ]
  %27 = icmp ne i64 %17, 0
  tail call void @llvm.assume(i1 %27)
  br label %28

28:                                               ; preds = %28, %23
  %29 = phi <16 x float> [ %38, %28 ], [ %24, %23 ]
  %30 = phi ptr [ %40, %28 ], [ %25, %23 ]
  %31 = phi ptr [ %39, %28 ], [ %26, %23 ]
  %32 = phi i64 [ %41, %28 ], [ 0, %23 ]
  %33 = load <32 x bfloat>, ptr %31, align 1, !tbaa !221, !alias.scope !553, !noalias !554
  %34 = load float, ptr %30, align 4, !tbaa !137, !alias.scope !555, !noalias !556
  %35 = insertelement <16 x float> poison, float %34, i64 0
  %36 = shufflevector <16 x float> %35, <16 x float> poison, <16 x i32> zeroinitializer
  %37 = bitcast <16 x float> %36 to <32 x bfloat>
  %38 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %29, <32 x bfloat> %33, <32 x bfloat> %37)
  %39 = getelementptr inbounds nuw i8, ptr %31, i64 64
  %40 = getelementptr inbounds nuw i8, ptr %30, i64 4
  %41 = add i64 %32, 1
  %42 = icmp eq i64 %41, %17
  br i1 %42, label %43, label %28, !llvm.loop !557

43:                                               ; preds = %21, %28, %11
  %44 = phi <16 x float> [ %12, %11 ], [ %79, %21 ], [ %38, %28 ]
  store <16 x float> %44, ptr %0, align 1, !tbaa !221, !alias.scope !551, !noalias !552
  ret void

45:                                               ; preds = %45, %19
  %46 = phi <16 x float> [ %12, %19 ], [ %79, %45 ]
  %47 = phi ptr [ %1, %19 ], [ %81, %45 ]
  %48 = phi ptr [ %2, %19 ], [ %80, %45 ]
  %49 = phi i64 [ 0, %19 ], [ %82, %45 ]
  %50 = load <32 x bfloat>, ptr %48, align 1, !tbaa !221, !alias.scope !553, !noalias !554
  %51 = load float, ptr %47, align 4, !tbaa !137, !alias.scope !555, !noalias !556
  %52 = insertelement <16 x float> poison, float %51, i64 0
  %53 = shufflevector <16 x float> %52, <16 x float> poison, <16 x i32> zeroinitializer
  %54 = bitcast <16 x float> %53 to <32 x bfloat>
  %55 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %46, <32 x bfloat> %50, <32 x bfloat> %54)
  %56 = getelementptr inbounds nuw i8, ptr %48, i64 64
  %57 = getelementptr inbounds nuw i8, ptr %47, i64 4
  %58 = load <32 x bfloat>, ptr %56, align 1, !tbaa !221, !alias.scope !553, !noalias !554
  %59 = load float, ptr %57, align 4, !tbaa !137, !alias.scope !555, !noalias !556
  %60 = insertelement <16 x float> poison, float %59, i64 0
  %61 = shufflevector <16 x float> %60, <16 x float> poison, <16 x i32> zeroinitializer
  %62 = bitcast <16 x float> %61 to <32 x bfloat>
  %63 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %55, <32 x bfloat> %58, <32 x bfloat> %62)
  %64 = getelementptr inbounds nuw i8, ptr %48, i64 128
  %65 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %66 = load <32 x bfloat>, ptr %64, align 1, !tbaa !221, !alias.scope !553, !noalias !554
  %67 = load float, ptr %65, align 4, !tbaa !137, !alias.scope !555, !noalias !556
  %68 = insertelement <16 x float> poison, float %67, i64 0
  %69 = shufflevector <16 x float> %68, <16 x float> poison, <16 x i32> zeroinitializer
  %70 = bitcast <16 x float> %69 to <32 x bfloat>
  %71 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %63, <32 x bfloat> %66, <32 x bfloat> %70)
  %72 = getelementptr inbounds nuw i8, ptr %48, i64 192
  %73 = getelementptr inbounds nuw i8, ptr %47, i64 12
  %74 = load <32 x bfloat>, ptr %72, align 1, !tbaa !221, !alias.scope !553, !noalias !554
  %75 = load float, ptr %73, align 4, !tbaa !137, !alias.scope !555, !noalias !556
  %76 = insertelement <16 x float> poison, float %75, i64 0
  %77 = shufflevector <16 x float> %76, <16 x float> poison, <16 x i32> zeroinitializer
  %78 = bitcast <16 x float> %77 to <32 x bfloat>
  %79 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %71, <32 x bfloat> %74, <32 x bfloat> %78)
  %80 = getelementptr inbounds nuw i8, ptr %48, i64 256
  %81 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %82 = add i64 %49, 4
  %83 = icmp eq i64 %82, %20
  br i1 %83, label %21, label %45, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_2x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !573
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !574, !noalias !575
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !574, !noalias !575
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !573
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = and i64 %17, 1
  %21 = icmp eq i64 %17, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = and i64 %17, 9223372036854775806
  br label %48

24:                                               ; preds = %48
  %25 = icmp eq i64 %20, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %24, %19
  %27 = phi <16 x float> [ %14, %19 ], [ %79, %24 ]
  %28 = phi <16 x float> [ %15, %19 ], [ %73, %24 ]
  %29 = phi ptr [ %1, %19 ], [ %81, %24 ]
  %30 = phi ptr [ %2, %19 ], [ %80, %24 ]
  %31 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %31)
  %32 = load <32 x bfloat>, ptr %30, align 1, !tbaa !221, !alias.scope !576, !noalias !577
  %33 = load float, ptr %29, align 4, !tbaa !137, !alias.scope !578, !noalias !579
  %34 = insertelement <16 x float> poison, float %33, i64 0
  %35 = shufflevector <16 x float> %34, <16 x float> poison, <16 x i32> zeroinitializer
  %36 = bitcast <16 x float> %35 to <32 x bfloat>
  %37 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %28, <32 x bfloat> %32, <32 x bfloat> %36)
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %39 = load float, ptr %38, align 4, !tbaa !137, !alias.scope !578, !noalias !579
  %40 = insertelement <16 x float> poison, float %39, i64 0
  %41 = shufflevector <16 x float> %40, <16 x float> poison, <16 x i32> zeroinitializer
  %42 = bitcast <16 x float> %41 to <32 x bfloat>
  %43 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %27, <32 x bfloat> %32, <32 x bfloat> %42)
  br label %44

44:                                               ; preds = %26, %24, %13
  %45 = phi <16 x float> [ %14, %13 ], [ %79, %24 ], [ %43, %26 ]
  %46 = phi <16 x float> [ %15, %13 ], [ %73, %24 ], [ %37, %26 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x float> %46, ptr %0, align 1, !tbaa !221, !alias.scope !574, !noalias !575
  store <16 x float> %45, ptr %47, align 1, !tbaa !221, !alias.scope !574, !noalias !575
  ret void

48:                                               ; preds = %48, %22
  %49 = phi <16 x float> [ %14, %22 ], [ %79, %48 ]
  %50 = phi <16 x float> [ %15, %22 ], [ %73, %48 ]
  %51 = phi ptr [ %1, %22 ], [ %81, %48 ]
  %52 = phi ptr [ %2, %22 ], [ %80, %48 ]
  %53 = phi i64 [ 0, %22 ], [ %82, %48 ]
  %54 = load <32 x bfloat>, ptr %52, align 1, !tbaa !221, !alias.scope !576, !noalias !577
  %55 = load float, ptr %51, align 4, !tbaa !137, !alias.scope !578, !noalias !579
  %56 = insertelement <16 x float> poison, float %55, i64 0
  %57 = shufflevector <16 x float> %56, <16 x float> poison, <16 x i32> zeroinitializer
  %58 = bitcast <16 x float> %57 to <32 x bfloat>
  %59 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %50, <32 x bfloat> %54, <32 x bfloat> %58)
  %60 = getelementptr inbounds nuw i8, ptr %51, i64 4
  %61 = load float, ptr %60, align 4, !tbaa !137, !alias.scope !578, !noalias !579
  %62 = insertelement <16 x float> poison, float %61, i64 0
  %63 = shufflevector <16 x float> %62, <16 x float> poison, <16 x i32> zeroinitializer
  %64 = bitcast <16 x float> %63 to <32 x bfloat>
  %65 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %49, <32 x bfloat> %54, <32 x bfloat> %64)
  %66 = getelementptr inbounds nuw i8, ptr %52, i64 64
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %68 = load <32 x bfloat>, ptr %66, align 1, !tbaa !221, !alias.scope !576, !noalias !577
  %69 = load float, ptr %67, align 4, !tbaa !137, !alias.scope !578, !noalias !579
  %70 = insertelement <16 x float> poison, float %69, i64 0
  %71 = shufflevector <16 x float> %70, <16 x float> poison, <16 x i32> zeroinitializer
  %72 = bitcast <16 x float> %71 to <32 x bfloat>
  %73 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %59, <32 x bfloat> %68, <32 x bfloat> %72)
  %74 = getelementptr inbounds nuw i8, ptr %51, i64 12
  %75 = load float, ptr %74, align 4, !tbaa !137, !alias.scope !578, !noalias !579
  %76 = insertelement <16 x float> poison, float %75, i64 0
  %77 = shufflevector <16 x float> %76, <16 x float> poison, <16 x i32> zeroinitializer
  %78 = bitcast <16 x float> %77 to <32 x bfloat>
  %79 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %65, <32 x bfloat> %68, <32 x bfloat> %78)
  %80 = getelementptr inbounds nuw i8, ptr %52, i64 128
  %81 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %82 = add i64 %53, 2
  %83 = icmp eq i64 %82, %23
  br i1 %83, label %24, label %48, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_4x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !594
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !595, !noalias !596
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !595, !noalias !596
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !alias.scope !595, !noalias !596
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !alias.scope !595, !noalias !596
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !594
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %33, %17
  %26 = phi <16 x float> [ %18, %17 ], [ %64, %33 ]
  %27 = phi <16 x float> [ %19, %17 ], [ %58, %33 ]
  %28 = phi <16 x float> [ %20, %17 ], [ %52, %33 ]
  %29 = phi <16 x float> [ %21, %17 ], [ %46, %33 ]
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x float> %29, ptr %0, align 1, !tbaa !221, !alias.scope !595, !noalias !596
  store <16 x float> %28, ptr %30, align 1, !tbaa !221, !alias.scope !595, !noalias !596
  store <16 x float> %27, ptr %31, align 1, !tbaa !221, !alias.scope !595, !noalias !596
  store <16 x float> %26, ptr %32, align 1, !tbaa !221, !alias.scope !595, !noalias !596
  ret void

33:                                               ; preds = %17, %33
  %34 = phi <16 x float> [ %64, %33 ], [ %18, %17 ]
  %35 = phi <16 x float> [ %58, %33 ], [ %19, %17 ]
  %36 = phi <16 x float> [ %52, %33 ], [ %20, %17 ]
  %37 = phi <16 x float> [ %46, %33 ], [ %21, %17 ]
  %38 = phi i64 [ %67, %33 ], [ 0, %17 ]
  %39 = phi ptr [ %66, %33 ], [ %1, %17 ]
  %40 = phi ptr [ %65, %33 ], [ %2, %17 ]
  %41 = load <32 x bfloat>, ptr %40, align 1, !tbaa !221, !alias.scope !597, !noalias !598
  %42 = load float, ptr %39, align 4, !tbaa !137, !alias.scope !599, !noalias !600
  %43 = insertelement <16 x float> poison, float %42, i64 0
  %44 = shufflevector <16 x float> %43, <16 x float> poison, <16 x i32> zeroinitializer
  %45 = bitcast <16 x float> %44 to <32 x bfloat>
  %46 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %37, <32 x bfloat> %41, <32 x bfloat> %45)
  %47 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %48 = load float, ptr %47, align 4, !tbaa !137, !alias.scope !599, !noalias !600
  %49 = insertelement <16 x float> poison, float %48, i64 0
  %50 = shufflevector <16 x float> %49, <16 x float> poison, <16 x i32> zeroinitializer
  %51 = bitcast <16 x float> %50 to <32 x bfloat>
  %52 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %36, <32 x bfloat> %41, <32 x bfloat> %51)
  %53 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %54 = load float, ptr %53, align 4, !tbaa !137, !alias.scope !599, !noalias !600
  %55 = insertelement <16 x float> poison, float %54, i64 0
  %56 = shufflevector <16 x float> %55, <16 x float> poison, <16 x i32> zeroinitializer
  %57 = bitcast <16 x float> %56 to <32 x bfloat>
  %58 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %35, <32 x bfloat> %41, <32 x bfloat> %57)
  %59 = getelementptr inbounds nuw i8, ptr %39, i64 12
  %60 = load float, ptr %59, align 4, !tbaa !137, !alias.scope !599, !noalias !600
  %61 = insertelement <16 x float> poison, float %60, i64 0
  %62 = shufflevector <16 x float> %61, <16 x float> poison, <16 x i32> zeroinitializer
  %63 = bitcast <16 x float> %62 to <32 x bfloat>
  %64 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %34, <32 x bfloat> %41, <32 x bfloat> %63)
  %65 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %66 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %67 = add nuw nsw i64 %38, 1
  %68 = icmp eq i64 %67, %23
  br i1 %68, label %25, label %33, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_8x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !615
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <16 x float>, ptr %17, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <16 x float>, ptr %19, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <16 x float>, ptr %21, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <16 x float>, ptr %23, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <16 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <16 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <16 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !615
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %53, %25
  %38 = phi <16 x float> [ %26, %25 ], [ %112, %53 ]
  %39 = phi <16 x float> [ %27, %25 ], [ %106, %53 ]
  %40 = phi <16 x float> [ %28, %25 ], [ %100, %53 ]
  %41 = phi <16 x float> [ %29, %25 ], [ %94, %53 ]
  %42 = phi <16 x float> [ %30, %25 ], [ %88, %53 ]
  %43 = phi <16 x float> [ %31, %25 ], [ %82, %53 ]
  %44 = phi <16 x float> [ %32, %25 ], [ %76, %53 ]
  %45 = phi <16 x float> [ %33, %25 ], [ %70, %53 ]
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x float> %45, ptr %0, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  store <16 x float> %44, ptr %46, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  store <16 x float> %43, ptr %47, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  store <16 x float> %42, ptr %48, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  store <16 x float> %41, ptr %49, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  store <16 x float> %40, ptr %50, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  store <16 x float> %39, ptr %51, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  store <16 x float> %38, ptr %52, align 1, !tbaa !221, !alias.scope !616, !noalias !617
  ret void

53:                                               ; preds = %25, %53
  %54 = phi <16 x float> [ %112, %53 ], [ %26, %25 ]
  %55 = phi <16 x float> [ %106, %53 ], [ %27, %25 ]
  %56 = phi <16 x float> [ %100, %53 ], [ %28, %25 ]
  %57 = phi <16 x float> [ %94, %53 ], [ %29, %25 ]
  %58 = phi <16 x float> [ %88, %53 ], [ %30, %25 ]
  %59 = phi <16 x float> [ %82, %53 ], [ %31, %25 ]
  %60 = phi <16 x float> [ %76, %53 ], [ %32, %25 ]
  %61 = phi <16 x float> [ %70, %53 ], [ %33, %25 ]
  %62 = phi i64 [ %115, %53 ], [ 0, %25 ]
  %63 = phi ptr [ %114, %53 ], [ %1, %25 ]
  %64 = phi ptr [ %113, %53 ], [ %2, %25 ]
  %65 = load <32 x bfloat>, ptr %64, align 1, !tbaa !221, !alias.scope !618, !noalias !619
  %66 = load float, ptr %63, align 4, !tbaa !137, !alias.scope !620, !noalias !621
  %67 = insertelement <16 x float> poison, float %66, i64 0
  %68 = shufflevector <16 x float> %67, <16 x float> poison, <16 x i32> zeroinitializer
  %69 = bitcast <16 x float> %68 to <32 x bfloat>
  %70 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %61, <32 x bfloat> %65, <32 x bfloat> %69)
  %71 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %72 = load float, ptr %71, align 4, !tbaa !137, !alias.scope !620, !noalias !621
  %73 = insertelement <16 x float> poison, float %72, i64 0
  %74 = shufflevector <16 x float> %73, <16 x float> poison, <16 x i32> zeroinitializer
  %75 = bitcast <16 x float> %74 to <32 x bfloat>
  %76 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %60, <32 x bfloat> %65, <32 x bfloat> %75)
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %78 = load float, ptr %77, align 4, !tbaa !137, !alias.scope !620, !noalias !621
  %79 = insertelement <16 x float> poison, float %78, i64 0
  %80 = shufflevector <16 x float> %79, <16 x float> poison, <16 x i32> zeroinitializer
  %81 = bitcast <16 x float> %80 to <32 x bfloat>
  %82 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %59, <32 x bfloat> %65, <32 x bfloat> %81)
  %83 = getelementptr inbounds nuw i8, ptr %63, i64 12
  %84 = load float, ptr %83, align 4, !tbaa !137, !alias.scope !620, !noalias !621
  %85 = insertelement <16 x float> poison, float %84, i64 0
  %86 = shufflevector <16 x float> %85, <16 x float> poison, <16 x i32> zeroinitializer
  %87 = bitcast <16 x float> %86 to <32 x bfloat>
  %88 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %58, <32 x bfloat> %65, <32 x bfloat> %87)
  %89 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %90 = load float, ptr %89, align 4, !tbaa !137, !alias.scope !620, !noalias !621
  %91 = insertelement <16 x float> poison, float %90, i64 0
  %92 = shufflevector <16 x float> %91, <16 x float> poison, <16 x i32> zeroinitializer
  %93 = bitcast <16 x float> %92 to <32 x bfloat>
  %94 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %57, <32 x bfloat> %65, <32 x bfloat> %93)
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 20
  %96 = load float, ptr %95, align 4, !tbaa !137, !alias.scope !620, !noalias !621
  %97 = insertelement <16 x float> poison, float %96, i64 0
  %98 = shufflevector <16 x float> %97, <16 x float> poison, <16 x i32> zeroinitializer
  %99 = bitcast <16 x float> %98 to <32 x bfloat>
  %100 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %56, <32 x bfloat> %65, <32 x bfloat> %99)
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 24
  %102 = load float, ptr %101, align 4, !tbaa !137, !alias.scope !620, !noalias !621
  %103 = insertelement <16 x float> poison, float %102, i64 0
  %104 = shufflevector <16 x float> %103, <16 x float> poison, <16 x i32> zeroinitializer
  %105 = bitcast <16 x float> %104 to <32 x bfloat>
  %106 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %55, <32 x bfloat> %65, <32 x bfloat> %105)
  %107 = getelementptr inbounds nuw i8, ptr %63, i64 28
  %108 = load float, ptr %107, align 4, !tbaa !137, !alias.scope !620, !noalias !621
  %109 = insertelement <16 x float> poison, float %108, i64 0
  %110 = shufflevector <16 x float> %109, <16 x float> poison, <16 x i32> zeroinitializer
  %111 = bitcast <16 x float> %110 to <32 x bfloat>
  %112 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %54, <32 x bfloat> %65, <32 x bfloat> %111)
  %113 = getelementptr inbounds nuw i8, ptr %64, i64 64
  %114 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %115 = add nuw nsw i64 %62, 1
  %116 = icmp eq i64 %115, %35
  br i1 %116, label %37, label %53, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16f32_16x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !636
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <16 x float>, ptr %0, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x float>, ptr %11, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <16 x float>, ptr %13, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <16 x float>, ptr %15, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <16 x float>, ptr %17, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <16 x float>, ptr %19, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <16 x float>, ptr %21, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <16 x float>, ptr %23, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %26 = load <16 x float>, ptr %25, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %28 = load <16 x float>, ptr %27, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %30 = load <16 x float>, ptr %29, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %32 = load <16 x float>, ptr %31, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %34 = load <16 x float>, ptr %33, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %36 = load <16 x float>, ptr %35, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %38 = load <16 x float>, ptr %37, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %40 = load <16 x float>, ptr %39, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <16 x float> [ %40, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <16 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <16 x float> [ %36, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <16 x float> [ %34, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <16 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <16 x float> [ %30, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <16 x float> [ %28, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <16 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <16 x float> [ %24, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <16 x float> [ %22, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <16 x float> [ %18, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <16 x float> [ %16, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <16 x float> [ %12, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <16 x float> [ %10, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !168, !noalias !636
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %93, %41
  %62 = phi <16 x float> [ %42, %41 ], [ %208, %93 ]
  %63 = phi <16 x float> [ %43, %41 ], [ %202, %93 ]
  %64 = phi <16 x float> [ %44, %41 ], [ %196, %93 ]
  %65 = phi <16 x float> [ %45, %41 ], [ %190, %93 ]
  %66 = phi <16 x float> [ %46, %41 ], [ %184, %93 ]
  %67 = phi <16 x float> [ %47, %41 ], [ %178, %93 ]
  %68 = phi <16 x float> [ %48, %41 ], [ %172, %93 ]
  %69 = phi <16 x float> [ %49, %41 ], [ %166, %93 ]
  %70 = phi <16 x float> [ %50, %41 ], [ %160, %93 ]
  %71 = phi <16 x float> [ %51, %41 ], [ %154, %93 ]
  %72 = phi <16 x float> [ %52, %41 ], [ %148, %93 ]
  %73 = phi <16 x float> [ %53, %41 ], [ %142, %93 ]
  %74 = phi <16 x float> [ %54, %41 ], [ %136, %93 ]
  %75 = phi <16 x float> [ %55, %41 ], [ %130, %93 ]
  %76 = phi <16 x float> [ %56, %41 ], [ %124, %93 ]
  %77 = phi <16 x float> [ %57, %41 ], [ %118, %93 ]
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <16 x float> %77, ptr %0, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %76, ptr %78, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %75, ptr %79, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %74, ptr %80, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %73, ptr %81, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %72, ptr %82, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %71, ptr %83, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %70, ptr %84, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %69, ptr %85, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %68, ptr %86, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %67, ptr %87, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %66, ptr %88, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %65, ptr %89, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %64, ptr %90, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %63, ptr %91, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  store <16 x float> %62, ptr %92, align 1, !tbaa !221, !alias.scope !637, !noalias !638
  ret void

93:                                               ; preds = %41, %93
  %94 = phi <16 x float> [ %208, %93 ], [ %42, %41 ]
  %95 = phi <16 x float> [ %202, %93 ], [ %43, %41 ]
  %96 = phi <16 x float> [ %196, %93 ], [ %44, %41 ]
  %97 = phi <16 x float> [ %190, %93 ], [ %45, %41 ]
  %98 = phi <16 x float> [ %184, %93 ], [ %46, %41 ]
  %99 = phi <16 x float> [ %178, %93 ], [ %47, %41 ]
  %100 = phi <16 x float> [ %172, %93 ], [ %48, %41 ]
  %101 = phi <16 x float> [ %166, %93 ], [ %49, %41 ]
  %102 = phi <16 x float> [ %160, %93 ], [ %50, %41 ]
  %103 = phi <16 x float> [ %154, %93 ], [ %51, %41 ]
  %104 = phi <16 x float> [ %148, %93 ], [ %52, %41 ]
  %105 = phi <16 x float> [ %142, %93 ], [ %53, %41 ]
  %106 = phi <16 x float> [ %136, %93 ], [ %54, %41 ]
  %107 = phi <16 x float> [ %130, %93 ], [ %55, %41 ]
  %108 = phi <16 x float> [ %124, %93 ], [ %56, %41 ]
  %109 = phi <16 x float> [ %118, %93 ], [ %57, %41 ]
  %110 = phi i64 [ %211, %93 ], [ 0, %41 ]
  %111 = phi ptr [ %210, %93 ], [ %1, %41 ]
  %112 = phi ptr [ %209, %93 ], [ %2, %41 ]
  %113 = load <32 x bfloat>, ptr %112, align 1, !tbaa !221, !alias.scope !639, !noalias !640
  %114 = load float, ptr %111, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %115 = insertelement <16 x float> poison, float %114, i64 0
  %116 = shufflevector <16 x float> %115, <16 x float> poison, <16 x i32> zeroinitializer
  %117 = bitcast <16 x float> %116 to <32 x bfloat>
  %118 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %109, <32 x bfloat> %113, <32 x bfloat> %117)
  %119 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %120 = load float, ptr %119, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %121 = insertelement <16 x float> poison, float %120, i64 0
  %122 = shufflevector <16 x float> %121, <16 x float> poison, <16 x i32> zeroinitializer
  %123 = bitcast <16 x float> %122 to <32 x bfloat>
  %124 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %108, <32 x bfloat> %113, <32 x bfloat> %123)
  %125 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %126 = load float, ptr %125, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %127 = insertelement <16 x float> poison, float %126, i64 0
  %128 = shufflevector <16 x float> %127, <16 x float> poison, <16 x i32> zeroinitializer
  %129 = bitcast <16 x float> %128 to <32 x bfloat>
  %130 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %107, <32 x bfloat> %113, <32 x bfloat> %129)
  %131 = getelementptr inbounds nuw i8, ptr %111, i64 12
  %132 = load float, ptr %131, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %133 = insertelement <16 x float> poison, float %132, i64 0
  %134 = shufflevector <16 x float> %133, <16 x float> poison, <16 x i32> zeroinitializer
  %135 = bitcast <16 x float> %134 to <32 x bfloat>
  %136 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %106, <32 x bfloat> %113, <32 x bfloat> %135)
  %137 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %138 = load float, ptr %137, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %139 = insertelement <16 x float> poison, float %138, i64 0
  %140 = shufflevector <16 x float> %139, <16 x float> poison, <16 x i32> zeroinitializer
  %141 = bitcast <16 x float> %140 to <32 x bfloat>
  %142 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %105, <32 x bfloat> %113, <32 x bfloat> %141)
  %143 = getelementptr inbounds nuw i8, ptr %111, i64 20
  %144 = load float, ptr %143, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %145 = insertelement <16 x float> poison, float %144, i64 0
  %146 = shufflevector <16 x float> %145, <16 x float> poison, <16 x i32> zeroinitializer
  %147 = bitcast <16 x float> %146 to <32 x bfloat>
  %148 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %104, <32 x bfloat> %113, <32 x bfloat> %147)
  %149 = getelementptr inbounds nuw i8, ptr %111, i64 24
  %150 = load float, ptr %149, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %151 = insertelement <16 x float> poison, float %150, i64 0
  %152 = shufflevector <16 x float> %151, <16 x float> poison, <16 x i32> zeroinitializer
  %153 = bitcast <16 x float> %152 to <32 x bfloat>
  %154 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %103, <32 x bfloat> %113, <32 x bfloat> %153)
  %155 = getelementptr inbounds nuw i8, ptr %111, i64 28
  %156 = load float, ptr %155, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %157 = insertelement <16 x float> poison, float %156, i64 0
  %158 = shufflevector <16 x float> %157, <16 x float> poison, <16 x i32> zeroinitializer
  %159 = bitcast <16 x float> %158 to <32 x bfloat>
  %160 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %102, <32 x bfloat> %113, <32 x bfloat> %159)
  %161 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %162 = load float, ptr %161, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %163 = insertelement <16 x float> poison, float %162, i64 0
  %164 = shufflevector <16 x float> %163, <16 x float> poison, <16 x i32> zeroinitializer
  %165 = bitcast <16 x float> %164 to <32 x bfloat>
  %166 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %101, <32 x bfloat> %113, <32 x bfloat> %165)
  %167 = getelementptr inbounds nuw i8, ptr %111, i64 36
  %168 = load float, ptr %167, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %169 = insertelement <16 x float> poison, float %168, i64 0
  %170 = shufflevector <16 x float> %169, <16 x float> poison, <16 x i32> zeroinitializer
  %171 = bitcast <16 x float> %170 to <32 x bfloat>
  %172 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %100, <32 x bfloat> %113, <32 x bfloat> %171)
  %173 = getelementptr inbounds nuw i8, ptr %111, i64 40
  %174 = load float, ptr %173, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %175 = insertelement <16 x float> poison, float %174, i64 0
  %176 = shufflevector <16 x float> %175, <16 x float> poison, <16 x i32> zeroinitializer
  %177 = bitcast <16 x float> %176 to <32 x bfloat>
  %178 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %99, <32 x bfloat> %113, <32 x bfloat> %177)
  %179 = getelementptr inbounds nuw i8, ptr %111, i64 44
  %180 = load float, ptr %179, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %181 = insertelement <16 x float> poison, float %180, i64 0
  %182 = shufflevector <16 x float> %181, <16 x float> poison, <16 x i32> zeroinitializer
  %183 = bitcast <16 x float> %182 to <32 x bfloat>
  %184 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %98, <32 x bfloat> %113, <32 x bfloat> %183)
  %185 = getelementptr inbounds nuw i8, ptr %111, i64 48
  %186 = load float, ptr %185, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %187 = insertelement <16 x float> poison, float %186, i64 0
  %188 = shufflevector <16 x float> %187, <16 x float> poison, <16 x i32> zeroinitializer
  %189 = bitcast <16 x float> %188 to <32 x bfloat>
  %190 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %97, <32 x bfloat> %113, <32 x bfloat> %189)
  %191 = getelementptr inbounds nuw i8, ptr %111, i64 52
  %192 = load float, ptr %191, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %193 = insertelement <16 x float> poison, float %192, i64 0
  %194 = shufflevector <16 x float> %193, <16 x float> poison, <16 x i32> zeroinitializer
  %195 = bitcast <16 x float> %194 to <32 x bfloat>
  %196 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %96, <32 x bfloat> %113, <32 x bfloat> %195)
  %197 = getelementptr inbounds nuw i8, ptr %111, i64 56
  %198 = load float, ptr %197, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %199 = insertelement <16 x float> poison, float %198, i64 0
  %200 = shufflevector <16 x float> %199, <16 x float> poison, <16 x i32> zeroinitializer
  %201 = bitcast <16 x float> %200 to <32 x bfloat>
  %202 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %95, <32 x bfloat> %113, <32 x bfloat> %201)
  %203 = getelementptr inbounds nuw i8, ptr %111, i64 60
  %204 = load float, ptr %203, align 4, !tbaa !137, !alias.scope !641, !noalias !642
  %205 = insertelement <16 x float> poison, float %204, i64 0
  %206 = shufflevector <16 x float> %205, <16 x float> poison, <16 x i32> zeroinitializer
  %207 = bitcast <16 x float> %206 to <32 x bfloat>
  %208 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %94, <32 x bfloat> %113, <32 x bfloat> %207)
  %209 = getelementptr inbounds nuw i8, ptr %112, i64 64
  %210 = getelementptr inbounds nuw i8, ptr %111, i64 64
  %211 = add nuw nsw i64 %110, 1
  %212 = icmp eq i64 %211, %59
  br i1 %212, label %61, label %93, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_1x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !650
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load <16 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !643, !noalias !651
  %11 = fpext <16 x half> %10 to <16 x float>
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %15 = load i64, ptr %14, align 8, !tbaa !168, !noalias !650
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %12
  %18 = and i64 %15, 1
  %19 = icmp eq i64 %15, 1
  br i1 %19, label %51, label %20

20:                                               ; preds = %17
  %21 = and i64 %15, 9223372036854775806
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <16 x float> [ %13, %20 ], [ %45, %22 ]
  %24 = phi ptr [ %1, %20 ], [ %46, %22 ]
  %25 = phi ptr [ %2, %20 ], [ %39, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %47, %22 ]
  %27 = load <16 x half>, ptr %25, align 1, !tbaa !221, !alias.scope !648, !noalias !652
  %28 = fpext <16 x half> %27 to <16 x float>
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %30 = load i16, ptr %24, align 2, !tbaa !135, !alias.scope !646, !noalias !653
  %31 = insertelement <16 x i16> poison, i16 %30, i64 0
  %32 = bitcast <16 x i16> %31 to <16 x half>
  %33 = shufflevector <16 x half> %32, <16 x half> poison, <16 x i32> zeroinitializer
  %34 = fpext <16 x half> %33 to <16 x float>
  %35 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %34, <16 x float> %28, <16 x float> %23)
  %36 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %37 = load <16 x half>, ptr %29, align 1, !tbaa !221, !alias.scope !648, !noalias !652
  %38 = fpext <16 x half> %37 to <16 x float>
  %39 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %40 = load i16, ptr %36, align 2, !tbaa !135, !alias.scope !646, !noalias !653
  %41 = insertelement <16 x i16> poison, i16 %40, i64 0
  %42 = bitcast <16 x i16> %41 to <16 x half>
  %43 = shufflevector <16 x half> %42, <16 x half> poison, <16 x i32> zeroinitializer
  %44 = fpext <16 x half> %43 to <16 x float>
  %45 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %44, <16 x float> %38, <16 x float> %35)
  %46 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %47 = add i64 %26, 2
  %48 = icmp eq i64 %47, %21
  br i1 %48, label %49, label %22, !llvm.loop !491

49:                                               ; preds = %22
  %50 = icmp eq i64 %18, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %49, %17
  %52 = phi <16 x float> [ %13, %17 ], [ %45, %49 ]
  %53 = phi ptr [ %1, %17 ], [ %46, %49 ]
  %54 = phi ptr [ %2, %17 ], [ %39, %49 ]
  %55 = trunc i64 %15 to i1
  tail call void @llvm.assume(i1 %55)
  %56 = load <16 x half>, ptr %54, align 1, !tbaa !221, !alias.scope !648, !noalias !652
  %57 = fpext <16 x half> %56 to <16 x float>
  %58 = load i16, ptr %53, align 2, !tbaa !135, !alias.scope !646, !noalias !653
  %59 = insertelement <16 x i16> poison, i16 %58, i64 0
  %60 = bitcast <16 x i16> %59 to <16 x half>
  %61 = shufflevector <16 x half> %60, <16 x half> poison, <16 x i32> zeroinitializer
  %62 = fpext <16 x half> %61 to <16 x float>
  %63 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %62, <16 x float> %57, <16 x float> %52)
  br label %64

64:                                               ; preds = %51, %49, %12
  %65 = phi <16 x float> [ %13, %12 ], [ %45, %49 ], [ %63, %51 ]
  %66 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %65, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %66, ptr %0, align 1, !tbaa !221, !noalias !651
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_2x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !661
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load <16 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !654, !noalias !662
  %11 = fpext <16 x half> %10 to <16 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <16 x half>, ptr %12, align 1, !tbaa !221, !alias.scope !654, !noalias !662
  %14 = fpext <16 x half> %13 to <16 x float>
  br label %15

15:                                               ; preds = %4, %9
  %16 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %17 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %19 = load i64, ptr %18, align 8, !tbaa !168, !noalias !661
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = and i64 %19, 1
  %23 = icmp eq i64 %19, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = and i64 %19, 9223372036854775806
  br label %55

26:                                               ; preds = %55
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %26, %21
  %29 = phi <16 x float> [ %16, %21 ], [ %92, %26 ]
  %30 = phi <16 x float> [ %17, %21 ], [ %85, %26 ]
  %31 = phi ptr [ %1, %21 ], [ %94, %26 ]
  %32 = phi ptr [ %2, %21 ], [ %93, %26 ]
  %33 = trunc i64 %19 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <16 x half>, ptr %32, align 1, !tbaa !221, !alias.scope !659, !noalias !663
  %35 = fpext <16 x half> %34 to <16 x float>
  %36 = load i16, ptr %31, align 2, !tbaa !135, !alias.scope !657, !noalias !664
  %37 = insertelement <16 x i16> poison, i16 %36, i64 0
  %38 = bitcast <16 x i16> %37 to <16 x half>
  %39 = shufflevector <16 x half> %38, <16 x half> poison, <16 x i32> zeroinitializer
  %40 = fpext <16 x half> %39 to <16 x float>
  %41 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %40, <16 x float> %35, <16 x float> %30)
  %42 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %43 = load i16, ptr %42, align 2, !tbaa !135, !alias.scope !657, !noalias !664
  %44 = insertelement <16 x i16> poison, i16 %43, i64 0
  %45 = bitcast <16 x i16> %44 to <16 x half>
  %46 = shufflevector <16 x half> %45, <16 x half> poison, <16 x i32> zeroinitializer
  %47 = fpext <16 x half> %46 to <16 x float>
  %48 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %47, <16 x float> %35, <16 x float> %29)
  br label %49

49:                                               ; preds = %28, %26, %15
  %50 = phi <16 x float> [ %16, %15 ], [ %92, %26 ], [ %48, %28 ]
  %51 = phi <16 x float> [ %17, %15 ], [ %85, %26 ], [ %41, %28 ]
  %52 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %51, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %52, ptr %0, align 1, !tbaa !221, !noalias !662
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %50, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %54, ptr %53, align 1, !tbaa !221, !noalias !662
  ret void

55:                                               ; preds = %55, %24
  %56 = phi <16 x float> [ %16, %24 ], [ %92, %55 ]
  %57 = phi <16 x float> [ %17, %24 ], [ %85, %55 ]
  %58 = phi ptr [ %1, %24 ], [ %94, %55 ]
  %59 = phi ptr [ %2, %24 ], [ %93, %55 ]
  %60 = phi i64 [ 0, %24 ], [ %95, %55 ]
  %61 = load <16 x half>, ptr %59, align 1, !tbaa !221, !alias.scope !659, !noalias !663
  %62 = fpext <16 x half> %61 to <16 x float>
  %63 = load i16, ptr %58, align 2, !tbaa !135, !alias.scope !657, !noalias !664
  %64 = insertelement <16 x i16> poison, i16 %63, i64 0
  %65 = bitcast <16 x i16> %64 to <16 x half>
  %66 = shufflevector <16 x half> %65, <16 x half> poison, <16 x i32> zeroinitializer
  %67 = fpext <16 x half> %66 to <16 x float>
  %68 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %67, <16 x float> %62, <16 x float> %57)
  %69 = getelementptr inbounds nuw i8, ptr %58, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !135, !alias.scope !657, !noalias !664
  %71 = insertelement <16 x i16> poison, i16 %70, i64 0
  %72 = bitcast <16 x i16> %71 to <16 x half>
  %73 = shufflevector <16 x half> %72, <16 x half> poison, <16 x i32> zeroinitializer
  %74 = fpext <16 x half> %73 to <16 x float>
  %75 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %74, <16 x float> %62, <16 x float> %56)
  %76 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %78 = load <16 x half>, ptr %76, align 1, !tbaa !221, !alias.scope !659, !noalias !663
  %79 = fpext <16 x half> %78 to <16 x float>
  %80 = load i16, ptr %77, align 2, !tbaa !135, !alias.scope !657, !noalias !664
  %81 = insertelement <16 x i16> poison, i16 %80, i64 0
  %82 = bitcast <16 x i16> %81 to <16 x half>
  %83 = shufflevector <16 x half> %82, <16 x half> poison, <16 x i32> zeroinitializer
  %84 = fpext <16 x half> %83 to <16 x float>
  %85 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %84, <16 x float> %79, <16 x float> %68)
  %86 = getelementptr inbounds nuw i8, ptr %58, i64 6
  %87 = load i16, ptr %86, align 2, !tbaa !135, !alias.scope !657, !noalias !664
  %88 = insertelement <16 x i16> poison, i16 %87, i64 0
  %89 = bitcast <16 x i16> %88 to <16 x half>
  %90 = shufflevector <16 x half> %89, <16 x half> poison, <16 x i32> zeroinitializer
  %91 = fpext <16 x half> %90 to <16 x float>
  %92 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %91, <16 x float> %79, <16 x float> %75)
  %93 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %94 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %95 = add i64 %60, 2
  %96 = icmp eq i64 %95, %25
  br i1 %96, label %26, label %55, !llvm.loop !491
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_4x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !672
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = load <16 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !665, !noalias !673
  %11 = fpext <16 x half> %10 to <16 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <16 x half>, ptr %12, align 1, !tbaa !221, !alias.scope !665, !noalias !673
  %14 = fpext <16 x half> %13 to <16 x float>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load <16 x half>, ptr %15, align 1, !tbaa !221, !alias.scope !665, !noalias !673
  %17 = fpext <16 x half> %16 to <16 x float>
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %19 = load <16 x half>, ptr %18, align 1, !tbaa !221, !alias.scope !665, !noalias !673
  %20 = fpext <16 x half> %19 to <16 x float>
  br label %21

21:                                               ; preds = %4, %9
  %22 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %23 = phi <16 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %24 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %25 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !168, !noalias !672
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %41, %21
  %30 = phi <16 x float> [ %22, %21 ], [ %77, %41 ]
  %31 = phi <16 x float> [ %23, %21 ], [ %70, %41 ]
  %32 = phi <16 x float> [ %24, %21 ], [ %63, %41 ]
  %33 = phi <16 x float> [ %25, %21 ], [ %56, %41 ]
  %34 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %33, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %34, ptr %0, align 1, !tbaa !221, !noalias !673
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %36 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %32, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %36, ptr %35, align 1, !tbaa !221, !noalias !673
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %38 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %31, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %38, ptr %37, align 1, !tbaa !221, !noalias !673
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %40 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %30, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %40, ptr %39, align 1, !tbaa !221, !noalias !673
  ret void

41:                                               ; preds = %21, %41
  %42 = phi <16 x float> [ %77, %41 ], [ %22, %21 ]
  %43 = phi <16 x float> [ %70, %41 ], [ %23, %21 ]
  %44 = phi <16 x float> [ %63, %41 ], [ %24, %21 ]
  %45 = phi <16 x float> [ %56, %41 ], [ %25, %21 ]
  %46 = phi i64 [ %80, %41 ], [ 0, %21 ]
  %47 = phi ptr [ %79, %41 ], [ %1, %21 ]
  %48 = phi ptr [ %78, %41 ], [ %2, %21 ]
  %49 = load <16 x half>, ptr %48, align 1, !tbaa !221, !alias.scope !670, !noalias !674
  %50 = fpext <16 x half> %49 to <16 x float>
  %51 = load i16, ptr %47, align 2, !tbaa !135, !alias.scope !668, !noalias !675
  %52 = insertelement <16 x i16> poison, i16 %51, i64 0
  %53 = bitcast <16 x i16> %52 to <16 x half>
  %54 = shufflevector <16 x half> %53, <16 x half> poison, <16 x i32> zeroinitializer
  %55 = fpext <16 x half> %54 to <16 x float>
  %56 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %55, <16 x float> %50, <16 x float> %45)
  %57 = getelementptr inbounds nuw i8, ptr %47, i64 2
  %58 = load i16, ptr %57, align 2, !tbaa !135, !alias.scope !668, !noalias !675
  %59 = insertelement <16 x i16> poison, i16 %58, i64 0
  %60 = bitcast <16 x i16> %59 to <16 x half>
  %61 = shufflevector <16 x half> %60, <16 x half> poison, <16 x i32> zeroinitializer
  %62 = fpext <16 x half> %61 to <16 x float>
  %63 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %62, <16 x float> %50, <16 x float> %44)
  %64 = getelementptr inbounds nuw i8, ptr %47, i64 4
  %65 = load i16, ptr %64, align 2, !tbaa !135, !alias.scope !668, !noalias !675
  %66 = insertelement <16 x i16> poison, i16 %65, i64 0
  %67 = bitcast <16 x i16> %66 to <16 x half>
  %68 = shufflevector <16 x half> %67, <16 x half> poison, <16 x i32> zeroinitializer
  %69 = fpext <16 x half> %68 to <16 x float>
  %70 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %69, <16 x float> %50, <16 x float> %43)
  %71 = getelementptr inbounds nuw i8, ptr %47, i64 6
  %72 = load i16, ptr %71, align 2, !tbaa !135, !alias.scope !668, !noalias !675
  %73 = insertelement <16 x i16> poison, i16 %72, i64 0
  %74 = bitcast <16 x i16> %73 to <16 x half>
  %75 = shufflevector <16 x half> %74, <16 x half> poison, <16 x i32> zeroinitializer
  %76 = fpext <16 x half> %75 to <16 x float>
  %77 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %76, <16 x float> %50, <16 x float> %42)
  %78 = getelementptr inbounds nuw i8, ptr %48, i64 32
  %79 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %80 = add nuw nsw i64 %46, 1
  %81 = icmp eq i64 %80, %27
  br i1 %81, label %29, label %41, !llvm.loop !491
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_8x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !683
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = load <16 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !676, !noalias !684
  %11 = fpext <16 x half> %10 to <16 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <16 x half>, ptr %12, align 1, !tbaa !221, !alias.scope !676, !noalias !684
  %14 = fpext <16 x half> %13 to <16 x float>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load <16 x half>, ptr %15, align 1, !tbaa !221, !alias.scope !676, !noalias !684
  %17 = fpext <16 x half> %16 to <16 x float>
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %19 = load <16 x half>, ptr %18, align 1, !tbaa !221, !alias.scope !676, !noalias !684
  %20 = fpext <16 x half> %19 to <16 x float>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %22 = load <16 x half>, ptr %21, align 1, !tbaa !221, !alias.scope !676, !noalias !684
  %23 = fpext <16 x half> %22 to <16 x float>
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %25 = load <16 x half>, ptr %24, align 1, !tbaa !221, !alias.scope !676, !noalias !684
  %26 = fpext <16 x half> %25 to <16 x float>
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %28 = load <16 x half>, ptr %27, align 1, !tbaa !221, !alias.scope !676, !noalias !684
  %29 = fpext <16 x half> %28 to <16 x float>
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %31 = load <16 x half>, ptr %30, align 1, !tbaa !221, !alias.scope !676, !noalias !684
  %32 = fpext <16 x half> %31 to <16 x float>
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi <16 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %35 = phi <16 x float> [ %29, %9 ], [ zeroinitializer, %4 ]
  %36 = phi <16 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %37 = phi <16 x float> [ %23, %9 ], [ zeroinitializer, %4 ]
  %38 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %39 = phi <16 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %40 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %41 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %43 = load i64, ptr %42, align 8, !tbaa !168, !noalias !683
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %69, %33
  %46 = phi <16 x float> [ %34, %33 ], [ %137, %69 ]
  %47 = phi <16 x float> [ %35, %33 ], [ %130, %69 ]
  %48 = phi <16 x float> [ %36, %33 ], [ %123, %69 ]
  %49 = phi <16 x float> [ %37, %33 ], [ %116, %69 ]
  %50 = phi <16 x float> [ %38, %33 ], [ %109, %69 ]
  %51 = phi <16 x float> [ %39, %33 ], [ %102, %69 ]
  %52 = phi <16 x float> [ %40, %33 ], [ %95, %69 ]
  %53 = phi <16 x float> [ %41, %33 ], [ %88, %69 ]
  %54 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %53, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %54, ptr %0, align 1, !tbaa !221, !noalias !684
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %56 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %52, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %56, ptr %55, align 1, !tbaa !221, !noalias !684
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %58 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %51, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %58, ptr %57, align 1, !tbaa !221, !noalias !684
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %60 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %50, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %60, ptr %59, align 1, !tbaa !221, !noalias !684
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %62 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %49, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %62, ptr %61, align 1, !tbaa !221, !noalias !684
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %64 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %48, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %64, ptr %63, align 1, !tbaa !221, !noalias !684
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %66 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %47, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %66, ptr %65, align 1, !tbaa !221, !noalias !684
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %68 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %46, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %68, ptr %67, align 1, !tbaa !221, !noalias !684
  ret void

69:                                               ; preds = %33, %69
  %70 = phi <16 x float> [ %137, %69 ], [ %34, %33 ]
  %71 = phi <16 x float> [ %130, %69 ], [ %35, %33 ]
  %72 = phi <16 x float> [ %123, %69 ], [ %36, %33 ]
  %73 = phi <16 x float> [ %116, %69 ], [ %37, %33 ]
  %74 = phi <16 x float> [ %109, %69 ], [ %38, %33 ]
  %75 = phi <16 x float> [ %102, %69 ], [ %39, %33 ]
  %76 = phi <16 x float> [ %95, %69 ], [ %40, %33 ]
  %77 = phi <16 x float> [ %88, %69 ], [ %41, %33 ]
  %78 = phi i64 [ %140, %69 ], [ 0, %33 ]
  %79 = phi ptr [ %139, %69 ], [ %1, %33 ]
  %80 = phi ptr [ %138, %69 ], [ %2, %33 ]
  %81 = load <16 x half>, ptr %80, align 1, !tbaa !221, !alias.scope !681, !noalias !685
  %82 = fpext <16 x half> %81 to <16 x float>
  %83 = load i16, ptr %79, align 2, !tbaa !135, !alias.scope !679, !noalias !686
  %84 = insertelement <16 x i16> poison, i16 %83, i64 0
  %85 = bitcast <16 x i16> %84 to <16 x half>
  %86 = shufflevector <16 x half> %85, <16 x half> poison, <16 x i32> zeroinitializer
  %87 = fpext <16 x half> %86 to <16 x float>
  %88 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %87, <16 x float> %82, <16 x float> %77)
  %89 = getelementptr inbounds nuw i8, ptr %79, i64 2
  %90 = load i16, ptr %89, align 2, !tbaa !135, !alias.scope !679, !noalias !686
  %91 = insertelement <16 x i16> poison, i16 %90, i64 0
  %92 = bitcast <16 x i16> %91 to <16 x half>
  %93 = shufflevector <16 x half> %92, <16 x half> poison, <16 x i32> zeroinitializer
  %94 = fpext <16 x half> %93 to <16 x float>
  %95 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %94, <16 x float> %82, <16 x float> %76)
  %96 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %97 = load i16, ptr %96, align 2, !tbaa !135, !alias.scope !679, !noalias !686
  %98 = insertelement <16 x i16> poison, i16 %97, i64 0
  %99 = bitcast <16 x i16> %98 to <16 x half>
  %100 = shufflevector <16 x half> %99, <16 x half> poison, <16 x i32> zeroinitializer
  %101 = fpext <16 x half> %100 to <16 x float>
  %102 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %101, <16 x float> %82, <16 x float> %75)
  %103 = getelementptr inbounds nuw i8, ptr %79, i64 6
  %104 = load i16, ptr %103, align 2, !tbaa !135, !alias.scope !679, !noalias !686
  %105 = insertelement <16 x i16> poison, i16 %104, i64 0
  %106 = bitcast <16 x i16> %105 to <16 x half>
  %107 = shufflevector <16 x half> %106, <16 x half> poison, <16 x i32> zeroinitializer
  %108 = fpext <16 x half> %107 to <16 x float>
  %109 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %108, <16 x float> %82, <16 x float> %74)
  %110 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %111 = load i16, ptr %110, align 2, !tbaa !135, !alias.scope !679, !noalias !686
  %112 = insertelement <16 x i16> poison, i16 %111, i64 0
  %113 = bitcast <16 x i16> %112 to <16 x half>
  %114 = shufflevector <16 x half> %113, <16 x half> poison, <16 x i32> zeroinitializer
  %115 = fpext <16 x half> %114 to <16 x float>
  %116 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %115, <16 x float> %82, <16 x float> %73)
  %117 = getelementptr inbounds nuw i8, ptr %79, i64 10
  %118 = load i16, ptr %117, align 2, !tbaa !135, !alias.scope !679, !noalias !686
  %119 = insertelement <16 x i16> poison, i16 %118, i64 0
  %120 = bitcast <16 x i16> %119 to <16 x half>
  %121 = shufflevector <16 x half> %120, <16 x half> poison, <16 x i32> zeroinitializer
  %122 = fpext <16 x half> %121 to <16 x float>
  %123 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %122, <16 x float> %82, <16 x float> %72)
  %124 = getelementptr inbounds nuw i8, ptr %79, i64 12
  %125 = load i16, ptr %124, align 2, !tbaa !135, !alias.scope !679, !noalias !686
  %126 = insertelement <16 x i16> poison, i16 %125, i64 0
  %127 = bitcast <16 x i16> %126 to <16 x half>
  %128 = shufflevector <16 x half> %127, <16 x half> poison, <16 x i32> zeroinitializer
  %129 = fpext <16 x half> %128 to <16 x float>
  %130 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %129, <16 x float> %82, <16 x float> %71)
  %131 = getelementptr inbounds nuw i8, ptr %79, i64 14
  %132 = load i16, ptr %131, align 2, !tbaa !135, !alias.scope !679, !noalias !686
  %133 = insertelement <16 x i16> poison, i16 %132, i64 0
  %134 = bitcast <16 x i16> %133 to <16 x half>
  %135 = shufflevector <16 x half> %134, <16 x half> poison, <16 x i32> zeroinitializer
  %136 = fpext <16 x half> %135 to <16 x float>
  %137 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %136, <16 x float> %82, <16 x float> %70)
  %138 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %139 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %140 = add nuw nsw i64 %78, 1
  %141 = icmp eq i64 %140, %43
  br i1 %141, label %45, label %69, !llvm.loop !491
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_f16f16f16_16x16x1_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !694
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %4
  %10 = load <16 x half>, ptr %0, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %11 = fpext <16 x half> %10 to <16 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <16 x half>, ptr %12, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %14 = fpext <16 x half> %13 to <16 x float>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load <16 x half>, ptr %15, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %17 = fpext <16 x half> %16 to <16 x float>
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %19 = load <16 x half>, ptr %18, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %20 = fpext <16 x half> %19 to <16 x float>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %22 = load <16 x half>, ptr %21, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %23 = fpext <16 x half> %22 to <16 x float>
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %25 = load <16 x half>, ptr %24, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %26 = fpext <16 x half> %25 to <16 x float>
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %28 = load <16 x half>, ptr %27, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %29 = fpext <16 x half> %28 to <16 x float>
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %31 = load <16 x half>, ptr %30, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %32 = fpext <16 x half> %31 to <16 x float>
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %34 = load <16 x half>, ptr %33, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %35 = fpext <16 x half> %34 to <16 x float>
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %37 = load <16 x half>, ptr %36, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %38 = fpext <16 x half> %37 to <16 x float>
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %40 = load <16 x half>, ptr %39, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %41 = fpext <16 x half> %40 to <16 x float>
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %43 = load <16 x half>, ptr %42, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %44 = fpext <16 x half> %43 to <16 x float>
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %46 = load <16 x half>, ptr %45, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %47 = fpext <16 x half> %46 to <16 x float>
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %49 = load <16 x half>, ptr %48, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %50 = fpext <16 x half> %49 to <16 x float>
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %52 = load <16 x half>, ptr %51, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %53 = fpext <16 x half> %52 to <16 x float>
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %55 = load <16 x half>, ptr %54, align 1, !tbaa !221, !alias.scope !687, !noalias !695
  %56 = fpext <16 x half> %55 to <16 x float>
  br label %57

57:                                               ; preds = %4, %9
  %58 = phi <16 x float> [ %56, %9 ], [ zeroinitializer, %4 ]
  %59 = phi <16 x float> [ %53, %9 ], [ zeroinitializer, %4 ]
  %60 = phi <16 x float> [ %50, %9 ], [ zeroinitializer, %4 ]
  %61 = phi <16 x float> [ %47, %9 ], [ zeroinitializer, %4 ]
  %62 = phi <16 x float> [ %44, %9 ], [ zeroinitializer, %4 ]
  %63 = phi <16 x float> [ %41, %9 ], [ zeroinitializer, %4 ]
  %64 = phi <16 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %65 = phi <16 x float> [ %35, %9 ], [ zeroinitializer, %4 ]
  %66 = phi <16 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %67 = phi <16 x float> [ %29, %9 ], [ zeroinitializer, %4 ]
  %68 = phi <16 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %69 = phi <16 x float> [ %23, %9 ], [ zeroinitializer, %4 ]
  %70 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %71 = phi <16 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %72 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %73 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %75 = load i64, ptr %74, align 8, !tbaa !168, !noalias !694
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %125, %57
  %78 = phi <16 x float> [ %58, %57 ], [ %257, %125 ]
  %79 = phi <16 x float> [ %59, %57 ], [ %250, %125 ]
  %80 = phi <16 x float> [ %60, %57 ], [ %243, %125 ]
  %81 = phi <16 x float> [ %61, %57 ], [ %236, %125 ]
  %82 = phi <16 x float> [ %62, %57 ], [ %229, %125 ]
  %83 = phi <16 x float> [ %63, %57 ], [ %222, %125 ]
  %84 = phi <16 x float> [ %64, %57 ], [ %215, %125 ]
  %85 = phi <16 x float> [ %65, %57 ], [ %208, %125 ]
  %86 = phi <16 x float> [ %66, %57 ], [ %201, %125 ]
  %87 = phi <16 x float> [ %67, %57 ], [ %194, %125 ]
  %88 = phi <16 x float> [ %68, %57 ], [ %187, %125 ]
  %89 = phi <16 x float> [ %69, %57 ], [ %180, %125 ]
  %90 = phi <16 x float> [ %70, %57 ], [ %173, %125 ]
  %91 = phi <16 x float> [ %71, %57 ], [ %166, %125 ]
  %92 = phi <16 x float> [ %72, %57 ], [ %159, %125 ]
  %93 = phi <16 x float> [ %73, %57 ], [ %152, %125 ]
  %94 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %93, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %94, ptr %0, align 1, !tbaa !221, !noalias !695
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %96 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %92, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %96, ptr %95, align 1, !tbaa !221, !noalias !695
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %98 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %91, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %98, ptr %97, align 1, !tbaa !221, !noalias !695
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %100 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %90, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %100, ptr %99, align 1, !tbaa !221, !noalias !695
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %102 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %89, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %102, ptr %101, align 1, !tbaa !221, !noalias !695
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %104 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %88, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %104, ptr %103, align 1, !tbaa !221, !noalias !695
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %106 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %87, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %106, ptr %105, align 1, !tbaa !221, !noalias !695
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %108 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %86, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %108, ptr %107, align 1, !tbaa !221, !noalias !695
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %110 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %85, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %110, ptr %109, align 1, !tbaa !221, !noalias !695
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %112 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %84, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %112, ptr %111, align 1, !tbaa !221, !noalias !695
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %114 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %83, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %114, ptr %113, align 1, !tbaa !221, !noalias !695
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %116 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %82, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %116, ptr %115, align 1, !tbaa !221, !noalias !695
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %118 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %81, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %118, ptr %117, align 1, !tbaa !221, !noalias !695
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %120 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %80, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %120, ptr %119, align 1, !tbaa !221, !noalias !695
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %122 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %79, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %122, ptr %121, align 1, !tbaa !221, !noalias !695
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %124 = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %78, i32 0, <16 x i16> zeroinitializer, i16 -1)
  store <16 x i16> %124, ptr %123, align 1, !tbaa !221, !noalias !695
  ret void

125:                                              ; preds = %57, %125
  %126 = phi <16 x float> [ %257, %125 ], [ %58, %57 ]
  %127 = phi <16 x float> [ %250, %125 ], [ %59, %57 ]
  %128 = phi <16 x float> [ %243, %125 ], [ %60, %57 ]
  %129 = phi <16 x float> [ %236, %125 ], [ %61, %57 ]
  %130 = phi <16 x float> [ %229, %125 ], [ %62, %57 ]
  %131 = phi <16 x float> [ %222, %125 ], [ %63, %57 ]
  %132 = phi <16 x float> [ %215, %125 ], [ %64, %57 ]
  %133 = phi <16 x float> [ %208, %125 ], [ %65, %57 ]
  %134 = phi <16 x float> [ %201, %125 ], [ %66, %57 ]
  %135 = phi <16 x float> [ %194, %125 ], [ %67, %57 ]
  %136 = phi <16 x float> [ %187, %125 ], [ %68, %57 ]
  %137 = phi <16 x float> [ %180, %125 ], [ %69, %57 ]
  %138 = phi <16 x float> [ %173, %125 ], [ %70, %57 ]
  %139 = phi <16 x float> [ %166, %125 ], [ %71, %57 ]
  %140 = phi <16 x float> [ %159, %125 ], [ %72, %57 ]
  %141 = phi <16 x float> [ %152, %125 ], [ %73, %57 ]
  %142 = phi i64 [ %260, %125 ], [ 0, %57 ]
  %143 = phi ptr [ %259, %125 ], [ %1, %57 ]
  %144 = phi ptr [ %258, %125 ], [ %2, %57 ]
  %145 = load <16 x half>, ptr %144, align 1, !tbaa !221, !alias.scope !692, !noalias !696
  %146 = fpext <16 x half> %145 to <16 x float>
  %147 = load i16, ptr %143, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %148 = insertelement <16 x i16> poison, i16 %147, i64 0
  %149 = bitcast <16 x i16> %148 to <16 x half>
  %150 = shufflevector <16 x half> %149, <16 x half> poison, <16 x i32> zeroinitializer
  %151 = fpext <16 x half> %150 to <16 x float>
  %152 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %151, <16 x float> %146, <16 x float> %141)
  %153 = getelementptr inbounds nuw i8, ptr %143, i64 2
  %154 = load i16, ptr %153, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %155 = insertelement <16 x i16> poison, i16 %154, i64 0
  %156 = bitcast <16 x i16> %155 to <16 x half>
  %157 = shufflevector <16 x half> %156, <16 x half> poison, <16 x i32> zeroinitializer
  %158 = fpext <16 x half> %157 to <16 x float>
  %159 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %158, <16 x float> %146, <16 x float> %140)
  %160 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %161 = load i16, ptr %160, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %162 = insertelement <16 x i16> poison, i16 %161, i64 0
  %163 = bitcast <16 x i16> %162 to <16 x half>
  %164 = shufflevector <16 x half> %163, <16 x half> poison, <16 x i32> zeroinitializer
  %165 = fpext <16 x half> %164 to <16 x float>
  %166 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %165, <16 x float> %146, <16 x float> %139)
  %167 = getelementptr inbounds nuw i8, ptr %143, i64 6
  %168 = load i16, ptr %167, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %169 = insertelement <16 x i16> poison, i16 %168, i64 0
  %170 = bitcast <16 x i16> %169 to <16 x half>
  %171 = shufflevector <16 x half> %170, <16 x half> poison, <16 x i32> zeroinitializer
  %172 = fpext <16 x half> %171 to <16 x float>
  %173 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %172, <16 x float> %146, <16 x float> %138)
  %174 = getelementptr inbounds nuw i8, ptr %143, i64 8
  %175 = load i16, ptr %174, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %176 = insertelement <16 x i16> poison, i16 %175, i64 0
  %177 = bitcast <16 x i16> %176 to <16 x half>
  %178 = shufflevector <16 x half> %177, <16 x half> poison, <16 x i32> zeroinitializer
  %179 = fpext <16 x half> %178 to <16 x float>
  %180 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %179, <16 x float> %146, <16 x float> %137)
  %181 = getelementptr inbounds nuw i8, ptr %143, i64 10
  %182 = load i16, ptr %181, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %183 = insertelement <16 x i16> poison, i16 %182, i64 0
  %184 = bitcast <16 x i16> %183 to <16 x half>
  %185 = shufflevector <16 x half> %184, <16 x half> poison, <16 x i32> zeroinitializer
  %186 = fpext <16 x half> %185 to <16 x float>
  %187 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %186, <16 x float> %146, <16 x float> %136)
  %188 = getelementptr inbounds nuw i8, ptr %143, i64 12
  %189 = load i16, ptr %188, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %190 = insertelement <16 x i16> poison, i16 %189, i64 0
  %191 = bitcast <16 x i16> %190 to <16 x half>
  %192 = shufflevector <16 x half> %191, <16 x half> poison, <16 x i32> zeroinitializer
  %193 = fpext <16 x half> %192 to <16 x float>
  %194 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %193, <16 x float> %146, <16 x float> %135)
  %195 = getelementptr inbounds nuw i8, ptr %143, i64 14
  %196 = load i16, ptr %195, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %197 = insertelement <16 x i16> poison, i16 %196, i64 0
  %198 = bitcast <16 x i16> %197 to <16 x half>
  %199 = shufflevector <16 x half> %198, <16 x half> poison, <16 x i32> zeroinitializer
  %200 = fpext <16 x half> %199 to <16 x float>
  %201 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %200, <16 x float> %146, <16 x float> %134)
  %202 = getelementptr inbounds nuw i8, ptr %143, i64 16
  %203 = load i16, ptr %202, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %204 = insertelement <16 x i16> poison, i16 %203, i64 0
  %205 = bitcast <16 x i16> %204 to <16 x half>
  %206 = shufflevector <16 x half> %205, <16 x half> poison, <16 x i32> zeroinitializer
  %207 = fpext <16 x half> %206 to <16 x float>
  %208 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %207, <16 x float> %146, <16 x float> %133)
  %209 = getelementptr inbounds nuw i8, ptr %143, i64 18
  %210 = load i16, ptr %209, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %211 = insertelement <16 x i16> poison, i16 %210, i64 0
  %212 = bitcast <16 x i16> %211 to <16 x half>
  %213 = shufflevector <16 x half> %212, <16 x half> poison, <16 x i32> zeroinitializer
  %214 = fpext <16 x half> %213 to <16 x float>
  %215 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %214, <16 x float> %146, <16 x float> %132)
  %216 = getelementptr inbounds nuw i8, ptr %143, i64 20
  %217 = load i16, ptr %216, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %218 = insertelement <16 x i16> poison, i16 %217, i64 0
  %219 = bitcast <16 x i16> %218 to <16 x half>
  %220 = shufflevector <16 x half> %219, <16 x half> poison, <16 x i32> zeroinitializer
  %221 = fpext <16 x half> %220 to <16 x float>
  %222 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %221, <16 x float> %146, <16 x float> %131)
  %223 = getelementptr inbounds nuw i8, ptr %143, i64 22
  %224 = load i16, ptr %223, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %225 = insertelement <16 x i16> poison, i16 %224, i64 0
  %226 = bitcast <16 x i16> %225 to <16 x half>
  %227 = shufflevector <16 x half> %226, <16 x half> poison, <16 x i32> zeroinitializer
  %228 = fpext <16 x half> %227 to <16 x float>
  %229 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %228, <16 x float> %146, <16 x float> %130)
  %230 = getelementptr inbounds nuw i8, ptr %143, i64 24
  %231 = load i16, ptr %230, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %232 = insertelement <16 x i16> poison, i16 %231, i64 0
  %233 = bitcast <16 x i16> %232 to <16 x half>
  %234 = shufflevector <16 x half> %233, <16 x half> poison, <16 x i32> zeroinitializer
  %235 = fpext <16 x half> %234 to <16 x float>
  %236 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %235, <16 x float> %146, <16 x float> %129)
  %237 = getelementptr inbounds nuw i8, ptr %143, i64 26
  %238 = load i16, ptr %237, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %239 = insertelement <16 x i16> poison, i16 %238, i64 0
  %240 = bitcast <16 x i16> %239 to <16 x half>
  %241 = shufflevector <16 x half> %240, <16 x half> poison, <16 x i32> zeroinitializer
  %242 = fpext <16 x half> %241 to <16 x float>
  %243 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %242, <16 x float> %146, <16 x float> %128)
  %244 = getelementptr inbounds nuw i8, ptr %143, i64 28
  %245 = load i16, ptr %244, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %246 = insertelement <16 x i16> poison, i16 %245, i64 0
  %247 = bitcast <16 x i16> %246 to <16 x half>
  %248 = shufflevector <16 x half> %247, <16 x half> poison, <16 x i32> zeroinitializer
  %249 = fpext <16 x half> %248 to <16 x float>
  %250 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %249, <16 x float> %146, <16 x float> %127)
  %251 = getelementptr inbounds nuw i8, ptr %143, i64 30
  %252 = load i16, ptr %251, align 2, !tbaa !135, !alias.scope !690, !noalias !697
  %253 = insertelement <16 x i16> poison, i16 %252, i64 0
  %254 = bitcast <16 x i16> %253 to <16 x half>
  %255 = shufflevector <16 x half> %254, <16 x half> poison, <16 x i32> zeroinitializer
  %256 = fpext <16 x half> %255 to <16 x float>
  %257 = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %256, <16 x float> %146, <16 x float> %126)
  %258 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %259 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %260 = add nuw nsw i64 %142, 1
  %261 = icmp eq i64 %260, %75
  br i1 %261, label %77, label %125, !llvm.loop !491
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !712
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load <16 x bfloat>, ptr %0, align 1, !tbaa !221, !alias.scope !713, !noalias !714
  %11 = fpext <16 x bfloat> %10 to <16 x float>
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %15 = load i64, ptr %14, align 8, !tbaa !168, !noalias !712
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = and i64 %15, 3
  %19 = icmp ult i64 %15, 4
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = and i64 %15, 9223372036854775804
  br label %47

22:                                               ; preds = %47
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %22, %17
  %25 = phi <16 x float> [ %13, %17 ], [ %81, %22 ]
  %26 = phi ptr [ %1, %17 ], [ %83, %22 ]
  %27 = phi ptr [ %2, %17 ], [ %82, %22 ]
  %28 = icmp ne i64 %18, 0
  tail call void @llvm.assume(i1 %28)
  br label %29

29:                                               ; preds = %29, %24
  %30 = phi <16 x float> [ %39, %29 ], [ %25, %24 ]
  %31 = phi ptr [ %41, %29 ], [ %26, %24 ]
  %32 = phi ptr [ %40, %29 ], [ %27, %24 ]
  %33 = phi i64 [ %42, %29 ], [ 0, %24 ]
  %34 = load <32 x bfloat>, ptr %32, align 1, !tbaa !221, !alias.scope !715, !noalias !716
  %35 = load float, ptr %31, align 4, !tbaa !137, !alias.scope !717, !noalias !718
  %36 = insertelement <16 x float> poison, float %35, i64 0
  %37 = shufflevector <16 x float> %36, <16 x float> poison, <16 x i32> zeroinitializer
  %38 = bitcast <16 x float> %37 to <32 x bfloat>
  %39 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %30, <32 x bfloat> %34, <32 x bfloat> %38)
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 64
  %41 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %42 = add i64 %33, 1
  %43 = icmp eq i64 %42, %18
  br i1 %43, label %44, label %29, !llvm.loop !719

44:                                               ; preds = %22, %29, %12
  %45 = phi <16 x float> [ %13, %12 ], [ %81, %22 ], [ %39, %29 ]
  %46 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %45)
  store <16 x bfloat> %46, ptr %0, align 1, !tbaa !221, !alias.scope !713, !noalias !714
  ret void

47:                                               ; preds = %47, %20
  %48 = phi <16 x float> [ %13, %20 ], [ %81, %47 ]
  %49 = phi ptr [ %1, %20 ], [ %83, %47 ]
  %50 = phi ptr [ %2, %20 ], [ %82, %47 ]
  %51 = phi i64 [ 0, %20 ], [ %84, %47 ]
  %52 = load <32 x bfloat>, ptr %50, align 1, !tbaa !221, !alias.scope !715, !noalias !716
  %53 = load float, ptr %49, align 4, !tbaa !137, !alias.scope !717, !noalias !718
  %54 = insertelement <16 x float> poison, float %53, i64 0
  %55 = shufflevector <16 x float> %54, <16 x float> poison, <16 x i32> zeroinitializer
  %56 = bitcast <16 x float> %55 to <32 x bfloat>
  %57 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %48, <32 x bfloat> %52, <32 x bfloat> %56)
  %58 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %59 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %60 = load <32 x bfloat>, ptr %58, align 1, !tbaa !221, !alias.scope !715, !noalias !716
  %61 = load float, ptr %59, align 4, !tbaa !137, !alias.scope !717, !noalias !718
  %62 = insertelement <16 x float> poison, float %61, i64 0
  %63 = shufflevector <16 x float> %62, <16 x float> poison, <16 x i32> zeroinitializer
  %64 = bitcast <16 x float> %63 to <32 x bfloat>
  %65 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %57, <32 x bfloat> %60, <32 x bfloat> %64)
  %66 = getelementptr inbounds nuw i8, ptr %50, i64 128
  %67 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %68 = load <32 x bfloat>, ptr %66, align 1, !tbaa !221, !alias.scope !715, !noalias !716
  %69 = load float, ptr %67, align 4, !tbaa !137, !alias.scope !717, !noalias !718
  %70 = insertelement <16 x float> poison, float %69, i64 0
  %71 = shufflevector <16 x float> %70, <16 x float> poison, <16 x i32> zeroinitializer
  %72 = bitcast <16 x float> %71 to <32 x bfloat>
  %73 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %65, <32 x bfloat> %68, <32 x bfloat> %72)
  %74 = getelementptr inbounds nuw i8, ptr %50, i64 192
  %75 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %76 = load <32 x bfloat>, ptr %74, align 1, !tbaa !221, !alias.scope !715, !noalias !716
  %77 = load float, ptr %75, align 4, !tbaa !137, !alias.scope !717, !noalias !718
  %78 = insertelement <16 x float> poison, float %77, i64 0
  %79 = shufflevector <16 x float> %78, <16 x float> poison, <16 x i32> zeroinitializer
  %80 = bitcast <16 x float> %79 to <32 x bfloat>
  %81 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %73, <32 x bfloat> %76, <32 x bfloat> %80)
  %82 = getelementptr inbounds nuw i8, ptr %50, i64 256
  %83 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %84 = add i64 %51, 4
  %85 = icmp eq i64 %84, %21
  br i1 %85, label %22, label %47, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_2x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !734
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load <16 x bfloat>, ptr %0, align 1, !tbaa !221, !alias.scope !735, !noalias !736
  %11 = fpext <16 x bfloat> %10 to <16 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <16 x bfloat>, ptr %12, align 1, !tbaa !221, !alias.scope !735, !noalias !736
  %14 = fpext <16 x bfloat> %13 to <16 x float>
  br label %15

15:                                               ; preds = %4, %9
  %16 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %17 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %19 = load i64, ptr %18, align 8, !tbaa !168, !noalias !734
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = and i64 %19, 1
  %23 = icmp eq i64 %19, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = and i64 %19, 9223372036854775806
  br label %52

26:                                               ; preds = %52
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %26, %21
  %29 = phi <16 x float> [ %16, %21 ], [ %83, %26 ]
  %30 = phi <16 x float> [ %17, %21 ], [ %77, %26 ]
  %31 = phi ptr [ %1, %21 ], [ %85, %26 ]
  %32 = phi ptr [ %2, %21 ], [ %84, %26 ]
  %33 = trunc i64 %19 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <32 x bfloat>, ptr %32, align 1, !tbaa !221, !alias.scope !737, !noalias !738
  %35 = load float, ptr %31, align 4, !tbaa !137, !alias.scope !739, !noalias !740
  %36 = insertelement <16 x float> poison, float %35, i64 0
  %37 = shufflevector <16 x float> %36, <16 x float> poison, <16 x i32> zeroinitializer
  %38 = bitcast <16 x float> %37 to <32 x bfloat>
  %39 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %30, <32 x bfloat> %34, <32 x bfloat> %38)
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %41 = load float, ptr %40, align 4, !tbaa !137, !alias.scope !739, !noalias !740
  %42 = insertelement <16 x float> poison, float %41, i64 0
  %43 = shufflevector <16 x float> %42, <16 x float> poison, <16 x i32> zeroinitializer
  %44 = bitcast <16 x float> %43 to <32 x bfloat>
  %45 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %29, <32 x bfloat> %34, <32 x bfloat> %44)
  br label %46

46:                                               ; preds = %28, %26, %15
  %47 = phi <16 x float> [ %16, %15 ], [ %83, %26 ], [ %45, %28 ]
  %48 = phi <16 x float> [ %17, %15 ], [ %77, %26 ], [ %39, %28 ]
  %49 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %48)
  %50 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %47)
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <16 x bfloat> %49, ptr %0, align 1, !tbaa !221, !alias.scope !735, !noalias !736
  store <16 x bfloat> %50, ptr %51, align 1, !tbaa !221, !alias.scope !735, !noalias !736
  ret void

52:                                               ; preds = %52, %24
  %53 = phi <16 x float> [ %16, %24 ], [ %83, %52 ]
  %54 = phi <16 x float> [ %17, %24 ], [ %77, %52 ]
  %55 = phi ptr [ %1, %24 ], [ %85, %52 ]
  %56 = phi ptr [ %2, %24 ], [ %84, %52 ]
  %57 = phi i64 [ 0, %24 ], [ %86, %52 ]
  %58 = load <32 x bfloat>, ptr %56, align 1, !tbaa !221, !alias.scope !737, !noalias !738
  %59 = load float, ptr %55, align 4, !tbaa !137, !alias.scope !739, !noalias !740
  %60 = insertelement <16 x float> poison, float %59, i64 0
  %61 = shufflevector <16 x float> %60, <16 x float> poison, <16 x i32> zeroinitializer
  %62 = bitcast <16 x float> %61 to <32 x bfloat>
  %63 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %54, <32 x bfloat> %58, <32 x bfloat> %62)
  %64 = getelementptr inbounds nuw i8, ptr %55, i64 4
  %65 = load float, ptr %64, align 4, !tbaa !137, !alias.scope !739, !noalias !740
  %66 = insertelement <16 x float> poison, float %65, i64 0
  %67 = shufflevector <16 x float> %66, <16 x float> poison, <16 x i32> zeroinitializer
  %68 = bitcast <16 x float> %67 to <32 x bfloat>
  %69 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %53, <32 x bfloat> %58, <32 x bfloat> %68)
  %70 = getelementptr inbounds nuw i8, ptr %56, i64 64
  %71 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %72 = load <32 x bfloat>, ptr %70, align 1, !tbaa !221, !alias.scope !737, !noalias !738
  %73 = load float, ptr %71, align 4, !tbaa !137, !alias.scope !739, !noalias !740
  %74 = insertelement <16 x float> poison, float %73, i64 0
  %75 = shufflevector <16 x float> %74, <16 x float> poison, <16 x i32> zeroinitializer
  %76 = bitcast <16 x float> %75 to <32 x bfloat>
  %77 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %63, <32 x bfloat> %72, <32 x bfloat> %76)
  %78 = getelementptr inbounds nuw i8, ptr %55, i64 12
  %79 = load float, ptr %78, align 4, !tbaa !137, !alias.scope !739, !noalias !740
  %80 = insertelement <16 x float> poison, float %79, i64 0
  %81 = shufflevector <16 x float> %80, <16 x float> poison, <16 x i32> zeroinitializer
  %82 = bitcast <16 x float> %81 to <32 x bfloat>
  %83 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %69, <32 x bfloat> %72, <32 x bfloat> %82)
  %84 = getelementptr inbounds nuw i8, ptr %56, i64 128
  %85 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %86 = add i64 %57, 2
  %87 = icmp eq i64 %86, %25
  br i1 %87, label %26, label %52, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_4x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !755
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = load <16 x bfloat>, ptr %0, align 1, !tbaa !221, !alias.scope !756, !noalias !757
  %11 = fpext <16 x bfloat> %10 to <16 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <16 x bfloat>, ptr %12, align 1, !tbaa !221, !alias.scope !756, !noalias !757
  %14 = fpext <16 x bfloat> %13 to <16 x float>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load <16 x bfloat>, ptr %15, align 1, !tbaa !221, !alias.scope !756, !noalias !757
  %17 = fpext <16 x bfloat> %16 to <16 x float>
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %19 = load <16 x bfloat>, ptr %18, align 1, !tbaa !221, !alias.scope !756, !noalias !757
  %20 = fpext <16 x bfloat> %19 to <16 x float>
  br label %21

21:                                               ; preds = %4, %9
  %22 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %23 = phi <16 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %24 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %25 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %27 = load i64, ptr %26, align 8, !tbaa !168, !noalias !755
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %41, %21
  %30 = phi <16 x float> [ %22, %21 ], [ %72, %41 ]
  %31 = phi <16 x float> [ %23, %21 ], [ %66, %41 ]
  %32 = phi <16 x float> [ %24, %21 ], [ %60, %41 ]
  %33 = phi <16 x float> [ %25, %21 ], [ %54, %41 ]
  %34 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %33)
  %35 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %32)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %37 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %31)
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %39 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %30)
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <16 x bfloat> %34, ptr %0, align 1, !tbaa !221, !alias.scope !756, !noalias !757
  store <16 x bfloat> %35, ptr %36, align 1, !tbaa !221, !alias.scope !756, !noalias !757
  store <16 x bfloat> %37, ptr %38, align 1, !tbaa !221, !alias.scope !756, !noalias !757
  store <16 x bfloat> %39, ptr %40, align 1, !tbaa !221, !alias.scope !756, !noalias !757
  ret void

41:                                               ; preds = %21, %41
  %42 = phi <16 x float> [ %72, %41 ], [ %22, %21 ]
  %43 = phi <16 x float> [ %66, %41 ], [ %23, %21 ]
  %44 = phi <16 x float> [ %60, %41 ], [ %24, %21 ]
  %45 = phi <16 x float> [ %54, %41 ], [ %25, %21 ]
  %46 = phi i64 [ %75, %41 ], [ 0, %21 ]
  %47 = phi ptr [ %74, %41 ], [ %1, %21 ]
  %48 = phi ptr [ %73, %41 ], [ %2, %21 ]
  %49 = load <32 x bfloat>, ptr %48, align 1, !tbaa !221, !alias.scope !758, !noalias !759
  %50 = load float, ptr %47, align 4, !tbaa !137, !alias.scope !760, !noalias !761
  %51 = insertelement <16 x float> poison, float %50, i64 0
  %52 = shufflevector <16 x float> %51, <16 x float> poison, <16 x i32> zeroinitializer
  %53 = bitcast <16 x float> %52 to <32 x bfloat>
  %54 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %45, <32 x bfloat> %49, <32 x bfloat> %53)
  %55 = getelementptr inbounds nuw i8, ptr %47, i64 4
  %56 = load float, ptr %55, align 4, !tbaa !137, !alias.scope !760, !noalias !761
  %57 = insertelement <16 x float> poison, float %56, i64 0
  %58 = shufflevector <16 x float> %57, <16 x float> poison, <16 x i32> zeroinitializer
  %59 = bitcast <16 x float> %58 to <32 x bfloat>
  %60 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %44, <32 x bfloat> %49, <32 x bfloat> %59)
  %61 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %62 = load float, ptr %61, align 4, !tbaa !137, !alias.scope !760, !noalias !761
  %63 = insertelement <16 x float> poison, float %62, i64 0
  %64 = shufflevector <16 x float> %63, <16 x float> poison, <16 x i32> zeroinitializer
  %65 = bitcast <16 x float> %64 to <32 x bfloat>
  %66 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %43, <32 x bfloat> %49, <32 x bfloat> %65)
  %67 = getelementptr inbounds nuw i8, ptr %47, i64 12
  %68 = load float, ptr %67, align 4, !tbaa !137, !alias.scope !760, !noalias !761
  %69 = insertelement <16 x float> poison, float %68, i64 0
  %70 = shufflevector <16 x float> %69, <16 x float> poison, <16 x i32> zeroinitializer
  %71 = bitcast <16 x float> %70 to <32 x bfloat>
  %72 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %42, <32 x bfloat> %49, <32 x bfloat> %71)
  %73 = getelementptr inbounds nuw i8, ptr %48, i64 64
  %74 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %75 = add nuw nsw i64 %46, 1
  %76 = icmp eq i64 %75, %27
  br i1 %76, label %29, label %41, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_8x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !776
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = load <16 x bfloat>, ptr %0, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  %11 = fpext <16 x bfloat> %10 to <16 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <16 x bfloat>, ptr %12, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  %14 = fpext <16 x bfloat> %13 to <16 x float>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load <16 x bfloat>, ptr %15, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  %17 = fpext <16 x bfloat> %16 to <16 x float>
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %19 = load <16 x bfloat>, ptr %18, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  %20 = fpext <16 x bfloat> %19 to <16 x float>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %22 = load <16 x bfloat>, ptr %21, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  %23 = fpext <16 x bfloat> %22 to <16 x float>
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %25 = load <16 x bfloat>, ptr %24, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  %26 = fpext <16 x bfloat> %25 to <16 x float>
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %28 = load <16 x bfloat>, ptr %27, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  %29 = fpext <16 x bfloat> %28 to <16 x float>
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %31 = load <16 x bfloat>, ptr %30, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  %32 = fpext <16 x bfloat> %31 to <16 x float>
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi <16 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %35 = phi <16 x float> [ %29, %9 ], [ zeroinitializer, %4 ]
  %36 = phi <16 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %37 = phi <16 x float> [ %23, %9 ], [ zeroinitializer, %4 ]
  %38 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %39 = phi <16 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %40 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %41 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %43 = load i64, ptr %42, align 8, !tbaa !168, !noalias !776
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %69, %33
  %46 = phi <16 x float> [ %34, %33 ], [ %128, %69 ]
  %47 = phi <16 x float> [ %35, %33 ], [ %122, %69 ]
  %48 = phi <16 x float> [ %36, %33 ], [ %116, %69 ]
  %49 = phi <16 x float> [ %37, %33 ], [ %110, %69 ]
  %50 = phi <16 x float> [ %38, %33 ], [ %104, %69 ]
  %51 = phi <16 x float> [ %39, %33 ], [ %98, %69 ]
  %52 = phi <16 x float> [ %40, %33 ], [ %92, %69 ]
  %53 = phi <16 x float> [ %41, %33 ], [ %86, %69 ]
  %54 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %53)
  %55 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %52)
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %57 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %51)
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %59 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %50)
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %61 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %49)
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %63 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %48)
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %65 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %47)
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %67 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %46)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <16 x bfloat> %54, ptr %0, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  store <16 x bfloat> %55, ptr %56, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  store <16 x bfloat> %57, ptr %58, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  store <16 x bfloat> %59, ptr %60, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  store <16 x bfloat> %61, ptr %62, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  store <16 x bfloat> %63, ptr %64, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  store <16 x bfloat> %65, ptr %66, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  store <16 x bfloat> %67, ptr %68, align 1, !tbaa !221, !alias.scope !777, !noalias !778
  ret void

69:                                               ; preds = %33, %69
  %70 = phi <16 x float> [ %128, %69 ], [ %34, %33 ]
  %71 = phi <16 x float> [ %122, %69 ], [ %35, %33 ]
  %72 = phi <16 x float> [ %116, %69 ], [ %36, %33 ]
  %73 = phi <16 x float> [ %110, %69 ], [ %37, %33 ]
  %74 = phi <16 x float> [ %104, %69 ], [ %38, %33 ]
  %75 = phi <16 x float> [ %98, %69 ], [ %39, %33 ]
  %76 = phi <16 x float> [ %92, %69 ], [ %40, %33 ]
  %77 = phi <16 x float> [ %86, %69 ], [ %41, %33 ]
  %78 = phi i64 [ %131, %69 ], [ 0, %33 ]
  %79 = phi ptr [ %130, %69 ], [ %1, %33 ]
  %80 = phi ptr [ %129, %69 ], [ %2, %33 ]
  %81 = load <32 x bfloat>, ptr %80, align 1, !tbaa !221, !alias.scope !779, !noalias !780
  %82 = load float, ptr %79, align 4, !tbaa !137, !alias.scope !781, !noalias !782
  %83 = insertelement <16 x float> poison, float %82, i64 0
  %84 = shufflevector <16 x float> %83, <16 x float> poison, <16 x i32> zeroinitializer
  %85 = bitcast <16 x float> %84 to <32 x bfloat>
  %86 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %77, <32 x bfloat> %81, <32 x bfloat> %85)
  %87 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %88 = load float, ptr %87, align 4, !tbaa !137, !alias.scope !781, !noalias !782
  %89 = insertelement <16 x float> poison, float %88, i64 0
  %90 = shufflevector <16 x float> %89, <16 x float> poison, <16 x i32> zeroinitializer
  %91 = bitcast <16 x float> %90 to <32 x bfloat>
  %92 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %76, <32 x bfloat> %81, <32 x bfloat> %91)
  %93 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %94 = load float, ptr %93, align 4, !tbaa !137, !alias.scope !781, !noalias !782
  %95 = insertelement <16 x float> poison, float %94, i64 0
  %96 = shufflevector <16 x float> %95, <16 x float> poison, <16 x i32> zeroinitializer
  %97 = bitcast <16 x float> %96 to <32 x bfloat>
  %98 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %75, <32 x bfloat> %81, <32 x bfloat> %97)
  %99 = getelementptr inbounds nuw i8, ptr %79, i64 12
  %100 = load float, ptr %99, align 4, !tbaa !137, !alias.scope !781, !noalias !782
  %101 = insertelement <16 x float> poison, float %100, i64 0
  %102 = shufflevector <16 x float> %101, <16 x float> poison, <16 x i32> zeroinitializer
  %103 = bitcast <16 x float> %102 to <32 x bfloat>
  %104 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %74, <32 x bfloat> %81, <32 x bfloat> %103)
  %105 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %106 = load float, ptr %105, align 4, !tbaa !137, !alias.scope !781, !noalias !782
  %107 = insertelement <16 x float> poison, float %106, i64 0
  %108 = shufflevector <16 x float> %107, <16 x float> poison, <16 x i32> zeroinitializer
  %109 = bitcast <16 x float> %108 to <32 x bfloat>
  %110 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %73, <32 x bfloat> %81, <32 x bfloat> %109)
  %111 = getelementptr inbounds nuw i8, ptr %79, i64 20
  %112 = load float, ptr %111, align 4, !tbaa !137, !alias.scope !781, !noalias !782
  %113 = insertelement <16 x float> poison, float %112, i64 0
  %114 = shufflevector <16 x float> %113, <16 x float> poison, <16 x i32> zeroinitializer
  %115 = bitcast <16 x float> %114 to <32 x bfloat>
  %116 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %72, <32 x bfloat> %81, <32 x bfloat> %115)
  %117 = getelementptr inbounds nuw i8, ptr %79, i64 24
  %118 = load float, ptr %117, align 4, !tbaa !137, !alias.scope !781, !noalias !782
  %119 = insertelement <16 x float> poison, float %118, i64 0
  %120 = shufflevector <16 x float> %119, <16 x float> poison, <16 x i32> zeroinitializer
  %121 = bitcast <16 x float> %120 to <32 x bfloat>
  %122 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %71, <32 x bfloat> %81, <32 x bfloat> %121)
  %123 = getelementptr inbounds nuw i8, ptr %79, i64 28
  %124 = load float, ptr %123, align 4, !tbaa !137, !alias.scope !781, !noalias !782
  %125 = insertelement <16 x float> poison, float %124, i64 0
  %126 = shufflevector <16 x float> %125, <16 x float> poison, <16 x i32> zeroinitializer
  %127 = bitcast <16 x float> %126 to <32 x bfloat>
  %128 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %70, <32 x bfloat> %81, <32 x bfloat> %127)
  %129 = getelementptr inbounds nuw i8, ptr %80, i64 64
  %130 = getelementptr inbounds nuw i8, ptr %79, i64 32
  %131 = add nuw nsw i64 %78, 1
  %132 = icmp eq i64 %131, %43
  br i1 %132, label %45, label %69, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_bf16bf16bf16_16x16x2_x86_64_avx512_bf16(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #18 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !797
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %4
  %10 = load <16 x bfloat>, ptr %0, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %11 = fpext <16 x bfloat> %10 to <16 x float>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <16 x bfloat>, ptr %12, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %14 = fpext <16 x bfloat> %13 to <16 x float>
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load <16 x bfloat>, ptr %15, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %17 = fpext <16 x bfloat> %16 to <16 x float>
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %19 = load <16 x bfloat>, ptr %18, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %20 = fpext <16 x bfloat> %19 to <16 x float>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %22 = load <16 x bfloat>, ptr %21, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %23 = fpext <16 x bfloat> %22 to <16 x float>
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %25 = load <16 x bfloat>, ptr %24, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %26 = fpext <16 x bfloat> %25 to <16 x float>
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %28 = load <16 x bfloat>, ptr %27, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %29 = fpext <16 x bfloat> %28 to <16 x float>
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %31 = load <16 x bfloat>, ptr %30, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %32 = fpext <16 x bfloat> %31 to <16 x float>
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %34 = load <16 x bfloat>, ptr %33, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %35 = fpext <16 x bfloat> %34 to <16 x float>
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %37 = load <16 x bfloat>, ptr %36, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %38 = fpext <16 x bfloat> %37 to <16 x float>
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %40 = load <16 x bfloat>, ptr %39, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %41 = fpext <16 x bfloat> %40 to <16 x float>
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %43 = load <16 x bfloat>, ptr %42, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %44 = fpext <16 x bfloat> %43 to <16 x float>
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %46 = load <16 x bfloat>, ptr %45, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %47 = fpext <16 x bfloat> %46 to <16 x float>
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %49 = load <16 x bfloat>, ptr %48, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %50 = fpext <16 x bfloat> %49 to <16 x float>
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %52 = load <16 x bfloat>, ptr %51, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %53 = fpext <16 x bfloat> %52 to <16 x float>
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %55 = load <16 x bfloat>, ptr %54, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  %56 = fpext <16 x bfloat> %55 to <16 x float>
  br label %57

57:                                               ; preds = %4, %9
  %58 = phi <16 x float> [ %56, %9 ], [ zeroinitializer, %4 ]
  %59 = phi <16 x float> [ %53, %9 ], [ zeroinitializer, %4 ]
  %60 = phi <16 x float> [ %50, %9 ], [ zeroinitializer, %4 ]
  %61 = phi <16 x float> [ %47, %9 ], [ zeroinitializer, %4 ]
  %62 = phi <16 x float> [ %44, %9 ], [ zeroinitializer, %4 ]
  %63 = phi <16 x float> [ %41, %9 ], [ zeroinitializer, %4 ]
  %64 = phi <16 x float> [ %38, %9 ], [ zeroinitializer, %4 ]
  %65 = phi <16 x float> [ %35, %9 ], [ zeroinitializer, %4 ]
  %66 = phi <16 x float> [ %32, %9 ], [ zeroinitializer, %4 ]
  %67 = phi <16 x float> [ %29, %9 ], [ zeroinitializer, %4 ]
  %68 = phi <16 x float> [ %26, %9 ], [ zeroinitializer, %4 ]
  %69 = phi <16 x float> [ %23, %9 ], [ zeroinitializer, %4 ]
  %70 = phi <16 x float> [ %20, %9 ], [ zeroinitializer, %4 ]
  %71 = phi <16 x float> [ %17, %9 ], [ zeroinitializer, %4 ]
  %72 = phi <16 x float> [ %14, %9 ], [ zeroinitializer, %4 ]
  %73 = phi <16 x float> [ %11, %9 ], [ zeroinitializer, %4 ]
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %75 = load i64, ptr %74, align 8, !tbaa !168, !noalias !797
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %125, %57
  %78 = phi <16 x float> [ %58, %57 ], [ %240, %125 ]
  %79 = phi <16 x float> [ %59, %57 ], [ %234, %125 ]
  %80 = phi <16 x float> [ %60, %57 ], [ %228, %125 ]
  %81 = phi <16 x float> [ %61, %57 ], [ %222, %125 ]
  %82 = phi <16 x float> [ %62, %57 ], [ %216, %125 ]
  %83 = phi <16 x float> [ %63, %57 ], [ %210, %125 ]
  %84 = phi <16 x float> [ %64, %57 ], [ %204, %125 ]
  %85 = phi <16 x float> [ %65, %57 ], [ %198, %125 ]
  %86 = phi <16 x float> [ %66, %57 ], [ %192, %125 ]
  %87 = phi <16 x float> [ %67, %57 ], [ %186, %125 ]
  %88 = phi <16 x float> [ %68, %57 ], [ %180, %125 ]
  %89 = phi <16 x float> [ %69, %57 ], [ %174, %125 ]
  %90 = phi <16 x float> [ %70, %57 ], [ %168, %125 ]
  %91 = phi <16 x float> [ %71, %57 ], [ %162, %125 ]
  %92 = phi <16 x float> [ %72, %57 ], [ %156, %125 ]
  %93 = phi <16 x float> [ %73, %57 ], [ %150, %125 ]
  %94 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %93)
  %95 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %92)
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %97 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %91)
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %99 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %90)
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %101 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %89)
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %103 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %88)
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %105 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %87)
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %107 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %86)
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %109 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %85)
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %111 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %84)
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %113 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %83)
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %115 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %82)
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %117 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %81)
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %119 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %80)
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %121 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %79)
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %123 = tail call <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> %78)
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <16 x bfloat> %94, ptr %0, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %95, ptr %96, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %97, ptr %98, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %99, ptr %100, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %101, ptr %102, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %103, ptr %104, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %105, ptr %106, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %107, ptr %108, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %109, ptr %110, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %111, ptr %112, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %113, ptr %114, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %115, ptr %116, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %117, ptr %118, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %119, ptr %120, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %121, ptr %122, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  store <16 x bfloat> %123, ptr %124, align 1, !tbaa !221, !alias.scope !798, !noalias !799
  ret void

125:                                              ; preds = %57, %125
  %126 = phi <16 x float> [ %240, %125 ], [ %58, %57 ]
  %127 = phi <16 x float> [ %234, %125 ], [ %59, %57 ]
  %128 = phi <16 x float> [ %228, %125 ], [ %60, %57 ]
  %129 = phi <16 x float> [ %222, %125 ], [ %61, %57 ]
  %130 = phi <16 x float> [ %216, %125 ], [ %62, %57 ]
  %131 = phi <16 x float> [ %210, %125 ], [ %63, %57 ]
  %132 = phi <16 x float> [ %204, %125 ], [ %64, %57 ]
  %133 = phi <16 x float> [ %198, %125 ], [ %65, %57 ]
  %134 = phi <16 x float> [ %192, %125 ], [ %66, %57 ]
  %135 = phi <16 x float> [ %186, %125 ], [ %67, %57 ]
  %136 = phi <16 x float> [ %180, %125 ], [ %68, %57 ]
  %137 = phi <16 x float> [ %174, %125 ], [ %69, %57 ]
  %138 = phi <16 x float> [ %168, %125 ], [ %70, %57 ]
  %139 = phi <16 x float> [ %162, %125 ], [ %71, %57 ]
  %140 = phi <16 x float> [ %156, %125 ], [ %72, %57 ]
  %141 = phi <16 x float> [ %150, %125 ], [ %73, %57 ]
  %142 = phi i64 [ %243, %125 ], [ 0, %57 ]
  %143 = phi ptr [ %242, %125 ], [ %1, %57 ]
  %144 = phi ptr [ %241, %125 ], [ %2, %57 ]
  %145 = load <32 x bfloat>, ptr %144, align 1, !tbaa !221, !alias.scope !800, !noalias !801
  %146 = load float, ptr %143, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %147 = insertelement <16 x float> poison, float %146, i64 0
  %148 = shufflevector <16 x float> %147, <16 x float> poison, <16 x i32> zeroinitializer
  %149 = bitcast <16 x float> %148 to <32 x bfloat>
  %150 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %141, <32 x bfloat> %145, <32 x bfloat> %149)
  %151 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %152 = load float, ptr %151, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %153 = insertelement <16 x float> poison, float %152, i64 0
  %154 = shufflevector <16 x float> %153, <16 x float> poison, <16 x i32> zeroinitializer
  %155 = bitcast <16 x float> %154 to <32 x bfloat>
  %156 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %140, <32 x bfloat> %145, <32 x bfloat> %155)
  %157 = getelementptr inbounds nuw i8, ptr %143, i64 8
  %158 = load float, ptr %157, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %159 = insertelement <16 x float> poison, float %158, i64 0
  %160 = shufflevector <16 x float> %159, <16 x float> poison, <16 x i32> zeroinitializer
  %161 = bitcast <16 x float> %160 to <32 x bfloat>
  %162 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %139, <32 x bfloat> %145, <32 x bfloat> %161)
  %163 = getelementptr inbounds nuw i8, ptr %143, i64 12
  %164 = load float, ptr %163, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %165 = insertelement <16 x float> poison, float %164, i64 0
  %166 = shufflevector <16 x float> %165, <16 x float> poison, <16 x i32> zeroinitializer
  %167 = bitcast <16 x float> %166 to <32 x bfloat>
  %168 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %138, <32 x bfloat> %145, <32 x bfloat> %167)
  %169 = getelementptr inbounds nuw i8, ptr %143, i64 16
  %170 = load float, ptr %169, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %171 = insertelement <16 x float> poison, float %170, i64 0
  %172 = shufflevector <16 x float> %171, <16 x float> poison, <16 x i32> zeroinitializer
  %173 = bitcast <16 x float> %172 to <32 x bfloat>
  %174 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %137, <32 x bfloat> %145, <32 x bfloat> %173)
  %175 = getelementptr inbounds nuw i8, ptr %143, i64 20
  %176 = load float, ptr %175, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %177 = insertelement <16 x float> poison, float %176, i64 0
  %178 = shufflevector <16 x float> %177, <16 x float> poison, <16 x i32> zeroinitializer
  %179 = bitcast <16 x float> %178 to <32 x bfloat>
  %180 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %136, <32 x bfloat> %145, <32 x bfloat> %179)
  %181 = getelementptr inbounds nuw i8, ptr %143, i64 24
  %182 = load float, ptr %181, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %183 = insertelement <16 x float> poison, float %182, i64 0
  %184 = shufflevector <16 x float> %183, <16 x float> poison, <16 x i32> zeroinitializer
  %185 = bitcast <16 x float> %184 to <32 x bfloat>
  %186 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %135, <32 x bfloat> %145, <32 x bfloat> %185)
  %187 = getelementptr inbounds nuw i8, ptr %143, i64 28
  %188 = load float, ptr %187, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %189 = insertelement <16 x float> poison, float %188, i64 0
  %190 = shufflevector <16 x float> %189, <16 x float> poison, <16 x i32> zeroinitializer
  %191 = bitcast <16 x float> %190 to <32 x bfloat>
  %192 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %134, <32 x bfloat> %145, <32 x bfloat> %191)
  %193 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %194 = load float, ptr %193, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %195 = insertelement <16 x float> poison, float %194, i64 0
  %196 = shufflevector <16 x float> %195, <16 x float> poison, <16 x i32> zeroinitializer
  %197 = bitcast <16 x float> %196 to <32 x bfloat>
  %198 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %133, <32 x bfloat> %145, <32 x bfloat> %197)
  %199 = getelementptr inbounds nuw i8, ptr %143, i64 36
  %200 = load float, ptr %199, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %201 = insertelement <16 x float> poison, float %200, i64 0
  %202 = shufflevector <16 x float> %201, <16 x float> poison, <16 x i32> zeroinitializer
  %203 = bitcast <16 x float> %202 to <32 x bfloat>
  %204 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %132, <32 x bfloat> %145, <32 x bfloat> %203)
  %205 = getelementptr inbounds nuw i8, ptr %143, i64 40
  %206 = load float, ptr %205, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %207 = insertelement <16 x float> poison, float %206, i64 0
  %208 = shufflevector <16 x float> %207, <16 x float> poison, <16 x i32> zeroinitializer
  %209 = bitcast <16 x float> %208 to <32 x bfloat>
  %210 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %131, <32 x bfloat> %145, <32 x bfloat> %209)
  %211 = getelementptr inbounds nuw i8, ptr %143, i64 44
  %212 = load float, ptr %211, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %213 = insertelement <16 x float> poison, float %212, i64 0
  %214 = shufflevector <16 x float> %213, <16 x float> poison, <16 x i32> zeroinitializer
  %215 = bitcast <16 x float> %214 to <32 x bfloat>
  %216 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %130, <32 x bfloat> %145, <32 x bfloat> %215)
  %217 = getelementptr inbounds nuw i8, ptr %143, i64 48
  %218 = load float, ptr %217, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %219 = insertelement <16 x float> poison, float %218, i64 0
  %220 = shufflevector <16 x float> %219, <16 x float> poison, <16 x i32> zeroinitializer
  %221 = bitcast <16 x float> %220 to <32 x bfloat>
  %222 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %129, <32 x bfloat> %145, <32 x bfloat> %221)
  %223 = getelementptr inbounds nuw i8, ptr %143, i64 52
  %224 = load float, ptr %223, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %225 = insertelement <16 x float> poison, float %224, i64 0
  %226 = shufflevector <16 x float> %225, <16 x float> poison, <16 x i32> zeroinitializer
  %227 = bitcast <16 x float> %226 to <32 x bfloat>
  %228 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %128, <32 x bfloat> %145, <32 x bfloat> %227)
  %229 = getelementptr inbounds nuw i8, ptr %143, i64 56
  %230 = load float, ptr %229, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %231 = insertelement <16 x float> poison, float %230, i64 0
  %232 = shufflevector <16 x float> %231, <16 x float> poison, <16 x i32> zeroinitializer
  %233 = bitcast <16 x float> %232 to <32 x bfloat>
  %234 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %127, <32 x bfloat> %145, <32 x bfloat> %233)
  %235 = getelementptr inbounds nuw i8, ptr %143, i64 60
  %236 = load float, ptr %235, align 4, !tbaa !137, !alias.scope !802, !noalias !803
  %237 = insertelement <16 x float> poison, float %236, i64 0
  %238 = shufflevector <16 x float> %237, <16 x float> poison, <16 x i32> zeroinitializer
  %239 = bitcast <16 x float> %238 to <32 x bfloat>
  %240 = tail call <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> %126, <32 x bfloat> %145, <32 x bfloat> %239)
  %241 = getelementptr inbounds nuw i8, ptr %144, i64 64
  %242 = getelementptr inbounds nuw i8, ptr %143, i64 64
  %243 = add nuw nsw i64 %142, 1
  %244 = icmp eq i64 %243, %75
  br i1 %244, label %77, label %125, !llvm.loop !558
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_1x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !807
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !810
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !807
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %11
  %17 = bitcast <8 x i64> %12 to <16 x i32>
  %18 = and i64 %14, 1
  %19 = icmp eq i64 %14, 1
  br i1 %19, label %53, label %20

20:                                               ; preds = %16
  %21 = and i64 %14, 9223372036854775806
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <16 x i32> [ %17, %20 ], [ %47, %22 ]
  %24 = phi ptr [ %1, %20 ], [ %48, %22 ]
  %25 = phi ptr [ %2, %20 ], [ %40, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %49, %22 ]
  %27 = load <32 x i8>, ptr %25, align 1, !tbaa !221, !noalias !804
  %28 = sext <32 x i8> %27 to <32 x i16>
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %30 = load i16, ptr %24, align 2, !tbaa !135, !alias.scope !804, !noalias !811
  %31 = insertelement <16 x i16> poison, i16 %30, i64 0
  %32 = shufflevector <16 x i16> %31, <16 x i16> poison, <16 x i32> zeroinitializer
  %33 = bitcast <16 x i16> %32 to <32 x i8>
  %34 = sext <32 x i8> %33 to <32 x i16>
  %35 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %34, <32 x i16> %28)
  %36 = add <16 x i32> %35, %23
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %38 = load <32 x i8>, ptr %29, align 1, !tbaa !221, !noalias !804
  %39 = sext <32 x i8> %38 to <32 x i16>
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %41 = load i16, ptr %37, align 2, !tbaa !135, !alias.scope !804, !noalias !811
  %42 = insertelement <16 x i16> poison, i16 %41, i64 0
  %43 = shufflevector <16 x i16> %42, <16 x i16> poison, <16 x i32> zeroinitializer
  %44 = bitcast <16 x i16> %43 to <32 x i8>
  %45 = sext <32 x i8> %44 to <32 x i16>
  %46 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %45, <32 x i16> %39)
  %47 = add <16 x i32> %46, %36
  %48 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %49 = add i64 %26, 2
  %50 = icmp eq i64 %49, %21
  br i1 %50, label %51, label %22, !llvm.loop !812

51:                                               ; preds = %22
  %52 = icmp eq i64 %18, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %51, %16
  %54 = phi <16 x i32> [ %17, %16 ], [ %47, %51 ]
  %55 = phi ptr [ %1, %16 ], [ %48, %51 ]
  %56 = phi ptr [ %2, %16 ], [ %40, %51 ]
  %57 = trunc i64 %14 to i1
  tail call void @llvm.assume(i1 %57)
  %58 = load <32 x i8>, ptr %56, align 1, !tbaa !221, !noalias !804
  %59 = sext <32 x i8> %58 to <32 x i16>
  %60 = load i16, ptr %55, align 2, !tbaa !135, !alias.scope !804, !noalias !811
  %61 = insertelement <16 x i16> poison, i16 %60, i64 0
  %62 = shufflevector <16 x i16> %61, <16 x i16> poison, <16 x i32> zeroinitializer
  %63 = bitcast <16 x i16> %62 to <32 x i8>
  %64 = sext <32 x i8> %63 to <32 x i16>
  %65 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %64, <32 x i16> %59)
  %66 = add <16 x i32> %65, %54
  br label %67

67:                                               ; preds = %51, %53
  %68 = phi <16 x i32> [ %47, %51 ], [ %66, %53 ]
  %69 = bitcast <16 x i32> %68 to <8 x i64>
  br label %70

70:                                               ; preds = %67, %11
  %71 = phi <8 x i64> [ %69, %67 ], [ %12, %11 ]
  store <8 x i64> %71, ptr %0, align 1, !tbaa !221, !noalias !804
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_2x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !816
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !819
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !819
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !816
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = bitcast <8 x i64> %15 to <16 x i32>
  %21 = bitcast <8 x i64> %14 to <16 x i32>
  %22 = and i64 %17, 1
  %23 = icmp eq i64 %17, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = and i64 %17, 9223372036854775806
  br label %60

26:                                               ; preds = %60
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %26, %19
  %29 = phi <16 x i32> [ %21, %19 ], [ %101, %26 ]
  %30 = phi <16 x i32> [ %20, %19 ], [ %93, %26 ]
  %31 = phi ptr [ %1, %19 ], [ %102, %26 ]
  %32 = phi ptr [ %2, %19 ], [ %103, %26 ]
  %33 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <32 x i8>, ptr %32, align 1, !tbaa !221, !noalias !813
  %35 = sext <32 x i8> %34 to <32 x i16>
  %36 = load i16, ptr %31, align 2, !tbaa !135, !alias.scope !813, !noalias !820
  %37 = insertelement <16 x i16> poison, i16 %36, i64 0
  %38 = shufflevector <16 x i16> %37, <16 x i16> poison, <16 x i32> zeroinitializer
  %39 = bitcast <16 x i16> %38 to <32 x i8>
  %40 = sext <32 x i8> %39 to <32 x i16>
  %41 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %40, <32 x i16> %35)
  %42 = add <16 x i32> %41, %30
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %44 = load i16, ptr %43, align 2, !tbaa !135, !alias.scope !813, !noalias !820
  %45 = insertelement <16 x i16> poison, i16 %44, i64 0
  %46 = shufflevector <16 x i16> %45, <16 x i16> poison, <16 x i32> zeroinitializer
  %47 = bitcast <16 x i16> %46 to <32 x i8>
  %48 = sext <32 x i8> %47 to <32 x i16>
  %49 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %48, <32 x i16> %35)
  %50 = add <16 x i32> %49, %29
  br label %51

51:                                               ; preds = %26, %28
  %52 = phi <16 x i32> [ %93, %26 ], [ %42, %28 ]
  %53 = phi <16 x i32> [ %101, %26 ], [ %50, %28 ]
  %54 = bitcast <16 x i32> %53 to <8 x i64>
  %55 = bitcast <16 x i32> %52 to <8 x i64>
  br label %56

56:                                               ; preds = %51, %13
  %57 = phi <8 x i64> [ %54, %51 ], [ %14, %13 ]
  %58 = phi <8 x i64> [ %55, %51 ], [ %15, %13 ]
  store <8 x i64> %58, ptr %0, align 1, !tbaa !221, !noalias !813
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %57, ptr %59, align 1, !tbaa !221, !noalias !813
  ret void

60:                                               ; preds = %60, %24
  %61 = phi <16 x i32> [ %21, %24 ], [ %101, %60 ]
  %62 = phi <16 x i32> [ %20, %24 ], [ %93, %60 ]
  %63 = phi ptr [ %1, %24 ], [ %102, %60 ]
  %64 = phi ptr [ %2, %24 ], [ %103, %60 ]
  %65 = phi i64 [ 0, %24 ], [ %104, %60 ]
  %66 = load <32 x i8>, ptr %64, align 1, !tbaa !221, !noalias !813
  %67 = sext <32 x i8> %66 to <32 x i16>
  %68 = load i16, ptr %63, align 2, !tbaa !135, !alias.scope !813, !noalias !820
  %69 = insertelement <16 x i16> poison, i16 %68, i64 0
  %70 = shufflevector <16 x i16> %69, <16 x i16> poison, <16 x i32> zeroinitializer
  %71 = bitcast <16 x i16> %70 to <32 x i8>
  %72 = sext <32 x i8> %71 to <32 x i16>
  %73 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %72, <32 x i16> %67)
  %74 = add <16 x i32> %73, %62
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 2
  %76 = load i16, ptr %75, align 2, !tbaa !135, !alias.scope !813, !noalias !820
  %77 = insertelement <16 x i16> poison, i16 %76, i64 0
  %78 = shufflevector <16 x i16> %77, <16 x i16> poison, <16 x i32> zeroinitializer
  %79 = bitcast <16 x i16> %78 to <32 x i8>
  %80 = sext <32 x i8> %79 to <32 x i16>
  %81 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %80, <32 x i16> %67)
  %82 = add <16 x i32> %81, %61
  %83 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %84 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %85 = load <32 x i8>, ptr %84, align 1, !tbaa !221, !noalias !813
  %86 = sext <32 x i8> %85 to <32 x i16>
  %87 = load i16, ptr %83, align 2, !tbaa !135, !alias.scope !813, !noalias !820
  %88 = insertelement <16 x i16> poison, i16 %87, i64 0
  %89 = shufflevector <16 x i16> %88, <16 x i16> poison, <16 x i32> zeroinitializer
  %90 = bitcast <16 x i16> %89 to <32 x i8>
  %91 = sext <32 x i8> %90 to <32 x i16>
  %92 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %91, <32 x i16> %86)
  %93 = add <16 x i32> %92, %74
  %94 = getelementptr inbounds nuw i8, ptr %63, i64 6
  %95 = load i16, ptr %94, align 2, !tbaa !135, !alias.scope !813, !noalias !820
  %96 = insertelement <16 x i16> poison, i16 %95, i64 0
  %97 = shufflevector <16 x i16> %96, <16 x i16> poison, <16 x i32> zeroinitializer
  %98 = bitcast <16 x i16> %97 to <32 x i8>
  %99 = sext <32 x i8> %98 to <32 x i16>
  %100 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %99, <32 x i16> %86)
  %101 = add <16 x i32> %100, %82
  %102 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %103 = getelementptr inbounds nuw i8, ptr %64, i64 64
  %104 = add i64 %65, 2
  %105 = icmp eq i64 %104, %25
  br i1 %105, label %26, label %60, !llvm.loop !812
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_4x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !824
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !827
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !827
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !827
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !827
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !824
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = bitcast <8 x i64> %21 to <16 x i32>
  %27 = bitcast <8 x i64> %20 to <16 x i32>
  %28 = bitcast <8 x i64> %19 to <16 x i32>
  %29 = bitcast <8 x i64> %18 to <16 x i32>
  br label %43

30:                                               ; preds = %43
  %31 = bitcast <16 x i32> %83 to <8 x i64>
  %32 = bitcast <16 x i32> %75 to <8 x i64>
  %33 = bitcast <16 x i32> %67 to <8 x i64>
  %34 = bitcast <16 x i32> %59 to <8 x i64>
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi <8 x i64> [ %31, %30 ], [ %18, %17 ]
  %37 = phi <8 x i64> [ %32, %30 ], [ %19, %17 ]
  %38 = phi <8 x i64> [ %33, %30 ], [ %20, %17 ]
  %39 = phi <8 x i64> [ %34, %30 ], [ %21, %17 ]
  store <8 x i64> %39, ptr %0, align 1, !tbaa !221, !noalias !821
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %38, ptr %40, align 1, !tbaa !221, !noalias !821
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %37, ptr %41, align 1, !tbaa !221, !noalias !821
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %36, ptr %42, align 1, !tbaa !221, !noalias !821
  ret void

43:                                               ; preds = %25, %43
  %44 = phi <16 x i32> [ %29, %25 ], [ %83, %43 ]
  %45 = phi <16 x i32> [ %28, %25 ], [ %75, %43 ]
  %46 = phi <16 x i32> [ %27, %25 ], [ %67, %43 ]
  %47 = phi <16 x i32> [ %26, %25 ], [ %59, %43 ]
  %48 = phi i64 [ 0, %25 ], [ %86, %43 ]
  %49 = phi ptr [ %1, %25 ], [ %84, %43 ]
  %50 = phi ptr [ %2, %25 ], [ %85, %43 ]
  %51 = load <32 x i8>, ptr %50, align 1, !tbaa !221, !noalias !821
  %52 = sext <32 x i8> %51 to <32 x i16>
  %53 = load i16, ptr %49, align 2, !tbaa !135, !alias.scope !821, !noalias !828
  %54 = insertelement <16 x i16> poison, i16 %53, i64 0
  %55 = shufflevector <16 x i16> %54, <16 x i16> poison, <16 x i32> zeroinitializer
  %56 = bitcast <16 x i16> %55 to <32 x i8>
  %57 = sext <32 x i8> %56 to <32 x i16>
  %58 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %57, <32 x i16> %52)
  %59 = add <16 x i32> %58, %47
  %60 = getelementptr inbounds nuw i8, ptr %49, i64 2
  %61 = load i16, ptr %60, align 2, !tbaa !135, !alias.scope !821, !noalias !828
  %62 = insertelement <16 x i16> poison, i16 %61, i64 0
  %63 = shufflevector <16 x i16> %62, <16 x i16> poison, <16 x i32> zeroinitializer
  %64 = bitcast <16 x i16> %63 to <32 x i8>
  %65 = sext <32 x i8> %64 to <32 x i16>
  %66 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %65, <32 x i16> %52)
  %67 = add <16 x i32> %66, %46
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %69 = load i16, ptr %68, align 2, !tbaa !135, !alias.scope !821, !noalias !828
  %70 = insertelement <16 x i16> poison, i16 %69, i64 0
  %71 = shufflevector <16 x i16> %70, <16 x i16> poison, <16 x i32> zeroinitializer
  %72 = bitcast <16 x i16> %71 to <32 x i8>
  %73 = sext <32 x i8> %72 to <32 x i16>
  %74 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %73, <32 x i16> %52)
  %75 = add <16 x i32> %74, %45
  %76 = getelementptr inbounds nuw i8, ptr %49, i64 6
  %77 = load i16, ptr %76, align 2, !tbaa !135, !alias.scope !821, !noalias !828
  %78 = insertelement <16 x i16> poison, i16 %77, i64 0
  %79 = shufflevector <16 x i16> %78, <16 x i16> poison, <16 x i32> zeroinitializer
  %80 = bitcast <16 x i16> %79 to <32 x i8>
  %81 = sext <32 x i8> %80 to <32 x i16>
  %82 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %81, <32 x i16> %52)
  %83 = add <16 x i32> %82, %44
  %84 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %86 = add nuw nsw i64 %48, 1
  %87 = icmp eq i64 %86, %23
  br i1 %87, label %30, label %43, !llvm.loop !812
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_8x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !832
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !835
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !835
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !835
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !835
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <8 x i64>, ptr %17, align 1, !tbaa !221, !noalias !835
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <8 x i64>, ptr %19, align 1, !tbaa !221, !noalias !835
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <8 x i64>, ptr %21, align 1, !tbaa !221, !noalias !835
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <8 x i64>, ptr %23, align 1, !tbaa !221, !noalias !835
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <8 x i64> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <8 x i64> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <8 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <8 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !832
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = bitcast <8 x i64> %33 to <16 x i32>
  %39 = bitcast <8 x i64> %32 to <16 x i32>
  %40 = bitcast <8 x i64> %31 to <16 x i32>
  %41 = bitcast <8 x i64> %30 to <16 x i32>
  %42 = bitcast <8 x i64> %29 to <16 x i32>
  %43 = bitcast <8 x i64> %28 to <16 x i32>
  %44 = bitcast <8 x i64> %27 to <16 x i32>
  %45 = bitcast <8 x i64> %26 to <16 x i32>
  br label %71

46:                                               ; preds = %71
  %47 = bitcast <16 x i32> %147 to <8 x i64>
  %48 = bitcast <16 x i32> %139 to <8 x i64>
  %49 = bitcast <16 x i32> %131 to <8 x i64>
  %50 = bitcast <16 x i32> %123 to <8 x i64>
  %51 = bitcast <16 x i32> %115 to <8 x i64>
  %52 = bitcast <16 x i32> %107 to <8 x i64>
  %53 = bitcast <16 x i32> %99 to <8 x i64>
  %54 = bitcast <16 x i32> %91 to <8 x i64>
  br label %55

55:                                               ; preds = %46, %25
  %56 = phi <8 x i64> [ %47, %46 ], [ %26, %25 ]
  %57 = phi <8 x i64> [ %48, %46 ], [ %27, %25 ]
  %58 = phi <8 x i64> [ %49, %46 ], [ %28, %25 ]
  %59 = phi <8 x i64> [ %50, %46 ], [ %29, %25 ]
  %60 = phi <8 x i64> [ %51, %46 ], [ %30, %25 ]
  %61 = phi <8 x i64> [ %52, %46 ], [ %31, %25 ]
  %62 = phi <8 x i64> [ %53, %46 ], [ %32, %25 ]
  %63 = phi <8 x i64> [ %54, %46 ], [ %33, %25 ]
  store <8 x i64> %63, ptr %0, align 1, !tbaa !221, !noalias !829
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %62, ptr %64, align 1, !tbaa !221, !noalias !829
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %61, ptr %65, align 1, !tbaa !221, !noalias !829
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %60, ptr %66, align 1, !tbaa !221, !noalias !829
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <8 x i64> %59, ptr %67, align 1, !tbaa !221, !noalias !829
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <8 x i64> %58, ptr %68, align 1, !tbaa !221, !noalias !829
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <8 x i64> %57, ptr %69, align 1, !tbaa !221, !noalias !829
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <8 x i64> %56, ptr %70, align 1, !tbaa !221, !noalias !829
  ret void

71:                                               ; preds = %37, %71
  %72 = phi <16 x i32> [ %45, %37 ], [ %147, %71 ]
  %73 = phi <16 x i32> [ %44, %37 ], [ %139, %71 ]
  %74 = phi <16 x i32> [ %43, %37 ], [ %131, %71 ]
  %75 = phi <16 x i32> [ %42, %37 ], [ %123, %71 ]
  %76 = phi <16 x i32> [ %41, %37 ], [ %115, %71 ]
  %77 = phi <16 x i32> [ %40, %37 ], [ %107, %71 ]
  %78 = phi <16 x i32> [ %39, %37 ], [ %99, %71 ]
  %79 = phi <16 x i32> [ %38, %37 ], [ %91, %71 ]
  %80 = phi i64 [ 0, %37 ], [ %150, %71 ]
  %81 = phi ptr [ %1, %37 ], [ %148, %71 ]
  %82 = phi ptr [ %2, %37 ], [ %149, %71 ]
  %83 = load <32 x i8>, ptr %82, align 1, !tbaa !221, !noalias !829
  %84 = sext <32 x i8> %83 to <32 x i16>
  %85 = load i16, ptr %81, align 2, !tbaa !135, !alias.scope !829, !noalias !836
  %86 = insertelement <16 x i16> poison, i16 %85, i64 0
  %87 = shufflevector <16 x i16> %86, <16 x i16> poison, <16 x i32> zeroinitializer
  %88 = bitcast <16 x i16> %87 to <32 x i8>
  %89 = sext <32 x i8> %88 to <32 x i16>
  %90 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %89, <32 x i16> %84)
  %91 = add <16 x i32> %90, %79
  %92 = getelementptr inbounds nuw i8, ptr %81, i64 2
  %93 = load i16, ptr %92, align 2, !tbaa !135, !alias.scope !829, !noalias !836
  %94 = insertelement <16 x i16> poison, i16 %93, i64 0
  %95 = shufflevector <16 x i16> %94, <16 x i16> poison, <16 x i32> zeroinitializer
  %96 = bitcast <16 x i16> %95 to <32 x i8>
  %97 = sext <32 x i8> %96 to <32 x i16>
  %98 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %97, <32 x i16> %84)
  %99 = add <16 x i32> %98, %78
  %100 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %101 = load i16, ptr %100, align 2, !tbaa !135, !alias.scope !829, !noalias !836
  %102 = insertelement <16 x i16> poison, i16 %101, i64 0
  %103 = shufflevector <16 x i16> %102, <16 x i16> poison, <16 x i32> zeroinitializer
  %104 = bitcast <16 x i16> %103 to <32 x i8>
  %105 = sext <32 x i8> %104 to <32 x i16>
  %106 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %105, <32 x i16> %84)
  %107 = add <16 x i32> %106, %77
  %108 = getelementptr inbounds nuw i8, ptr %81, i64 6
  %109 = load i16, ptr %108, align 2, !tbaa !135, !alias.scope !829, !noalias !836
  %110 = insertelement <16 x i16> poison, i16 %109, i64 0
  %111 = shufflevector <16 x i16> %110, <16 x i16> poison, <16 x i32> zeroinitializer
  %112 = bitcast <16 x i16> %111 to <32 x i8>
  %113 = sext <32 x i8> %112 to <32 x i16>
  %114 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %113, <32 x i16> %84)
  %115 = add <16 x i32> %114, %76
  %116 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %117 = load i16, ptr %116, align 2, !tbaa !135, !alias.scope !829, !noalias !836
  %118 = insertelement <16 x i16> poison, i16 %117, i64 0
  %119 = shufflevector <16 x i16> %118, <16 x i16> poison, <16 x i32> zeroinitializer
  %120 = bitcast <16 x i16> %119 to <32 x i8>
  %121 = sext <32 x i8> %120 to <32 x i16>
  %122 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %121, <32 x i16> %84)
  %123 = add <16 x i32> %122, %75
  %124 = getelementptr inbounds nuw i8, ptr %81, i64 10
  %125 = load i16, ptr %124, align 2, !tbaa !135, !alias.scope !829, !noalias !836
  %126 = insertelement <16 x i16> poison, i16 %125, i64 0
  %127 = shufflevector <16 x i16> %126, <16 x i16> poison, <16 x i32> zeroinitializer
  %128 = bitcast <16 x i16> %127 to <32 x i8>
  %129 = sext <32 x i8> %128 to <32 x i16>
  %130 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %129, <32 x i16> %84)
  %131 = add <16 x i32> %130, %74
  %132 = getelementptr inbounds nuw i8, ptr %81, i64 12
  %133 = load i16, ptr %132, align 2, !tbaa !135, !alias.scope !829, !noalias !836
  %134 = insertelement <16 x i16> poison, i16 %133, i64 0
  %135 = shufflevector <16 x i16> %134, <16 x i16> poison, <16 x i32> zeroinitializer
  %136 = bitcast <16 x i16> %135 to <32 x i8>
  %137 = sext <32 x i8> %136 to <32 x i16>
  %138 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %137, <32 x i16> %84)
  %139 = add <16 x i32> %138, %73
  %140 = getelementptr inbounds nuw i8, ptr %81, i64 14
  %141 = load i16, ptr %140, align 2, !tbaa !135, !alias.scope !829, !noalias !836
  %142 = insertelement <16 x i16> poison, i16 %141, i64 0
  %143 = shufflevector <16 x i16> %142, <16 x i16> poison, <16 x i32> zeroinitializer
  %144 = bitcast <16 x i16> %143 to <32 x i8>
  %145 = sext <32 x i8> %144 to <32 x i16>
  %146 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %145, <32 x i16> %84)
  %147 = add <16 x i32> %146, %72
  %148 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %149 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %150 = add nuw nsw i64 %80, 1
  %151 = icmp eq i64 %150, %35
  br i1 %151, label %46, label %71, !llvm.loop !812
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_16x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #19 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %217, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 816
  %16 = load <4 x i32>, ptr %0, align 1, !tbaa !221
  %17 = load <4 x i32>, ptr %13, align 1, !tbaa !221
  %18 = load <4 x i32>, ptr %14, align 1, !tbaa !221
  %19 = load <4 x i32>, ptr %15, align 1, !tbaa !221
  %20 = shufflevector <4 x i32> %16, <4 x i32> %17, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <4 x i32> %18, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <16 x i32> %20, <16 x i32> %21, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <4 x i32> %19, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <16 x i32> %22, <16 x i32> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %28 = load <4 x i32>, ptr %25, align 1, !tbaa !221
  %29 = load <4 x i32>, ptr %10, align 1, !tbaa !221
  %30 = load <4 x i32>, ptr %26, align 1, !tbaa !221
  %31 = load <4 x i32>, ptr %27, align 1, !tbaa !221
  %32 = shufflevector <4 x i32> %28, <4 x i32> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %33 = shufflevector <4 x i32> %30, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <16 x i32> %32, <16 x i32> %33, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <4 x i32> %31, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %36 = shufflevector <16 x i32> %34, <16 x i32> %35, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %40 = load <4 x i32>, ptr %37, align 1, !tbaa !221
  %41 = load <4 x i32>, ptr %38, align 1, !tbaa !221
  %42 = load <4 x i32>, ptr %11, align 1, !tbaa !221
  %43 = load <4 x i32>, ptr %39, align 1, !tbaa !221
  %44 = shufflevector <4 x i32> %40, <4 x i32> %41, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %45 = shufflevector <4 x i32> %42, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %46 = shufflevector <16 x i32> %44, <16 x i32> %45, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <4 x i32> %43, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %48 = shufflevector <16 x i32> %46, <16 x i32> %47, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %52 = load <4 x i32>, ptr %49, align 1, !tbaa !221
  %53 = load <4 x i32>, ptr %50, align 1, !tbaa !221
  %54 = load <4 x i32>, ptr %51, align 1, !tbaa !221
  %55 = load <4 x i32>, ptr %12, align 1, !tbaa !221
  %56 = shufflevector <4 x i32> %52, <4 x i32> %53, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %57 = shufflevector <4 x i32> %54, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %58 = shufflevector <16 x i32> %56, <16 x i32> %57, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %59 = shufflevector <4 x i32> %55, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %60 = shufflevector <16 x i32> %58, <16 x i32> %59, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 880
  %68 = load <4 x i32>, ptr %61, align 1, !tbaa !221
  %69 = load <4 x i32>, ptr %65, align 1, !tbaa !221
  %70 = load <4 x i32>, ptr %66, align 1, !tbaa !221
  %71 = load <4 x i32>, ptr %67, align 1, !tbaa !221
  %72 = shufflevector <4 x i32> %68, <4 x i32> %69, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %73 = shufflevector <4 x i32> %70, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %74 = shufflevector <16 x i32> %72, <16 x i32> %73, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %75 = shufflevector <4 x i32> %71, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %76 = shufflevector <16 x i32> %74, <16 x i32> %75, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 864
  %80 = load <4 x i32>, ptr %77, align 1, !tbaa !221
  %81 = load <4 x i32>, ptr %62, align 1, !tbaa !221
  %82 = load <4 x i32>, ptr %78, align 1, !tbaa !221
  %83 = load <4 x i32>, ptr %79, align 1, !tbaa !221
  %84 = shufflevector <4 x i32> %80, <4 x i32> %81, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %85 = shufflevector <4 x i32> %82, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %86 = shufflevector <16 x i32> %84, <16 x i32> %85, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %87 = shufflevector <4 x i32> %83, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %88 = shufflevector <16 x i32> %86, <16 x i32> %87, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 848
  %92 = load <4 x i32>, ptr %89, align 1, !tbaa !221
  %93 = load <4 x i32>, ptr %90, align 1, !tbaa !221
  %94 = load <4 x i32>, ptr %63, align 1, !tbaa !221
  %95 = load <4 x i32>, ptr %91, align 1, !tbaa !221
  %96 = shufflevector <4 x i32> %92, <4 x i32> %93, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %97 = shufflevector <4 x i32> %94, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %98 = shufflevector <16 x i32> %96, <16 x i32> %97, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %99 = shufflevector <4 x i32> %95, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %100 = shufflevector <16 x i32> %98, <16 x i32> %99, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %104 = load <4 x i32>, ptr %101, align 1, !tbaa !221
  %105 = load <4 x i32>, ptr %102, align 1, !tbaa !221
  %106 = load <4 x i32>, ptr %103, align 1, !tbaa !221
  %107 = load <4 x i32>, ptr %64, align 1, !tbaa !221
  %108 = shufflevector <4 x i32> %104, <4 x i32> %105, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %109 = shufflevector <4 x i32> %106, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %110 = shufflevector <16 x i32> %108, <16 x i32> %109, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %111 = shufflevector <4 x i32> %107, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %112 = shufflevector <16 x i32> %110, <16 x i32> %111, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 944
  %120 = load <4 x i32>, ptr %113, align 1, !tbaa !221
  %121 = load <4 x i32>, ptr %117, align 1, !tbaa !221
  %122 = load <4 x i32>, ptr %118, align 1, !tbaa !221
  %123 = load <4 x i32>, ptr %119, align 1, !tbaa !221
  %124 = shufflevector <4 x i32> %120, <4 x i32> %121, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %125 = shufflevector <4 x i32> %122, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %126 = shufflevector <16 x i32> %124, <16 x i32> %125, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %127 = shufflevector <4 x i32> %123, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %128 = shufflevector <16 x i32> %126, <16 x i32> %127, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %132 = load <4 x i32>, ptr %129, align 1, !tbaa !221
  %133 = load <4 x i32>, ptr %114, align 1, !tbaa !221
  %134 = load <4 x i32>, ptr %130, align 1, !tbaa !221
  %135 = load <4 x i32>, ptr %131, align 1, !tbaa !221
  %136 = shufflevector <4 x i32> %132, <4 x i32> %133, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %137 = shufflevector <4 x i32> %134, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %138 = shufflevector <16 x i32> %136, <16 x i32> %137, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %139 = shufflevector <4 x i32> %135, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %140 = shufflevector <16 x i32> %138, <16 x i32> %139, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 912
  %144 = load <4 x i32>, ptr %141, align 1, !tbaa !221
  %145 = load <4 x i32>, ptr %142, align 1, !tbaa !221
  %146 = load <4 x i32>, ptr %115, align 1, !tbaa !221
  %147 = load <4 x i32>, ptr %143, align 1, !tbaa !221
  %148 = shufflevector <4 x i32> %144, <4 x i32> %145, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %149 = shufflevector <4 x i32> %146, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %150 = shufflevector <16 x i32> %148, <16 x i32> %149, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %151 = shufflevector <4 x i32> %147, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %152 = shufflevector <16 x i32> %150, <16 x i32> %151, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 656
  %156 = load <4 x i32>, ptr %153, align 1, !tbaa !221
  %157 = load <4 x i32>, ptr %154, align 1, !tbaa !221
  %158 = load <4 x i32>, ptr %155, align 1, !tbaa !221
  %159 = load <4 x i32>, ptr %116, align 1, !tbaa !221
  %160 = shufflevector <4 x i32> %156, <4 x i32> %157, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %161 = shufflevector <4 x i32> %158, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %162 = shufflevector <16 x i32> %160, <16 x i32> %161, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %163 = shufflevector <4 x i32> %159, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %164 = shufflevector <16 x i32> %162, <16 x i32> %163, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %172 = load <4 x i32>, ptr %165, align 1, !tbaa !221
  %173 = load <4 x i32>, ptr %169, align 1, !tbaa !221
  %174 = load <4 x i32>, ptr %170, align 1, !tbaa !221
  %175 = load <4 x i32>, ptr %171, align 1, !tbaa !221
  %176 = shufflevector <4 x i32> %172, <4 x i32> %173, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %177 = shufflevector <4 x i32> %174, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %178 = shufflevector <16 x i32> %176, <16 x i32> %177, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %179 = shufflevector <4 x i32> %175, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %180 = shufflevector <16 x i32> %178, <16 x i32> %179, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 752
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %184 = load <4 x i32>, ptr %181, align 1, !tbaa !221
  %185 = load <4 x i32>, ptr %166, align 1, !tbaa !221
  %186 = load <4 x i32>, ptr %182, align 1, !tbaa !221
  %187 = load <4 x i32>, ptr %183, align 1, !tbaa !221
  %188 = shufflevector <4 x i32> %184, <4 x i32> %185, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %189 = shufflevector <4 x i32> %186, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %190 = shufflevector <16 x i32> %188, <16 x i32> %189, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %191 = shufflevector <4 x i32> %187, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %192 = shufflevector <16 x i32> %190, <16 x i32> %191, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %196 = load <4 x i32>, ptr %193, align 1, !tbaa !221
  %197 = load <4 x i32>, ptr %194, align 1, !tbaa !221
  %198 = load <4 x i32>, ptr %167, align 1, !tbaa !221
  %199 = load <4 x i32>, ptr %195, align 1, !tbaa !221
  %200 = shufflevector <4 x i32> %196, <4 x i32> %197, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %201 = shufflevector <4 x i32> %198, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %202 = shufflevector <16 x i32> %200, <16 x i32> %201, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %203 = shufflevector <4 x i32> %199, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %204 = shufflevector <16 x i32> %202, <16 x i32> %203, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %208 = load <4 x i32>, ptr %205, align 1, !tbaa !221
  %209 = load <4 x i32>, ptr %206, align 1, !tbaa !221
  %210 = load <4 x i32>, ptr %207, align 1, !tbaa !221
  %211 = load <4 x i32>, ptr %168, align 1, !tbaa !221
  %212 = shufflevector <4 x i32> %208, <4 x i32> %209, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %213 = shufflevector <4 x i32> %210, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %214 = shufflevector <16 x i32> %212, <16 x i32> %213, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %215 = shufflevector <4 x i32> %211, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %216 = shufflevector <16 x i32> %214, <16 x i32> %215, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  br label %217

217:                                              ; preds = %4, %9
  %218 = phi <16 x i32> [ %112, %9 ], [ zeroinitializer, %4 ]
  %219 = phi <16 x i32> [ %100, %9 ], [ zeroinitializer, %4 ]
  %220 = phi <16 x i32> [ %88, %9 ], [ zeroinitializer, %4 ]
  %221 = phi <16 x i32> [ %76, %9 ], [ zeroinitializer, %4 ]
  %222 = phi <16 x i32> [ %60, %9 ], [ zeroinitializer, %4 ]
  %223 = phi <16 x i32> [ %48, %9 ], [ zeroinitializer, %4 ]
  %224 = phi <16 x i32> [ %36, %9 ], [ zeroinitializer, %4 ]
  %225 = phi <16 x i32> [ %24, %9 ], [ zeroinitializer, %4 ]
  %226 = phi <16 x i32> [ %128, %9 ], [ zeroinitializer, %4 ]
  %227 = phi <16 x i32> [ %140, %9 ], [ zeroinitializer, %4 ]
  %228 = phi <16 x i32> [ %152, %9 ], [ zeroinitializer, %4 ]
  %229 = phi <16 x i32> [ %164, %9 ], [ zeroinitializer, %4 ]
  %230 = phi <16 x i32> [ %180, %9 ], [ zeroinitializer, %4 ]
  %231 = phi <16 x i32> [ %192, %9 ], [ zeroinitializer, %4 ]
  %232 = phi <16 x i32> [ %204, %9 ], [ zeroinitializer, %4 ]
  %233 = phi <16 x i32> [ %216, %9 ], [ zeroinitializer, %4 ]
  %234 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %235 = load i64, ptr %234, align 8, !tbaa !168
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %381, label %237

237:                                              ; preds = %381, %217
  %238 = phi <16 x i32> [ %218, %217 ], [ %434, %381 ]
  %239 = phi <16 x i32> [ %219, %217 ], [ %432, %381 ]
  %240 = phi <16 x i32> [ %220, %217 ], [ %430, %381 ]
  %241 = phi <16 x i32> [ %221, %217 ], [ %428, %381 ]
  %242 = phi <16 x i32> [ %222, %217 ], [ %425, %381 ]
  %243 = phi <16 x i32> [ %223, %217 ], [ %422, %381 ]
  %244 = phi <16 x i32> [ %224, %217 ], [ %419, %381 ]
  %245 = phi <16 x i32> [ %225, %217 ], [ %416, %381 ]
  %246 = phi <16 x i32> [ %226, %217 ], [ %437, %381 ]
  %247 = phi <16 x i32> [ %227, %217 ], [ %439, %381 ]
  %248 = phi <16 x i32> [ %228, %217 ], [ %441, %381 ]
  %249 = phi <16 x i32> [ %229, %217 ], [ %443, %381 ]
  %250 = phi <16 x i32> [ %230, %217 ], [ %446, %381 ]
  %251 = phi <16 x i32> [ %231, %217 ], [ %448, %381 ]
  %252 = phi <16 x i32> [ %232, %217 ], [ %450, %381 ]
  %253 = phi <16 x i32> [ %233, %217 ], [ %452, %381 ]
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 816
  %260 = shufflevector <16 x i32> %245, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %261 = shufflevector <16 x i32> %245, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %262 = shufflevector <16 x i32> %245, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %263 = shufflevector <16 x i32> %245, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %260, ptr %0, align 1, !tbaa !221
  store <4 x i32> %261, ptr %257, align 1, !tbaa !221
  store <4 x i32> %262, ptr %258, align 1, !tbaa !221
  store <4 x i32> %263, ptr %259, align 1, !tbaa !221
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %267 = shufflevector <16 x i32> %244, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %268 = shufflevector <16 x i32> %244, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %269 = shufflevector <16 x i32> %244, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %270 = shufflevector <16 x i32> %244, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %267, ptr %264, align 1, !tbaa !221
  store <4 x i32> %268, ptr %254, align 1, !tbaa !221
  store <4 x i32> %269, ptr %265, align 1, !tbaa !221
  store <4 x i32> %270, ptr %266, align 1, !tbaa !221
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %274 = shufflevector <16 x i32> %243, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %275 = shufflevector <16 x i32> %243, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %276 = shufflevector <16 x i32> %243, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %277 = shufflevector <16 x i32> %243, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %274, ptr %271, align 1, !tbaa !221
  store <4 x i32> %275, ptr %272, align 1, !tbaa !221
  store <4 x i32> %276, ptr %255, align 1, !tbaa !221
  store <4 x i32> %277, ptr %273, align 1, !tbaa !221
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %281 = shufflevector <16 x i32> %242, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %282 = shufflevector <16 x i32> %242, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %283 = shufflevector <16 x i32> %242, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %284 = shufflevector <16 x i32> %242, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %281, ptr %278, align 1, !tbaa !221
  store <4 x i32> %282, ptr %279, align 1, !tbaa !221
  store <4 x i32> %283, ptr %280, align 1, !tbaa !221
  store <4 x i32> %284, ptr %256, align 1, !tbaa !221
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 880
  %292 = shufflevector <16 x i32> %241, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %293 = shufflevector <16 x i32> %241, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %294 = shufflevector <16 x i32> %241, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %295 = shufflevector <16 x i32> %241, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %292, ptr %285, align 1, !tbaa !221
  store <4 x i32> %293, ptr %289, align 1, !tbaa !221
  store <4 x i32> %294, ptr %290, align 1, !tbaa !221
  store <4 x i32> %295, ptr %291, align 1, !tbaa !221
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 864
  %299 = shufflevector <16 x i32> %240, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %300 = shufflevector <16 x i32> %240, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %301 = shufflevector <16 x i32> %240, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %302 = shufflevector <16 x i32> %240, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %299, ptr %296, align 1, !tbaa !221
  store <4 x i32> %300, ptr %286, align 1, !tbaa !221
  store <4 x i32> %301, ptr %297, align 1, !tbaa !221
  store <4 x i32> %302, ptr %298, align 1, !tbaa !221
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 848
  %306 = shufflevector <16 x i32> %239, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %307 = shufflevector <16 x i32> %239, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %308 = shufflevector <16 x i32> %239, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %309 = shufflevector <16 x i32> %239, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %306, ptr %303, align 1, !tbaa !221
  store <4 x i32> %307, ptr %304, align 1, !tbaa !221
  store <4 x i32> %308, ptr %287, align 1, !tbaa !221
  store <4 x i32> %309, ptr %305, align 1, !tbaa !221
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %311 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %313 = shufflevector <16 x i32> %238, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %314 = shufflevector <16 x i32> %238, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %315 = shufflevector <16 x i32> %238, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %316 = shufflevector <16 x i32> %238, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %313, ptr %310, align 1, !tbaa !221
  store <4 x i32> %314, ptr %311, align 1, !tbaa !221
  store <4 x i32> %315, ptr %312, align 1, !tbaa !221
  store <4 x i32> %316, ptr %288, align 1, !tbaa !221
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 944
  %324 = shufflevector <16 x i32> %246, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %325 = shufflevector <16 x i32> %246, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %326 = shufflevector <16 x i32> %246, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %327 = shufflevector <16 x i32> %246, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %324, ptr %317, align 1, !tbaa !221
  store <4 x i32> %325, ptr %321, align 1, !tbaa !221
  store <4 x i32> %326, ptr %322, align 1, !tbaa !221
  store <4 x i32> %327, ptr %323, align 1, !tbaa !221
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %329 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %331 = shufflevector <16 x i32> %247, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %332 = shufflevector <16 x i32> %247, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %333 = shufflevector <16 x i32> %247, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %334 = shufflevector <16 x i32> %247, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %331, ptr %328, align 1, !tbaa !221
  store <4 x i32> %332, ptr %318, align 1, !tbaa !221
  store <4 x i32> %333, ptr %329, align 1, !tbaa !221
  store <4 x i32> %334, ptr %330, align 1, !tbaa !221
  %335 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 912
  %338 = shufflevector <16 x i32> %248, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %339 = shufflevector <16 x i32> %248, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %340 = shufflevector <16 x i32> %248, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %341 = shufflevector <16 x i32> %248, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %338, ptr %335, align 1, !tbaa !221
  store <4 x i32> %339, ptr %336, align 1, !tbaa !221
  store <4 x i32> %340, ptr %319, align 1, !tbaa !221
  store <4 x i32> %341, ptr %337, align 1, !tbaa !221
  %342 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 656
  %345 = shufflevector <16 x i32> %249, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %346 = shufflevector <16 x i32> %249, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %347 = shufflevector <16 x i32> %249, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %348 = shufflevector <16 x i32> %249, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %345, ptr %342, align 1, !tbaa !221
  store <4 x i32> %346, ptr %343, align 1, !tbaa !221
  store <4 x i32> %347, ptr %344, align 1, !tbaa !221
  store <4 x i32> %348, ptr %320, align 1, !tbaa !221
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %356 = shufflevector <16 x i32> %250, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %357 = shufflevector <16 x i32> %250, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %358 = shufflevector <16 x i32> %250, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %359 = shufflevector <16 x i32> %250, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %356, ptr %349, align 1, !tbaa !221
  store <4 x i32> %357, ptr %353, align 1, !tbaa !221
  store <4 x i32> %358, ptr %354, align 1, !tbaa !221
  store <4 x i32> %359, ptr %355, align 1, !tbaa !221
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 752
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %363 = shufflevector <16 x i32> %251, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %364 = shufflevector <16 x i32> %251, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %365 = shufflevector <16 x i32> %251, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %366 = shufflevector <16 x i32> %251, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %363, ptr %360, align 1, !tbaa !221
  store <4 x i32> %364, ptr %350, align 1, !tbaa !221
  store <4 x i32> %365, ptr %361, align 1, !tbaa !221
  store <4 x i32> %366, ptr %362, align 1, !tbaa !221
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %370 = shufflevector <16 x i32> %252, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %371 = shufflevector <16 x i32> %252, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %372 = shufflevector <16 x i32> %252, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %373 = shufflevector <16 x i32> %252, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %370, ptr %367, align 1, !tbaa !221
  store <4 x i32> %371, ptr %368, align 1, !tbaa !221
  store <4 x i32> %372, ptr %351, align 1, !tbaa !221
  store <4 x i32> %373, ptr %369, align 1, !tbaa !221
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %377 = shufflevector <16 x i32> %253, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %378 = shufflevector <16 x i32> %253, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %379 = shufflevector <16 x i32> %253, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %380 = shufflevector <16 x i32> %253, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %377, ptr %374, align 1, !tbaa !221
  store <4 x i32> %378, ptr %375, align 1, !tbaa !221
  store <4 x i32> %379, ptr %376, align 1, !tbaa !221
  store <4 x i32> %380, ptr %352, align 1, !tbaa !221
  ret void

381:                                              ; preds = %217, %381
  %382 = phi <16 x i32> [ %434, %381 ], [ %218, %217 ]
  %383 = phi <16 x i32> [ %432, %381 ], [ %219, %217 ]
  %384 = phi <16 x i32> [ %430, %381 ], [ %220, %217 ]
  %385 = phi <16 x i32> [ %428, %381 ], [ %221, %217 ]
  %386 = phi <16 x i32> [ %425, %381 ], [ %222, %217 ]
  %387 = phi <16 x i32> [ %422, %381 ], [ %223, %217 ]
  %388 = phi <16 x i32> [ %419, %381 ], [ %224, %217 ]
  %389 = phi <16 x i32> [ %416, %381 ], [ %225, %217 ]
  %390 = phi <16 x i32> [ %437, %381 ], [ %226, %217 ]
  %391 = phi <16 x i32> [ %439, %381 ], [ %227, %217 ]
  %392 = phi <16 x i32> [ %441, %381 ], [ %228, %217 ]
  %393 = phi <16 x i32> [ %443, %381 ], [ %229, %217 ]
  %394 = phi <16 x i32> [ %446, %381 ], [ %230, %217 ]
  %395 = phi <16 x i32> [ %448, %381 ], [ %231, %217 ]
  %396 = phi <16 x i32> [ %450, %381 ], [ %232, %217 ]
  %397 = phi <16 x i32> [ %452, %381 ], [ %233, %217 ]
  %398 = phi i64 [ %455, %381 ], [ 0, %217 ]
  %399 = phi ptr [ %454, %381 ], [ %1, %217 ]
  %400 = phi ptr [ %453, %381 ], [ %2, %217 ]
  %401 = load <32 x i8>, ptr %400, align 1, !tbaa !221
  %402 = sext <32 x i8> %401 to <32 x i16>
  %403 = bitcast <32 x i16> %402 to <16 x i32>
  %404 = shufflevector <16 x i32> %403, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %405 = shufflevector <16 x i32> %403, <16 x i32> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %406 = shufflevector <16 x i32> %403, <16 x i32> poison, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %407 = load <32 x i8>, ptr %399, align 1, !tbaa !221
  %408 = sext <32 x i8> %407 to <32 x i16>
  %409 = bitcast <32 x i16> %408 to <16 x i32>
  %410 = shufflevector <16 x i32> %409, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %411 = shufflevector <16 x i32> %409, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %412 = shufflevector <16 x i32> %409, <16 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %413 = shufflevector <16 x i32> %409, <16 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %414 = bitcast <16 x i32> %410 to <32 x i16>
  %415 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %414, <32 x i16> %402)
  %416 = add <16 x i32> %415, %389
  %417 = bitcast <16 x i32> %404 to <32 x i16>
  %418 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %414, <32 x i16> %417)
  %419 = add <16 x i32> %418, %388
  %420 = bitcast <16 x i32> %405 to <32 x i16>
  %421 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %414, <32 x i16> %420)
  %422 = add <16 x i32> %421, %387
  %423 = bitcast <16 x i32> %406 to <32 x i16>
  %424 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %414, <32 x i16> %423)
  %425 = add <16 x i32> %424, %386
  %426 = bitcast <16 x i32> %411 to <32 x i16>
  %427 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %426, <32 x i16> %402)
  %428 = add <16 x i32> %427, %385
  %429 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %426, <32 x i16> %417)
  %430 = add <16 x i32> %429, %384
  %431 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %426, <32 x i16> %420)
  %432 = add <16 x i32> %431, %383
  %433 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %426, <32 x i16> %423)
  %434 = add <16 x i32> %433, %382
  %435 = bitcast <16 x i32> %412 to <32 x i16>
  %436 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %435, <32 x i16> %402)
  %437 = add <16 x i32> %436, %390
  %438 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %435, <32 x i16> %417)
  %439 = add <16 x i32> %438, %391
  %440 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %435, <32 x i16> %420)
  %441 = add <16 x i32> %440, %392
  %442 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %435, <32 x i16> %423)
  %443 = add <16 x i32> %442, %393
  %444 = bitcast <16 x i32> %413 to <32 x i16>
  %445 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %444, <32 x i16> %402)
  %446 = add <16 x i32> %445, %394
  %447 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %444, <32 x i16> %417)
  %448 = add <16 x i32> %447, %395
  %449 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %444, <32 x i16> %420)
  %450 = add <16 x i32> %449, %396
  %451 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %444, <32 x i16> %423)
  %452 = add <16 x i32> %451, %397
  %453 = getelementptr inbounds nuw i8, ptr %400, i64 32
  %454 = getelementptr inbounds nuw i8, ptr %399, i64 32
  %455 = add nuw nsw i64 %398, 1
  %456 = icmp eq i64 %455, %235
  br i1 %456, label %237, label %381, !llvm.loop !837
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_1x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !841
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !844
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !841
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %11
  %17 = bitcast <8 x i64> %12 to <16 x i32>
  %18 = and i64 %14, 1
  %19 = icmp eq i64 %14, 1
  br i1 %19, label %51, label %20

20:                                               ; preds = %16
  %21 = and i64 %14, 9223372036854775806
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <16 x i32> [ %17, %20 ], [ %45, %22 ]
  %24 = phi ptr [ %1, %20 ], [ %46, %22 ]
  %25 = phi ptr [ %2, %20 ], [ %39, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %47, %22 ]
  %27 = load <32 x i8>, ptr %25, align 1, !tbaa !221, !noalias !838
  %28 = sext <32 x i8> %27 to <32 x i16>
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %30 = load i16, ptr %24, align 2, !tbaa !135, !alias.scope !838, !noalias !845
  %31 = insertelement <16 x i16> poison, i16 %30, i64 0
  %32 = shufflevector <16 x i16> %31, <16 x i16> poison, <16 x i32> zeroinitializer
  %33 = bitcast <16 x i16> %32 to <32 x i8>
  %34 = sext <32 x i8> %33 to <32 x i16>
  %35 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %23, <32 x i16> %28, <32 x i16> %34)
  %36 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %37 = load <32 x i8>, ptr %29, align 1, !tbaa !221, !noalias !838
  %38 = sext <32 x i8> %37 to <32 x i16>
  %39 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %40 = load i16, ptr %36, align 2, !tbaa !135, !alias.scope !838, !noalias !845
  %41 = insertelement <16 x i16> poison, i16 %40, i64 0
  %42 = shufflevector <16 x i16> %41, <16 x i16> poison, <16 x i32> zeroinitializer
  %43 = bitcast <16 x i16> %42 to <32 x i8>
  %44 = sext <32 x i8> %43 to <32 x i16>
  %45 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %35, <32 x i16> %38, <32 x i16> %44)
  %46 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %47 = add i64 %26, 2
  %48 = icmp eq i64 %47, %21
  br i1 %48, label %49, label %22, !llvm.loop !846

49:                                               ; preds = %22
  %50 = icmp eq i64 %18, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %49, %16
  %52 = phi <16 x i32> [ %17, %16 ], [ %45, %49 ]
  %53 = phi ptr [ %1, %16 ], [ %46, %49 ]
  %54 = phi ptr [ %2, %16 ], [ %39, %49 ]
  %55 = trunc i64 %14 to i1
  tail call void @llvm.assume(i1 %55)
  %56 = load <32 x i8>, ptr %54, align 1, !tbaa !221, !noalias !838
  %57 = sext <32 x i8> %56 to <32 x i16>
  %58 = load i16, ptr %53, align 2, !tbaa !135, !alias.scope !838, !noalias !845
  %59 = insertelement <16 x i16> poison, i16 %58, i64 0
  %60 = shufflevector <16 x i16> %59, <16 x i16> poison, <16 x i32> zeroinitializer
  %61 = bitcast <16 x i16> %60 to <32 x i8>
  %62 = sext <32 x i8> %61 to <32 x i16>
  %63 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %52, <32 x i16> %57, <32 x i16> %62)
  br label %64

64:                                               ; preds = %49, %51
  %65 = phi <16 x i32> [ %45, %49 ], [ %63, %51 ]
  %66 = bitcast <16 x i32> %65 to <8 x i64>
  br label %67

67:                                               ; preds = %64, %11
  %68 = phi <8 x i64> [ %66, %64 ], [ %12, %11 ]
  store <8 x i64> %68, ptr %0, align 1, !tbaa !221, !noalias !838
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_2x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !850
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !853
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !853
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !850
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = bitcast <8 x i64> %15 to <16 x i32>
  %21 = bitcast <8 x i64> %14 to <16 x i32>
  %22 = and i64 %17, 1
  %23 = icmp eq i64 %17, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = and i64 %17, 9223372036854775806
  br label %58

26:                                               ; preds = %58
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %26, %19
  %29 = phi <16 x i32> [ %21, %19 ], [ %95, %26 ]
  %30 = phi <16 x i32> [ %20, %19 ], [ %88, %26 ]
  %31 = phi ptr [ %1, %19 ], [ %96, %26 ]
  %32 = phi ptr [ %2, %19 ], [ %97, %26 ]
  %33 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <32 x i8>, ptr %32, align 1, !tbaa !221, !noalias !847
  %35 = sext <32 x i8> %34 to <32 x i16>
  %36 = load i16, ptr %31, align 2, !tbaa !135, !alias.scope !847, !noalias !854
  %37 = insertelement <16 x i16> poison, i16 %36, i64 0
  %38 = shufflevector <16 x i16> %37, <16 x i16> poison, <16 x i32> zeroinitializer
  %39 = bitcast <16 x i16> %38 to <32 x i8>
  %40 = sext <32 x i8> %39 to <32 x i16>
  %41 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %30, <32 x i16> %35, <32 x i16> %40)
  %42 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %43 = load i16, ptr %42, align 2, !tbaa !135, !alias.scope !847, !noalias !854
  %44 = insertelement <16 x i16> poison, i16 %43, i64 0
  %45 = shufflevector <16 x i16> %44, <16 x i16> poison, <16 x i32> zeroinitializer
  %46 = bitcast <16 x i16> %45 to <32 x i8>
  %47 = sext <32 x i8> %46 to <32 x i16>
  %48 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %29, <32 x i16> %35, <32 x i16> %47)
  br label %49

49:                                               ; preds = %26, %28
  %50 = phi <16 x i32> [ %88, %26 ], [ %41, %28 ]
  %51 = phi <16 x i32> [ %95, %26 ], [ %48, %28 ]
  %52 = bitcast <16 x i32> %51 to <8 x i64>
  %53 = bitcast <16 x i32> %50 to <8 x i64>
  br label %54

54:                                               ; preds = %49, %13
  %55 = phi <8 x i64> [ %52, %49 ], [ %14, %13 ]
  %56 = phi <8 x i64> [ %53, %49 ], [ %15, %13 ]
  store <8 x i64> %56, ptr %0, align 1, !tbaa !221, !noalias !847
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %55, ptr %57, align 1, !tbaa !221, !noalias !847
  ret void

58:                                               ; preds = %58, %24
  %59 = phi <16 x i32> [ %21, %24 ], [ %95, %58 ]
  %60 = phi <16 x i32> [ %20, %24 ], [ %88, %58 ]
  %61 = phi ptr [ %1, %24 ], [ %96, %58 ]
  %62 = phi ptr [ %2, %24 ], [ %97, %58 ]
  %63 = phi i64 [ 0, %24 ], [ %98, %58 ]
  %64 = load <32 x i8>, ptr %62, align 1, !tbaa !221, !noalias !847
  %65 = sext <32 x i8> %64 to <32 x i16>
  %66 = load i16, ptr %61, align 2, !tbaa !135, !alias.scope !847, !noalias !854
  %67 = insertelement <16 x i16> poison, i16 %66, i64 0
  %68 = shufflevector <16 x i16> %67, <16 x i16> poison, <16 x i32> zeroinitializer
  %69 = bitcast <16 x i16> %68 to <32 x i8>
  %70 = sext <32 x i8> %69 to <32 x i16>
  %71 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %60, <32 x i16> %65, <32 x i16> %70)
  %72 = getelementptr inbounds nuw i8, ptr %61, i64 2
  %73 = load i16, ptr %72, align 2, !tbaa !135, !alias.scope !847, !noalias !854
  %74 = insertelement <16 x i16> poison, i16 %73, i64 0
  %75 = shufflevector <16 x i16> %74, <16 x i16> poison, <16 x i32> zeroinitializer
  %76 = bitcast <16 x i16> %75 to <32 x i8>
  %77 = sext <32 x i8> %76 to <32 x i16>
  %78 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %59, <32 x i16> %65, <32 x i16> %77)
  %79 = getelementptr inbounds nuw i8, ptr %61, i64 4
  %80 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %81 = load <32 x i8>, ptr %80, align 1, !tbaa !221, !noalias !847
  %82 = sext <32 x i8> %81 to <32 x i16>
  %83 = load i16, ptr %79, align 2, !tbaa !135, !alias.scope !847, !noalias !854
  %84 = insertelement <16 x i16> poison, i16 %83, i64 0
  %85 = shufflevector <16 x i16> %84, <16 x i16> poison, <16 x i32> zeroinitializer
  %86 = bitcast <16 x i16> %85 to <32 x i8>
  %87 = sext <32 x i8> %86 to <32 x i16>
  %88 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %71, <32 x i16> %82, <32 x i16> %87)
  %89 = getelementptr inbounds nuw i8, ptr %61, i64 6
  %90 = load i16, ptr %89, align 2, !tbaa !135, !alias.scope !847, !noalias !854
  %91 = insertelement <16 x i16> poison, i16 %90, i64 0
  %92 = shufflevector <16 x i16> %91, <16 x i16> poison, <16 x i32> zeroinitializer
  %93 = bitcast <16 x i16> %92 to <32 x i8>
  %94 = sext <32 x i8> %93 to <32 x i16>
  %95 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %78, <32 x i16> %82, <32 x i16> %94)
  %96 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %97 = getelementptr inbounds nuw i8, ptr %62, i64 64
  %98 = add i64 %63, 2
  %99 = icmp eq i64 %98, %25
  br i1 %99, label %26, label %58, !llvm.loop !846
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_4x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !858
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !861
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !861
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !861
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !861
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !858
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = bitcast <8 x i64> %21 to <16 x i32>
  %27 = bitcast <8 x i64> %20 to <16 x i32>
  %28 = bitcast <8 x i64> %19 to <16 x i32>
  %29 = bitcast <8 x i64> %18 to <16 x i32>
  br label %43

30:                                               ; preds = %43
  %31 = bitcast <16 x i32> %79 to <8 x i64>
  %32 = bitcast <16 x i32> %72 to <8 x i64>
  %33 = bitcast <16 x i32> %65 to <8 x i64>
  %34 = bitcast <16 x i32> %58 to <8 x i64>
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi <8 x i64> [ %31, %30 ], [ %18, %17 ]
  %37 = phi <8 x i64> [ %32, %30 ], [ %19, %17 ]
  %38 = phi <8 x i64> [ %33, %30 ], [ %20, %17 ]
  %39 = phi <8 x i64> [ %34, %30 ], [ %21, %17 ]
  store <8 x i64> %39, ptr %0, align 1, !tbaa !221, !noalias !855
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %38, ptr %40, align 1, !tbaa !221, !noalias !855
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %37, ptr %41, align 1, !tbaa !221, !noalias !855
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %36, ptr %42, align 1, !tbaa !221, !noalias !855
  ret void

43:                                               ; preds = %25, %43
  %44 = phi <16 x i32> [ %29, %25 ], [ %79, %43 ]
  %45 = phi <16 x i32> [ %28, %25 ], [ %72, %43 ]
  %46 = phi <16 x i32> [ %27, %25 ], [ %65, %43 ]
  %47 = phi <16 x i32> [ %26, %25 ], [ %58, %43 ]
  %48 = phi i64 [ 0, %25 ], [ %82, %43 ]
  %49 = phi ptr [ %1, %25 ], [ %80, %43 ]
  %50 = phi ptr [ %2, %25 ], [ %81, %43 ]
  %51 = load <32 x i8>, ptr %50, align 1, !tbaa !221, !noalias !855
  %52 = sext <32 x i8> %51 to <32 x i16>
  %53 = load i16, ptr %49, align 2, !tbaa !135, !alias.scope !855, !noalias !862
  %54 = insertelement <16 x i16> poison, i16 %53, i64 0
  %55 = shufflevector <16 x i16> %54, <16 x i16> poison, <16 x i32> zeroinitializer
  %56 = bitcast <16 x i16> %55 to <32 x i8>
  %57 = sext <32 x i8> %56 to <32 x i16>
  %58 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %47, <32 x i16> %52, <32 x i16> %57)
  %59 = getelementptr inbounds nuw i8, ptr %49, i64 2
  %60 = load i16, ptr %59, align 2, !tbaa !135, !alias.scope !855, !noalias !862
  %61 = insertelement <16 x i16> poison, i16 %60, i64 0
  %62 = shufflevector <16 x i16> %61, <16 x i16> poison, <16 x i32> zeroinitializer
  %63 = bitcast <16 x i16> %62 to <32 x i8>
  %64 = sext <32 x i8> %63 to <32 x i16>
  %65 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %46, <32 x i16> %52, <32 x i16> %64)
  %66 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %67 = load i16, ptr %66, align 2, !tbaa !135, !alias.scope !855, !noalias !862
  %68 = insertelement <16 x i16> poison, i16 %67, i64 0
  %69 = shufflevector <16 x i16> %68, <16 x i16> poison, <16 x i32> zeroinitializer
  %70 = bitcast <16 x i16> %69 to <32 x i8>
  %71 = sext <32 x i8> %70 to <32 x i16>
  %72 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %45, <32 x i16> %52, <32 x i16> %71)
  %73 = getelementptr inbounds nuw i8, ptr %49, i64 6
  %74 = load i16, ptr %73, align 2, !tbaa !135, !alias.scope !855, !noalias !862
  %75 = insertelement <16 x i16> poison, i16 %74, i64 0
  %76 = shufflevector <16 x i16> %75, <16 x i16> poison, <16 x i32> zeroinitializer
  %77 = bitcast <16 x i16> %76 to <32 x i8>
  %78 = sext <32 x i8> %77 to <32 x i16>
  %79 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %44, <32 x i16> %52, <32 x i16> %78)
  %80 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %81 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %82 = add nuw nsw i64 %48, 1
  %83 = icmp eq i64 %82, %23
  br i1 %83, label %30, label %43, !llvm.loop !846
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_8x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !866
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !869
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !869
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !869
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !869
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <8 x i64>, ptr %17, align 1, !tbaa !221, !noalias !869
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <8 x i64>, ptr %19, align 1, !tbaa !221, !noalias !869
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <8 x i64>, ptr %21, align 1, !tbaa !221, !noalias !869
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <8 x i64>, ptr %23, align 1, !tbaa !221, !noalias !869
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <8 x i64> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <8 x i64> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <8 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <8 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !866
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = bitcast <8 x i64> %33 to <16 x i32>
  %39 = bitcast <8 x i64> %32 to <16 x i32>
  %40 = bitcast <8 x i64> %31 to <16 x i32>
  %41 = bitcast <8 x i64> %30 to <16 x i32>
  %42 = bitcast <8 x i64> %29 to <16 x i32>
  %43 = bitcast <8 x i64> %28 to <16 x i32>
  %44 = bitcast <8 x i64> %27 to <16 x i32>
  %45 = bitcast <8 x i64> %26 to <16 x i32>
  br label %71

46:                                               ; preds = %71
  %47 = bitcast <16 x i32> %139 to <8 x i64>
  %48 = bitcast <16 x i32> %132 to <8 x i64>
  %49 = bitcast <16 x i32> %125 to <8 x i64>
  %50 = bitcast <16 x i32> %118 to <8 x i64>
  %51 = bitcast <16 x i32> %111 to <8 x i64>
  %52 = bitcast <16 x i32> %104 to <8 x i64>
  %53 = bitcast <16 x i32> %97 to <8 x i64>
  %54 = bitcast <16 x i32> %90 to <8 x i64>
  br label %55

55:                                               ; preds = %46, %25
  %56 = phi <8 x i64> [ %47, %46 ], [ %26, %25 ]
  %57 = phi <8 x i64> [ %48, %46 ], [ %27, %25 ]
  %58 = phi <8 x i64> [ %49, %46 ], [ %28, %25 ]
  %59 = phi <8 x i64> [ %50, %46 ], [ %29, %25 ]
  %60 = phi <8 x i64> [ %51, %46 ], [ %30, %25 ]
  %61 = phi <8 x i64> [ %52, %46 ], [ %31, %25 ]
  %62 = phi <8 x i64> [ %53, %46 ], [ %32, %25 ]
  %63 = phi <8 x i64> [ %54, %46 ], [ %33, %25 ]
  store <8 x i64> %63, ptr %0, align 1, !tbaa !221, !noalias !863
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %62, ptr %64, align 1, !tbaa !221, !noalias !863
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %61, ptr %65, align 1, !tbaa !221, !noalias !863
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %60, ptr %66, align 1, !tbaa !221, !noalias !863
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <8 x i64> %59, ptr %67, align 1, !tbaa !221, !noalias !863
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <8 x i64> %58, ptr %68, align 1, !tbaa !221, !noalias !863
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <8 x i64> %57, ptr %69, align 1, !tbaa !221, !noalias !863
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <8 x i64> %56, ptr %70, align 1, !tbaa !221, !noalias !863
  ret void

71:                                               ; preds = %37, %71
  %72 = phi <16 x i32> [ %45, %37 ], [ %139, %71 ]
  %73 = phi <16 x i32> [ %44, %37 ], [ %132, %71 ]
  %74 = phi <16 x i32> [ %43, %37 ], [ %125, %71 ]
  %75 = phi <16 x i32> [ %42, %37 ], [ %118, %71 ]
  %76 = phi <16 x i32> [ %41, %37 ], [ %111, %71 ]
  %77 = phi <16 x i32> [ %40, %37 ], [ %104, %71 ]
  %78 = phi <16 x i32> [ %39, %37 ], [ %97, %71 ]
  %79 = phi <16 x i32> [ %38, %37 ], [ %90, %71 ]
  %80 = phi i64 [ 0, %37 ], [ %142, %71 ]
  %81 = phi ptr [ %1, %37 ], [ %140, %71 ]
  %82 = phi ptr [ %2, %37 ], [ %141, %71 ]
  %83 = load <32 x i8>, ptr %82, align 1, !tbaa !221, !noalias !863
  %84 = sext <32 x i8> %83 to <32 x i16>
  %85 = load i16, ptr %81, align 2, !tbaa !135, !alias.scope !863, !noalias !870
  %86 = insertelement <16 x i16> poison, i16 %85, i64 0
  %87 = shufflevector <16 x i16> %86, <16 x i16> poison, <16 x i32> zeroinitializer
  %88 = bitcast <16 x i16> %87 to <32 x i8>
  %89 = sext <32 x i8> %88 to <32 x i16>
  %90 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %79, <32 x i16> %84, <32 x i16> %89)
  %91 = getelementptr inbounds nuw i8, ptr %81, i64 2
  %92 = load i16, ptr %91, align 2, !tbaa !135, !alias.scope !863, !noalias !870
  %93 = insertelement <16 x i16> poison, i16 %92, i64 0
  %94 = shufflevector <16 x i16> %93, <16 x i16> poison, <16 x i32> zeroinitializer
  %95 = bitcast <16 x i16> %94 to <32 x i8>
  %96 = sext <32 x i8> %95 to <32 x i16>
  %97 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %78, <32 x i16> %84, <32 x i16> %96)
  %98 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %99 = load i16, ptr %98, align 2, !tbaa !135, !alias.scope !863, !noalias !870
  %100 = insertelement <16 x i16> poison, i16 %99, i64 0
  %101 = shufflevector <16 x i16> %100, <16 x i16> poison, <16 x i32> zeroinitializer
  %102 = bitcast <16 x i16> %101 to <32 x i8>
  %103 = sext <32 x i8> %102 to <32 x i16>
  %104 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %77, <32 x i16> %84, <32 x i16> %103)
  %105 = getelementptr inbounds nuw i8, ptr %81, i64 6
  %106 = load i16, ptr %105, align 2, !tbaa !135, !alias.scope !863, !noalias !870
  %107 = insertelement <16 x i16> poison, i16 %106, i64 0
  %108 = shufflevector <16 x i16> %107, <16 x i16> poison, <16 x i32> zeroinitializer
  %109 = bitcast <16 x i16> %108 to <32 x i8>
  %110 = sext <32 x i8> %109 to <32 x i16>
  %111 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %76, <32 x i16> %84, <32 x i16> %110)
  %112 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %113 = load i16, ptr %112, align 2, !tbaa !135, !alias.scope !863, !noalias !870
  %114 = insertelement <16 x i16> poison, i16 %113, i64 0
  %115 = shufflevector <16 x i16> %114, <16 x i16> poison, <16 x i32> zeroinitializer
  %116 = bitcast <16 x i16> %115 to <32 x i8>
  %117 = sext <32 x i8> %116 to <32 x i16>
  %118 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %75, <32 x i16> %84, <32 x i16> %117)
  %119 = getelementptr inbounds nuw i8, ptr %81, i64 10
  %120 = load i16, ptr %119, align 2, !tbaa !135, !alias.scope !863, !noalias !870
  %121 = insertelement <16 x i16> poison, i16 %120, i64 0
  %122 = shufflevector <16 x i16> %121, <16 x i16> poison, <16 x i32> zeroinitializer
  %123 = bitcast <16 x i16> %122 to <32 x i8>
  %124 = sext <32 x i8> %123 to <32 x i16>
  %125 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %74, <32 x i16> %84, <32 x i16> %124)
  %126 = getelementptr inbounds nuw i8, ptr %81, i64 12
  %127 = load i16, ptr %126, align 2, !tbaa !135, !alias.scope !863, !noalias !870
  %128 = insertelement <16 x i16> poison, i16 %127, i64 0
  %129 = shufflevector <16 x i16> %128, <16 x i16> poison, <16 x i32> zeroinitializer
  %130 = bitcast <16 x i16> %129 to <32 x i8>
  %131 = sext <32 x i8> %130 to <32 x i16>
  %132 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %73, <32 x i16> %84, <32 x i16> %131)
  %133 = getelementptr inbounds nuw i8, ptr %81, i64 14
  %134 = load i16, ptr %133, align 2, !tbaa !135, !alias.scope !863, !noalias !870
  %135 = insertelement <16 x i16> poison, i16 %134, i64 0
  %136 = shufflevector <16 x i16> %135, <16 x i16> poison, <16 x i32> zeroinitializer
  %137 = bitcast <16 x i16> %136 to <32 x i8>
  %138 = sext <32 x i8> %137 to <32 x i16>
  %139 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %72, <32 x i16> %84, <32 x i16> %138)
  %140 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %141 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %142 = add nuw nsw i64 %80, 1
  %143 = icmp eq i64 %142, %35
  br i1 %143, label %46, label %71, !llvm.loop !846
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s8s8s32_16x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #21 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %217, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 816
  %16 = load <4 x i32>, ptr %0, align 1, !tbaa !221
  %17 = load <4 x i32>, ptr %13, align 1, !tbaa !221
  %18 = load <4 x i32>, ptr %14, align 1, !tbaa !221
  %19 = load <4 x i32>, ptr %15, align 1, !tbaa !221
  %20 = shufflevector <4 x i32> %16, <4 x i32> %17, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <4 x i32> %18, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <16 x i32> %20, <16 x i32> %21, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <4 x i32> %19, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <16 x i32> %22, <16 x i32> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %28 = load <4 x i32>, ptr %25, align 1, !tbaa !221
  %29 = load <4 x i32>, ptr %10, align 1, !tbaa !221
  %30 = load <4 x i32>, ptr %26, align 1, !tbaa !221
  %31 = load <4 x i32>, ptr %27, align 1, !tbaa !221
  %32 = shufflevector <4 x i32> %28, <4 x i32> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %33 = shufflevector <4 x i32> %30, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <16 x i32> %32, <16 x i32> %33, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <4 x i32> %31, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %36 = shufflevector <16 x i32> %34, <16 x i32> %35, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %40 = load <4 x i32>, ptr %37, align 1, !tbaa !221
  %41 = load <4 x i32>, ptr %38, align 1, !tbaa !221
  %42 = load <4 x i32>, ptr %11, align 1, !tbaa !221
  %43 = load <4 x i32>, ptr %39, align 1, !tbaa !221
  %44 = shufflevector <4 x i32> %40, <4 x i32> %41, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %45 = shufflevector <4 x i32> %42, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %46 = shufflevector <16 x i32> %44, <16 x i32> %45, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <4 x i32> %43, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %48 = shufflevector <16 x i32> %46, <16 x i32> %47, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %52 = load <4 x i32>, ptr %49, align 1, !tbaa !221
  %53 = load <4 x i32>, ptr %50, align 1, !tbaa !221
  %54 = load <4 x i32>, ptr %51, align 1, !tbaa !221
  %55 = load <4 x i32>, ptr %12, align 1, !tbaa !221
  %56 = shufflevector <4 x i32> %52, <4 x i32> %53, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %57 = shufflevector <4 x i32> %54, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %58 = shufflevector <16 x i32> %56, <16 x i32> %57, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %59 = shufflevector <4 x i32> %55, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %60 = shufflevector <16 x i32> %58, <16 x i32> %59, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 880
  %68 = load <4 x i32>, ptr %61, align 1, !tbaa !221
  %69 = load <4 x i32>, ptr %65, align 1, !tbaa !221
  %70 = load <4 x i32>, ptr %66, align 1, !tbaa !221
  %71 = load <4 x i32>, ptr %67, align 1, !tbaa !221
  %72 = shufflevector <4 x i32> %68, <4 x i32> %69, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %73 = shufflevector <4 x i32> %70, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %74 = shufflevector <16 x i32> %72, <16 x i32> %73, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %75 = shufflevector <4 x i32> %71, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %76 = shufflevector <16 x i32> %74, <16 x i32> %75, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 864
  %80 = load <4 x i32>, ptr %77, align 1, !tbaa !221
  %81 = load <4 x i32>, ptr %62, align 1, !tbaa !221
  %82 = load <4 x i32>, ptr %78, align 1, !tbaa !221
  %83 = load <4 x i32>, ptr %79, align 1, !tbaa !221
  %84 = shufflevector <4 x i32> %80, <4 x i32> %81, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %85 = shufflevector <4 x i32> %82, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %86 = shufflevector <16 x i32> %84, <16 x i32> %85, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %87 = shufflevector <4 x i32> %83, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %88 = shufflevector <16 x i32> %86, <16 x i32> %87, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 848
  %92 = load <4 x i32>, ptr %89, align 1, !tbaa !221
  %93 = load <4 x i32>, ptr %90, align 1, !tbaa !221
  %94 = load <4 x i32>, ptr %63, align 1, !tbaa !221
  %95 = load <4 x i32>, ptr %91, align 1, !tbaa !221
  %96 = shufflevector <4 x i32> %92, <4 x i32> %93, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %97 = shufflevector <4 x i32> %94, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %98 = shufflevector <16 x i32> %96, <16 x i32> %97, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %99 = shufflevector <4 x i32> %95, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %100 = shufflevector <16 x i32> %98, <16 x i32> %99, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %104 = load <4 x i32>, ptr %101, align 1, !tbaa !221
  %105 = load <4 x i32>, ptr %102, align 1, !tbaa !221
  %106 = load <4 x i32>, ptr %103, align 1, !tbaa !221
  %107 = load <4 x i32>, ptr %64, align 1, !tbaa !221
  %108 = shufflevector <4 x i32> %104, <4 x i32> %105, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %109 = shufflevector <4 x i32> %106, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %110 = shufflevector <16 x i32> %108, <16 x i32> %109, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %111 = shufflevector <4 x i32> %107, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %112 = shufflevector <16 x i32> %110, <16 x i32> %111, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 944
  %120 = load <4 x i32>, ptr %113, align 1, !tbaa !221
  %121 = load <4 x i32>, ptr %117, align 1, !tbaa !221
  %122 = load <4 x i32>, ptr %118, align 1, !tbaa !221
  %123 = load <4 x i32>, ptr %119, align 1, !tbaa !221
  %124 = shufflevector <4 x i32> %120, <4 x i32> %121, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %125 = shufflevector <4 x i32> %122, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %126 = shufflevector <16 x i32> %124, <16 x i32> %125, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %127 = shufflevector <4 x i32> %123, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %128 = shufflevector <16 x i32> %126, <16 x i32> %127, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %132 = load <4 x i32>, ptr %129, align 1, !tbaa !221
  %133 = load <4 x i32>, ptr %114, align 1, !tbaa !221
  %134 = load <4 x i32>, ptr %130, align 1, !tbaa !221
  %135 = load <4 x i32>, ptr %131, align 1, !tbaa !221
  %136 = shufflevector <4 x i32> %132, <4 x i32> %133, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %137 = shufflevector <4 x i32> %134, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %138 = shufflevector <16 x i32> %136, <16 x i32> %137, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %139 = shufflevector <4 x i32> %135, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %140 = shufflevector <16 x i32> %138, <16 x i32> %139, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 912
  %144 = load <4 x i32>, ptr %141, align 1, !tbaa !221
  %145 = load <4 x i32>, ptr %142, align 1, !tbaa !221
  %146 = load <4 x i32>, ptr %115, align 1, !tbaa !221
  %147 = load <4 x i32>, ptr %143, align 1, !tbaa !221
  %148 = shufflevector <4 x i32> %144, <4 x i32> %145, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %149 = shufflevector <4 x i32> %146, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %150 = shufflevector <16 x i32> %148, <16 x i32> %149, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %151 = shufflevector <4 x i32> %147, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %152 = shufflevector <16 x i32> %150, <16 x i32> %151, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 656
  %156 = load <4 x i32>, ptr %153, align 1, !tbaa !221
  %157 = load <4 x i32>, ptr %154, align 1, !tbaa !221
  %158 = load <4 x i32>, ptr %155, align 1, !tbaa !221
  %159 = load <4 x i32>, ptr %116, align 1, !tbaa !221
  %160 = shufflevector <4 x i32> %156, <4 x i32> %157, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %161 = shufflevector <4 x i32> %158, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %162 = shufflevector <16 x i32> %160, <16 x i32> %161, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %163 = shufflevector <4 x i32> %159, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %164 = shufflevector <16 x i32> %162, <16 x i32> %163, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %172 = load <4 x i32>, ptr %165, align 1, !tbaa !221
  %173 = load <4 x i32>, ptr %169, align 1, !tbaa !221
  %174 = load <4 x i32>, ptr %170, align 1, !tbaa !221
  %175 = load <4 x i32>, ptr %171, align 1, !tbaa !221
  %176 = shufflevector <4 x i32> %172, <4 x i32> %173, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %177 = shufflevector <4 x i32> %174, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %178 = shufflevector <16 x i32> %176, <16 x i32> %177, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %179 = shufflevector <4 x i32> %175, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %180 = shufflevector <16 x i32> %178, <16 x i32> %179, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 752
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %184 = load <4 x i32>, ptr %181, align 1, !tbaa !221
  %185 = load <4 x i32>, ptr %166, align 1, !tbaa !221
  %186 = load <4 x i32>, ptr %182, align 1, !tbaa !221
  %187 = load <4 x i32>, ptr %183, align 1, !tbaa !221
  %188 = shufflevector <4 x i32> %184, <4 x i32> %185, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %189 = shufflevector <4 x i32> %186, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %190 = shufflevector <16 x i32> %188, <16 x i32> %189, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %191 = shufflevector <4 x i32> %187, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %192 = shufflevector <16 x i32> %190, <16 x i32> %191, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %196 = load <4 x i32>, ptr %193, align 1, !tbaa !221
  %197 = load <4 x i32>, ptr %194, align 1, !tbaa !221
  %198 = load <4 x i32>, ptr %167, align 1, !tbaa !221
  %199 = load <4 x i32>, ptr %195, align 1, !tbaa !221
  %200 = shufflevector <4 x i32> %196, <4 x i32> %197, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %201 = shufflevector <4 x i32> %198, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %202 = shufflevector <16 x i32> %200, <16 x i32> %201, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %203 = shufflevector <4 x i32> %199, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %204 = shufflevector <16 x i32> %202, <16 x i32> %203, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %208 = load <4 x i32>, ptr %205, align 1, !tbaa !221
  %209 = load <4 x i32>, ptr %206, align 1, !tbaa !221
  %210 = load <4 x i32>, ptr %207, align 1, !tbaa !221
  %211 = load <4 x i32>, ptr %168, align 1, !tbaa !221
  %212 = shufflevector <4 x i32> %208, <4 x i32> %209, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %213 = shufflevector <4 x i32> %210, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %214 = shufflevector <16 x i32> %212, <16 x i32> %213, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %215 = shufflevector <4 x i32> %211, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %216 = shufflevector <16 x i32> %214, <16 x i32> %215, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  br label %217

217:                                              ; preds = %4, %9
  %218 = phi <16 x i32> [ %112, %9 ], [ zeroinitializer, %4 ]
  %219 = phi <16 x i32> [ %100, %9 ], [ zeroinitializer, %4 ]
  %220 = phi <16 x i32> [ %88, %9 ], [ zeroinitializer, %4 ]
  %221 = phi <16 x i32> [ %76, %9 ], [ zeroinitializer, %4 ]
  %222 = phi <16 x i32> [ %60, %9 ], [ zeroinitializer, %4 ]
  %223 = phi <16 x i32> [ %48, %9 ], [ zeroinitializer, %4 ]
  %224 = phi <16 x i32> [ %36, %9 ], [ zeroinitializer, %4 ]
  %225 = phi <16 x i32> [ %24, %9 ], [ zeroinitializer, %4 ]
  %226 = phi <16 x i32> [ %128, %9 ], [ zeroinitializer, %4 ]
  %227 = phi <16 x i32> [ %140, %9 ], [ zeroinitializer, %4 ]
  %228 = phi <16 x i32> [ %152, %9 ], [ zeroinitializer, %4 ]
  %229 = phi <16 x i32> [ %164, %9 ], [ zeroinitializer, %4 ]
  %230 = phi <16 x i32> [ %180, %9 ], [ zeroinitializer, %4 ]
  %231 = phi <16 x i32> [ %192, %9 ], [ zeroinitializer, %4 ]
  %232 = phi <16 x i32> [ %204, %9 ], [ zeroinitializer, %4 ]
  %233 = phi <16 x i32> [ %216, %9 ], [ zeroinitializer, %4 ]
  %234 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %235 = load i64, ptr %234, align 8, !tbaa !168
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %381, label %237

237:                                              ; preds = %381, %217
  %238 = phi <16 x i32> [ %218, %217 ], [ %426, %381 ]
  %239 = phi <16 x i32> [ %219, %217 ], [ %425, %381 ]
  %240 = phi <16 x i32> [ %220, %217 ], [ %424, %381 ]
  %241 = phi <16 x i32> [ %221, %217 ], [ %423, %381 ]
  %242 = phi <16 x i32> [ %222, %217 ], [ %421, %381 ]
  %243 = phi <16 x i32> [ %223, %217 ], [ %419, %381 ]
  %244 = phi <16 x i32> [ %224, %217 ], [ %417, %381 ]
  %245 = phi <16 x i32> [ %225, %217 ], [ %415, %381 ]
  %246 = phi <16 x i32> [ %226, %217 ], [ %428, %381 ]
  %247 = phi <16 x i32> [ %227, %217 ], [ %429, %381 ]
  %248 = phi <16 x i32> [ %228, %217 ], [ %430, %381 ]
  %249 = phi <16 x i32> [ %229, %217 ], [ %431, %381 ]
  %250 = phi <16 x i32> [ %230, %217 ], [ %433, %381 ]
  %251 = phi <16 x i32> [ %231, %217 ], [ %434, %381 ]
  %252 = phi <16 x i32> [ %232, %217 ], [ %435, %381 ]
  %253 = phi <16 x i32> [ %233, %217 ], [ %436, %381 ]
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 816
  %260 = shufflevector <16 x i32> %245, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %261 = shufflevector <16 x i32> %245, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %262 = shufflevector <16 x i32> %245, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %263 = shufflevector <16 x i32> %245, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %260, ptr %0, align 1, !tbaa !221
  store <4 x i32> %261, ptr %257, align 1, !tbaa !221
  store <4 x i32> %262, ptr %258, align 1, !tbaa !221
  store <4 x i32> %263, ptr %259, align 1, !tbaa !221
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 800
  %267 = shufflevector <16 x i32> %244, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %268 = shufflevector <16 x i32> %244, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %269 = shufflevector <16 x i32> %244, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %270 = shufflevector <16 x i32> %244, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %267, ptr %264, align 1, !tbaa !221
  store <4 x i32> %268, ptr %254, align 1, !tbaa !221
  store <4 x i32> %269, ptr %265, align 1, !tbaa !221
  store <4 x i32> %270, ptr %266, align 1, !tbaa !221
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 784
  %274 = shufflevector <16 x i32> %243, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %275 = shufflevector <16 x i32> %243, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %276 = shufflevector <16 x i32> %243, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %277 = shufflevector <16 x i32> %243, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %274, ptr %271, align 1, !tbaa !221
  store <4 x i32> %275, ptr %272, align 1, !tbaa !221
  store <4 x i32> %276, ptr %255, align 1, !tbaa !221
  store <4 x i32> %277, ptr %273, align 1, !tbaa !221
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %281 = shufflevector <16 x i32> %242, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %282 = shufflevector <16 x i32> %242, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %283 = shufflevector <16 x i32> %242, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %284 = shufflevector <16 x i32> %242, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %281, ptr %278, align 1, !tbaa !221
  store <4 x i32> %282, ptr %279, align 1, !tbaa !221
  store <4 x i32> %283, ptr %280, align 1, !tbaa !221
  store <4 x i32> %284, ptr %256, align 1, !tbaa !221
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 880
  %292 = shufflevector <16 x i32> %241, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %293 = shufflevector <16 x i32> %241, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %294 = shufflevector <16 x i32> %241, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %295 = shufflevector <16 x i32> %241, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %292, ptr %285, align 1, !tbaa !221
  store <4 x i32> %293, ptr %289, align 1, !tbaa !221
  store <4 x i32> %294, ptr %290, align 1, !tbaa !221
  store <4 x i32> %295, ptr %291, align 1, !tbaa !221
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 864
  %299 = shufflevector <16 x i32> %240, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %300 = shufflevector <16 x i32> %240, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %301 = shufflevector <16 x i32> %240, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %302 = shufflevector <16 x i32> %240, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %299, ptr %296, align 1, !tbaa !221
  store <4 x i32> %300, ptr %286, align 1, !tbaa !221
  store <4 x i32> %301, ptr %297, align 1, !tbaa !221
  store <4 x i32> %302, ptr %298, align 1, !tbaa !221
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 848
  %306 = shufflevector <16 x i32> %239, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %307 = shufflevector <16 x i32> %239, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %308 = shufflevector <16 x i32> %239, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %309 = shufflevector <16 x i32> %239, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %306, ptr %303, align 1, !tbaa !221
  store <4 x i32> %307, ptr %304, align 1, !tbaa !221
  store <4 x i32> %308, ptr %287, align 1, !tbaa !221
  store <4 x i32> %309, ptr %305, align 1, !tbaa !221
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %311 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %313 = shufflevector <16 x i32> %238, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %314 = shufflevector <16 x i32> %238, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %315 = shufflevector <16 x i32> %238, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %316 = shufflevector <16 x i32> %238, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %313, ptr %310, align 1, !tbaa !221
  store <4 x i32> %314, ptr %311, align 1, !tbaa !221
  store <4 x i32> %315, ptr %312, align 1, !tbaa !221
  store <4 x i32> %316, ptr %288, align 1, !tbaa !221
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 944
  %324 = shufflevector <16 x i32> %246, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %325 = shufflevector <16 x i32> %246, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %326 = shufflevector <16 x i32> %246, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %327 = shufflevector <16 x i32> %246, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %324, ptr %317, align 1, !tbaa !221
  store <4 x i32> %325, ptr %321, align 1, !tbaa !221
  store <4 x i32> %326, ptr %322, align 1, !tbaa !221
  store <4 x i32> %327, ptr %323, align 1, !tbaa !221
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %329 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 928
  %331 = shufflevector <16 x i32> %247, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %332 = shufflevector <16 x i32> %247, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %333 = shufflevector <16 x i32> %247, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %334 = shufflevector <16 x i32> %247, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %331, ptr %328, align 1, !tbaa !221
  store <4 x i32> %332, ptr %318, align 1, !tbaa !221
  store <4 x i32> %333, ptr %329, align 1, !tbaa !221
  store <4 x i32> %334, ptr %330, align 1, !tbaa !221
  %335 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 912
  %338 = shufflevector <16 x i32> %248, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %339 = shufflevector <16 x i32> %248, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %340 = shufflevector <16 x i32> %248, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %341 = shufflevector <16 x i32> %248, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %338, ptr %335, align 1, !tbaa !221
  store <4 x i32> %339, ptr %336, align 1, !tbaa !221
  store <4 x i32> %340, ptr %319, align 1, !tbaa !221
  store <4 x i32> %341, ptr %337, align 1, !tbaa !221
  %342 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 656
  %345 = shufflevector <16 x i32> %249, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %346 = shufflevector <16 x i32> %249, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %347 = shufflevector <16 x i32> %249, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %348 = shufflevector <16 x i32> %249, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %345, ptr %342, align 1, !tbaa !221
  store <4 x i32> %346, ptr %343, align 1, !tbaa !221
  store <4 x i32> %347, ptr %344, align 1, !tbaa !221
  store <4 x i32> %348, ptr %320, align 1, !tbaa !221
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %356 = shufflevector <16 x i32> %250, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %357 = shufflevector <16 x i32> %250, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %358 = shufflevector <16 x i32> %250, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %359 = shufflevector <16 x i32> %250, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %356, ptr %349, align 1, !tbaa !221
  store <4 x i32> %357, ptr %353, align 1, !tbaa !221
  store <4 x i32> %358, ptr %354, align 1, !tbaa !221
  store <4 x i32> %359, ptr %355, align 1, !tbaa !221
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 752
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %363 = shufflevector <16 x i32> %251, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %364 = shufflevector <16 x i32> %251, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %365 = shufflevector <16 x i32> %251, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %366 = shufflevector <16 x i32> %251, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %363, ptr %360, align 1, !tbaa !221
  store <4 x i32> %364, ptr %350, align 1, !tbaa !221
  store <4 x i32> %365, ptr %361, align 1, !tbaa !221
  store <4 x i32> %366, ptr %362, align 1, !tbaa !221
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %370 = shufflevector <16 x i32> %252, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %371 = shufflevector <16 x i32> %252, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %372 = shufflevector <16 x i32> %252, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %373 = shufflevector <16 x i32> %252, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %370, ptr %367, align 1, !tbaa !221
  store <4 x i32> %371, ptr %368, align 1, !tbaa !221
  store <4 x i32> %372, ptr %351, align 1, !tbaa !221
  store <4 x i32> %373, ptr %369, align 1, !tbaa !221
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %377 = shufflevector <16 x i32> %253, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %378 = shufflevector <16 x i32> %253, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %379 = shufflevector <16 x i32> %253, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %380 = shufflevector <16 x i32> %253, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %377, ptr %374, align 1, !tbaa !221
  store <4 x i32> %378, ptr %375, align 1, !tbaa !221
  store <4 x i32> %379, ptr %376, align 1, !tbaa !221
  store <4 x i32> %380, ptr %352, align 1, !tbaa !221
  ret void

381:                                              ; preds = %217, %381
  %382 = phi <16 x i32> [ %426, %381 ], [ %218, %217 ]
  %383 = phi <16 x i32> [ %425, %381 ], [ %219, %217 ]
  %384 = phi <16 x i32> [ %424, %381 ], [ %220, %217 ]
  %385 = phi <16 x i32> [ %423, %381 ], [ %221, %217 ]
  %386 = phi <16 x i32> [ %421, %381 ], [ %222, %217 ]
  %387 = phi <16 x i32> [ %419, %381 ], [ %223, %217 ]
  %388 = phi <16 x i32> [ %417, %381 ], [ %224, %217 ]
  %389 = phi <16 x i32> [ %415, %381 ], [ %225, %217 ]
  %390 = phi <16 x i32> [ %428, %381 ], [ %226, %217 ]
  %391 = phi <16 x i32> [ %429, %381 ], [ %227, %217 ]
  %392 = phi <16 x i32> [ %430, %381 ], [ %228, %217 ]
  %393 = phi <16 x i32> [ %431, %381 ], [ %229, %217 ]
  %394 = phi <16 x i32> [ %433, %381 ], [ %230, %217 ]
  %395 = phi <16 x i32> [ %434, %381 ], [ %231, %217 ]
  %396 = phi <16 x i32> [ %435, %381 ], [ %232, %217 ]
  %397 = phi <16 x i32> [ %436, %381 ], [ %233, %217 ]
  %398 = phi i64 [ %439, %381 ], [ 0, %217 ]
  %399 = phi ptr [ %438, %381 ], [ %1, %217 ]
  %400 = phi ptr [ %437, %381 ], [ %2, %217 ]
  %401 = load <32 x i8>, ptr %400, align 1, !tbaa !221
  %402 = sext <32 x i8> %401 to <32 x i16>
  %403 = bitcast <32 x i16> %402 to <16 x i32>
  %404 = shufflevector <16 x i32> %403, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %405 = shufflevector <16 x i32> %403, <16 x i32> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %406 = shufflevector <16 x i32> %403, <16 x i32> poison, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %407 = load <32 x i8>, ptr %399, align 1, !tbaa !221
  %408 = sext <32 x i8> %407 to <32 x i16>
  %409 = bitcast <32 x i16> %408 to <16 x i32>
  %410 = shufflevector <16 x i32> %409, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %411 = shufflevector <16 x i32> %409, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %412 = shufflevector <16 x i32> %409, <16 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %413 = shufflevector <16 x i32> %409, <16 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %414 = bitcast <16 x i32> %410 to <32 x i16>
  %415 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %389, <32 x i16> %414, <32 x i16> %402)
  %416 = bitcast <16 x i32> %404 to <32 x i16>
  %417 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %388, <32 x i16> %414, <32 x i16> %416)
  %418 = bitcast <16 x i32> %405 to <32 x i16>
  %419 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %387, <32 x i16> %414, <32 x i16> %418)
  %420 = bitcast <16 x i32> %406 to <32 x i16>
  %421 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %386, <32 x i16> %414, <32 x i16> %420)
  %422 = bitcast <16 x i32> %411 to <32 x i16>
  %423 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %385, <32 x i16> %422, <32 x i16> %402)
  %424 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %384, <32 x i16> %422, <32 x i16> %416)
  %425 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %383, <32 x i16> %422, <32 x i16> %418)
  %426 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %382, <32 x i16> %422, <32 x i16> %420)
  %427 = bitcast <16 x i32> %412 to <32 x i16>
  %428 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %390, <32 x i16> %427, <32 x i16> %402)
  %429 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %391, <32 x i16> %427, <32 x i16> %416)
  %430 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %392, <32 x i16> %427, <32 x i16> %418)
  %431 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %393, <32 x i16> %427, <32 x i16> %420)
  %432 = bitcast <16 x i32> %413 to <32 x i16>
  %433 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %394, <32 x i16> %432, <32 x i16> %402)
  %434 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %395, <32 x i16> %432, <32 x i16> %416)
  %435 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %396, <32 x i16> %432, <32 x i16> %418)
  %436 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %397, <32 x i16> %432, <32 x i16> %420)
  %437 = getelementptr inbounds nuw i8, ptr %400, i64 32
  %438 = getelementptr inbounds nuw i8, ptr %399, i64 32
  %439 = add nuw nsw i64 %398, 1
  %440 = icmp eq i64 %439, %235
  br i1 %440, label %237, label %381, !llvm.loop !871
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_1x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !875
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !878
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !875
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %11
  %17 = bitcast <8 x i64> %12 to <16 x i32>
  %18 = and i64 %14, 3
  %19 = icmp ult i64 %14, 4
  br i1 %19, label %67, label %20

20:                                               ; preds = %16
  %21 = and i64 %14, 9223372036854775804
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <16 x i32> [ %17, %20 ], [ %61, %22 ]
  %24 = phi ptr [ %1, %20 ], [ %62, %22 ]
  %25 = phi ptr [ %2, %20 ], [ %55, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %63, %22 ]
  %27 = load <32 x i16>, ptr %25, align 1, !tbaa !221, !noalias !872
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %29 = load i32, ptr %24, align 4, !tbaa !15, !alias.scope !872, !noalias !879
  %30 = insertelement <16 x i32> poison, i32 %29, i64 0
  %31 = shufflevector <16 x i32> %30, <16 x i32> poison, <16 x i32> zeroinitializer
  %32 = bitcast <16 x i32> %31 to <32 x i16>
  %33 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %32, <32 x i16> %27)
  %34 = add <16 x i32> %33, %23
  %35 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %36 = load <32 x i16>, ptr %28, align 1, !tbaa !221, !noalias !872
  %37 = getelementptr inbounds nuw i8, ptr %25, i64 128
  %38 = load i32, ptr %35, align 4, !tbaa !15, !alias.scope !872, !noalias !879
  %39 = insertelement <16 x i32> poison, i32 %38, i64 0
  %40 = shufflevector <16 x i32> %39, <16 x i32> poison, <16 x i32> zeroinitializer
  %41 = bitcast <16 x i32> %40 to <32 x i16>
  %42 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %41, <32 x i16> %36)
  %43 = add <16 x i32> %42, %34
  %44 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %45 = load <32 x i16>, ptr %37, align 1, !tbaa !221, !noalias !872
  %46 = getelementptr inbounds nuw i8, ptr %25, i64 192
  %47 = load i32, ptr %44, align 4, !tbaa !15, !alias.scope !872, !noalias !879
  %48 = insertelement <16 x i32> poison, i32 %47, i64 0
  %49 = shufflevector <16 x i32> %48, <16 x i32> poison, <16 x i32> zeroinitializer
  %50 = bitcast <16 x i32> %49 to <32 x i16>
  %51 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %50, <32 x i16> %45)
  %52 = add <16 x i32> %51, %43
  %53 = getelementptr inbounds nuw i8, ptr %24, i64 12
  %54 = load <32 x i16>, ptr %46, align 1, !tbaa !221, !noalias !872
  %55 = getelementptr inbounds nuw i8, ptr %25, i64 256
  %56 = load i32, ptr %53, align 4, !tbaa !15, !alias.scope !872, !noalias !879
  %57 = insertelement <16 x i32> poison, i32 %56, i64 0
  %58 = shufflevector <16 x i32> %57, <16 x i32> poison, <16 x i32> zeroinitializer
  %59 = bitcast <16 x i32> %58 to <32 x i16>
  %60 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %59, <32 x i16> %54)
  %61 = add <16 x i32> %60, %52
  %62 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %63 = add i64 %26, 4
  %64 = icmp eq i64 %63, %21
  br i1 %64, label %65, label %22, !llvm.loop !880

65:                                               ; preds = %22
  %66 = icmp eq i64 %18, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %65, %16
  %68 = phi <16 x i32> [ %17, %16 ], [ %61, %65 ]
  %69 = phi ptr [ %1, %16 ], [ %62, %65 ]
  %70 = phi ptr [ %2, %16 ], [ %55, %65 ]
  %71 = icmp ne i64 %18, 0
  tail call void @llvm.assume(i1 %71)
  br label %72

72:                                               ; preds = %72, %67
  %73 = phi <16 x i32> [ %68, %67 ], [ %84, %72 ]
  %74 = phi ptr [ %69, %67 ], [ %85, %72 ]
  %75 = phi ptr [ %70, %67 ], [ %78, %72 ]
  %76 = phi i64 [ 0, %67 ], [ %86, %72 ]
  %77 = load <32 x i16>, ptr %75, align 1, !tbaa !221, !noalias !872
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 64
  %79 = load i32, ptr %74, align 4, !tbaa !15, !alias.scope !872, !noalias !879
  %80 = insertelement <16 x i32> poison, i32 %79, i64 0
  %81 = shufflevector <16 x i32> %80, <16 x i32> poison, <16 x i32> zeroinitializer
  %82 = bitcast <16 x i32> %81 to <32 x i16>
  %83 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %82, <32 x i16> %77)
  %84 = add <16 x i32> %83, %73
  %85 = getelementptr inbounds nuw i8, ptr %74, i64 4
  %86 = add i64 %76, 1
  %87 = icmp eq i64 %86, %18
  br i1 %87, label %88, label %72, !llvm.loop !881

88:                                               ; preds = %72, %65
  %89 = phi <16 x i32> [ %61, %65 ], [ %84, %72 ]
  %90 = bitcast <16 x i32> %89 to <8 x i64>
  br label %91

91:                                               ; preds = %88, %11
  %92 = phi <8 x i64> [ %90, %88 ], [ %12, %11 ]
  store <8 x i64> %92, ptr %0, align 1, !tbaa !221, !noalias !872
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_2x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !885
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !888
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !888
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !885
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = bitcast <8 x i64> %15 to <16 x i32>
  %21 = bitcast <8 x i64> %14 to <16 x i32>
  %22 = and i64 %17, 1
  %23 = icmp eq i64 %17, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = and i64 %17, 9223372036854775806
  br label %57

26:                                               ; preds = %57
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %26, %19
  %29 = phi <16 x i32> [ %21, %19 ], [ %92, %26 ]
  %30 = phi <16 x i32> [ %20, %19 ], [ %85, %26 ]
  %31 = phi ptr [ %1, %19 ], [ %93, %26 ]
  %32 = phi ptr [ %2, %19 ], [ %94, %26 ]
  %33 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <32 x i16>, ptr %32, align 1, !tbaa !221, !noalias !882
  %35 = load i32, ptr %31, align 4, !tbaa !15, !alias.scope !882, !noalias !889
  %36 = insertelement <16 x i32> poison, i32 %35, i64 0
  %37 = shufflevector <16 x i32> %36, <16 x i32> poison, <16 x i32> zeroinitializer
  %38 = bitcast <16 x i32> %37 to <32 x i16>
  %39 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %38, <32 x i16> %34)
  %40 = add <16 x i32> %39, %30
  %41 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !15, !alias.scope !882, !noalias !889
  %43 = insertelement <16 x i32> poison, i32 %42, i64 0
  %44 = shufflevector <16 x i32> %43, <16 x i32> poison, <16 x i32> zeroinitializer
  %45 = bitcast <16 x i32> %44 to <32 x i16>
  %46 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %45, <32 x i16> %34)
  %47 = add <16 x i32> %46, %29
  br label %48

48:                                               ; preds = %26, %28
  %49 = phi <16 x i32> [ %85, %26 ], [ %40, %28 ]
  %50 = phi <16 x i32> [ %92, %26 ], [ %47, %28 ]
  %51 = bitcast <16 x i32> %50 to <8 x i64>
  %52 = bitcast <16 x i32> %49 to <8 x i64>
  br label %53

53:                                               ; preds = %48, %13
  %54 = phi <8 x i64> [ %51, %48 ], [ %14, %13 ]
  %55 = phi <8 x i64> [ %52, %48 ], [ %15, %13 ]
  store <8 x i64> %55, ptr %0, align 1, !tbaa !221, !noalias !882
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %54, ptr %56, align 1, !tbaa !221, !noalias !882
  ret void

57:                                               ; preds = %57, %24
  %58 = phi <16 x i32> [ %21, %24 ], [ %92, %57 ]
  %59 = phi <16 x i32> [ %20, %24 ], [ %85, %57 ]
  %60 = phi ptr [ %1, %24 ], [ %93, %57 ]
  %61 = phi ptr [ %2, %24 ], [ %94, %57 ]
  %62 = phi i64 [ 0, %24 ], [ %95, %57 ]
  %63 = load <32 x i16>, ptr %61, align 1, !tbaa !221, !noalias !882
  %64 = load i32, ptr %60, align 4, !tbaa !15, !alias.scope !882, !noalias !889
  %65 = insertelement <16 x i32> poison, i32 %64, i64 0
  %66 = shufflevector <16 x i32> %65, <16 x i32> poison, <16 x i32> zeroinitializer
  %67 = bitcast <16 x i32> %66 to <32 x i16>
  %68 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %67, <32 x i16> %63)
  %69 = add <16 x i32> %68, %59
  %70 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %71 = load i32, ptr %70, align 4, !tbaa !15, !alias.scope !882, !noalias !889
  %72 = insertelement <16 x i32> poison, i32 %71, i64 0
  %73 = shufflevector <16 x i32> %72, <16 x i32> poison, <16 x i32> zeroinitializer
  %74 = bitcast <16 x i32> %73 to <32 x i16>
  %75 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %74, <32 x i16> %63)
  %76 = add <16 x i32> %75, %58
  %77 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %78 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %79 = load <32 x i16>, ptr %78, align 1, !tbaa !221, !noalias !882
  %80 = load i32, ptr %77, align 4, !tbaa !15, !alias.scope !882, !noalias !889
  %81 = insertelement <16 x i32> poison, i32 %80, i64 0
  %82 = shufflevector <16 x i32> %81, <16 x i32> poison, <16 x i32> zeroinitializer
  %83 = bitcast <16 x i32> %82 to <32 x i16>
  %84 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %83, <32 x i16> %79)
  %85 = add <16 x i32> %84, %69
  %86 = getelementptr inbounds nuw i8, ptr %60, i64 12
  %87 = load i32, ptr %86, align 4, !tbaa !15, !alias.scope !882, !noalias !889
  %88 = insertelement <16 x i32> poison, i32 %87, i64 0
  %89 = shufflevector <16 x i32> %88, <16 x i32> poison, <16 x i32> zeroinitializer
  %90 = bitcast <16 x i32> %89 to <32 x i16>
  %91 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %90, <32 x i16> %79)
  %92 = add <16 x i32> %91, %76
  %93 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %94 = getelementptr inbounds nuw i8, ptr %61, i64 128
  %95 = add i64 %62, 2
  %96 = icmp eq i64 %95, %25
  br i1 %96, label %26, label %57, !llvm.loop !880
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_4x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !893
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !896
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !896
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !896
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !896
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !893
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = bitcast <8 x i64> %21 to <16 x i32>
  %27 = bitcast <8 x i64> %20 to <16 x i32>
  %28 = bitcast <8 x i64> %19 to <16 x i32>
  %29 = bitcast <8 x i64> %18 to <16 x i32>
  br label %43

30:                                               ; preds = %43
  %31 = bitcast <16 x i32> %78 to <8 x i64>
  %32 = bitcast <16 x i32> %71 to <8 x i64>
  %33 = bitcast <16 x i32> %64 to <8 x i64>
  %34 = bitcast <16 x i32> %57 to <8 x i64>
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi <8 x i64> [ %31, %30 ], [ %18, %17 ]
  %37 = phi <8 x i64> [ %32, %30 ], [ %19, %17 ]
  %38 = phi <8 x i64> [ %33, %30 ], [ %20, %17 ]
  %39 = phi <8 x i64> [ %34, %30 ], [ %21, %17 ]
  store <8 x i64> %39, ptr %0, align 1, !tbaa !221, !noalias !890
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %38, ptr %40, align 1, !tbaa !221, !noalias !890
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %37, ptr %41, align 1, !tbaa !221, !noalias !890
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %36, ptr %42, align 1, !tbaa !221, !noalias !890
  ret void

43:                                               ; preds = %25, %43
  %44 = phi <16 x i32> [ %29, %25 ], [ %78, %43 ]
  %45 = phi <16 x i32> [ %28, %25 ], [ %71, %43 ]
  %46 = phi <16 x i32> [ %27, %25 ], [ %64, %43 ]
  %47 = phi <16 x i32> [ %26, %25 ], [ %57, %43 ]
  %48 = phi i64 [ 0, %25 ], [ %81, %43 ]
  %49 = phi ptr [ %1, %25 ], [ %79, %43 ]
  %50 = phi ptr [ %2, %25 ], [ %80, %43 ]
  %51 = load <32 x i16>, ptr %50, align 1, !tbaa !221, !noalias !890
  %52 = load i32, ptr %49, align 4, !tbaa !15, !alias.scope !890, !noalias !897
  %53 = insertelement <16 x i32> poison, i32 %52, i64 0
  %54 = shufflevector <16 x i32> %53, <16 x i32> poison, <16 x i32> zeroinitializer
  %55 = bitcast <16 x i32> %54 to <32 x i16>
  %56 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %55, <32 x i16> %51)
  %57 = add <16 x i32> %56, %47
  %58 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !15, !alias.scope !890, !noalias !897
  %60 = insertelement <16 x i32> poison, i32 %59, i64 0
  %61 = shufflevector <16 x i32> %60, <16 x i32> poison, <16 x i32> zeroinitializer
  %62 = bitcast <16 x i32> %61 to <32 x i16>
  %63 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %62, <32 x i16> %51)
  %64 = add <16 x i32> %63, %46
  %65 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %66 = load i32, ptr %65, align 4, !tbaa !15, !alias.scope !890, !noalias !897
  %67 = insertelement <16 x i32> poison, i32 %66, i64 0
  %68 = shufflevector <16 x i32> %67, <16 x i32> poison, <16 x i32> zeroinitializer
  %69 = bitcast <16 x i32> %68 to <32 x i16>
  %70 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %69, <32 x i16> %51)
  %71 = add <16 x i32> %70, %45
  %72 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %73 = load i32, ptr %72, align 4, !tbaa !15, !alias.scope !890, !noalias !897
  %74 = insertelement <16 x i32> poison, i32 %73, i64 0
  %75 = shufflevector <16 x i32> %74, <16 x i32> poison, <16 x i32> zeroinitializer
  %76 = bitcast <16 x i32> %75 to <32 x i16>
  %77 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %76, <32 x i16> %51)
  %78 = add <16 x i32> %77, %44
  %79 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %80 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %81 = add nuw nsw i64 %48, 1
  %82 = icmp eq i64 %81, %23
  br i1 %82, label %30, label %43, !llvm.loop !880
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_8x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !901
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !904
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !904
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !904
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !904
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <8 x i64>, ptr %17, align 1, !tbaa !221, !noalias !904
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <8 x i64>, ptr %19, align 1, !tbaa !221, !noalias !904
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <8 x i64>, ptr %21, align 1, !tbaa !221, !noalias !904
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <8 x i64>, ptr %23, align 1, !tbaa !221, !noalias !904
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <8 x i64> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <8 x i64> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <8 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <8 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !901
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = bitcast <8 x i64> %33 to <16 x i32>
  %39 = bitcast <8 x i64> %32 to <16 x i32>
  %40 = bitcast <8 x i64> %31 to <16 x i32>
  %41 = bitcast <8 x i64> %30 to <16 x i32>
  %42 = bitcast <8 x i64> %29 to <16 x i32>
  %43 = bitcast <8 x i64> %28 to <16 x i32>
  %44 = bitcast <8 x i64> %27 to <16 x i32>
  %45 = bitcast <8 x i64> %26 to <16 x i32>
  br label %71

46:                                               ; preds = %71
  %47 = bitcast <16 x i32> %138 to <8 x i64>
  %48 = bitcast <16 x i32> %131 to <8 x i64>
  %49 = bitcast <16 x i32> %124 to <8 x i64>
  %50 = bitcast <16 x i32> %117 to <8 x i64>
  %51 = bitcast <16 x i32> %110 to <8 x i64>
  %52 = bitcast <16 x i32> %103 to <8 x i64>
  %53 = bitcast <16 x i32> %96 to <8 x i64>
  %54 = bitcast <16 x i32> %89 to <8 x i64>
  br label %55

55:                                               ; preds = %46, %25
  %56 = phi <8 x i64> [ %47, %46 ], [ %26, %25 ]
  %57 = phi <8 x i64> [ %48, %46 ], [ %27, %25 ]
  %58 = phi <8 x i64> [ %49, %46 ], [ %28, %25 ]
  %59 = phi <8 x i64> [ %50, %46 ], [ %29, %25 ]
  %60 = phi <8 x i64> [ %51, %46 ], [ %30, %25 ]
  %61 = phi <8 x i64> [ %52, %46 ], [ %31, %25 ]
  %62 = phi <8 x i64> [ %53, %46 ], [ %32, %25 ]
  %63 = phi <8 x i64> [ %54, %46 ], [ %33, %25 ]
  store <8 x i64> %63, ptr %0, align 1, !tbaa !221, !noalias !898
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %62, ptr %64, align 1, !tbaa !221, !noalias !898
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %61, ptr %65, align 1, !tbaa !221, !noalias !898
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %60, ptr %66, align 1, !tbaa !221, !noalias !898
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <8 x i64> %59, ptr %67, align 1, !tbaa !221, !noalias !898
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <8 x i64> %58, ptr %68, align 1, !tbaa !221, !noalias !898
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <8 x i64> %57, ptr %69, align 1, !tbaa !221, !noalias !898
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <8 x i64> %56, ptr %70, align 1, !tbaa !221, !noalias !898
  ret void

71:                                               ; preds = %37, %71
  %72 = phi <16 x i32> [ %45, %37 ], [ %138, %71 ]
  %73 = phi <16 x i32> [ %44, %37 ], [ %131, %71 ]
  %74 = phi <16 x i32> [ %43, %37 ], [ %124, %71 ]
  %75 = phi <16 x i32> [ %42, %37 ], [ %117, %71 ]
  %76 = phi <16 x i32> [ %41, %37 ], [ %110, %71 ]
  %77 = phi <16 x i32> [ %40, %37 ], [ %103, %71 ]
  %78 = phi <16 x i32> [ %39, %37 ], [ %96, %71 ]
  %79 = phi <16 x i32> [ %38, %37 ], [ %89, %71 ]
  %80 = phi i64 [ 0, %37 ], [ %141, %71 ]
  %81 = phi ptr [ %1, %37 ], [ %139, %71 ]
  %82 = phi ptr [ %2, %37 ], [ %140, %71 ]
  %83 = load <32 x i16>, ptr %82, align 1, !tbaa !221, !noalias !898
  %84 = load i32, ptr %81, align 4, !tbaa !15, !alias.scope !898, !noalias !905
  %85 = insertelement <16 x i32> poison, i32 %84, i64 0
  %86 = shufflevector <16 x i32> %85, <16 x i32> poison, <16 x i32> zeroinitializer
  %87 = bitcast <16 x i32> %86 to <32 x i16>
  %88 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %87, <32 x i16> %83)
  %89 = add <16 x i32> %88, %79
  %90 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %91 = load i32, ptr %90, align 4, !tbaa !15, !alias.scope !898, !noalias !905
  %92 = insertelement <16 x i32> poison, i32 %91, i64 0
  %93 = shufflevector <16 x i32> %92, <16 x i32> poison, <16 x i32> zeroinitializer
  %94 = bitcast <16 x i32> %93 to <32 x i16>
  %95 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %94, <32 x i16> %83)
  %96 = add <16 x i32> %95, %78
  %97 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %98 = load i32, ptr %97, align 4, !tbaa !15, !alias.scope !898, !noalias !905
  %99 = insertelement <16 x i32> poison, i32 %98, i64 0
  %100 = shufflevector <16 x i32> %99, <16 x i32> poison, <16 x i32> zeroinitializer
  %101 = bitcast <16 x i32> %100 to <32 x i16>
  %102 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %101, <32 x i16> %83)
  %103 = add <16 x i32> %102, %77
  %104 = getelementptr inbounds nuw i8, ptr %81, i64 12
  %105 = load i32, ptr %104, align 4, !tbaa !15, !alias.scope !898, !noalias !905
  %106 = insertelement <16 x i32> poison, i32 %105, i64 0
  %107 = shufflevector <16 x i32> %106, <16 x i32> poison, <16 x i32> zeroinitializer
  %108 = bitcast <16 x i32> %107 to <32 x i16>
  %109 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %108, <32 x i16> %83)
  %110 = add <16 x i32> %109, %76
  %111 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %112 = load i32, ptr %111, align 4, !tbaa !15, !alias.scope !898, !noalias !905
  %113 = insertelement <16 x i32> poison, i32 %112, i64 0
  %114 = shufflevector <16 x i32> %113, <16 x i32> poison, <16 x i32> zeroinitializer
  %115 = bitcast <16 x i32> %114 to <32 x i16>
  %116 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %115, <32 x i16> %83)
  %117 = add <16 x i32> %116, %75
  %118 = getelementptr inbounds nuw i8, ptr %81, i64 20
  %119 = load i32, ptr %118, align 4, !tbaa !15, !alias.scope !898, !noalias !905
  %120 = insertelement <16 x i32> poison, i32 %119, i64 0
  %121 = shufflevector <16 x i32> %120, <16 x i32> poison, <16 x i32> zeroinitializer
  %122 = bitcast <16 x i32> %121 to <32 x i16>
  %123 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %122, <32 x i16> %83)
  %124 = add <16 x i32> %123, %74
  %125 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %126 = load i32, ptr %125, align 4, !tbaa !15, !alias.scope !898, !noalias !905
  %127 = insertelement <16 x i32> poison, i32 %126, i64 0
  %128 = shufflevector <16 x i32> %127, <16 x i32> poison, <16 x i32> zeroinitializer
  %129 = bitcast <16 x i32> %128 to <32 x i16>
  %130 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %129, <32 x i16> %83)
  %131 = add <16 x i32> %130, %73
  %132 = getelementptr inbounds nuw i8, ptr %81, i64 28
  %133 = load i32, ptr %132, align 4, !tbaa !15, !alias.scope !898, !noalias !905
  %134 = insertelement <16 x i32> poison, i32 %133, i64 0
  %135 = shufflevector <16 x i32> %134, <16 x i32> poison, <16 x i32> zeroinitializer
  %136 = bitcast <16 x i32> %135 to <32 x i16>
  %137 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %136, <32 x i16> %83)
  %138 = add <16 x i32> %137, %72
  %139 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %140 = getelementptr inbounds nuw i8, ptr %82, i64 64
  %141 = add nuw nsw i64 %80, 1
  %142 = icmp eq i64 %141, %35
  br i1 %142, label %46, label %71, !llvm.loop !880
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_16x16x2_x86_64_avx512_base(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !909
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !912
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !912
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !912
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !912
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <8 x i64>, ptr %17, align 1, !tbaa !221, !noalias !912
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <8 x i64>, ptr %19, align 1, !tbaa !221, !noalias !912
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <8 x i64>, ptr %21, align 1, !tbaa !221, !noalias !912
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <8 x i64>, ptr %23, align 1, !tbaa !221, !noalias !912
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %26 = load <8 x i64>, ptr %25, align 1, !tbaa !221, !noalias !912
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %28 = load <8 x i64>, ptr %27, align 1, !tbaa !221, !noalias !912
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %30 = load <8 x i64>, ptr %29, align 1, !tbaa !221, !noalias !912
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %32 = load <8 x i64>, ptr %31, align 1, !tbaa !221, !noalias !912
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %34 = load <8 x i64>, ptr %33, align 1, !tbaa !221, !noalias !912
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %36 = load <8 x i64>, ptr %35, align 1, !tbaa !221, !noalias !912
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %38 = load <8 x i64>, ptr %37, align 1, !tbaa !221, !noalias !912
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %40 = load <8 x i64>, ptr %39, align 1, !tbaa !221, !noalias !912
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <8 x i64> [ %40, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <8 x i64> [ %38, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <8 x i64> [ %36, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <8 x i64> [ %34, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <8 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <8 x i64> [ %30, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <8 x i64> [ %28, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <8 x i64> [ %26, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <8 x i64> [ %24, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <8 x i64> [ %22, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <8 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <8 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !168, !noalias !909
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %41
  %62 = bitcast <8 x i64> %57 to <16 x i32>
  %63 = bitcast <8 x i64> %56 to <16 x i32>
  %64 = bitcast <8 x i64> %55 to <16 x i32>
  %65 = bitcast <8 x i64> %54 to <16 x i32>
  %66 = bitcast <8 x i64> %53 to <16 x i32>
  %67 = bitcast <8 x i64> %52 to <16 x i32>
  %68 = bitcast <8 x i64> %51 to <16 x i32>
  %69 = bitcast <8 x i64> %50 to <16 x i32>
  %70 = bitcast <8 x i64> %49 to <16 x i32>
  %71 = bitcast <8 x i64> %48 to <16 x i32>
  %72 = bitcast <8 x i64> %47 to <16 x i32>
  %73 = bitcast <8 x i64> %46 to <16 x i32>
  %74 = bitcast <8 x i64> %45 to <16 x i32>
  %75 = bitcast <8 x i64> %44 to <16 x i32>
  %76 = bitcast <8 x i64> %43 to <16 x i32>
  %77 = bitcast <8 x i64> %42 to <16 x i32>
  br label %127

78:                                               ; preds = %127
  %79 = bitcast <16 x i32> %258 to <8 x i64>
  %80 = bitcast <16 x i32> %251 to <8 x i64>
  %81 = bitcast <16 x i32> %244 to <8 x i64>
  %82 = bitcast <16 x i32> %237 to <8 x i64>
  %83 = bitcast <16 x i32> %230 to <8 x i64>
  %84 = bitcast <16 x i32> %223 to <8 x i64>
  %85 = bitcast <16 x i32> %216 to <8 x i64>
  %86 = bitcast <16 x i32> %209 to <8 x i64>
  %87 = bitcast <16 x i32> %202 to <8 x i64>
  %88 = bitcast <16 x i32> %195 to <8 x i64>
  %89 = bitcast <16 x i32> %188 to <8 x i64>
  %90 = bitcast <16 x i32> %181 to <8 x i64>
  %91 = bitcast <16 x i32> %174 to <8 x i64>
  %92 = bitcast <16 x i32> %167 to <8 x i64>
  %93 = bitcast <16 x i32> %160 to <8 x i64>
  %94 = bitcast <16 x i32> %153 to <8 x i64>
  br label %95

95:                                               ; preds = %78, %41
  %96 = phi <8 x i64> [ %79, %78 ], [ %42, %41 ]
  %97 = phi <8 x i64> [ %80, %78 ], [ %43, %41 ]
  %98 = phi <8 x i64> [ %81, %78 ], [ %44, %41 ]
  %99 = phi <8 x i64> [ %82, %78 ], [ %45, %41 ]
  %100 = phi <8 x i64> [ %83, %78 ], [ %46, %41 ]
  %101 = phi <8 x i64> [ %84, %78 ], [ %47, %41 ]
  %102 = phi <8 x i64> [ %85, %78 ], [ %48, %41 ]
  %103 = phi <8 x i64> [ %86, %78 ], [ %49, %41 ]
  %104 = phi <8 x i64> [ %87, %78 ], [ %50, %41 ]
  %105 = phi <8 x i64> [ %88, %78 ], [ %51, %41 ]
  %106 = phi <8 x i64> [ %89, %78 ], [ %52, %41 ]
  %107 = phi <8 x i64> [ %90, %78 ], [ %53, %41 ]
  %108 = phi <8 x i64> [ %91, %78 ], [ %54, %41 ]
  %109 = phi <8 x i64> [ %92, %78 ], [ %55, %41 ]
  %110 = phi <8 x i64> [ %93, %78 ], [ %56, %41 ]
  %111 = phi <8 x i64> [ %94, %78 ], [ %57, %41 ]
  store <8 x i64> %111, ptr %0, align 1, !tbaa !221, !noalias !906
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %110, ptr %112, align 1, !tbaa !221, !noalias !906
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %109, ptr %113, align 1, !tbaa !221, !noalias !906
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %108, ptr %114, align 1, !tbaa !221, !noalias !906
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <8 x i64> %107, ptr %115, align 1, !tbaa !221, !noalias !906
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <8 x i64> %106, ptr %116, align 1, !tbaa !221, !noalias !906
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <8 x i64> %105, ptr %117, align 1, !tbaa !221, !noalias !906
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <8 x i64> %104, ptr %118, align 1, !tbaa !221, !noalias !906
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <8 x i64> %103, ptr %119, align 1, !tbaa !221, !noalias !906
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 576
  store <8 x i64> %102, ptr %120, align 1, !tbaa !221, !noalias !906
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <8 x i64> %101, ptr %121, align 1, !tbaa !221, !noalias !906
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <8 x i64> %100, ptr %122, align 1, !tbaa !221, !noalias !906
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <8 x i64> %99, ptr %123, align 1, !tbaa !221, !noalias !906
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <8 x i64> %98, ptr %124, align 1, !tbaa !221, !noalias !906
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <8 x i64> %97, ptr %125, align 1, !tbaa !221, !noalias !906
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <8 x i64> %96, ptr %126, align 1, !tbaa !221, !noalias !906
  ret void

127:                                              ; preds = %61, %127
  %128 = phi <16 x i32> [ %77, %61 ], [ %258, %127 ]
  %129 = phi <16 x i32> [ %76, %61 ], [ %251, %127 ]
  %130 = phi <16 x i32> [ %75, %61 ], [ %244, %127 ]
  %131 = phi <16 x i32> [ %74, %61 ], [ %237, %127 ]
  %132 = phi <16 x i32> [ %73, %61 ], [ %230, %127 ]
  %133 = phi <16 x i32> [ %72, %61 ], [ %223, %127 ]
  %134 = phi <16 x i32> [ %71, %61 ], [ %216, %127 ]
  %135 = phi <16 x i32> [ %70, %61 ], [ %209, %127 ]
  %136 = phi <16 x i32> [ %69, %61 ], [ %202, %127 ]
  %137 = phi <16 x i32> [ %68, %61 ], [ %195, %127 ]
  %138 = phi <16 x i32> [ %67, %61 ], [ %188, %127 ]
  %139 = phi <16 x i32> [ %66, %61 ], [ %181, %127 ]
  %140 = phi <16 x i32> [ %65, %61 ], [ %174, %127 ]
  %141 = phi <16 x i32> [ %64, %61 ], [ %167, %127 ]
  %142 = phi <16 x i32> [ %63, %61 ], [ %160, %127 ]
  %143 = phi <16 x i32> [ %62, %61 ], [ %153, %127 ]
  %144 = phi i64 [ 0, %61 ], [ %261, %127 ]
  %145 = phi ptr [ %1, %61 ], [ %259, %127 ]
  %146 = phi ptr [ %2, %61 ], [ %260, %127 ]
  %147 = load <32 x i16>, ptr %146, align 1, !tbaa !221, !noalias !906
  %148 = load i32, ptr %145, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %149 = insertelement <16 x i32> poison, i32 %148, i64 0
  %150 = shufflevector <16 x i32> %149, <16 x i32> poison, <16 x i32> zeroinitializer
  %151 = bitcast <16 x i32> %150 to <32 x i16>
  %152 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %151, <32 x i16> %147)
  %153 = add <16 x i32> %152, %143
  %154 = getelementptr inbounds nuw i8, ptr %145, i64 4
  %155 = load i32, ptr %154, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %156 = insertelement <16 x i32> poison, i32 %155, i64 0
  %157 = shufflevector <16 x i32> %156, <16 x i32> poison, <16 x i32> zeroinitializer
  %158 = bitcast <16 x i32> %157 to <32 x i16>
  %159 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %158, <32 x i16> %147)
  %160 = add <16 x i32> %159, %142
  %161 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %162 = load i32, ptr %161, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %163 = insertelement <16 x i32> poison, i32 %162, i64 0
  %164 = shufflevector <16 x i32> %163, <16 x i32> poison, <16 x i32> zeroinitializer
  %165 = bitcast <16 x i32> %164 to <32 x i16>
  %166 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %165, <32 x i16> %147)
  %167 = add <16 x i32> %166, %141
  %168 = getelementptr inbounds nuw i8, ptr %145, i64 12
  %169 = load i32, ptr %168, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %170 = insertelement <16 x i32> poison, i32 %169, i64 0
  %171 = shufflevector <16 x i32> %170, <16 x i32> poison, <16 x i32> zeroinitializer
  %172 = bitcast <16 x i32> %171 to <32 x i16>
  %173 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %172, <32 x i16> %147)
  %174 = add <16 x i32> %173, %140
  %175 = getelementptr inbounds nuw i8, ptr %145, i64 16
  %176 = load i32, ptr %175, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %177 = insertelement <16 x i32> poison, i32 %176, i64 0
  %178 = shufflevector <16 x i32> %177, <16 x i32> poison, <16 x i32> zeroinitializer
  %179 = bitcast <16 x i32> %178 to <32 x i16>
  %180 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %179, <32 x i16> %147)
  %181 = add <16 x i32> %180, %139
  %182 = getelementptr inbounds nuw i8, ptr %145, i64 20
  %183 = load i32, ptr %182, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %184 = insertelement <16 x i32> poison, i32 %183, i64 0
  %185 = shufflevector <16 x i32> %184, <16 x i32> poison, <16 x i32> zeroinitializer
  %186 = bitcast <16 x i32> %185 to <32 x i16>
  %187 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %186, <32 x i16> %147)
  %188 = add <16 x i32> %187, %138
  %189 = getelementptr inbounds nuw i8, ptr %145, i64 24
  %190 = load i32, ptr %189, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %191 = insertelement <16 x i32> poison, i32 %190, i64 0
  %192 = shufflevector <16 x i32> %191, <16 x i32> poison, <16 x i32> zeroinitializer
  %193 = bitcast <16 x i32> %192 to <32 x i16>
  %194 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %193, <32 x i16> %147)
  %195 = add <16 x i32> %194, %137
  %196 = getelementptr inbounds nuw i8, ptr %145, i64 28
  %197 = load i32, ptr %196, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %198 = insertelement <16 x i32> poison, i32 %197, i64 0
  %199 = shufflevector <16 x i32> %198, <16 x i32> poison, <16 x i32> zeroinitializer
  %200 = bitcast <16 x i32> %199 to <32 x i16>
  %201 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %200, <32 x i16> %147)
  %202 = add <16 x i32> %201, %136
  %203 = getelementptr inbounds nuw i8, ptr %145, i64 32
  %204 = load i32, ptr %203, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %205 = insertelement <16 x i32> poison, i32 %204, i64 0
  %206 = shufflevector <16 x i32> %205, <16 x i32> poison, <16 x i32> zeroinitializer
  %207 = bitcast <16 x i32> %206 to <32 x i16>
  %208 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %207, <32 x i16> %147)
  %209 = add <16 x i32> %208, %135
  %210 = getelementptr inbounds nuw i8, ptr %145, i64 36
  %211 = load i32, ptr %210, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %212 = insertelement <16 x i32> poison, i32 %211, i64 0
  %213 = shufflevector <16 x i32> %212, <16 x i32> poison, <16 x i32> zeroinitializer
  %214 = bitcast <16 x i32> %213 to <32 x i16>
  %215 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %214, <32 x i16> %147)
  %216 = add <16 x i32> %215, %134
  %217 = getelementptr inbounds nuw i8, ptr %145, i64 40
  %218 = load i32, ptr %217, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %219 = insertelement <16 x i32> poison, i32 %218, i64 0
  %220 = shufflevector <16 x i32> %219, <16 x i32> poison, <16 x i32> zeroinitializer
  %221 = bitcast <16 x i32> %220 to <32 x i16>
  %222 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %221, <32 x i16> %147)
  %223 = add <16 x i32> %222, %133
  %224 = getelementptr inbounds nuw i8, ptr %145, i64 44
  %225 = load i32, ptr %224, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %226 = insertelement <16 x i32> poison, i32 %225, i64 0
  %227 = shufflevector <16 x i32> %226, <16 x i32> poison, <16 x i32> zeroinitializer
  %228 = bitcast <16 x i32> %227 to <32 x i16>
  %229 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %228, <32 x i16> %147)
  %230 = add <16 x i32> %229, %132
  %231 = getelementptr inbounds nuw i8, ptr %145, i64 48
  %232 = load i32, ptr %231, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %233 = insertelement <16 x i32> poison, i32 %232, i64 0
  %234 = shufflevector <16 x i32> %233, <16 x i32> poison, <16 x i32> zeroinitializer
  %235 = bitcast <16 x i32> %234 to <32 x i16>
  %236 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %235, <32 x i16> %147)
  %237 = add <16 x i32> %236, %131
  %238 = getelementptr inbounds nuw i8, ptr %145, i64 52
  %239 = load i32, ptr %238, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %240 = insertelement <16 x i32> poison, i32 %239, i64 0
  %241 = shufflevector <16 x i32> %240, <16 x i32> poison, <16 x i32> zeroinitializer
  %242 = bitcast <16 x i32> %241 to <32 x i16>
  %243 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %242, <32 x i16> %147)
  %244 = add <16 x i32> %243, %130
  %245 = getelementptr inbounds nuw i8, ptr %145, i64 56
  %246 = load i32, ptr %245, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %247 = insertelement <16 x i32> poison, i32 %246, i64 0
  %248 = shufflevector <16 x i32> %247, <16 x i32> poison, <16 x i32> zeroinitializer
  %249 = bitcast <16 x i32> %248 to <32 x i16>
  %250 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %249, <32 x i16> %147)
  %251 = add <16 x i32> %250, %129
  %252 = getelementptr inbounds nuw i8, ptr %145, i64 60
  %253 = load i32, ptr %252, align 4, !tbaa !15, !alias.scope !906, !noalias !913
  %254 = insertelement <16 x i32> poison, i32 %253, i64 0
  %255 = shufflevector <16 x i32> %254, <16 x i32> poison, <16 x i32> zeroinitializer
  %256 = bitcast <16 x i32> %255 to <32 x i16>
  %257 = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %256, <32 x i16> %147)
  %258 = add <16 x i32> %257, %128
  %259 = getelementptr inbounds nuw i8, ptr %145, i64 64
  %260 = getelementptr inbounds nuw i8, ptr %146, i64 64
  %261 = add nuw nsw i64 %144, 1
  %262 = icmp eq i64 %261, %59
  br i1 %262, label %78, label %127, !llvm.loop !880
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_1x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !917
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !920
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %14 = load i64, ptr %13, align 8, !tbaa !168, !noalias !917
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %86

16:                                               ; preds = %11
  %17 = bitcast <8 x i64> %12 to <16 x i32>
  %18 = and i64 %14, 3
  %19 = icmp ult i64 %14, 4
  br i1 %19, label %63, label %20

20:                                               ; preds = %16
  %21 = and i64 %14, 9223372036854775804
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <16 x i32> [ %17, %20 ], [ %57, %22 ]
  %24 = phi ptr [ %1, %20 ], [ %58, %22 ]
  %25 = phi ptr [ %2, %20 ], [ %52, %22 ]
  %26 = phi i64 [ 0, %20 ], [ %59, %22 ]
  %27 = load <32 x i16>, ptr %25, align 1, !tbaa !221, !noalias !914
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %29 = load i32, ptr %24, align 4, !tbaa !15, !alias.scope !914, !noalias !921
  %30 = insertelement <16 x i32> poison, i32 %29, i64 0
  %31 = shufflevector <16 x i32> %30, <16 x i32> poison, <16 x i32> zeroinitializer
  %32 = bitcast <16 x i32> %31 to <32 x i16>
  %33 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %23, <32 x i16> %27, <32 x i16> %32)
  %34 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %35 = load <32 x i16>, ptr %28, align 1, !tbaa !221, !noalias !914
  %36 = getelementptr inbounds nuw i8, ptr %25, i64 128
  %37 = load i32, ptr %34, align 4, !tbaa !15, !alias.scope !914, !noalias !921
  %38 = insertelement <16 x i32> poison, i32 %37, i64 0
  %39 = shufflevector <16 x i32> %38, <16 x i32> poison, <16 x i32> zeroinitializer
  %40 = bitcast <16 x i32> %39 to <32 x i16>
  %41 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %33, <32 x i16> %35, <32 x i16> %40)
  %42 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %43 = load <32 x i16>, ptr %36, align 1, !tbaa !221, !noalias !914
  %44 = getelementptr inbounds nuw i8, ptr %25, i64 192
  %45 = load i32, ptr %42, align 4, !tbaa !15, !alias.scope !914, !noalias !921
  %46 = insertelement <16 x i32> poison, i32 %45, i64 0
  %47 = shufflevector <16 x i32> %46, <16 x i32> poison, <16 x i32> zeroinitializer
  %48 = bitcast <16 x i32> %47 to <32 x i16>
  %49 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %41, <32 x i16> %43, <32 x i16> %48)
  %50 = getelementptr inbounds nuw i8, ptr %24, i64 12
  %51 = load <32 x i16>, ptr %44, align 1, !tbaa !221, !noalias !914
  %52 = getelementptr inbounds nuw i8, ptr %25, i64 256
  %53 = load i32, ptr %50, align 4, !tbaa !15, !alias.scope !914, !noalias !921
  %54 = insertelement <16 x i32> poison, i32 %53, i64 0
  %55 = shufflevector <16 x i32> %54, <16 x i32> poison, <16 x i32> zeroinitializer
  %56 = bitcast <16 x i32> %55 to <32 x i16>
  %57 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %49, <32 x i16> %51, <32 x i16> %56)
  %58 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %59 = add i64 %26, 4
  %60 = icmp eq i64 %59, %21
  br i1 %60, label %61, label %22, !llvm.loop !922

61:                                               ; preds = %22
  %62 = icmp eq i64 %18, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %61, %16
  %64 = phi <16 x i32> [ %17, %16 ], [ %57, %61 ]
  %65 = phi ptr [ %1, %16 ], [ %58, %61 ]
  %66 = phi ptr [ %2, %16 ], [ %52, %61 ]
  %67 = icmp ne i64 %18, 0
  tail call void @llvm.assume(i1 %67)
  br label %68

68:                                               ; preds = %68, %63
  %69 = phi <16 x i32> [ %64, %63 ], [ %79, %68 ]
  %70 = phi ptr [ %65, %63 ], [ %80, %68 ]
  %71 = phi ptr [ %66, %63 ], [ %74, %68 ]
  %72 = phi i64 [ 0, %63 ], [ %81, %68 ]
  %73 = load <32 x i16>, ptr %71, align 1, !tbaa !221, !noalias !914
  %74 = getelementptr inbounds nuw i8, ptr %71, i64 64
  %75 = load i32, ptr %70, align 4, !tbaa !15, !alias.scope !914, !noalias !921
  %76 = insertelement <16 x i32> poison, i32 %75, i64 0
  %77 = shufflevector <16 x i32> %76, <16 x i32> poison, <16 x i32> zeroinitializer
  %78 = bitcast <16 x i32> %77 to <32 x i16>
  %79 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %69, <32 x i16> %73, <32 x i16> %78)
  %80 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %81 = add i64 %72, 1
  %82 = icmp eq i64 %81, %18
  br i1 %82, label %83, label %68, !llvm.loop !923

83:                                               ; preds = %68, %61
  %84 = phi <16 x i32> [ %57, %61 ], [ %79, %68 ]
  %85 = bitcast <16 x i32> %84 to <8 x i64>
  br label %86

86:                                               ; preds = %83, %11
  %87 = phi <8 x i64> [ %85, %83 ], [ %12, %11 ]
  store <8 x i64> %87, ptr %0, align 1, !tbaa !221, !noalias !914
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_2x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !927
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !930
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !930
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168, !noalias !927
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  %20 = bitcast <8 x i64> %15 to <16 x i32>
  %21 = bitcast <8 x i64> %14 to <16 x i32>
  %22 = and i64 %17, 1
  %23 = icmp eq i64 %17, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = and i64 %17, 9223372036854775806
  br label %55

26:                                               ; preds = %55
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %26, %19
  %29 = phi <16 x i32> [ %21, %19 ], [ %86, %26 ]
  %30 = phi <16 x i32> [ %20, %19 ], [ %80, %26 ]
  %31 = phi ptr [ %1, %19 ], [ %87, %26 ]
  %32 = phi ptr [ %2, %19 ], [ %88, %26 ]
  %33 = trunc i64 %17 to i1
  tail call void @llvm.assume(i1 %33)
  %34 = load <32 x i16>, ptr %32, align 1, !tbaa !221, !noalias !924
  %35 = load i32, ptr %31, align 4, !tbaa !15, !alias.scope !924, !noalias !931
  %36 = insertelement <16 x i32> poison, i32 %35, i64 0
  %37 = shufflevector <16 x i32> %36, <16 x i32> poison, <16 x i32> zeroinitializer
  %38 = bitcast <16 x i32> %37 to <32 x i16>
  %39 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %30, <32 x i16> %34, <32 x i16> %38)
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %41 = load i32, ptr %40, align 4, !tbaa !15, !alias.scope !924, !noalias !931
  %42 = insertelement <16 x i32> poison, i32 %41, i64 0
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> zeroinitializer
  %44 = bitcast <16 x i32> %43 to <32 x i16>
  %45 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %29, <32 x i16> %34, <32 x i16> %44)
  br label %46

46:                                               ; preds = %26, %28
  %47 = phi <16 x i32> [ %80, %26 ], [ %39, %28 ]
  %48 = phi <16 x i32> [ %86, %26 ], [ %45, %28 ]
  %49 = bitcast <16 x i32> %48 to <8 x i64>
  %50 = bitcast <16 x i32> %47 to <8 x i64>
  br label %51

51:                                               ; preds = %46, %13
  %52 = phi <8 x i64> [ %49, %46 ], [ %14, %13 ]
  %53 = phi <8 x i64> [ %50, %46 ], [ %15, %13 ]
  store <8 x i64> %53, ptr %0, align 1, !tbaa !221, !noalias !924
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %52, ptr %54, align 1, !tbaa !221, !noalias !924
  ret void

55:                                               ; preds = %55, %24
  %56 = phi <16 x i32> [ %21, %24 ], [ %86, %55 ]
  %57 = phi <16 x i32> [ %20, %24 ], [ %80, %55 ]
  %58 = phi ptr [ %1, %24 ], [ %87, %55 ]
  %59 = phi ptr [ %2, %24 ], [ %88, %55 ]
  %60 = phi i64 [ 0, %24 ], [ %89, %55 ]
  %61 = load <32 x i16>, ptr %59, align 1, !tbaa !221, !noalias !924
  %62 = load i32, ptr %58, align 4, !tbaa !15, !alias.scope !924, !noalias !931
  %63 = insertelement <16 x i32> poison, i32 %62, i64 0
  %64 = shufflevector <16 x i32> %63, <16 x i32> poison, <16 x i32> zeroinitializer
  %65 = bitcast <16 x i32> %64 to <32 x i16>
  %66 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %57, <32 x i16> %61, <32 x i16> %65)
  %67 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %68 = load i32, ptr %67, align 4, !tbaa !15, !alias.scope !924, !noalias !931
  %69 = insertelement <16 x i32> poison, i32 %68, i64 0
  %70 = shufflevector <16 x i32> %69, <16 x i32> poison, <16 x i32> zeroinitializer
  %71 = bitcast <16 x i32> %70 to <32 x i16>
  %72 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %56, <32 x i16> %61, <32 x i16> %71)
  %73 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %74 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %75 = load <32 x i16>, ptr %74, align 1, !tbaa !221, !noalias !924
  %76 = load i32, ptr %73, align 4, !tbaa !15, !alias.scope !924, !noalias !931
  %77 = insertelement <16 x i32> poison, i32 %76, i64 0
  %78 = shufflevector <16 x i32> %77, <16 x i32> poison, <16 x i32> zeroinitializer
  %79 = bitcast <16 x i32> %78 to <32 x i16>
  %80 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %66, <32 x i16> %75, <32 x i16> %79)
  %81 = getelementptr inbounds nuw i8, ptr %58, i64 12
  %82 = load i32, ptr %81, align 4, !tbaa !15, !alias.scope !924, !noalias !931
  %83 = insertelement <16 x i32> poison, i32 %82, i64 0
  %84 = shufflevector <16 x i32> %83, <16 x i32> poison, <16 x i32> zeroinitializer
  %85 = bitcast <16 x i32> %84 to <32 x i16>
  %86 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %72, <32 x i16> %75, <32 x i16> %85)
  %87 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %88 = getelementptr inbounds nuw i8, ptr %59, i64 128
  %89 = add i64 %60, 2
  %90 = icmp eq i64 %89, %25
  br i1 %90, label %26, label %55, !llvm.loop !922
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_4x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !935
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !938
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !938
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !938
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !938
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %19 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %20 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %21 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %23 = load i64, ptr %22, align 8, !tbaa !168, !noalias !935
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = bitcast <8 x i64> %21 to <16 x i32>
  %27 = bitcast <8 x i64> %20 to <16 x i32>
  %28 = bitcast <8 x i64> %19 to <16 x i32>
  %29 = bitcast <8 x i64> %18 to <16 x i32>
  br label %43

30:                                               ; preds = %43
  %31 = bitcast <16 x i32> %74 to <8 x i64>
  %32 = bitcast <16 x i32> %68 to <8 x i64>
  %33 = bitcast <16 x i32> %62 to <8 x i64>
  %34 = bitcast <16 x i32> %56 to <8 x i64>
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi <8 x i64> [ %31, %30 ], [ %18, %17 ]
  %37 = phi <8 x i64> [ %32, %30 ], [ %19, %17 ]
  %38 = phi <8 x i64> [ %33, %30 ], [ %20, %17 ]
  %39 = phi <8 x i64> [ %34, %30 ], [ %21, %17 ]
  store <8 x i64> %39, ptr %0, align 1, !tbaa !221, !noalias !932
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %38, ptr %40, align 1, !tbaa !221, !noalias !932
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %37, ptr %41, align 1, !tbaa !221, !noalias !932
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %36, ptr %42, align 1, !tbaa !221, !noalias !932
  ret void

43:                                               ; preds = %25, %43
  %44 = phi <16 x i32> [ %29, %25 ], [ %74, %43 ]
  %45 = phi <16 x i32> [ %28, %25 ], [ %68, %43 ]
  %46 = phi <16 x i32> [ %27, %25 ], [ %62, %43 ]
  %47 = phi <16 x i32> [ %26, %25 ], [ %56, %43 ]
  %48 = phi i64 [ 0, %25 ], [ %77, %43 ]
  %49 = phi ptr [ %1, %25 ], [ %75, %43 ]
  %50 = phi ptr [ %2, %25 ], [ %76, %43 ]
  %51 = load <32 x i16>, ptr %50, align 1, !tbaa !221, !noalias !932
  %52 = load i32, ptr %49, align 4, !tbaa !15, !alias.scope !932, !noalias !939
  %53 = insertelement <16 x i32> poison, i32 %52, i64 0
  %54 = shufflevector <16 x i32> %53, <16 x i32> poison, <16 x i32> zeroinitializer
  %55 = bitcast <16 x i32> %54 to <32 x i16>
  %56 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %47, <32 x i16> %51, <32 x i16> %55)
  %57 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %58 = load i32, ptr %57, align 4, !tbaa !15, !alias.scope !932, !noalias !939
  %59 = insertelement <16 x i32> poison, i32 %58, i64 0
  %60 = shufflevector <16 x i32> %59, <16 x i32> poison, <16 x i32> zeroinitializer
  %61 = bitcast <16 x i32> %60 to <32 x i16>
  %62 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %46, <32 x i16> %51, <32 x i16> %61)
  %63 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %64 = load i32, ptr %63, align 4, !tbaa !15, !alias.scope !932, !noalias !939
  %65 = insertelement <16 x i32> poison, i32 %64, i64 0
  %66 = shufflevector <16 x i32> %65, <16 x i32> poison, <16 x i32> zeroinitializer
  %67 = bitcast <16 x i32> %66 to <32 x i16>
  %68 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %45, <32 x i16> %51, <32 x i16> %67)
  %69 = getelementptr inbounds nuw i8, ptr %49, i64 12
  %70 = load i32, ptr %69, align 4, !tbaa !15, !alias.scope !932, !noalias !939
  %71 = insertelement <16 x i32> poison, i32 %70, i64 0
  %72 = shufflevector <16 x i32> %71, <16 x i32> poison, <16 x i32> zeroinitializer
  %73 = bitcast <16 x i32> %72 to <32 x i16>
  %74 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %44, <32 x i16> %51, <32 x i16> %73)
  %75 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %76 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %77 = add nuw nsw i64 %48, 1
  %78 = icmp eq i64 %77, %23
  br i1 %78, label %30, label %43, !llvm.loop !922
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_8x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !943
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !946
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !946
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !946
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !946
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <8 x i64>, ptr %17, align 1, !tbaa !221, !noalias !946
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <8 x i64>, ptr %19, align 1, !tbaa !221, !noalias !946
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <8 x i64>, ptr %21, align 1, !tbaa !221, !noalias !946
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <8 x i64>, ptr %23, align 1, !tbaa !221, !noalias !946
  br label %25

25:                                               ; preds = %4, %9
  %26 = phi <8 x i64> [ %24, %9 ], [ zeroinitializer, %4 ]
  %27 = phi <8 x i64> [ %22, %9 ], [ zeroinitializer, %4 ]
  %28 = phi <8 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %29 = phi <8 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %30 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %31 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %32 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %33 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %35 = load i64, ptr %34, align 8, !tbaa !168, !noalias !943
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = bitcast <8 x i64> %33 to <16 x i32>
  %39 = bitcast <8 x i64> %32 to <16 x i32>
  %40 = bitcast <8 x i64> %31 to <16 x i32>
  %41 = bitcast <8 x i64> %30 to <16 x i32>
  %42 = bitcast <8 x i64> %29 to <16 x i32>
  %43 = bitcast <8 x i64> %28 to <16 x i32>
  %44 = bitcast <8 x i64> %27 to <16 x i32>
  %45 = bitcast <8 x i64> %26 to <16 x i32>
  br label %71

46:                                               ; preds = %71
  %47 = bitcast <16 x i32> %130 to <8 x i64>
  %48 = bitcast <16 x i32> %124 to <8 x i64>
  %49 = bitcast <16 x i32> %118 to <8 x i64>
  %50 = bitcast <16 x i32> %112 to <8 x i64>
  %51 = bitcast <16 x i32> %106 to <8 x i64>
  %52 = bitcast <16 x i32> %100 to <8 x i64>
  %53 = bitcast <16 x i32> %94 to <8 x i64>
  %54 = bitcast <16 x i32> %88 to <8 x i64>
  br label %55

55:                                               ; preds = %46, %25
  %56 = phi <8 x i64> [ %47, %46 ], [ %26, %25 ]
  %57 = phi <8 x i64> [ %48, %46 ], [ %27, %25 ]
  %58 = phi <8 x i64> [ %49, %46 ], [ %28, %25 ]
  %59 = phi <8 x i64> [ %50, %46 ], [ %29, %25 ]
  %60 = phi <8 x i64> [ %51, %46 ], [ %30, %25 ]
  %61 = phi <8 x i64> [ %52, %46 ], [ %31, %25 ]
  %62 = phi <8 x i64> [ %53, %46 ], [ %32, %25 ]
  %63 = phi <8 x i64> [ %54, %46 ], [ %33, %25 ]
  store <8 x i64> %63, ptr %0, align 1, !tbaa !221, !noalias !940
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %62, ptr %64, align 1, !tbaa !221, !noalias !940
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %61, ptr %65, align 1, !tbaa !221, !noalias !940
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %60, ptr %66, align 1, !tbaa !221, !noalias !940
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <8 x i64> %59, ptr %67, align 1, !tbaa !221, !noalias !940
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <8 x i64> %58, ptr %68, align 1, !tbaa !221, !noalias !940
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <8 x i64> %57, ptr %69, align 1, !tbaa !221, !noalias !940
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <8 x i64> %56, ptr %70, align 1, !tbaa !221, !noalias !940
  ret void

71:                                               ; preds = %37, %71
  %72 = phi <16 x i32> [ %45, %37 ], [ %130, %71 ]
  %73 = phi <16 x i32> [ %44, %37 ], [ %124, %71 ]
  %74 = phi <16 x i32> [ %43, %37 ], [ %118, %71 ]
  %75 = phi <16 x i32> [ %42, %37 ], [ %112, %71 ]
  %76 = phi <16 x i32> [ %41, %37 ], [ %106, %71 ]
  %77 = phi <16 x i32> [ %40, %37 ], [ %100, %71 ]
  %78 = phi <16 x i32> [ %39, %37 ], [ %94, %71 ]
  %79 = phi <16 x i32> [ %38, %37 ], [ %88, %71 ]
  %80 = phi i64 [ 0, %37 ], [ %133, %71 ]
  %81 = phi ptr [ %1, %37 ], [ %131, %71 ]
  %82 = phi ptr [ %2, %37 ], [ %132, %71 ]
  %83 = load <32 x i16>, ptr %82, align 1, !tbaa !221, !noalias !940
  %84 = load i32, ptr %81, align 4, !tbaa !15, !alias.scope !940, !noalias !947
  %85 = insertelement <16 x i32> poison, i32 %84, i64 0
  %86 = shufflevector <16 x i32> %85, <16 x i32> poison, <16 x i32> zeroinitializer
  %87 = bitcast <16 x i32> %86 to <32 x i16>
  %88 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %79, <32 x i16> %83, <32 x i16> %87)
  %89 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %90 = load i32, ptr %89, align 4, !tbaa !15, !alias.scope !940, !noalias !947
  %91 = insertelement <16 x i32> poison, i32 %90, i64 0
  %92 = shufflevector <16 x i32> %91, <16 x i32> poison, <16 x i32> zeroinitializer
  %93 = bitcast <16 x i32> %92 to <32 x i16>
  %94 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %78, <32 x i16> %83, <32 x i16> %93)
  %95 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %96 = load i32, ptr %95, align 4, !tbaa !15, !alias.scope !940, !noalias !947
  %97 = insertelement <16 x i32> poison, i32 %96, i64 0
  %98 = shufflevector <16 x i32> %97, <16 x i32> poison, <16 x i32> zeroinitializer
  %99 = bitcast <16 x i32> %98 to <32 x i16>
  %100 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %77, <32 x i16> %83, <32 x i16> %99)
  %101 = getelementptr inbounds nuw i8, ptr %81, i64 12
  %102 = load i32, ptr %101, align 4, !tbaa !15, !alias.scope !940, !noalias !947
  %103 = insertelement <16 x i32> poison, i32 %102, i64 0
  %104 = shufflevector <16 x i32> %103, <16 x i32> poison, <16 x i32> zeroinitializer
  %105 = bitcast <16 x i32> %104 to <32 x i16>
  %106 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %76, <32 x i16> %83, <32 x i16> %105)
  %107 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %108 = load i32, ptr %107, align 4, !tbaa !15, !alias.scope !940, !noalias !947
  %109 = insertelement <16 x i32> poison, i32 %108, i64 0
  %110 = shufflevector <16 x i32> %109, <16 x i32> poison, <16 x i32> zeroinitializer
  %111 = bitcast <16 x i32> %110 to <32 x i16>
  %112 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %75, <32 x i16> %83, <32 x i16> %111)
  %113 = getelementptr inbounds nuw i8, ptr %81, i64 20
  %114 = load i32, ptr %113, align 4, !tbaa !15, !alias.scope !940, !noalias !947
  %115 = insertelement <16 x i32> poison, i32 %114, i64 0
  %116 = shufflevector <16 x i32> %115, <16 x i32> poison, <16 x i32> zeroinitializer
  %117 = bitcast <16 x i32> %116 to <32 x i16>
  %118 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %74, <32 x i16> %83, <32 x i16> %117)
  %119 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %120 = load i32, ptr %119, align 4, !tbaa !15, !alias.scope !940, !noalias !947
  %121 = insertelement <16 x i32> poison, i32 %120, i64 0
  %122 = shufflevector <16 x i32> %121, <16 x i32> poison, <16 x i32> zeroinitializer
  %123 = bitcast <16 x i32> %122 to <32 x i16>
  %124 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %73, <32 x i16> %83, <32 x i16> %123)
  %125 = getelementptr inbounds nuw i8, ptr %81, i64 28
  %126 = load i32, ptr %125, align 4, !tbaa !15, !alias.scope !940, !noalias !947
  %127 = insertelement <16 x i32> poison, i32 %126, i64 0
  %128 = shufflevector <16 x i32> %127, <16 x i32> poison, <16 x i32> zeroinitializer
  %129 = bitcast <16 x i32> %128 to <32 x i16>
  %130 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %72, <32 x i16> %83, <32 x i16> %129)
  %131 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %132 = getelementptr inbounds nuw i8, ptr %82, i64 64
  %133 = add nuw nsw i64 %80, 1
  %134 = icmp eq i64 %133, %35
  br i1 %134, label %46, label %71, !llvm.loop !922
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16s16s32_16x16x2_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #20 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172, !noalias !951
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = load <8 x i64>, ptr %0, align 1, !tbaa !221, !noalias !954
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <8 x i64>, ptr %11, align 1, !tbaa !221, !noalias !954
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load <8 x i64>, ptr %13, align 1, !tbaa !221, !noalias !954
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load <8 x i64>, ptr %15, align 1, !tbaa !221, !noalias !954
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %18 = load <8 x i64>, ptr %17, align 1, !tbaa !221, !noalias !954
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <8 x i64>, ptr %19, align 1, !tbaa !221, !noalias !954
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %22 = load <8 x i64>, ptr %21, align 1, !tbaa !221, !noalias !954
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %24 = load <8 x i64>, ptr %23, align 1, !tbaa !221, !noalias !954
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %26 = load <8 x i64>, ptr %25, align 1, !tbaa !221, !noalias !954
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %28 = load <8 x i64>, ptr %27, align 1, !tbaa !221, !noalias !954
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %30 = load <8 x i64>, ptr %29, align 1, !tbaa !221, !noalias !954
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 704
  %32 = load <8 x i64>, ptr %31, align 1, !tbaa !221, !noalias !954
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 768
  %34 = load <8 x i64>, ptr %33, align 1, !tbaa !221, !noalias !954
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %36 = load <8 x i64>, ptr %35, align 1, !tbaa !221, !noalias !954
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %38 = load <8 x i64>, ptr %37, align 1, !tbaa !221, !noalias !954
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %40 = load <8 x i64>, ptr %39, align 1, !tbaa !221, !noalias !954
  br label %41

41:                                               ; preds = %4, %9
  %42 = phi <8 x i64> [ %40, %9 ], [ zeroinitializer, %4 ]
  %43 = phi <8 x i64> [ %38, %9 ], [ zeroinitializer, %4 ]
  %44 = phi <8 x i64> [ %36, %9 ], [ zeroinitializer, %4 ]
  %45 = phi <8 x i64> [ %34, %9 ], [ zeroinitializer, %4 ]
  %46 = phi <8 x i64> [ %32, %9 ], [ zeroinitializer, %4 ]
  %47 = phi <8 x i64> [ %30, %9 ], [ zeroinitializer, %4 ]
  %48 = phi <8 x i64> [ %28, %9 ], [ zeroinitializer, %4 ]
  %49 = phi <8 x i64> [ %26, %9 ], [ zeroinitializer, %4 ]
  %50 = phi <8 x i64> [ %24, %9 ], [ zeroinitializer, %4 ]
  %51 = phi <8 x i64> [ %22, %9 ], [ zeroinitializer, %4 ]
  %52 = phi <8 x i64> [ %20, %9 ], [ zeroinitializer, %4 ]
  %53 = phi <8 x i64> [ %18, %9 ], [ zeroinitializer, %4 ]
  %54 = phi <8 x i64> [ %16, %9 ], [ zeroinitializer, %4 ]
  %55 = phi <8 x i64> [ %14, %9 ], [ zeroinitializer, %4 ]
  %56 = phi <8 x i64> [ %12, %9 ], [ zeroinitializer, %4 ]
  %57 = phi <8 x i64> [ %10, %9 ], [ zeroinitializer, %4 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %59 = load i64, ptr %58, align 8, !tbaa !168, !noalias !951
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %41
  %62 = bitcast <8 x i64> %57 to <16 x i32>
  %63 = bitcast <8 x i64> %56 to <16 x i32>
  %64 = bitcast <8 x i64> %55 to <16 x i32>
  %65 = bitcast <8 x i64> %54 to <16 x i32>
  %66 = bitcast <8 x i64> %53 to <16 x i32>
  %67 = bitcast <8 x i64> %52 to <16 x i32>
  %68 = bitcast <8 x i64> %51 to <16 x i32>
  %69 = bitcast <8 x i64> %50 to <16 x i32>
  %70 = bitcast <8 x i64> %49 to <16 x i32>
  %71 = bitcast <8 x i64> %48 to <16 x i32>
  %72 = bitcast <8 x i64> %47 to <16 x i32>
  %73 = bitcast <8 x i64> %46 to <16 x i32>
  %74 = bitcast <8 x i64> %45 to <16 x i32>
  %75 = bitcast <8 x i64> %44 to <16 x i32>
  %76 = bitcast <8 x i64> %43 to <16 x i32>
  %77 = bitcast <8 x i64> %42 to <16 x i32>
  br label %127

78:                                               ; preds = %127
  %79 = bitcast <16 x i32> %242 to <8 x i64>
  %80 = bitcast <16 x i32> %236 to <8 x i64>
  %81 = bitcast <16 x i32> %230 to <8 x i64>
  %82 = bitcast <16 x i32> %224 to <8 x i64>
  %83 = bitcast <16 x i32> %218 to <8 x i64>
  %84 = bitcast <16 x i32> %212 to <8 x i64>
  %85 = bitcast <16 x i32> %206 to <8 x i64>
  %86 = bitcast <16 x i32> %200 to <8 x i64>
  %87 = bitcast <16 x i32> %194 to <8 x i64>
  %88 = bitcast <16 x i32> %188 to <8 x i64>
  %89 = bitcast <16 x i32> %182 to <8 x i64>
  %90 = bitcast <16 x i32> %176 to <8 x i64>
  %91 = bitcast <16 x i32> %170 to <8 x i64>
  %92 = bitcast <16 x i32> %164 to <8 x i64>
  %93 = bitcast <16 x i32> %158 to <8 x i64>
  %94 = bitcast <16 x i32> %152 to <8 x i64>
  br label %95

95:                                               ; preds = %78, %41
  %96 = phi <8 x i64> [ %79, %78 ], [ %42, %41 ]
  %97 = phi <8 x i64> [ %80, %78 ], [ %43, %41 ]
  %98 = phi <8 x i64> [ %81, %78 ], [ %44, %41 ]
  %99 = phi <8 x i64> [ %82, %78 ], [ %45, %41 ]
  %100 = phi <8 x i64> [ %83, %78 ], [ %46, %41 ]
  %101 = phi <8 x i64> [ %84, %78 ], [ %47, %41 ]
  %102 = phi <8 x i64> [ %85, %78 ], [ %48, %41 ]
  %103 = phi <8 x i64> [ %86, %78 ], [ %49, %41 ]
  %104 = phi <8 x i64> [ %87, %78 ], [ %50, %41 ]
  %105 = phi <8 x i64> [ %88, %78 ], [ %51, %41 ]
  %106 = phi <8 x i64> [ %89, %78 ], [ %52, %41 ]
  %107 = phi <8 x i64> [ %90, %78 ], [ %53, %41 ]
  %108 = phi <8 x i64> [ %91, %78 ], [ %54, %41 ]
  %109 = phi <8 x i64> [ %92, %78 ], [ %55, %41 ]
  %110 = phi <8 x i64> [ %93, %78 ], [ %56, %41 ]
  %111 = phi <8 x i64> [ %94, %78 ], [ %57, %41 ]
  store <8 x i64> %111, ptr %0, align 1, !tbaa !221, !noalias !948
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %110, ptr %112, align 1, !tbaa !221, !noalias !948
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %109, ptr %113, align 1, !tbaa !221, !noalias !948
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <8 x i64> %108, ptr %114, align 1, !tbaa !221, !noalias !948
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <8 x i64> %107, ptr %115, align 1, !tbaa !221, !noalias !948
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <8 x i64> %106, ptr %116, align 1, !tbaa !221, !noalias !948
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <8 x i64> %105, ptr %117, align 1, !tbaa !221, !noalias !948
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <8 x i64> %104, ptr %118, align 1, !tbaa !221, !noalias !948
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <8 x i64> %103, ptr %119, align 1, !tbaa !221, !noalias !948
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 576
  store <8 x i64> %102, ptr %120, align 1, !tbaa !221, !noalias !948
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <8 x i64> %101, ptr %121, align 1, !tbaa !221, !noalias !948
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <8 x i64> %100, ptr %122, align 1, !tbaa !221, !noalias !948
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <8 x i64> %99, ptr %123, align 1, !tbaa !221, !noalias !948
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <8 x i64> %98, ptr %124, align 1, !tbaa !221, !noalias !948
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <8 x i64> %97, ptr %125, align 1, !tbaa !221, !noalias !948
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <8 x i64> %96, ptr %126, align 1, !tbaa !221, !noalias !948
  ret void

127:                                              ; preds = %61, %127
  %128 = phi <16 x i32> [ %77, %61 ], [ %242, %127 ]
  %129 = phi <16 x i32> [ %76, %61 ], [ %236, %127 ]
  %130 = phi <16 x i32> [ %75, %61 ], [ %230, %127 ]
  %131 = phi <16 x i32> [ %74, %61 ], [ %224, %127 ]
  %132 = phi <16 x i32> [ %73, %61 ], [ %218, %127 ]
  %133 = phi <16 x i32> [ %72, %61 ], [ %212, %127 ]
  %134 = phi <16 x i32> [ %71, %61 ], [ %206, %127 ]
  %135 = phi <16 x i32> [ %70, %61 ], [ %200, %127 ]
  %136 = phi <16 x i32> [ %69, %61 ], [ %194, %127 ]
  %137 = phi <16 x i32> [ %68, %61 ], [ %188, %127 ]
  %138 = phi <16 x i32> [ %67, %61 ], [ %182, %127 ]
  %139 = phi <16 x i32> [ %66, %61 ], [ %176, %127 ]
  %140 = phi <16 x i32> [ %65, %61 ], [ %170, %127 ]
  %141 = phi <16 x i32> [ %64, %61 ], [ %164, %127 ]
  %142 = phi <16 x i32> [ %63, %61 ], [ %158, %127 ]
  %143 = phi <16 x i32> [ %62, %61 ], [ %152, %127 ]
  %144 = phi i64 [ 0, %61 ], [ %245, %127 ]
  %145 = phi ptr [ %1, %61 ], [ %243, %127 ]
  %146 = phi ptr [ %2, %61 ], [ %244, %127 ]
  %147 = load <32 x i16>, ptr %146, align 1, !tbaa !221, !noalias !948
  %148 = load i32, ptr %145, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %149 = insertelement <16 x i32> poison, i32 %148, i64 0
  %150 = shufflevector <16 x i32> %149, <16 x i32> poison, <16 x i32> zeroinitializer
  %151 = bitcast <16 x i32> %150 to <32 x i16>
  %152 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %143, <32 x i16> %147, <32 x i16> %151)
  %153 = getelementptr inbounds nuw i8, ptr %145, i64 4
  %154 = load i32, ptr %153, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %155 = insertelement <16 x i32> poison, i32 %154, i64 0
  %156 = shufflevector <16 x i32> %155, <16 x i32> poison, <16 x i32> zeroinitializer
  %157 = bitcast <16 x i32> %156 to <32 x i16>
  %158 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %142, <32 x i16> %147, <32 x i16> %157)
  %159 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %160 = load i32, ptr %159, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %161 = insertelement <16 x i32> poison, i32 %160, i64 0
  %162 = shufflevector <16 x i32> %161, <16 x i32> poison, <16 x i32> zeroinitializer
  %163 = bitcast <16 x i32> %162 to <32 x i16>
  %164 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %141, <32 x i16> %147, <32 x i16> %163)
  %165 = getelementptr inbounds nuw i8, ptr %145, i64 12
  %166 = load i32, ptr %165, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %167 = insertelement <16 x i32> poison, i32 %166, i64 0
  %168 = shufflevector <16 x i32> %167, <16 x i32> poison, <16 x i32> zeroinitializer
  %169 = bitcast <16 x i32> %168 to <32 x i16>
  %170 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %140, <32 x i16> %147, <32 x i16> %169)
  %171 = getelementptr inbounds nuw i8, ptr %145, i64 16
  %172 = load i32, ptr %171, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %173 = insertelement <16 x i32> poison, i32 %172, i64 0
  %174 = shufflevector <16 x i32> %173, <16 x i32> poison, <16 x i32> zeroinitializer
  %175 = bitcast <16 x i32> %174 to <32 x i16>
  %176 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %139, <32 x i16> %147, <32 x i16> %175)
  %177 = getelementptr inbounds nuw i8, ptr %145, i64 20
  %178 = load i32, ptr %177, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %179 = insertelement <16 x i32> poison, i32 %178, i64 0
  %180 = shufflevector <16 x i32> %179, <16 x i32> poison, <16 x i32> zeroinitializer
  %181 = bitcast <16 x i32> %180 to <32 x i16>
  %182 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %138, <32 x i16> %147, <32 x i16> %181)
  %183 = getelementptr inbounds nuw i8, ptr %145, i64 24
  %184 = load i32, ptr %183, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %185 = insertelement <16 x i32> poison, i32 %184, i64 0
  %186 = shufflevector <16 x i32> %185, <16 x i32> poison, <16 x i32> zeroinitializer
  %187 = bitcast <16 x i32> %186 to <32 x i16>
  %188 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %137, <32 x i16> %147, <32 x i16> %187)
  %189 = getelementptr inbounds nuw i8, ptr %145, i64 28
  %190 = load i32, ptr %189, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %191 = insertelement <16 x i32> poison, i32 %190, i64 0
  %192 = shufflevector <16 x i32> %191, <16 x i32> poison, <16 x i32> zeroinitializer
  %193 = bitcast <16 x i32> %192 to <32 x i16>
  %194 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %136, <32 x i16> %147, <32 x i16> %193)
  %195 = getelementptr inbounds nuw i8, ptr %145, i64 32
  %196 = load i32, ptr %195, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %197 = insertelement <16 x i32> poison, i32 %196, i64 0
  %198 = shufflevector <16 x i32> %197, <16 x i32> poison, <16 x i32> zeroinitializer
  %199 = bitcast <16 x i32> %198 to <32 x i16>
  %200 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %135, <32 x i16> %147, <32 x i16> %199)
  %201 = getelementptr inbounds nuw i8, ptr %145, i64 36
  %202 = load i32, ptr %201, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %203 = insertelement <16 x i32> poison, i32 %202, i64 0
  %204 = shufflevector <16 x i32> %203, <16 x i32> poison, <16 x i32> zeroinitializer
  %205 = bitcast <16 x i32> %204 to <32 x i16>
  %206 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %134, <32 x i16> %147, <32 x i16> %205)
  %207 = getelementptr inbounds nuw i8, ptr %145, i64 40
  %208 = load i32, ptr %207, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %209 = insertelement <16 x i32> poison, i32 %208, i64 0
  %210 = shufflevector <16 x i32> %209, <16 x i32> poison, <16 x i32> zeroinitializer
  %211 = bitcast <16 x i32> %210 to <32 x i16>
  %212 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %133, <32 x i16> %147, <32 x i16> %211)
  %213 = getelementptr inbounds nuw i8, ptr %145, i64 44
  %214 = load i32, ptr %213, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %215 = insertelement <16 x i32> poison, i32 %214, i64 0
  %216 = shufflevector <16 x i32> %215, <16 x i32> poison, <16 x i32> zeroinitializer
  %217 = bitcast <16 x i32> %216 to <32 x i16>
  %218 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %132, <32 x i16> %147, <32 x i16> %217)
  %219 = getelementptr inbounds nuw i8, ptr %145, i64 48
  %220 = load i32, ptr %219, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %221 = insertelement <16 x i32> poison, i32 %220, i64 0
  %222 = shufflevector <16 x i32> %221, <16 x i32> poison, <16 x i32> zeroinitializer
  %223 = bitcast <16 x i32> %222 to <32 x i16>
  %224 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %131, <32 x i16> %147, <32 x i16> %223)
  %225 = getelementptr inbounds nuw i8, ptr %145, i64 52
  %226 = load i32, ptr %225, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %227 = insertelement <16 x i32> poison, i32 %226, i64 0
  %228 = shufflevector <16 x i32> %227, <16 x i32> poison, <16 x i32> zeroinitializer
  %229 = bitcast <16 x i32> %228 to <32 x i16>
  %230 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %130, <32 x i16> %147, <32 x i16> %229)
  %231 = getelementptr inbounds nuw i8, ptr %145, i64 56
  %232 = load i32, ptr %231, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %233 = insertelement <16 x i32> poison, i32 %232, i64 0
  %234 = shufflevector <16 x i32> %233, <16 x i32> poison, <16 x i32> zeroinitializer
  %235 = bitcast <16 x i32> %234 to <32 x i16>
  %236 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %129, <32 x i16> %147, <32 x i16> %235)
  %237 = getelementptr inbounds nuw i8, ptr %145, i64 60
  %238 = load i32, ptr %237, align 4, !tbaa !15, !alias.scope !948, !noalias !955
  %239 = insertelement <16 x i32> poison, i32 %238, i64 0
  %240 = shufflevector <16 x i32> %239, <16 x i32> poison, <16 x i32> zeroinitializer
  %241 = bitcast <16 x i32> %240 to <32 x i16>
  %242 = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %128, <32 x i16> %147, <32 x i16> %241)
  %243 = getelementptr inbounds nuw i8, ptr %145, i64 64
  %244 = getelementptr inbounds nuw i8, ptr %146, i64 64
  %245 = add nuw nsw i64 %144, 1
  %246 = icmp eq i64 %245, %59
  br i1 %246, label %78, label %127, !llvm.loop !922
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @iree_uk_mmt4d_tile_s16u4s32_1x32x8_x86_64_avx512_vnni(ptr noalias noundef captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #21 {
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 108
  %6 = load i32, ptr %5, align 4, !tbaa !172
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load <16 x i32>, ptr %0, align 1, !tbaa !221
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %12 = load <16 x i32>, ptr %11, align 1, !tbaa !221
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi <16 x i32> [ %12, %9 ], [ zeroinitializer, %4 ]
  %15 = phi <16 x i32> [ %10, %9 ], [ zeroinitializer, %4 ]
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %17 = load i64, ptr %16, align 8, !tbaa !168
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %34, label %26

19:                                               ; preds = %34
  %20 = add <16 x i32> %67, %61
  %21 = shl <16 x i32> %20, splat (i32 8)
  %22 = add <16 x i32> %21, %65
  %23 = add <16 x i32> %75, %71
  %24 = shl <16 x i32> %23, splat (i32 8)
  %25 = add <16 x i32> %24, %74
  br label %26

26:                                               ; preds = %19, %13
  %27 = phi <16 x i32> [ %14, %13 ], [ %70, %19 ]
  %28 = phi <16 x i32> [ %15, %13 ], [ %59, %19 ]
  %29 = phi <16 x i32> [ zeroinitializer, %13 ], [ %22, %19 ]
  %30 = phi <16 x i32> [ zeroinitializer, %13 ], [ %25, %19 ]
  %31 = add <16 x i32> %29, %28
  %32 = add <16 x i32> %30, %27
  store <16 x i32> %31, ptr %0, align 1, !tbaa !221
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x i32> %32, ptr %33, align 1, !tbaa !221
  ret void

34:                                               ; preds = %13, %34
  %35 = phi i64 [ %76, %34 ], [ 0, %13 ]
  %36 = phi ptr [ %47, %34 ], [ %1, %13 ]
  %37 = phi ptr [ %51, %34 ], [ %2, %13 ]
  %38 = phi <16 x i32> [ %59, %34 ], [ %15, %13 ]
  %39 = phi <16 x i32> [ %70, %34 ], [ %14, %13 ]
  %40 = phi <16 x i32> [ %61, %34 ], [ zeroinitializer, %13 ]
  %41 = phi <16 x i32> [ %65, %34 ], [ zeroinitializer, %13 ]
  %42 = phi <16 x i32> [ %67, %34 ], [ zeroinitializer, %13 ]
  %43 = phi <16 x i32> [ %71, %34 ], [ zeroinitializer, %13 ]
  %44 = phi <16 x i32> [ %74, %34 ], [ zeroinitializer, %13 ]
  %45 = phi <16 x i32> [ %75, %34 ], [ zeroinitializer, %13 ]
  %46 = load <16 x i8>, ptr %36, align 1, !tbaa !221
  %47 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %48 = load <8 x i64>, ptr %37, align 1, !tbaa !221
  %49 = getelementptr inbounds nuw i8, ptr %37, i64 64
  %50 = load <8 x i64>, ptr %49, align 1, !tbaa !221
  %51 = getelementptr inbounds nuw i8, ptr %37, i64 128
  %52 = bitcast <8 x i64> %48 to <32 x i16>
  %53 = lshr <32 x i16> %52, splat (i16 4)
  %54 = bitcast <8 x i64> %50 to <32 x i16>
  %55 = lshr <32 x i16> %54, splat (i16 4)
  %56 = shufflevector <16 x i8> %46, <16 x i8> poison, <64 x i32> <i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12>
  %57 = bitcast <8 x i64> %48 to <64 x i8>
  %58 = and <64 x i8> %57, splat (i8 15)
  %59 = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %38, <64 x i8> %56, <64 x i8> %58)
  %60 = shufflevector <16 x i8> %46, <16 x i8> poison, <64 x i32> <i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13>
  %61 = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %40, <64 x i8> %58, <64 x i8> %60)
  %62 = shufflevector <16 x i8> %46, <16 x i8> poison, <64 x i32> <i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14>
  %63 = bitcast <32 x i16> %53 to <64 x i8>
  %64 = and <64 x i8> %63, splat (i8 15)
  %65 = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %41, <64 x i8> %62, <64 x i8> %64)
  %66 = shufflevector <16 x i8> %46, <16 x i8> poison, <64 x i32> <i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15, i32 3, i32 7, i32 11, i32 15>
  %67 = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %42, <64 x i8> %64, <64 x i8> %66)
  %68 = bitcast <8 x i64> %50 to <64 x i8>
  %69 = and <64 x i8> %68, splat (i8 15)
  %70 = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %39, <64 x i8> %56, <64 x i8> %69)
  %71 = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %43, <64 x i8> %69, <64 x i8> %60)
  %72 = bitcast <32 x i16> %55 to <64 x i8>
  %73 = and <64 x i8> %72, splat (i8 15)
  %74 = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %44, <64 x i8> %62, <64 x i8> %73)
  %75 = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %45, <64 x i8> %73, <64 x i8> %66)
  %76 = add nuw nsw i64 %35, 1
  %77 = icmp eq i64 %76, %17
  br i1 %77, label %19, label %34, !llvm.loop !956
}

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32>, <64 x i8>, <64 x i8>) #22

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32>, <32 x i16>, <32 x i16>) #22

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #22

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #22

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float>, <32 x bfloat>, <32 x bfloat>) #22

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float>, i32 immarg, <16 x i16>, i16) #22

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #13

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float>, i32 immarg) #22

; Function Attrs: alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #13

; Function Attrs: alwaysinline nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #22

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { uwtable "nonlazybind" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint }
attributes #8 = { alwaysinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { alwaysinline nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="512" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="512" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="512" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="512" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="512" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { alwaysinline nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { alwaysinline nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { nobuiltin "no-builtins" }
attributes #26 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14}
!llvm.errno.tbaa = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module__encoding_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module__encoding_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables")
!8 = distinct !DICompileUnit(language: DW_LANG_C17, file: !9, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables")
!10 = distinct !DICompileUnit(language: DW_LANG_C17, file: !11, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/tiny-tiled/executables")
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_1x16x32_f32", linkageName: "matmul_dispatch_0_matmul_1x16x32_f32", scope: !1, file: !1, line: 1, type: !20, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!20 = !DISubroutineType(cc: DW_CC_normal, types: !21)
!21 = !{!22, !23, !54, !83}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !27, file: !27, line: 246, size: 768, elements: !28)
!27 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!28 = !{!29, !37, !40, !43, !45}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, scope: !27, file: !27, line: 227, baseType: !33, size: 2048, elements: !35)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !34)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !46, offset: 256)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !27, file: !27, line: 227, size: 512, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, scope: !27, file: !27, line: 227, baseType: !50, size: 512, elements: !52)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !51)
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !27, file: !27, line: 275, size: 384, elements: !58)
!58 = !{!59, !60, !61, !64, !65, !66, !67, !68, !71, !72, !73, !78}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !33, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !33, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !62, size: 16, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !63)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !62, size: 16, offset: 80)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !33, size: 32, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !33, size: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !62, size: 16, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !69, size: 8, offset: 176)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !70)
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !69, size: 8, offset: 184)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !30, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !74, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, scope: !27, file: !27, line: 227, baseType: !77, size: 4096, elements: !35)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, scope: !27, file: !27, line: 227, baseType: !82, size: 4096, elements: !35)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !50)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !27, file: !27, line: 321, size: 256, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !33, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !33, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !62, size: 16, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !62, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !33, size: 32, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !38, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !33, size: 32, offset: 192)
!95 = !DILocation(line: 21, column: 8, scope: !19)
!96 = !DILocation(line: 12, column: 8, scope: !19)
!97 = !DILocation(line: 13, column: 8, scope: !19)
!98 = !DILocation(line: 22, column: 8, scope: !19)
!99 = !DILocation(line: 17, column: 8, scope: !19)
!100 = !DILocation(line: 24, column: 8, scope: !19)
!101 = !DILocation(line: 26, column: 8, scope: !19)
!102 = distinct !DISubprogram(name: "_encoding_0_encode_1x32xf32_to_1x32xf32", linkageName: "_encoding_0_encode_1x32xf32_to_1x32xf32", scope: !3, file: !3, line: 1, type: !20, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!103 = !DILocation(line: 10, column: 8, scope: !102)
!104 = !DILocation(line: 11, column: 8, scope: !102)
!105 = !DILocation(line: 14, column: 8, scope: !102)
!106 = !DILocation(line: 16, column: 8, scope: !102)
!107 = distinct !DISubprogram(name: "_encoding_1_encode_32x16xf32_to_32x16xf32", linkageName: "_encoding_1_encode_32x16xf32_to_32x16xf32", scope: !5, file: !5, line: 1, type: !20, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!108 = !DILocation(line: 11, column: 8, scope: !107)
!109 = !DILocation(line: 12, column: 8, scope: !107)
!110 = !DILocation(line: 15, column: 8, scope: !107)
!111 = !DILocation(line: 17, column: 8, scope: !107)
!112 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_16_f32", linkageName: "bias_relu_dispatch_0_elementwise_16_f32", scope: !7, file: !7, line: 1, type: !20, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!113 = !DILocation(line: 11, column: 8, scope: !112)
!114 = !DILocation(line: 12, column: 8, scope: !112)
!115 = !DILocation(line: 13, column: 8, scope: !112)
!116 = !DILocation(line: 17, column: 8, scope: !112)
!117 = !DILocation(line: 19, column: 10, scope: !112)
!118 = !DILocation(line: 20, column: 10, scope: !112)
!119 = !DILocation(line: 24, column: 8, scope: !112)
!120 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_16_f32", linkageName: "row_sum_dispatch_0_reduction_16_f32", scope: !9, file: !9, line: 1, type: !20, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8)
!121 = !DILocation(line: 11, column: 8, scope: !120)
!122 = !DILocation(line: 12, column: 8, scope: !120)
!123 = !DILocation(line: 16, column: 8, scope: !120)
!124 = !DILocation(line: 18, column: 10, scope: !120)
!125 = !DILocation(line: 22, column: 8, scope: !120)
!126 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_16_f32", linkageName: "fragment_dispatch_1_reduction_16_f32", scope: !11, file: !11, line: 1, type: !20, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!127 = !DILocation(line: 12, column: 8, scope: !126)
!128 = !DILocation(line: 13, column: 8, scope: !126)
!129 = !DILocation(line: 14, column: 8, scope: !126)
!130 = !DILocation(line: 19, column: 8, scope: !126)
!131 = !DILocation(line: 21, column: 10, scope: !126)
!132 = !DILocation(line: 22, column: 10, scope: !126)
!133 = !DILocation(line: 23, column: 10, scope: !126)
!134 = !DILocation(line: 27, column: 8, scope: !126)
!135 = !{!136, !136, i64 0}
!136 = !{!"short", !17, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float", !17, i64 0}
!139 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!140 = !{!141, !142, i64 296}
!141 = !{!"exp2f_data", !17, i64 0, !142, i64 256, !17, i64 264, !142, i64 288, !142, i64 296, !17, i64 304}
!142 = !{!"double", !17, i64 0}
!143 = !{!141, !142, i64 288}
!144 = !{!145, !145, i64 0}
!145 = !{!"long", !17, i64 0}
!146 = !{!142, !142, i64 0}
!147 = !{!"branch_weights", i32 4001, i32 4000000}
!148 = !{!149, !142, i64 0}
!149 = !{!"", !142, i64 0, !142, i64 8}
!150 = !{!149, !142, i64 8}
!151 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!152 = !{!141, !142, i64 256}
!153 = !{!154, !155, i64 0}
!154 = !{!"iree_uk_mmt4d_params_t", !155, i64 0, !156, i64 8, !156, i64 16, !155, i64 24, !156, i64 32, !156, i64 40, !155, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !157, i64 112}
!155 = !{!"any pointer", !17, i64 0}
!156 = !{!"long long", !17, i64 0}
!157 = !{!"p1 long long", !155, i64 0}
!158 = !{!154, !156, i64 8}
!159 = !{!154, !156, i64 16}
!160 = !{!154, !155, i64 24}
!161 = !{!154, !156, i64 32}
!162 = !{!154, !156, i64 40}
!163 = !{!154, !155, i64 48}
!164 = !{!154, !156, i64 56}
!165 = !{!154, !156, i64 64}
!166 = !{!154, !156, i64 72}
!167 = !{!154, !156, i64 80}
!168 = !{!154, !156, i64 88}
!169 = !{!154, !16, i64 96}
!170 = !{!154, !16, i64 100}
!171 = !{!154, !16, i64 104}
!172 = !{!154, !16, i64 108}
!173 = !{!154, !157, i64 112}
!174 = distinct !{!174, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = distinct !{!176, !175}
!177 = distinct !{!177, !178}
!178 = !{!"llvm.loop.unroll.disable"}
!179 = !{!156, !156, i64 0}
!180 = distinct !{!180, !175}
!181 = distinct !{!181, !175}
!182 = distinct !{!182, !175}
!183 = distinct !{!183, !175}
!184 = distinct !{!184, !175, !185, !186}
!185 = !{!"llvm.loop.isvectorized", i32 1}
!186 = !{!"llvm.loop.unroll.runtime.disable"}
!187 = !{!"branch_weights", i32 4, i32 12}
!188 = distinct !{!188, !175, !185, !186}
!189 = distinct !{!189, !175, !186, !185}
!190 = distinct !{!190, !175, !185, !186}
!191 = distinct !{!191, !175, !185, !186}
!192 = distinct !{!192, !175, !186, !185}
!193 = distinct !{!193, !175}
!194 = distinct !{!194, !175}
!195 = distinct !{!195, !175}
!196 = distinct !{!196, !175}
!197 = distinct !{!197, !175}
!198 = distinct !{!198, !175}
!199 = distinct !{!199, !175}
!200 = distinct !{!200, !175}
!201 = distinct !{!201, !175, !185, !186}
!202 = distinct !{!202, !175, !185, !186}
!203 = distinct !{!203, !175, !186, !185}
!204 = distinct !{!204, !175, !185, !186}
!205 = distinct !{!205, !175, !185, !186}
!206 = distinct !{!206, !175, !186, !185}
!207 = distinct !{!207, !175}
!208 = distinct !{!208, !175}
!209 = distinct !{!209, !175}
!210 = distinct !{!210, !175}
!211 = distinct !{!211, !175}
!212 = distinct !{!212, !178}
!213 = distinct !{!213, !175}
!214 = distinct !{!214, !175}
!215 = distinct !{!215, !175}
!216 = distinct !{!216, !178}
!217 = distinct !{!217, !175, !185, !186}
!218 = distinct !{!218, !175, !186, !185}
!219 = distinct !{!219, !175, !185, !186}
!220 = distinct !{!220, !175, !186, !185}
!221 = !{!17, !17, i64 0}
!222 = distinct !{!222, !175, !185, !186}
!223 = distinct !{!223, !175, !186, !185}
!224 = distinct !{!224, !175}
!225 = distinct !{!225, !175}
!226 = distinct !{!226, !175}
!227 = distinct !{!227, !175, !185, !186}
!228 = distinct !{!228, !175, !186, !185}
!229 = distinct !{!229, !175}
!230 = distinct !{!230, !175}
!231 = distinct !{!231, !175}
!232 = distinct !{!232, !175, !185, !186}
!233 = distinct !{!233, !175, !186, !185}
!234 = distinct !{!234, !175}
!235 = distinct !{!235, !175}
!236 = distinct !{!236, !175}
!237 = distinct !{!237, !175, !185, !186}
!238 = distinct !{!238, !175, !186, !185}
!239 = distinct !{!239, !175}
!240 = distinct !{!240, !175}
!241 = distinct !{!241, !175}
!242 = distinct !{!242, !175}
!243 = distinct !{!243, !175}
!244 = distinct !{!244, !175}
!245 = distinct !{!245, !175}
!246 = distinct !{!246, !175, !185, !186}
!247 = distinct !{!247, !175, !186, !185}
!248 = distinct !{!248, !175, !185, !186}
!249 = distinct !{!249, !175, !186, !185}
!250 = distinct !{!250, !175}
!251 = distinct !{!251, !175}
!252 = distinct !{!252, !175}
!253 = distinct !{!253, !175}
!254 = distinct !{!254, !175, !185, !186}
!255 = distinct !{!255, !175, !186, !185}
!256 = distinct !{!256, !175, !185, !186}
!257 = distinct !{!257, !175, !186, !185}
!258 = distinct !{!258, !175, !185, !186}
!259 = distinct !{!259, !175, !186, !185}
!260 = distinct !{!260, !175}
!261 = distinct !{!261, !175}
!262 = distinct !{!262, !175}
!263 = !{!264}
!264 = distinct !{!264, !265, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 1"}
!265 = distinct !{!265, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma"}
!266 = !{!267, !264, !268}
!267 = distinct !{!267, !265, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 0"}
!268 = distinct !{!268, !265, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 2"}
!269 = !{!264, !268}
!270 = !{!267, !268}
!271 = distinct !{!271, !175}
!272 = !{!273}
!273 = distinct !{!273, !274, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 1"}
!274 = distinct !{!274, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma"}
!275 = !{!276, !273, !277}
!276 = distinct !{!276, !274, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 0"}
!277 = distinct !{!277, !274, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 2"}
!278 = !{!273, !277}
!279 = !{!276, !277}
!280 = !{!281}
!281 = distinct !{!281, !282, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 1"}
!282 = distinct !{!282, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma"}
!283 = !{!284, !281, !285}
!284 = distinct !{!284, !282, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 0"}
!285 = distinct !{!285, !282, !"iree_uk_mmt4d_tile_s8s8s32_1x8x2_to_4x8x2_x86_64_avx2_fma: argument 2"}
!286 = !{!281, !285}
!287 = !{!284, !285}
!288 = distinct !{!288, !175}
!289 = !{!290}
!290 = distinct !{!290, !291, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 1"}
!291 = distinct !{!291, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma"}
!292 = !{!293, !290, !294}
!293 = distinct !{!293, !291, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 0"}
!294 = distinct !{!294, !291, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 2"}
!295 = !{!290, !294}
!296 = !{!293, !294}
!297 = distinct !{!297, !175}
!298 = distinct !{!298, !178}
!299 = !{!300}
!300 = distinct !{!300, !301, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 1"}
!301 = distinct !{!301, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma"}
!302 = !{!303, !300, !304}
!303 = distinct !{!303, !301, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 0"}
!304 = distinct !{!304, !301, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 2"}
!305 = !{!300, !304}
!306 = !{!303, !304}
!307 = !{!308}
!308 = distinct !{!308, !309, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 1"}
!309 = distinct !{!309, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma"}
!310 = !{!311, !308, !312}
!311 = distinct !{!311, !309, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 0"}
!312 = distinct !{!312, !309, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 2"}
!313 = !{!308, !312}
!314 = !{!311, !312}
!315 = !{!316}
!316 = distinct !{!316, !317, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 1"}
!317 = distinct !{!317, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma"}
!318 = !{!319, !316, !320}
!319 = distinct !{!319, !317, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 0"}
!320 = distinct !{!320, !317, !"iree_uk_mmt4d_tile_s16s16s32_1x8x2_to_8x8x2_x86_64_avx2_fma: argument 2"}
!321 = !{!316, !320}
!322 = !{!319, !320}
!323 = !{!324, !326, !327}
!324 = distinct !{!324, !325, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!325 = distinct !{!325, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!326 = distinct !{!326, !325, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!327 = distinct !{!327, !325, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!328 = !{!326, !327}
!329 = distinct !{!329, !175}
!330 = distinct !{!330, !178}
!331 = !{!332, !334, !335}
!332 = distinct !{!332, !333, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!333 = distinct !{!333, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!334 = distinct !{!334, !333, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!335 = distinct !{!335, !333, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!336 = !{!334, !335}
!337 = !{!338, !340, !341}
!338 = distinct !{!338, !339, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!339 = distinct !{!339, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!340 = distinct !{!340, !339, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!341 = distinct !{!341, !339, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!342 = !{!340, !341}
!343 = !{!344, !346, !347}
!344 = distinct !{!344, !345, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!345 = distinct !{!345, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!346 = distinct !{!346, !345, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!347 = distinct !{!347, !345, !"iree_uk_mmt4d_tile_f32f32f32_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!348 = !{!346, !347}
!349 = !{!350}
!350 = distinct !{!350, !351, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!351 = distinct !{!351, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!352 = !{!353}
!353 = distinct !{!353, !351, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!354 = !{!355}
!355 = distinct !{!355, !351, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!356 = !{!350, !353, !355}
!357 = !{!353, !355}
!358 = !{!350, !353}
!359 = !{!350, !355}
!360 = distinct !{!360, !175}
!361 = !{!362}
!362 = distinct !{!362, !363, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!363 = distinct !{!363, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!366 = !{!367}
!367 = distinct !{!367, !363, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!368 = !{!362, !365, !367}
!369 = !{!365, !367}
!370 = !{!362, !365}
!371 = !{!362, !367}
!372 = !{!373}
!373 = distinct !{!373, !374, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!374 = distinct !{!374, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!377 = !{!378}
!378 = distinct !{!378, !374, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!379 = !{!373, !376, !378}
!380 = !{!376, !378}
!381 = !{!373, !376}
!382 = !{!373, !378}
!383 = !{!384}
!384 = distinct !{!384, !385, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!385 = distinct !{!385, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!388 = !{!389}
!389 = distinct !{!389, !385, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!390 = !{!384, !387, !389}
!391 = !{!387, !389}
!392 = !{!384, !387}
!393 = !{!384, !389}
!394 = !{!395}
!395 = distinct !{!395, !396, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!396 = distinct !{!396, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!397 = !{!398}
!398 = distinct !{!398, !396, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!399 = !{!400}
!400 = distinct !{!400, !396, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!401 = !{!395, !398, !400}
!402 = !{!398, !400}
!403 = !{!395, !398}
!404 = !{!395, !400}
!405 = !{!406}
!406 = distinct !{!406, !407, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!407 = distinct !{!407, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!410 = !{!411}
!411 = distinct !{!411, !407, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!412 = !{!406, !409, !411}
!413 = !{!409, !411}
!414 = !{!406, !409}
!415 = !{!406, !411}
!416 = !{!417}
!417 = distinct !{!417, !418, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!418 = distinct !{!418, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!421 = !{!422}
!422 = distinct !{!422, !418, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!423 = !{!417, !420, !422}
!424 = !{!420, !422}
!425 = !{!417, !420}
!426 = !{!417, !422}
!427 = !{!428}
!428 = distinct !{!428, !429, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 0"}
!429 = distinct !{!429, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma"}
!430 = !{!431}
!431 = distinct !{!431, !429, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 1"}
!432 = !{!433}
!433 = distinct !{!433, !429, !"iree_uk_mmt4d_tile_f16f16fXX_1x8x1_to_8x8x1_x86_64_avx2_fma: argument 2"}
!434 = !{!428, !431, !433}
!435 = !{!431, !433}
!436 = !{!428, !431}
!437 = !{!428, !433}
!438 = !{!439}
!439 = distinct !{!439, !440, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!440 = distinct !{!440, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base"}
!441 = !{!442, !439, !443}
!442 = distinct !{!442, !440, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!443 = distinct !{!443, !440, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!444 = !{!439, !443}
!445 = !{!442, !443}
!446 = distinct !{!446, !175}
!447 = distinct !{!447, !178}
!448 = !{!449}
!449 = distinct !{!449, !450, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!450 = distinct !{!450, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base"}
!451 = !{!452, !449, !453}
!452 = distinct !{!452, !450, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!453 = distinct !{!453, !450, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!454 = !{!449, !453}
!455 = !{!452, !453}
!456 = !{!457}
!457 = distinct !{!457, !458, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!458 = distinct !{!458, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base"}
!459 = !{!460, !457, !461}
!460 = distinct !{!460, !458, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!461 = distinct !{!461, !458, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!462 = !{!457, !461}
!463 = !{!460, !461}
!464 = !{!465}
!465 = distinct !{!465, !466, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!466 = distinct !{!466, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base"}
!467 = !{!468, !465, !469}
!468 = distinct !{!468, !466, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!469 = distinct !{!469, !466, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!470 = !{!465, !469}
!471 = !{!468, !469}
!472 = !{!473}
!473 = distinct !{!473, !474, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!474 = distinct !{!474, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base"}
!475 = !{!476, !473, !477}
!476 = distinct !{!476, !474, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!477 = distinct !{!477, !474, !"iree_uk_mmt4d_tile_f32f32f32_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!478 = !{!473, !477}
!479 = !{!476, !477}
!480 = !{!481}
!481 = distinct !{!481, !482, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!482 = distinct !{!482, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!483 = !{!484}
!484 = distinct !{!484, !482, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!485 = !{!486}
!486 = distinct !{!486, !482, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!487 = !{!481, !484, !486}
!488 = !{!484, !486}
!489 = !{!481, !484}
!490 = !{!481, !486}
!491 = distinct !{!491, !175}
!492 = !{!493}
!493 = distinct !{!493, !494, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!494 = distinct !{!494, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!495 = !{!496}
!496 = distinct !{!496, !494, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!497 = !{!498}
!498 = distinct !{!498, !494, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!499 = !{!493, !496, !498}
!500 = !{!496, !498}
!501 = !{!493, !496}
!502 = !{!493, !498}
!503 = !{!504}
!504 = distinct !{!504, !505, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!505 = distinct !{!505, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!506 = !{!507}
!507 = distinct !{!507, !505, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!508 = !{!509}
!509 = distinct !{!509, !505, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!510 = !{!504, !507, !509}
!511 = !{!507, !509}
!512 = !{!504, !507}
!513 = !{!504, !509}
!514 = !{!515}
!515 = distinct !{!515, !516, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!516 = distinct !{!516, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!517 = !{!518}
!518 = distinct !{!518, !516, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!519 = !{!520}
!520 = distinct !{!520, !516, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!521 = !{!515, !518, !520}
!522 = !{!518, !520}
!523 = !{!515, !518}
!524 = !{!515, !520}
!525 = !{!526}
!526 = distinct !{!526, !527, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!527 = distinct !{!527, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!528 = !{!529}
!529 = distinct !{!529, !527, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!530 = !{!531}
!531 = distinct !{!531, !527, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!532 = !{!526, !529, !531}
!533 = !{!529, !531}
!534 = !{!526, !529}
!535 = !{!526, !531}
!536 = !{!537}
!537 = distinct !{!537, !538, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!538 = distinct !{!538, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!539 = !{!540}
!540 = distinct !{!540, !538, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!541 = !{!542}
!542 = distinct !{!542, !538, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!543 = !{!544}
!544 = distinct !{!544, !545, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!545 = distinct !{!545, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!546 = !{!547}
!547 = distinct !{!547, !545, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!548 = !{!549}
!549 = distinct !{!549, !545, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!550 = !{!544, !547, !549, !537, !540, !542}
!551 = !{!544, !537}
!552 = !{!547, !549, !540, !542}
!553 = !{!549, !542}
!554 = !{!544, !547, !537, !540}
!555 = !{!547, !540}
!556 = !{!544, !549, !537, !542}
!557 = distinct !{!557, !178}
!558 = distinct !{!558, !175}
!559 = !{!560}
!560 = distinct !{!560, !561, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!561 = distinct !{!561, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!562 = !{!563}
!563 = distinct !{!563, !561, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!564 = !{!565}
!565 = distinct !{!565, !561, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!566 = !{!567}
!567 = distinct !{!567, !568, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!568 = distinct !{!568, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!569 = !{!570}
!570 = distinct !{!570, !568, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!571 = !{!572}
!572 = distinct !{!572, !568, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!573 = !{!567, !570, !572, !560, !563, !565}
!574 = !{!567, !560}
!575 = !{!570, !572, !563, !565}
!576 = !{!572, !565}
!577 = !{!567, !570, !560, !563}
!578 = !{!570, !563}
!579 = !{!567, !572, !560, !565}
!580 = !{!581}
!581 = distinct !{!581, !582, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!582 = distinct !{!582, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!583 = !{!584}
!584 = distinct !{!584, !582, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!585 = !{!586}
!586 = distinct !{!586, !582, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!589 = distinct !{!589, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!590 = !{!591}
!591 = distinct !{!591, !589, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!592 = !{!593}
!593 = distinct !{!593, !589, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!594 = !{!588, !591, !593, !581, !584, !586}
!595 = !{!588, !581}
!596 = !{!591, !593, !584, !586}
!597 = !{!593, !586}
!598 = !{!588, !591, !581, !584}
!599 = !{!591, !584}
!600 = !{!588, !593, !581, !586}
!601 = !{!602}
!602 = distinct !{!602, !603, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!603 = distinct !{!603, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!604 = !{!605}
!605 = distinct !{!605, !603, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!606 = !{!607}
!607 = distinct !{!607, !603, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!608 = !{!609}
!609 = distinct !{!609, !610, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!610 = distinct !{!610, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!611 = !{!612}
!612 = distinct !{!612, !610, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!613 = !{!614}
!614 = distinct !{!614, !610, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!615 = !{!609, !612, !614, !602, !605, !607}
!616 = !{!609, !602}
!617 = !{!612, !614, !605, !607}
!618 = !{!614, !607}
!619 = !{!609, !612, !602, !605}
!620 = !{!612, !605}
!621 = !{!609, !614, !602, !607}
!622 = !{!623}
!623 = distinct !{!623, !624, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!624 = distinct !{!624, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!625 = !{!626}
!626 = distinct !{!626, !624, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!627 = !{!628}
!628 = distinct !{!628, !624, !"iree_uk_mmt4d_tile_bf16bf16f32_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!629 = !{!630}
!630 = distinct !{!630, !631, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!631 = distinct !{!631, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!632 = !{!633}
!633 = distinct !{!633, !631, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!634 = !{!635}
!635 = distinct !{!635, !631, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!636 = !{!630, !633, !635, !623, !626, !628}
!637 = !{!630, !623}
!638 = !{!633, !635, !626, !628}
!639 = !{!635, !628}
!640 = !{!630, !633, !623, !626}
!641 = !{!633, !626}
!642 = !{!630, !635, !623, !628}
!643 = !{!644}
!644 = distinct !{!644, !645, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!645 = distinct !{!645, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!648 = !{!649}
!649 = distinct !{!649, !645, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!650 = !{!644, !647, !649}
!651 = !{!647, !649}
!652 = !{!644, !647}
!653 = !{!644, !649}
!654 = !{!655}
!655 = distinct !{!655, !656, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!656 = distinct !{!656, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!657 = !{!658}
!658 = distinct !{!658, !656, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!659 = !{!660}
!660 = distinct !{!660, !656, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!661 = !{!655, !658, !660}
!662 = !{!658, !660}
!663 = !{!655, !658}
!664 = !{!655, !660}
!665 = !{!666}
!666 = distinct !{!666, !667, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!667 = distinct !{!667, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!668 = !{!669}
!669 = distinct !{!669, !667, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!670 = !{!671}
!671 = distinct !{!671, !667, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!672 = !{!666, !669, !671}
!673 = !{!669, !671}
!674 = !{!666, !669}
!675 = !{!666, !671}
!676 = !{!677}
!677 = distinct !{!677, !678, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!678 = distinct !{!678, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!679 = !{!680}
!680 = distinct !{!680, !678, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!681 = !{!682}
!682 = distinct !{!682, !678, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!683 = !{!677, !680, !682}
!684 = !{!680, !682}
!685 = !{!677, !680}
!686 = !{!677, !682}
!687 = !{!688}
!688 = distinct !{!688, !689, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 0"}
!689 = distinct !{!689, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base"}
!690 = !{!691}
!691 = distinct !{!691, !689, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 1"}
!692 = !{!693}
!693 = distinct !{!693, !689, !"iree_uk_mmt4d_tile_f16f16fXX_1x16x1_to_16x16x1_x86_64_avx512_base: argument 2"}
!694 = !{!688, !691, !693}
!695 = !{!691, !693}
!696 = !{!688, !691}
!697 = !{!688, !693}
!698 = !{!699}
!699 = distinct !{!699, !700, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!700 = distinct !{!700, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!701 = !{!702}
!702 = distinct !{!702, !700, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!703 = !{!704}
!704 = distinct !{!704, !700, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!705 = !{!706}
!706 = distinct !{!706, !707, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!707 = distinct !{!707, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!708 = !{!709}
!709 = distinct !{!709, !707, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!710 = !{!711}
!711 = distinct !{!711, !707, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!712 = !{!706, !709, !711, !699, !702, !704}
!713 = !{!706, !699}
!714 = !{!709, !711, !702, !704}
!715 = !{!711, !704}
!716 = !{!706, !709, !699, !702}
!717 = !{!709, !702}
!718 = !{!706, !711, !699, !704}
!719 = distinct !{!719, !178}
!720 = !{!721}
!721 = distinct !{!721, !722, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!722 = distinct !{!722, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!723 = !{!724}
!724 = distinct !{!724, !722, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!725 = !{!726}
!726 = distinct !{!726, !722, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!727 = !{!728}
!728 = distinct !{!728, !729, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!729 = distinct !{!729, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!730 = !{!731}
!731 = distinct !{!731, !729, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!732 = !{!733}
!733 = distinct !{!733, !729, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!734 = !{!728, !731, !733, !721, !724, !726}
!735 = !{!728, !721}
!736 = !{!731, !733, !724, !726}
!737 = !{!733, !726}
!738 = !{!728, !731, !721, !724}
!739 = !{!731, !724}
!740 = !{!728, !733, !721, !726}
!741 = !{!742}
!742 = distinct !{!742, !743, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!743 = distinct !{!743, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!744 = !{!745}
!745 = distinct !{!745, !743, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!746 = !{!747}
!747 = distinct !{!747, !743, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!748 = !{!749}
!749 = distinct !{!749, !750, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!750 = distinct !{!750, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!751 = !{!752}
!752 = distinct !{!752, !750, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!753 = !{!754}
!754 = distinct !{!754, !750, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!755 = !{!749, !752, !754, !742, !745, !747}
!756 = !{!749, !742}
!757 = !{!752, !754, !745, !747}
!758 = !{!754, !747}
!759 = !{!749, !752, !742, !745}
!760 = !{!752, !745}
!761 = !{!749, !754, !742, !747}
!762 = !{!763}
!763 = distinct !{!763, !764, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!764 = distinct !{!764, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!765 = !{!766}
!766 = distinct !{!766, !764, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!767 = !{!768}
!768 = distinct !{!768, !764, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!769 = !{!770}
!770 = distinct !{!770, !771, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!771 = distinct !{!771, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!772 = !{!773}
!773 = distinct !{!773, !771, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!774 = !{!775}
!775 = distinct !{!775, !771, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!776 = !{!770, !773, !775, !763, !766, !768}
!777 = !{!770, !763}
!778 = !{!773, !775, !766, !768}
!779 = !{!775, !768}
!780 = !{!770, !773, !763, !766}
!781 = !{!773, !766}
!782 = !{!770, !775, !763, !768}
!783 = !{!784}
!784 = distinct !{!784, !785, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!785 = distinct !{!785, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!786 = !{!787}
!787 = distinct !{!787, !785, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!788 = !{!789}
!789 = distinct !{!789, !785, !"iree_uk_mmt4d_tile_bf16bf16bf16_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 0"}
!792 = distinct !{!792, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16"}
!793 = !{!794}
!794 = distinct !{!794, !792, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 1"}
!795 = !{!796}
!796 = distinct !{!796, !792, !"iree_uk_mmt4d_tile_bf16bf16fXX_1x16x2_to_16x16x2_x86_64_avx512_bf16: argument 2"}
!797 = !{!791, !794, !796, !784, !787, !789}
!798 = !{!791, !784}
!799 = !{!794, !796, !787, !789}
!800 = !{!796, !789}
!801 = !{!791, !794, !784, !787}
!802 = !{!794, !787}
!803 = !{!791, !796, !784, !789}
!804 = !{!805}
!805 = distinct !{!805, !806, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 1"}
!806 = distinct !{!806, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base"}
!807 = !{!808, !805, !809}
!808 = distinct !{!808, !806, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 0"}
!809 = distinct !{!809, !806, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 2"}
!810 = !{!805, !809}
!811 = !{!808, !809}
!812 = distinct !{!812, !175}
!813 = !{!814}
!814 = distinct !{!814, !815, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 1"}
!815 = distinct !{!815, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base"}
!816 = !{!817, !814, !818}
!817 = distinct !{!817, !815, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 0"}
!818 = distinct !{!818, !815, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 2"}
!819 = !{!814, !818}
!820 = !{!817, !818}
!821 = !{!822}
!822 = distinct !{!822, !823, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 1"}
!823 = distinct !{!823, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base"}
!824 = !{!825, !822, !826}
!825 = distinct !{!825, !823, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 0"}
!826 = distinct !{!826, !823, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 2"}
!827 = !{!822, !826}
!828 = !{!825, !826}
!829 = !{!830}
!830 = distinct !{!830, !831, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 1"}
!831 = distinct !{!831, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base"}
!832 = !{!833, !830, !834}
!833 = distinct !{!833, !831, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 0"}
!834 = distinct !{!834, !831, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_8x16x2_x86_64_avx512_base: argument 2"}
!835 = !{!830, !834}
!836 = !{!833, !834}
!837 = distinct !{!837, !175}
!838 = !{!839}
!839 = distinct !{!839, !840, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!840 = distinct !{!840, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!841 = !{!842, !839, !843}
!842 = distinct !{!842, !840, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!843 = distinct !{!843, !840, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!844 = !{!839, !843}
!845 = !{!842, !843}
!846 = distinct !{!846, !175}
!847 = !{!848}
!848 = distinct !{!848, !849, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!849 = distinct !{!849, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!850 = !{!851, !848, !852}
!851 = distinct !{!851, !849, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!852 = distinct !{!852, !849, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!853 = !{!848, !852}
!854 = !{!851, !852}
!855 = !{!856}
!856 = distinct !{!856, !857, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!857 = distinct !{!857, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!858 = !{!859, !856, !860}
!859 = distinct !{!859, !857, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!860 = distinct !{!860, !857, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!861 = !{!856, !860}
!862 = !{!859, !860}
!863 = !{!864}
!864 = distinct !{!864, !865, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!865 = distinct !{!865, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!866 = !{!867, !864, !868}
!867 = distinct !{!867, !865, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!868 = distinct !{!868, !865, !"iree_uk_mmt4d_tile_s8s8s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!869 = !{!864, !868}
!870 = !{!867, !868}
!871 = distinct !{!871, !175}
!872 = !{!873}
!873 = distinct !{!873, !874, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 1"}
!874 = distinct !{!874, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base"}
!875 = !{!876, !873, !877}
!876 = distinct !{!876, !874, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 0"}
!877 = distinct !{!877, !874, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 2"}
!878 = !{!873, !877}
!879 = !{!876, !877}
!880 = distinct !{!880, !175}
!881 = distinct !{!881, !178}
!882 = !{!883}
!883 = distinct !{!883, !884, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 1"}
!884 = distinct !{!884, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base"}
!885 = !{!886, !883, !887}
!886 = distinct !{!886, !884, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 0"}
!887 = distinct !{!887, !884, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 2"}
!888 = !{!883, !887}
!889 = !{!886, !887}
!890 = !{!891}
!891 = distinct !{!891, !892, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 1"}
!892 = distinct !{!892, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base"}
!893 = !{!894, !891, !895}
!894 = distinct !{!894, !892, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 0"}
!895 = distinct !{!895, !892, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 2"}
!896 = !{!891, !895}
!897 = !{!894, !895}
!898 = !{!899}
!899 = distinct !{!899, !900, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 1"}
!900 = distinct !{!900, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base"}
!901 = !{!902, !899, !903}
!902 = distinct !{!902, !900, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 0"}
!903 = distinct !{!903, !900, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 2"}
!904 = !{!899, !903}
!905 = !{!902, !903}
!906 = !{!907}
!907 = distinct !{!907, !908, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 1"}
!908 = distinct !{!908, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base"}
!909 = !{!910, !907, !911}
!910 = distinct !{!910, !908, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 0"}
!911 = distinct !{!911, !908, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_base: argument 2"}
!912 = !{!907, !911}
!913 = !{!910, !911}
!914 = !{!915}
!915 = distinct !{!915, !916, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!916 = distinct !{!916, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!917 = !{!918, !915, !919}
!918 = distinct !{!918, !916, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!919 = distinct !{!919, !916, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!920 = !{!915, !919}
!921 = !{!918, !919}
!922 = distinct !{!922, !175}
!923 = distinct !{!923, !178}
!924 = !{!925}
!925 = distinct !{!925, !926, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!926 = distinct !{!926, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!927 = !{!928, !925, !929}
!928 = distinct !{!928, !926, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!929 = distinct !{!929, !926, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!930 = !{!925, !929}
!931 = !{!928, !929}
!932 = !{!933}
!933 = distinct !{!933, !934, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!934 = distinct !{!934, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!935 = !{!936, !933, !937}
!936 = distinct !{!936, !934, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!937 = distinct !{!937, !934, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!938 = !{!933, !937}
!939 = !{!936, !937}
!940 = !{!941}
!941 = distinct !{!941, !942, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!942 = distinct !{!942, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!943 = !{!944, !941, !945}
!944 = distinct !{!944, !942, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!945 = distinct !{!945, !942, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!946 = !{!941, !945}
!947 = !{!944, !945}
!948 = !{!949}
!949 = distinct !{!949, !950, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 1"}
!950 = distinct !{!950, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni"}
!951 = !{!952, !949, !953}
!952 = distinct !{!952, !950, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 0"}
!953 = distinct !{!953, !950, !"iree_uk_mmt4d_tile_s16s16s32_1x16x2_to_16x16x2_x86_64_avx512_vnni: argument 2"}
!954 = !{!949, !953}
!955 = !{!952, !953}
!956 = distinct !{!956, !175}
