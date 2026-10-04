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
%struct.exp2f_data = type { [32 x i64], double, [3 x double], double, double, [3 x double] }
%struct.powf_log2_data = type { [16 x %struct.anon], [5 x double] }
%struct.anon = type { double, double }
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
@__exp2f_data = hidden local_unnamed_addr constant %struct.exp2f_data { [32 x i64] [i64 4607182418800017408, i64 4607140297302181236, i64 4607100335213349135, i64 4607062579818421073, i64 4607027079437701499, i64 4606993883449571754, i64 4606963042313658936, i64 4606934607594512097, i64 4606908631985796885, i64 4606885169335019979, i64 4606864274668794914, i64 4606846004218661165, i64 4606830415447468583, i64 4606817567076339586, i64 4606807519112221737, i64 4606800332876043653, i64 4606796071031487437, i64 4606794797614391156, i64 4606796578062795143, i64 4606801479247646227, i64 4606809569504174299, i64 4606820918663955941, i64 4606835598087680144, i64 4606853680698631517, i64 4606875241016906669, i64 4606900355194379847, i64 4606929101050434204, i64 4606961558108475497, i64 4606997807633245319, i64 4607037932668951391, i64 4607082018078232794, i64 4607130150581978432], double 0x42E8000000000000, [3 x double] [double 0x3FAC6AF84B912394, double 0x3FCEBFCE50FAC4F3, double 0x3FE62E42FF0C52D6], double 0x4338000000000000, double 0x40471547652B82FE, [3 x double] [double 0x3EBC6AF84B912394, double 0x3F2EBFCE50FAC4F3, double 0x3F962E42FF0C52D6] }, align 8
@__powf_log2_data = hidden local_unnamed_addr constant %struct.powf_log2_data { [16 x %struct.anon] [%struct.anon { double 0x3FF661EC79F8F3BE, double 0xBFDEFEC65B963019 }, %struct.anon { double 0x3FF571ED4AAF883D, double 0xBFDB0B6832D4FCA4 }, %struct.anon { double 0x3FF49539F0F010B0, double 0xBFD7418B0A1FB77B }, %struct.anon { double 0x3FF3C995B0B80385, double 0xBFD39DE91A6DCF7B }, %struct.anon { double 0x3FF30D190C8864A5, double 0xBFD01D9BF3F2B631 }, %struct.anon { double 0x3FF25E227B0B8EA0, double 0xBFC97C1D1B3B7AF0 }, %struct.anon { double 0x3FF1BB4A4A1A343F, double 0xBFC2F9E393AF3C9F }, %struct.anon { double 0x3FF12358F08AE5BA, double 0xBFB960CBBF788D5C }, %struct.anon { double 0x3FF0953F419900A7, double 0xBFAA6F9DB6475FCE }, %struct.anon { double 1.000000e+00, double 0.000000e+00 }, %struct.anon { double 0x3FEE608CFD9A47AC, double 0x3FB338CA9F24F53D }, %struct.anon { double 0x3FECA4B31F026AA0, double 0x3FC476A9543891BA }, %struct.anon { double 0x3FEB2036576AFCE6, double 0x3FCE840B4AC4E4D2 }, %struct.anon { double 0x3FE9C2D163A1AA2D, double 0x3FD40645F0C6651C }, %struct.anon { double 0x3FE886E6037841ED, double 0x3FD88E9C2C1B9FF8 }, %struct.anon { double 0x3FE767DCF5534862, double 0x3FDCE0A44EB17BCC }], [5 x double] [double 0x3FD27616C9496E0B, double 0xBFD71969A075C67A, double 0x3FDEC70A6CA7BADD, double 0xBFE7154748BEF6C8, double 0x3FF71547652AB82B] }, align 8

define internal i32 @matmul_dispatch_0_matmul_Dx16x32_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !15 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !91
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !91
  %6 = load i32, ptr %5, align 4, !dbg !91
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !92
  %8 = load i32, ptr %7, align 4, !dbg !92
  %9 = zext i32 %6 to i64, !dbg !93
  %10 = zext i32 %8 to i64, !dbg !94
  %11 = shl i64 %10, 32, !dbg !95
  %12 = or i64 %9, %11, !dbg !96
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !97
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !97
  %15 = load ptr, ptr %14, align 8, !dbg !97
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !97
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !98
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !98
  %18 = load ptr, ptr %17, align 8, !dbg !98
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !98
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !99
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !99
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !99
  %22 = load ptr, ptr %21, align 8, !dbg !99
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !99
  br label %23, !dbg !100

23:                                               ; preds = %132, %3
  %24 = phi i64 [ %133, %132 ], [ 0, %3 ], !dbg !100
  %25 = icmp slt i64 %24, %12, !dbg !100
  br i1 %25, label %26, label %134, !dbg !100

26:                                               ; preds = %23
  %27 = sub i64 %12, %24, !dbg !100
  %28 = icmp slt i64 %27, 64, !dbg !100
  %29 = select i1 %28, i64 %27, i64 64, !dbg !100
  br label %30, !dbg !100

30:                                               ; preds = %130, %26
  %31 = phi i64 [ %131, %130 ], [ 0, %26 ], !dbg !100
  %32 = icmp slt i64 %31, %29, !dbg !100
  br i1 %32, label %33, label %132, !dbg !100

33:                                               ; preds = %30
  %34 = add i64 %31, %24, !dbg !100
  br label %35, !dbg !100

35:                                               ; preds = %124, %33
  %36 = phi i64 [ %129, %124 ], [ 0, %33 ], !dbg !100
  %37 = icmp slt i64 %36, 16, !dbg !100
  br i1 %37, label %38, label %130, !dbg !100

38:                                               ; preds = %42, %35
  %39 = phi i64 [ %123, %42 ], [ 0, %35 ], !dbg !100
  %40 = phi <1 x float> [ %122, %42 ], [ zeroinitializer, %35 ], !dbg !100
  %41 = icmp slt i64 %39, 32, !dbg !100
  br i1 %41, label %42, label %124, !dbg !100

42:                                               ; preds = %38
  %43 = mul i64 %39, 16, !dbg !100
  %44 = add i64 %43, %36, !dbg !100
  %45 = getelementptr float, ptr %15, i64 %44, !dbg !100
  %46 = load <1 x float>, ptr %45, align 4, !dbg !100
  %47 = add i64 %39, 1, !dbg !100
  %48 = mul i64 %47, 16, !dbg !100
  %49 = add i64 %48, %36, !dbg !100
  %50 = getelementptr float, ptr %15, i64 %49, !dbg !100
  %51 = load <1 x float>, ptr %50, align 4, !dbg !100
  %52 = add i64 %39, 2, !dbg !100
  %53 = mul i64 %52, 16, !dbg !100
  %54 = add i64 %53, %36, !dbg !100
  %55 = getelementptr float, ptr %15, i64 %54, !dbg !100
  %56 = load <1 x float>, ptr %55, align 4, !dbg !100
  %57 = add i64 %39, 3, !dbg !100
  %58 = mul i64 %57, 16, !dbg !100
  %59 = add i64 %58, %36, !dbg !100
  %60 = getelementptr float, ptr %15, i64 %59, !dbg !100
  %61 = load <1 x float>, ptr %60, align 4, !dbg !100
  %62 = add i64 %39, 4, !dbg !100
  %63 = mul i64 %62, 16, !dbg !100
  %64 = add i64 %63, %36, !dbg !100
  %65 = getelementptr float, ptr %15, i64 %64, !dbg !100
  %66 = load <1 x float>, ptr %65, align 4, !dbg !100
  %67 = add i64 %39, 5, !dbg !100
  %68 = mul i64 %67, 16, !dbg !100
  %69 = add i64 %68, %36, !dbg !100
  %70 = getelementptr float, ptr %15, i64 %69, !dbg !100
  %71 = load <1 x float>, ptr %70, align 4, !dbg !100
  %72 = add i64 %39, 6, !dbg !100
  %73 = mul i64 %72, 16, !dbg !100
  %74 = add i64 %73, %36, !dbg !100
  %75 = getelementptr float, ptr %15, i64 %74, !dbg !100
  %76 = load <1 x float>, ptr %75, align 4, !dbg !100
  %77 = add i64 %39, 7, !dbg !100
  %78 = mul i64 %77, 16, !dbg !100
  %79 = add i64 %78, %36, !dbg !100
  %80 = getelementptr float, ptr %15, i64 %79, !dbg !100
  %81 = load <1 x float>, ptr %80, align 4, !dbg !100
  %82 = mul nuw nsw i64 %34, 32, !dbg !101
  %83 = add nuw nsw i64 %82, %39, !dbg !101
  %84 = getelementptr inbounds nuw float, ptr %18, i64 %83, !dbg !101
  %85 = load float, ptr %84, align 4, !dbg !101
  %86 = insertelement <1 x float> poison, float %85, i32 0, !dbg !101
  %87 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %46, <1 x float> %86, <1 x float> %40), !dbg !101
  %88 = add nuw nsw i64 %82, %47, !dbg !101
  %89 = getelementptr inbounds nuw float, ptr %18, i64 %88, !dbg !101
  %90 = load float, ptr %89, align 4, !dbg !101
  %91 = insertelement <1 x float> poison, float %90, i32 0, !dbg !101
  %92 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %51, <1 x float> %91, <1 x float> %87), !dbg !101
  %93 = add nuw nsw i64 %82, %52, !dbg !101
  %94 = getelementptr inbounds nuw float, ptr %18, i64 %93, !dbg !101
  %95 = load float, ptr %94, align 4, !dbg !101
  %96 = insertelement <1 x float> poison, float %95, i32 0, !dbg !101
  %97 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %56, <1 x float> %96, <1 x float> %92), !dbg !101
  %98 = add nuw nsw i64 %82, %57, !dbg !101
  %99 = getelementptr inbounds nuw float, ptr %18, i64 %98, !dbg !101
  %100 = load float, ptr %99, align 4, !dbg !101
  %101 = insertelement <1 x float> poison, float %100, i32 0, !dbg !101
  %102 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %61, <1 x float> %101, <1 x float> %97), !dbg !101
  %103 = add nuw nsw i64 %82, %62, !dbg !101
  %104 = getelementptr inbounds nuw float, ptr %18, i64 %103, !dbg !101
  %105 = load float, ptr %104, align 4, !dbg !101
  %106 = insertelement <1 x float> poison, float %105, i32 0, !dbg !101
  %107 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %66, <1 x float> %106, <1 x float> %102), !dbg !101
  %108 = add nuw nsw i64 %82, %67, !dbg !101
  %109 = getelementptr inbounds nuw float, ptr %18, i64 %108, !dbg !101
  %110 = load float, ptr %109, align 4, !dbg !101
  %111 = insertelement <1 x float> poison, float %110, i32 0, !dbg !101
  %112 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %71, <1 x float> %111, <1 x float> %107), !dbg !101
  %113 = add nuw nsw i64 %82, %72, !dbg !101
  %114 = getelementptr inbounds nuw float, ptr %18, i64 %113, !dbg !101
  %115 = load float, ptr %114, align 4, !dbg !101
  %116 = insertelement <1 x float> poison, float %115, i32 0, !dbg !101
  %117 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %76, <1 x float> %116, <1 x float> %112), !dbg !101
  %118 = add nuw nsw i64 %82, %77, !dbg !101
  %119 = getelementptr inbounds nuw float, ptr %18, i64 %118, !dbg !101
  %120 = load float, ptr %119, align 4, !dbg !101
  %121 = insertelement <1 x float> poison, float %120, i32 0, !dbg !101
  %122 = call <1 x float> @llvm.fmuladd.v1f32(<1 x float> %81, <1 x float> %121, <1 x float> %117), !dbg !101
  %123 = add i64 %39, 8, !dbg !100
  br label %38, !dbg !100

124:                                              ; preds = %38
  %125 = extractelement <1 x float> %40, i64 0, !dbg !100
  %126 = mul nuw nsw i64 %34, 16, !dbg !100
  %127 = add nuw nsw i64 %126, %36, !dbg !100
  %128 = getelementptr inbounds nuw float, ptr %22, i64 %127, !dbg !100
  store float %125, ptr %128, align 4, !dbg !100
  %129 = add i64 %36, 1, !dbg !100
  br label %35, !dbg !100

130:                                              ; preds = %35
  %131 = add i64 %31, 1, !dbg !100
  br label %30, !dbg !100

132:                                              ; preds = %30
  %133 = add i64 %24, 64, !dbg !100
  br label %23, !dbg !100

134:                                              ; preds = %23
  ret i32 0, !dbg !102
}

define internal i32 @bias_relu_dispatch_0_elementwise_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !103 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !104
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !104
  %6 = load i32, ptr %5, align 4, !dbg !104
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !105
  %8 = load i32, ptr %7, align 4, !dbg !105
  %9 = zext i32 %6 to i64, !dbg !106
  %10 = zext i32 %8 to i64, !dbg !107
  %11 = shl i64 %10, 32, !dbg !108
  %12 = or i64 %9, %11, !dbg !109
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !110
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !110
  %15 = load ptr, ptr %14, align 8, !dbg !110
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !110
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !111
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !111
  %18 = load ptr, ptr %17, align 8, !dbg !111
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !111
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !112
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !112
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !112
  %22 = load ptr, ptr %21, align 8, !dbg !112
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !112
  br label %23, !dbg !113

23:                                               ; preds = %42, %3
  %24 = phi i64 [ %43, %42 ], [ 0, %3 ], !dbg !113
  %25 = icmp slt i64 %24, %12, !dbg !113
  br i1 %25, label %26, label %44, !dbg !113

26:                                               ; preds = %29, %23
  %27 = phi i64 [ %41, %29 ], [ 0, %23 ], !dbg !113
  %28 = icmp slt i64 %27, 16, !dbg !113
  br i1 %28, label %29, label %42, !dbg !113

29:                                               ; preds = %26
  %30 = mul i64 %24, 16, !dbg !113
  %31 = add i64 %30, %27, !dbg !113
  %32 = getelementptr float, ptr %18, i64 %31, !dbg !113
  %33 = load <8 x float>, ptr %32, align 4, !dbg !113
  %34 = getelementptr float, ptr %15, i64 %27, !dbg !113
  %35 = load <8 x float>, ptr %34, align 4, !dbg !113
  %36 = fadd contract <8 x float> %33, %35, !dbg !114
  %37 = fcmp ugt <8 x float> %36, zeroinitializer, !dbg !115
  %38 = select <8 x i1> %37, <8 x float> %36, <8 x float> zeroinitializer, !dbg !115
  %39 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %38, !dbg !115
  %40 = getelementptr float, ptr %22, i64 %31, !dbg !113
  store <8 x float> %39, ptr %40, align 4, !dbg !113
  %41 = add i64 %27, 8, !dbg !113
  br label %26, !dbg !113

42:                                               ; preds = %26
  %43 = add i64 %24, 1, !dbg !113
  br label %23, !dbg !113

44:                                               ; preds = %23
  ret i32 0, !dbg !116
}

define internal i32 @row_sum_dispatch_0_reduction_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !117 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !118
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !118
  %6 = load i32, ptr %5, align 4, !dbg !118
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !119
  %8 = load i32, ptr %7, align 4, !dbg !119
  %9 = zext i32 %6 to i64, !dbg !120
  %10 = zext i32 %8 to i64, !dbg !121
  %11 = shl i64 %10, 32, !dbg !122
  %12 = or i64 %9, %11, !dbg !123
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !124
  %14 = load ptr, ptr %13, align 8, !dbg !124
  call void @llvm.assume(i1 true) [ "align"(ptr %14, i64 64) ], !dbg !124
  %15 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !125
  %16 = extractvalue %iree_hal_executable_dispatch_state_v0_t %15, 10, !dbg !125
  %17 = getelementptr ptr, ptr %16, i32 1, !dbg !125
  %18 = load ptr, ptr %17, align 8, !dbg !125
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !125
  br label %19, !dbg !126

19:                                               ; preds = %117, %3
  %20 = phi i64 [ %118, %117 ], [ 0, %3 ], !dbg !126
  %21 = icmp slt i64 %20, %12, !dbg !126
  br i1 %21, label %22, label %119, !dbg !126

22:                                               ; preds = %19
  %23 = sub i64 %12, %20, !dbg !126
  %24 = icmp slt i64 %23, 8, !dbg !126
  %25 = select i1 %24, i64 %23, i64 8, !dbg !126
  %26 = trunc i64 %25 to i32, !dbg !127
  %27 = insertelement <8 x i32> poison, i32 %26, i32 0, !dbg !127
  %28 = shufflevector <8 x i32> %27, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !127
  %29 = icmp sgt <8 x i32> %28, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !127
  %30 = getelementptr float, ptr %18, i64 %20, !dbg !128
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %30, <8 x i1> %29), !dbg !128
  %31 = icmp sgt i64 %25, 0, !dbg !126
  %32 = select i1 %31, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !126
  %33 = icmp sgt i64 %25, 1, !dbg !126
  %34 = select i1 %33, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !126
  %35 = icmp sgt i64 %25, 2, !dbg !126
  %36 = select i1 %35, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !126
  %37 = icmp sgt i64 %25, 3, !dbg !126
  %38 = select i1 %37, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !126
  %39 = icmp sgt i64 %25, 4, !dbg !126
  %40 = select i1 %39, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !126
  %41 = icmp sgt i64 %25, 5, !dbg !126
  %42 = select i1 %41, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !126
  %43 = icmp sgt i64 %25, 6, !dbg !126
  %44 = select i1 %43, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !126
  %45 = icmp sgt i64 %25, 7, !dbg !126
  %46 = select i1 %45, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !126
  %47 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %30, <8 x i1> %29, <8 x float> poison), !dbg !126
  br label %48, !dbg !126

48:                                               ; preds = %52, %22
  %49 = phi i64 [ %116, %52 ], [ 0, %22 ], !dbg !126
  %50 = phi <8 x float> [ %115, %52 ], [ %47, %22 ], !dbg !126
  %51 = icmp slt i64 %49, 16, !dbg !126
  br i1 %51, label %52, label %117, !dbg !126

52:                                               ; preds = %48
  %53 = mul i64 %20, 16, !dbg !126
  %54 = add i64 %53, %49, !dbg !126
  %55 = getelementptr float, ptr %14, i64 %54, !dbg !126
  %56 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %55, <8 x i1> %32, <8 x float> poison), !dbg !126
  %57 = add i64 %20, 1, !dbg !126
  %58 = mul i64 %57, 16, !dbg !126
  %59 = add i64 %58, %49, !dbg !126
  %60 = getelementptr float, ptr %14, i64 %59, !dbg !126
  %61 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %60, <8 x i1> %34, <8 x float> poison), !dbg !126
  %62 = add i64 %20, 2, !dbg !126
  %63 = mul i64 %62, 16, !dbg !126
  %64 = add i64 %63, %49, !dbg !126
  %65 = getelementptr float, ptr %14, i64 %64, !dbg !126
  %66 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %65, <8 x i1> %36, <8 x float> poison), !dbg !126
  %67 = add i64 %20, 3, !dbg !126
  %68 = mul i64 %67, 16, !dbg !126
  %69 = add i64 %68, %49, !dbg !126
  %70 = getelementptr float, ptr %14, i64 %69, !dbg !126
  %71 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %70, <8 x i1> %38, <8 x float> poison), !dbg !126
  %72 = add i64 %20, 4, !dbg !126
  %73 = mul i64 %72, 16, !dbg !126
  %74 = add i64 %73, %49, !dbg !126
  %75 = getelementptr float, ptr %14, i64 %74, !dbg !126
  %76 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %75, <8 x i1> %40, <8 x float> poison), !dbg !126
  %77 = add i64 %20, 5, !dbg !126
  %78 = mul i64 %77, 16, !dbg !126
  %79 = add i64 %78, %49, !dbg !126
  %80 = getelementptr float, ptr %14, i64 %79, !dbg !126
  %81 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %80, <8 x i1> %42, <8 x float> poison), !dbg !126
  %82 = add i64 %20, 6, !dbg !126
  %83 = mul i64 %82, 16, !dbg !126
  %84 = add i64 %83, %49, !dbg !126
  %85 = getelementptr float, ptr %14, i64 %84, !dbg !126
  %86 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %85, <8 x i1> %44, <8 x float> poison), !dbg !126
  %87 = add i64 %20, 7, !dbg !126
  %88 = mul i64 %87, 16, !dbg !126
  %89 = add i64 %88, %49, !dbg !126
  %90 = getelementptr float, ptr %14, i64 %89, !dbg !126
  %91 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %90, <8 x i1> %46, <8 x float> poison), !dbg !126
  %92 = extractelement <8 x float> %50, i64 0, !dbg !129
  %93 = call float @llvm.vp.reduce.fadd.v8f32(float %92, <8 x float> %56, <8 x i1> %32, i32 8), !dbg !129
  %94 = extractelement <8 x float> %50, i64 1, !dbg !129
  %95 = call float @llvm.vp.reduce.fadd.v8f32(float %94, <8 x float> %61, <8 x i1> %34, i32 8), !dbg !129
  %96 = extractelement <8 x float> %50, i64 2, !dbg !129
  %97 = call float @llvm.vp.reduce.fadd.v8f32(float %96, <8 x float> %66, <8 x i1> %36, i32 8), !dbg !129
  %98 = extractelement <8 x float> %50, i64 3, !dbg !129
  %99 = call float @llvm.vp.reduce.fadd.v8f32(float %98, <8 x float> %71, <8 x i1> %38, i32 8), !dbg !129
  %100 = extractelement <8 x float> %50, i64 4, !dbg !129
  %101 = call float @llvm.vp.reduce.fadd.v8f32(float %100, <8 x float> %76, <8 x i1> %40, i32 8), !dbg !129
  %102 = extractelement <8 x float> %50, i64 5, !dbg !129
  %103 = call float @llvm.vp.reduce.fadd.v8f32(float %102, <8 x float> %81, <8 x i1> %42, i32 8), !dbg !129
  %104 = extractelement <8 x float> %50, i64 6, !dbg !129
  %105 = call float @llvm.vp.reduce.fadd.v8f32(float %104, <8 x float> %86, <8 x i1> %44, i32 8), !dbg !129
  %106 = extractelement <8 x float> %50, i64 7, !dbg !129
  %107 = call float @llvm.vp.reduce.fadd.v8f32(float %106, <8 x float> %91, <8 x i1> %46, i32 8), !dbg !129
  %108 = insertelement <8 x float> poison, float %93, i64 0, !dbg !129
  %109 = insertelement <8 x float> %108, float %95, i64 1, !dbg !129
  %110 = insertelement <8 x float> %109, float %97, i64 2, !dbg !129
  %111 = insertelement <8 x float> %110, float %99, i64 3, !dbg !129
  %112 = insertelement <8 x float> %111, float %101, i64 4, !dbg !129
  %113 = insertelement <8 x float> %112, float %103, i64 5, !dbg !129
  %114 = insertelement <8 x float> %113, float %105, i64 6, !dbg !129
  %115 = insertelement <8 x float> %114, float %107, i64 7, !dbg !129
  %116 = add i64 %49, 8, !dbg !126
  br label %48, !dbg !126

117:                                              ; preds = %48
  call void @llvm.masked.store.v8f32.p0(<8 x float> %50, ptr align 4 %30, <8 x i1> %29), !dbg !129
  %118 = add i64 %20, 8, !dbg !126
  br label %19, !dbg !126

119:                                              ; preds = %19
  ret i32 0, !dbg !130
}

define internal i32 @fragment_dispatch_1_reduction_Dx16_f32(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !131 {
  %4 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !132
  %5 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 9, !dbg !132
  %6 = load i32, ptr %5, align 4, !dbg !132
  %7 = getelementptr i32, ptr %5, i32 1, !dbg !133
  %8 = load i32, ptr %7, align 4, !dbg !133
  %9 = zext i32 %6 to i64, !dbg !134
  %10 = zext i32 %8 to i64, !dbg !135
  %11 = shl i64 %10, 32, !dbg !136
  %12 = or i64 %9, %11, !dbg !137
  %13 = extractvalue %iree_hal_executable_dispatch_state_v0_t %4, 10, !dbg !138
  %14 = getelementptr ptr, ptr %13, i32 1, !dbg !138
  %15 = load ptr, ptr %14, align 8, !dbg !138
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 64) ], !dbg !138
  %16 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !139
  %17 = extractvalue %iree_hal_executable_dispatch_state_v0_t %16, 10, !dbg !139
  %18 = load ptr, ptr %17, align 8, !dbg !139
  call void @llvm.assume(i1 true) [ "align"(ptr %18, i64 64) ], !dbg !139
  %19 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !140
  %20 = extractvalue %iree_hal_executable_dispatch_state_v0_t %19, 10, !dbg !140
  %21 = getelementptr ptr, ptr %20, i32 2, !dbg !140
  %22 = load ptr, ptr %21, align 8, !dbg !140
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 64) ], !dbg !140
  br label %23, !dbg !141

23:                                               ; preds = %155, %3
  %24 = phi i64 [ %156, %155 ], [ 0, %3 ], !dbg !141
  %25 = icmp slt i64 %24, %12, !dbg !141
  br i1 %25, label %26, label %157, !dbg !141

26:                                               ; preds = %23
  %27 = sub i64 %12, %24, !dbg !141
  %28 = icmp slt i64 %27, 8, !dbg !141
  %29 = select i1 %28, i64 %27, i64 8, !dbg !141
  %30 = trunc i64 %29 to i32, !dbg !142
  %31 = insertelement <8 x i32> poison, i32 %30, i32 0, !dbg !142
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !142
  %33 = icmp sgt <8 x i32> %32, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !142
  %34 = getelementptr float, ptr %22, i64 %24, !dbg !143
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %34, <8 x i1> %33), !dbg !143
  %35 = icmp sgt i64 %29, 0, !dbg !141
  %36 = select i1 %35, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !141
  %37 = icmp sgt i64 %29, 1, !dbg !141
  %38 = select i1 %37, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !141
  %39 = icmp sgt i64 %29, 2, !dbg !141
  %40 = select i1 %39, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !141
  %41 = icmp sgt i64 %29, 3, !dbg !141
  %42 = select i1 %41, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !141
  %43 = icmp sgt i64 %29, 4, !dbg !141
  %44 = select i1 %43, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !141
  %45 = icmp sgt i64 %29, 5, !dbg !141
  %46 = select i1 %45, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !141
  %47 = icmp sgt i64 %29, 6, !dbg !141
  %48 = select i1 %47, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !141
  %49 = icmp sgt i64 %29, 7, !dbg !141
  %50 = select i1 %49, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer, !dbg !141
  %51 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %34, <8 x i1> %33, <8 x float> poison), !dbg !141
  br label %52, !dbg !141

52:                                               ; preds = %56, %26
  %53 = phi i64 [ %154, %56 ], [ 0, %26 ], !dbg !141
  %54 = phi <8 x float> [ %153, %56 ], [ %51, %26 ], !dbg !141
  %55 = icmp slt i64 %53, 16, !dbg !141
  br i1 %55, label %56, label %155, !dbg !141

56:                                               ; preds = %52
  %57 = mul i64 %24, 16, !dbg !141
  %58 = add i64 %57, %53, !dbg !141
  %59 = getelementptr float, ptr %18, i64 %58, !dbg !141
  %60 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %59, <8 x i1> %36, <8 x float> poison), !dbg !141
  %61 = add i64 %24, 1, !dbg !141
  %62 = mul i64 %61, 16, !dbg !141
  %63 = add i64 %62, %53, !dbg !141
  %64 = getelementptr float, ptr %18, i64 %63, !dbg !141
  %65 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %64, <8 x i1> %38, <8 x float> poison), !dbg !141
  %66 = add i64 %24, 2, !dbg !141
  %67 = mul i64 %66, 16, !dbg !141
  %68 = add i64 %67, %53, !dbg !141
  %69 = getelementptr float, ptr %18, i64 %68, !dbg !141
  %70 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %69, <8 x i1> %40, <8 x float> poison), !dbg !141
  %71 = add i64 %24, 3, !dbg !141
  %72 = mul i64 %71, 16, !dbg !141
  %73 = add i64 %72, %53, !dbg !141
  %74 = getelementptr float, ptr %18, i64 %73, !dbg !141
  %75 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %74, <8 x i1> %42, <8 x float> poison), !dbg !141
  %76 = add i64 %24, 4, !dbg !141
  %77 = mul i64 %76, 16, !dbg !141
  %78 = add i64 %77, %53, !dbg !141
  %79 = getelementptr float, ptr %18, i64 %78, !dbg !141
  %80 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %79, <8 x i1> %44, <8 x float> poison), !dbg !141
  %81 = add i64 %24, 5, !dbg !141
  %82 = mul i64 %81, 16, !dbg !141
  %83 = add i64 %82, %53, !dbg !141
  %84 = getelementptr float, ptr %18, i64 %83, !dbg !141
  %85 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %84, <8 x i1> %46, <8 x float> poison), !dbg !141
  %86 = add i64 %24, 6, !dbg !141
  %87 = mul i64 %86, 16, !dbg !141
  %88 = add i64 %87, %53, !dbg !141
  %89 = getelementptr float, ptr %18, i64 %88, !dbg !141
  %90 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %89, <8 x i1> %48, <8 x float> poison), !dbg !141
  %91 = add i64 %24, 7, !dbg !141
  %92 = mul i64 %91, 16, !dbg !141
  %93 = add i64 %92, %53, !dbg !141
  %94 = getelementptr float, ptr %18, i64 %93, !dbg !141
  %95 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %94, <8 x i1> %50, <8 x float> poison), !dbg !141
  %96 = getelementptr float, ptr %15, i64 %53, !dbg !141
  %97 = load <8 x float>, ptr %96, align 4, !dbg !141
  %98 = fadd contract <8 x float> %60, %97, !dbg !144
  %99 = fadd contract <8 x float> %65, %97, !dbg !144
  %100 = fadd contract <8 x float> %70, %97, !dbg !144
  %101 = fadd contract <8 x float> %75, %97, !dbg !144
  %102 = fadd contract <8 x float> %80, %97, !dbg !144
  %103 = fadd contract <8 x float> %85, %97, !dbg !144
  %104 = fadd contract <8 x float> %90, %97, !dbg !144
  %105 = fadd contract <8 x float> %95, %97, !dbg !144
  %106 = fcmp ugt <8 x float> %98, zeroinitializer, !dbg !145
  %107 = fcmp ugt <8 x float> %99, zeroinitializer, !dbg !145
  %108 = fcmp ugt <8 x float> %100, zeroinitializer, !dbg !145
  %109 = fcmp ugt <8 x float> %101, zeroinitializer, !dbg !145
  %110 = fcmp ugt <8 x float> %102, zeroinitializer, !dbg !145
  %111 = fcmp ugt <8 x float> %103, zeroinitializer, !dbg !145
  %112 = fcmp ugt <8 x float> %104, zeroinitializer, !dbg !145
  %113 = fcmp ugt <8 x float> %105, zeroinitializer, !dbg !145
  %114 = select <8 x i1> %106, <8 x float> %98, <8 x float> zeroinitializer, !dbg !145
  %115 = select <8 x i1> %107, <8 x float> %99, <8 x float> zeroinitializer, !dbg !145
  %116 = select <8 x i1> %108, <8 x float> %100, <8 x float> zeroinitializer, !dbg !145
  %117 = select <8 x i1> %109, <8 x float> %101, <8 x float> zeroinitializer, !dbg !145
  %118 = select <8 x i1> %110, <8 x float> %102, <8 x float> zeroinitializer, !dbg !145
  %119 = select <8 x i1> %111, <8 x float> %103, <8 x float> zeroinitializer, !dbg !145
  %120 = select <8 x i1> %112, <8 x float> %104, <8 x float> zeroinitializer, !dbg !145
  %121 = select <8 x i1> %113, <8 x float> %105, <8 x float> zeroinitializer, !dbg !145
  %122 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %114, !dbg !145
  %123 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %115, !dbg !145
  %124 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %116, !dbg !145
  %125 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %117, !dbg !145
  %126 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %118, !dbg !145
  %127 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %119, !dbg !145
  %128 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %120, !dbg !145
  %129 = select <8 x i1> zeroinitializer, <8 x float> zeroinitializer, <8 x float> %121, !dbg !145
  %130 = extractelement <8 x float> %54, i64 0, !dbg !146
  %131 = call float @llvm.vp.reduce.fadd.v8f32(float %130, <8 x float> %122, <8 x i1> %36, i32 8), !dbg !146
  %132 = extractelement <8 x float> %54, i64 1, !dbg !146
  %133 = call float @llvm.vp.reduce.fadd.v8f32(float %132, <8 x float> %123, <8 x i1> %38, i32 8), !dbg !146
  %134 = extractelement <8 x float> %54, i64 2, !dbg !146
  %135 = call float @llvm.vp.reduce.fadd.v8f32(float %134, <8 x float> %124, <8 x i1> %40, i32 8), !dbg !146
  %136 = extractelement <8 x float> %54, i64 3, !dbg !146
  %137 = call float @llvm.vp.reduce.fadd.v8f32(float %136, <8 x float> %125, <8 x i1> %42, i32 8), !dbg !146
  %138 = extractelement <8 x float> %54, i64 4, !dbg !146
  %139 = call float @llvm.vp.reduce.fadd.v8f32(float %138, <8 x float> %126, <8 x i1> %44, i32 8), !dbg !146
  %140 = extractelement <8 x float> %54, i64 5, !dbg !146
  %141 = call float @llvm.vp.reduce.fadd.v8f32(float %140, <8 x float> %127, <8 x i1> %46, i32 8), !dbg !146
  %142 = extractelement <8 x float> %54, i64 6, !dbg !146
  %143 = call float @llvm.vp.reduce.fadd.v8f32(float %142, <8 x float> %128, <8 x i1> %48, i32 8), !dbg !146
  %144 = extractelement <8 x float> %54, i64 7, !dbg !146
  %145 = call float @llvm.vp.reduce.fadd.v8f32(float %144, <8 x float> %129, <8 x i1> %50, i32 8), !dbg !146
  %146 = insertelement <8 x float> poison, float %131, i64 0, !dbg !146
  %147 = insertelement <8 x float> %146, float %133, i64 1, !dbg !146
  %148 = insertelement <8 x float> %147, float %135, i64 2, !dbg !146
  %149 = insertelement <8 x float> %148, float %137, i64 3, !dbg !146
  %150 = insertelement <8 x float> %149, float %139, i64 4, !dbg !146
  %151 = insertelement <8 x float> %150, float %141, i64 5, !dbg !146
  %152 = insertelement <8 x float> %151, float %143, i64 6, !dbg !146
  %153 = insertelement <8 x float> %152, float %145, i64 7, !dbg !146
  %154 = add i64 %53, 8, !dbg !141
  br label %52, !dbg !141

155:                                              ; preds = %52
  call void @llvm.masked.store.v8f32.p0(<8 x float> %54, ptr align 4 %34, <8 x i1> %33), !dbg !146
  %156 = add i64 %24, 8, !dbg !141
  br label %23, !dbg !141

157:                                              ; preds = %23
  ret i32 0, !dbg !147
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden float @iree_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #7 {
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
define hidden signext i16 @iree_f2h_ieee(float noundef %0) local_unnamed_addr #7 {
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
define hidden float @__gnu_h2f_ieee(i16 noundef signext %0) local_unnamed_addr #7 {
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
define hidden float @__extendhfsf2(float noundef %0) local_unnamed_addr #7 {
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
define hidden signext i16 @__gnu_f2h_ieee(float noundef %0) local_unnamed_addr #7 {
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
define hidden float @__truncsfhf2(float noundef %0) local_unnamed_addr #7 {
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
  store i16 %36, ptr %2, align 4, !tbaa !148
  %37 = load float, ptr %2, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %37
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden double @__extendhfdf2(float noundef %0) local_unnamed_addr #7 {
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
define hidden float @__truncdfhf2(double noundef %0) local_unnamed_addr #7 {
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
  store i16 %37, ptr %2, align 4, !tbaa !148
  %38 = load float, ptr %2, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret float %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define hidden noundef double @fma(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %2)
  ret double %4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: inlinehint
define hidden noundef float @__math_invalidf(float noundef %0) local_unnamed_addr #10 {
  %2 = fsub float %0, %0
  %3 = fdiv float %2, %2
  ret float %3
}

; Function Attrs: inlinehint
define hidden float @__math_oflowf(i32 noundef %0) local_unnamed_addr #10 {
  %2 = tail call float @__math_xflowf(i32 noundef %0, float noundef 0x4600000000000000) #10
  ret float %2
}

; Function Attrs: inlinehint
define hidden float @__math_xflowf(i32 noundef %0, float noundef %1) local_unnamed_addr #10 {
  %3 = alloca float, align 4
  %.not = icmp eq i32 %0, 0
  %4 = fneg float %1
  %5 = select i1 %.not, float %1, float %4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store volatile float %5, ptr %3, align 4, !tbaa !150
  %.0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %6 = fmul float %1, %.0..0..0..0..0..0..i
  ret float %6
}

; Function Attrs: inlinehint
define hidden float @__math_uflowf(i32 noundef %0) local_unnamed_addr #10 {
  %2 = tail call float @__math_xflowf(i32 noundef %0, float noundef 0x3A00000000000000) #10
  ret float %2
}

; Function Attrs: inlinehint
define hidden float @ceilf(float noundef %0) local_unnamed_addr #10 {
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
  store volatile float %16, ptr %3, align 4, !tbaa !150
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
  store volatile float %24, ptr %2, align 4, !tbaa !150
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
define hidden float @expf(float noundef %0) local_unnamed_addr #10 {
  %2 = fpext float %0 to double
  %3 = bitcast float %0 to i32
  %4 = lshr i32 %3, 20
  %5 = and i32 %4, 2047
  %.not = icmp samesign ult i32 %5, 1067
  br i1 %.not, label %19, label %6, !prof !152

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
  %14 = tail call float @__math_oflowf(i32 noundef 0) #10
  br label %42

15:                                               ; preds = %11
  %16 = fcmp olt float %0, 0xC059FE3680000000
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call float @__math_uflowf(i32 noundef 0) #10
  br label %42

19:                                               ; preds = %15, %1
  %20 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 296), align 8, !tbaa !153
  %21 = fmul double %20, %2
  %22 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 288), align 8, !tbaa !156
  %23 = fadd double %21, %22
  %24 = bitcast double %23 to i64
  %25 = fsub double %23, %22
  %26 = fsub double %21, %25
  %27 = and i64 %24, 31
  %28 = getelementptr inbounds nuw i64, ptr @__exp2f_data, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !157
  %30 = shl i64 %24, 47
  %31 = add i64 %30, %29
  %32 = bitcast i64 %31 to double
  %33 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 304), align 8, !tbaa !159
  %34 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 312), align 8, !tbaa !159
  %35 = tail call double @llvm.fmuladd.f64(double %33, double %26, double %34)
  %36 = fmul double %26, %26
  %37 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 320), align 8, !tbaa !159
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
define hidden noundef i32 @feclearexcept(i32 noundef %0) local_unnamed_addr #10 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @feraiseexcept(i32 noundef %0) local_unnamed_addr #10 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fetestexcept(i32 noundef %0) local_unnamed_addr #10 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fegetround() local_unnamed_addr #10 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @__fesetround(i32 noundef %0) local_unnamed_addr #10 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fegetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #10 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden noundef i32 @fesetenv(ptr noundef readnone captures(none) %0) local_unnamed_addr #10 {
  ret i32 0
}

; Function Attrs: inlinehint
define hidden float @floorf(float noundef %0) local_unnamed_addr #10 {
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
  store volatile float %16, ptr %3, align 4, !tbaa !150
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
  store volatile float %23, ptr %2, align 4, !tbaa !150
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
define hidden float @fmaf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #10 {
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
  %23 = tail call i32 @fegetround() #10
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %34, label %24

24:                                               ; preds = %22, %17, %3
  %25 = add nsw i32 %13, -874
  %or.cond3 = icmp ult i32 %25, 23
  br i1 %or.cond3, label %26, label %46

26:                                               ; preds = %24
  %27 = tail call i32 @fetestexcept(i32 noundef 32) #10
  %.not41 = icmp eq i32 %27, 0
  br i1 %.not41, label %46, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @feclearexcept(i32 noundef 32) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store volatile float %2, ptr %4, align 4, !tbaa !150
  %.0..0..0..0.5 = load volatile float, ptr %4, align 4, !tbaa !150
  %30 = fpext float %.0..0..0..0.5 to double
  %31 = fadd double %7, %30
  %32 = tail call i32 @fetestexcept(i32 noundef 32) #10
  %.not42 = icmp eq i32 %32, 0
  %. = select i1 %.not42, i32 32, i32 16
  %33 = tail call i32 @feraiseexcept(i32 noundef %.) #10
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
define hidden float @fmodf(float noundef %0, float noundef %1) local_unnamed_addr #10 {
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
declare float @llvm.fabs.f32(float) #9

; Function Attrs: inlinehint
define hidden float @frexpf(float noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #10 {
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
  %9 = tail call float @frexpf(float noundef %8, ptr noundef %1) #10
  %10 = load i32, ptr %1, align 4, !tbaa !11
  %11 = add nsw i32 %10, -64
  br label %12

12:                                               ; preds = %7, %5
  %storemerge = phi i32 [ %11, %7 ], [ 0, %5 ]
  %.014 = phi float [ %9, %7 ], [ %0, %5 ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !11
  br label %19

13:                                               ; preds = %2
  %14 = and i32 %4, 255
  %15 = add nsw i32 %14, -126
  store i32 %15, ptr %1, align 4, !tbaa !11
  %16 = and i32 %3, -2139095041
  %17 = or disjoint i32 %16, 1056964608
  %18 = bitcast i32 %17 to float
  br label %19

19:                                               ; preds = %13, %12, %2
  %.0 = phi float [ %18, %13 ], [ %.014, %12 ], [ %0, %2 ]
  ret float %.0
}

; Function Attrs: inlinehint
define hidden float @ldexpf(float noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call float @scalbnf(float noundef %0, i32 noundef %1) #10
  ret float %3
}

; Function Attrs: inlinehint
define hidden float @scalbnf(float noundef %0, i32 noundef %1) local_unnamed_addr #10 {
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
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: inlinehint
define hidden float @powf(float noundef %0, float noundef %1) local_unnamed_addr #10 {
  %3 = alloca float, align 4
  %4 = bitcast float %0 to i32
  %5 = bitcast float %1 to i32
  %6 = add i32 %4, -2139095040
  %7 = icmp ult i32 %6, -2130706432
  %.pre = shl i32 %5, 1
  %8 = add i32 %.pre, 16777216
  %9 = icmp ult i32 %8, 16777217
  %or.cond99 = or i1 %7, %9
  br i1 %or.cond99, label %.critedge, label %73, !prof !160

.critedge:                                        ; preds = %2
  %10 = add i32 %.pre, -1
  %11 = icmp ult i32 %10, -16777217
  br i1 %11, label %28, label %12, !prof !152

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
  br i1 %31, label %47, label %32, !prof !152

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
  store volatile float %46, ptr %3, align 4, !tbaa !150
  %.0..0..0..0..0..0..i = load volatile float, ptr %3, align 4, !tbaa !150
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
  %61 = tail call float @__math_invalidf(float noundef %0) #10
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
  %82 = load double, ptr %81, align 8, !tbaa !161
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %84 = load double, ptr %83, align 8, !tbaa !163
  %85 = bitcast i32 %78 to float
  %86 = fpext float %85 to double
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %82, double -1.000000e+00)
  %88 = sitofp i32 %79 to double
  %89 = fadd double %84, %88
  %90 = fmul double %87, %87
  %91 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 256), align 8, !tbaa !159
  %92 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 264), align 8, !tbaa !159
  %93 = tail call double @llvm.fmuladd.f64(double %91, double %87, double %92)
  %94 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 272), align 8, !tbaa !159
  %95 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 280), align 8, !tbaa !159
  %96 = tail call double @llvm.fmuladd.f64(double %94, double %87, double %95)
  %97 = fmul double %90, %90
  %98 = load double, ptr getelementptr inbounds nuw (i8, ptr @__powf_log2_data, i64 288), align 8, !tbaa !159
  %99 = tail call double @llvm.fmuladd.f64(double %98, double %87, double %89)
  %100 = tail call double @llvm.fmuladd.f64(double %96, double %90, double %99)
  %101 = tail call double @llvm.fmuladd.f64(double %93, double %97, double %100)
  %102 = fpext float %1 to double
  %103 = fmul double %101, %102
  %104 = bitcast double %103 to i64
  %105 = and i64 %104, 9223231299366420480
  %106 = icmp samesign ugt i64 %105, 4638426141214900224
  br i1 %106, label %107, label %115, !prof !164

107:                                              ; preds = %73
  %108 = fcmp ogt double %103, 0x405FFFFFFFD1D571
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = tail call float @__math_oflowf(i32 noundef %.050) #10
  br label %138

111:                                              ; preds = %107
  %112 = fcmp ugt double %103, -1.500000e+02
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = tail call float @__math_uflowf(i32 noundef %.050) #10
  br label %138

115:                                              ; preds = %111, %73
  %116 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 256), align 8, !tbaa !165
  %117 = fadd double %103, %116
  %118 = bitcast double %117 to i64
  %119 = fsub double %117, %116
  %120 = fsub double %103, %119
  %121 = and i64 %118, 31
  %122 = getelementptr inbounds nuw i64, ptr @__exp2f_data, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !157
  %124 = zext nneg i32 %.050 to i64
  %125 = add i64 %118, %124
  %126 = shl i64 %125, 47
  %127 = add i64 %126, %123
  %128 = bitcast i64 %127 to double
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 264), align 8, !tbaa !159
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 272), align 8, !tbaa !159
  %131 = tail call double @llvm.fmuladd.f64(double %129, double %120, double %130)
  %132 = fmul double %120, %120
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @__exp2f_data, i64 280), align 8, !tbaa !159
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
define hidden noundef float @rintf(float noundef %0) local_unnamed_addr #10 {
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
define hidden float @roundf(float noundef %0) local_unnamed_addr #10 {
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
  store volatile float %9, ptr %2, align 4, !tbaa !150
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

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #6 = { uwtable "nonlazybind" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_matmul_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables")
!2 = distinct !DICompileUnit(language: DW_LANG_C17, file: !3, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "configured_module_bias_relu_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables")
!4 = distinct !DICompileUnit(language: DW_LANG_C17, file: !5, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "configured_module_row_sum_dispatch_0.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables")
!6 = distinct !DICompileUnit(language: DW_LANG_C17, file: !7, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "configured_module_fragment_dispatch_1.mlir", directory: "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/maintenance-20260907/full-run/artifacts/dynamic-untiled/executables")
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = distinct !DISubprogram(name: "matmul_dispatch_0_matmul_Dx16x32_f32", linkageName: "matmul_dispatch_0_matmul_Dx16x32_f32", scope: !1, file: !1, line: 1, type: !16, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!16 = !DISubroutineType(cc: DW_CC_normal, types: !17)
!17 = !{!18, !19, !50, !79}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !23, file: !23, line: 246, size: 768, elements: !24)
!23 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!24 = !{!25, !33, !36, !39, !41}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, scope: !23, file: !23, line: 227, baseType: !29, size: 2048, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32}
!32 = !DISubrange(count: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !42, offset: 256)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !23, file: !23, line: 227, size: 512, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, scope: !23, file: !23, line: 227, baseType: !46, size: 512, elements: !48)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !47)
!47 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !23, file: !23, line: 275, size: 384, elements: !54)
!54 = !{!55, !56, !57, !60, !61, !62, !63, !64, !67, !68, !69, !74}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !29, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !29, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !58, size: 16, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !59)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !58, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !29, size: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !29, size: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !58, size: 16, offset: 160)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !65, size: 8, offset: 176)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !65, size: 8, offset: 184)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !26, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !70, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DICompositeType(tag: DW_TAG_array_type, scope: !23, file: !23, line: 227, baseType: !73, size: 4096, elements: !31)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !75, size: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, scope: !23, file: !23, line: 227, baseType: !78, size: 4096, elements: !31)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !46)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !23, file: !23, line: 321, size: 256, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !29, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !29, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !58, size: 16, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !58, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !29, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !34, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !29, size: 32, offset: 192)
!91 = !DILocation(line: 12, column: 8, scope: !15)
!92 = !DILocation(line: 13, column: 8, scope: !15)
!93 = !DILocation(line: 14, column: 8, scope: !15)
!94 = !DILocation(line: 15, column: 8, scope: !15)
!95 = !DILocation(line: 16, column: 8, scope: !15)
!96 = !DILocation(line: 17, column: 8, scope: !15)
!97 = !DILocation(line: 20, column: 8, scope: !15)
!98 = !DILocation(line: 22, column: 8, scope: !15)
!99 = !DILocation(line: 23, column: 8, scope: !15)
!100 = !DILocation(line: 28, column: 8, scope: !15)
!101 = !DILocation(line: 3, column: 3, scope: !15)
!102 = !DILocation(line: 30, column: 8, scope: !15)
!103 = distinct !DISubprogram(name: "bias_relu_dispatch_0_elementwise_Dx16_f32", linkageName: "bias_relu_dispatch_0_elementwise_Dx16_f32", scope: !3, file: !3, line: 1, type: !16, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!104 = !DILocation(line: 12, column: 8, scope: !103)
!105 = !DILocation(line: 13, column: 8, scope: !103)
!106 = !DILocation(line: 14, column: 8, scope: !103)
!107 = !DILocation(line: 15, column: 8, scope: !103)
!108 = !DILocation(line: 16, column: 8, scope: !103)
!109 = !DILocation(line: 17, column: 8, scope: !103)
!110 = !DILocation(line: 20, column: 8, scope: !103)
!111 = !DILocation(line: 22, column: 8, scope: !103)
!112 = !DILocation(line: 23, column: 8, scope: !103)
!113 = !DILocation(line: 27, column: 8, scope: !103)
!114 = !DILocation(line: 29, column: 10, scope: !103)
!115 = !DILocation(line: 30, column: 10, scope: !103)
!116 = !DILocation(line: 34, column: 8, scope: !103)
!117 = distinct !DISubprogram(name: "row_sum_dispatch_0_reduction_Dx16_f32", linkageName: "row_sum_dispatch_0_reduction_Dx16_f32", scope: !5, file: !5, line: 1, type: !16, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4)
!118 = !DILocation(line: 12, column: 8, scope: !117)
!119 = !DILocation(line: 13, column: 8, scope: !117)
!120 = !DILocation(line: 14, column: 8, scope: !117)
!121 = !DILocation(line: 15, column: 8, scope: !117)
!122 = !DILocation(line: 16, column: 8, scope: !117)
!123 = !DILocation(line: 17, column: 8, scope: !117)
!124 = !DILocation(line: 21, column: 8, scope: !117)
!125 = !DILocation(line: 22, column: 8, scope: !117)
!126 = !DILocation(line: 26, column: 8, scope: !117)
!127 = !DILocation(line: 25, column: 8, scope: !117)
!128 = !DILocation(line: 10, column: 8, scope: !117)
!129 = !DILocation(line: 28, column: 10, scope: !117)
!130 = !DILocation(line: 32, column: 8, scope: !117)
!131 = distinct !DISubprogram(name: "fragment_dispatch_1_reduction_Dx16_f32", linkageName: "fragment_dispatch_1_reduction_Dx16_f32", scope: !7, file: !7, line: 1, type: !16, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!132 = !DILocation(line: 12, column: 8, scope: !131)
!133 = !DILocation(line: 13, column: 8, scope: !131)
!134 = !DILocation(line: 14, column: 8, scope: !131)
!135 = !DILocation(line: 15, column: 8, scope: !131)
!136 = !DILocation(line: 16, column: 8, scope: !131)
!137 = !DILocation(line: 17, column: 8, scope: !131)
!138 = !DILocation(line: 20, column: 8, scope: !131)
!139 = !DILocation(line: 22, column: 8, scope: !131)
!140 = !DILocation(line: 23, column: 8, scope: !131)
!141 = !DILocation(line: 28, column: 8, scope: !131)
!142 = !DILocation(line: 27, column: 8, scope: !131)
!143 = !DILocation(line: 10, column: 8, scope: !131)
!144 = !DILocation(line: 30, column: 10, scope: !131)
!145 = !DILocation(line: 31, column: 10, scope: !131)
!146 = !DILocation(line: 32, column: 10, scope: !131)
!147 = !DILocation(line: 36, column: 8, scope: !131)
!148 = !{!149, !149, i64 0}
!149 = !{!"short", !13, i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"float", !13, i64 0}
!152 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!153 = !{!154, !155, i64 296}
!154 = !{!"exp2f_data", !13, i64 0, !155, i64 256, !13, i64 264, !155, i64 288, !155, i64 296, !13, i64 304}
!155 = !{!"double", !13, i64 0}
!156 = !{!154, !155, i64 288}
!157 = !{!158, !158, i64 0}
!158 = !{!"long", !13, i64 0}
!159 = !{!155, !155, i64 0}
!160 = !{!"branch_weights", i32 4001, i32 4000000}
!161 = !{!162, !155, i64 0}
!162 = !{!"", !155, i64 0, !155, i64 8}
!163 = !{!162, !155, i64 8}
!164 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!165 = !{!154, !155, i64 256}
