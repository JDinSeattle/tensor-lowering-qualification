module {
  hal.executable private @tiny_linked {
    hal.executable.binary public @embedded_elf_x86_64 attributes {data = dense<"0x7F454C4602010100000000000000000003003E00010000000000000000000000400000000000000068160000000000000000000040003800070040001500130006000000040000004000000000000000400000000000000040000000000000008801000000000000880100000000000008000000000000000100000004000000000000000000000000000000000000000000000000000000F009000000000000F00900000000000000100000000000000100000005000000F009000000000000F019000000000000F0190000000000005102000000000000510200000000000000100000000000000100000006000000500C000000000000502C000000000000502C0000000000004002000000000000B00300000000000000100000000000000200000006000000D00D000000000000D02D000000000000D02D000000000000C000000000000000C000000000000000080000000000000052E5746404000000500C000000000000502C000000000000502C0000000000004002000000000000B003000000000000010000000000000051E57464060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000012000700301C000000000000110000000000000002000000020000000000000001000000000000000000000000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279000000000000582C0000000000000800000000000000C004000000000000702C0000000000000800000000000000F019000000000000782C0000000000000800000000000000D01A000000000000802C0000000000000800000000000000201B000000000000882C0000000000000800000000000000901B000000000000902C0000000000000800000000000000D005000000000000982C0000000000000800000000000000F505000000000000A02C00000000000008000000000000001D06000000000000A82C00000000000008000000000000004106000000000000B82C00000000000008000000000000006606000000000000C82C00000000000008000000000000001B07000000000000D82C0000000000000800000000000000D307000000000000E82C00000000000008000000000000008908000000000000F82C00000000000008000000000000004009000000000000002D00000000000008000000000000004009000000000000102D00000000000008000000000000004009000000000000182D00000000000008000000000000004009000000000000282D00000000000008000000000000004009000000000000302D00000000000008000000000000004009000000000000402D00000000000008000000000000004009000000000000482D00000000000008000000000000004009000000000000502D0000000000000800000000000000502C000000000000702D0000000000000800000000000000702C000000000000782D0000000000000800000000000000D004000000000000902D0000000000000800000000000000902C000000000000A82D0000000000000800000000000000B02C000000000000B02D0000000000000800000000000000F02C00000000000074696E795F6C696E6B65640000000000000000000000000000000003010000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030100000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000201000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003010000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000006D61746D756C5F64697370617463685F305F6D61746D756C5F317831367833325F66333200626961735F72656C755F64697370617463685F305F656C656D656E74776973655F31365F66333200726F775F73756D5F64697370617463685F305F726564756374696F6E5F31365F66333200667261676D656E745F64697370617463685F315F726564756374696F6E5F31365F663332002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F74696E792D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F74696E792D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F74696E792D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F74696E792D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C6972001400000000000000017A5200017810011B0C0708900100001C0000001C00000090100000D500000000410E108602430D0602D00C070800001C0000003C000000501100004B00000000410E108602430D0602430C070800001C0000005C000000801100006600000000410E108602430D0602610C070800001C0000007C000000D01100009200000000410E108602430D06028A0C07080000100000009C00000050120000110000000000000000000000554889E5488B7620488B06488B4E10BAC00100004803560831F6660F1F440000C5F857C048C7C7F8FFFFFF4989D06690C4C17A108840FEFFFFC4C17A109080FEFFFFC4C17A1098C0FEFFFFC4C17A10A000FFFFFFC4C17A10A840FFFFFFC4C17A107080C4C17A1078C0C4E271B944B820C4E269B944B824C4E261B944B828C4E259B944B82CC4E251B944B830C4E249B944B834C4E241B944B838C4C17A1008C4E271B944B83C4883C7084981C0000200004883FF180F8275FFFFFFC5FA1104B148FFC64883C2044883FE100F854FFFFFFF31C05DC3CCCCCCCCCCCCCCCCCCCCCC554889E5488B4620488B08488B5008488B4010C5FC2801C5FC5802C5F057C9C5FCC2D106C5EC54C0C5FC2900C5FC284120C5FC584220C5FCC2C906C5F454C0C5FC29402031C05DC5F877C3CCCCCCCCCC554889E5488B4620488B08488B4008B201C5F857C031F6660F1F840000000000C5FA5804B1C5FA5844B104C5FA5844B108C5FA5844B10CC5FA5844B110C5FA5844B114C5FA5844B11889D7C5FA5844B11CBE0800000031D240F6C70175C2C5FA110031C05DC3CCCCCCCCCCCCCCCCCCCC554889E5488B4620488B08488B5008488B401040B701C5F057C931F6C5F857C04189F8C5FC2814B1C5EC5814B2C5ECC2D806C5E454D2C5F258CAC5E8C6DAF5C5F258CBC5E8C6DA4EC5F258CBC5E8C6DAFFC5F258CBC4E37D19D201C5F258CAC5E8C6DAF5C5F258CBC5E8C6DA4EC5F258CBC5E8C6D2FFC5F258CABE0800000031FF41F6C0017599C5FA110831C05DC5F877C3CCCCCCCCCCCCCCCCCCCCCCCCCCCC31C083FF06488D0D14110000480F44C1C300000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000B4000000000000000000000003000000B7000000000000000000000003000000B5000000000000000000000003000000B6000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E000000000000000800000000000000FBFFFF6F000000000100000000000000070000000000000038020000000000000800000000000000880200000000000009000000000000001800000000000000F9FFFF6F000000001B000000000000000600000000000000C8010000000000000B000000000000001800000000000000050000000000000010020000000000000A0000000000000023000000000000000400000000000000F80100000000000000000000000000000000000000000000011101250E1305030E10171B0EB44219110112060000022E001101120640186E0E030E3A0B3B0B49133F190000032400030E3E0B0B0B0000042E001101120640186E0E030E3A0B3B0B49103F190000004B0000000400000000000801A70100002C00AC01000000000000C6000000F019000000000000D500000002F019000000000000D500000001567800000078000000010147000000039D000000050400440000000400000000000801A70100002C00280000008A000000C6000000D01A0000000000004B00000004D01A0000000000004B0000000156000000000000000001014700000000440000000400000000000801A70100002C005201000003010000C6000000201B0000000000006600000004201B000000000000660000000156540000005400000001014700000000440000000400000000000801A70100002C007C0100007E010000C6000000901B0000000000009200000004901B000000000000920000000156A1000000A100000001014700000000626961735F72656C755F64697370617463685F305F656C656D656E74776973655F31365F66333200636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C697200726F775F73756D5F64697370617463685F305F726564756374696F6E5F31365F663332006D61746D756C5F64697370617463685F305F6D61746D756C5F317831367833325F66333200696E7400667261676D656E745F64697370617463685F315F726564756374696F6E5F31365F663332002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F74696E792D756E74696C65642F65786563757461626C657300636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C697200636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C6972004952454500636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C697200370000000200000000004F0000002A0000006D61746D756C5F64697370617463685F305F6D61746D756C5F317831367833325F66333200000000003A00000002004F000000480000002A000000626961735F72656C755F64697370617463685F305F656C656D656E74776973655F31365F663332000000000036000000020097000000480000002A000000726F775F73756D5F64697370617463685F305F726564756374696F6E5F31365F6633320000000000370000000200DF000000480000002A000000667261676D656E745F64697370617463685F315F726564756374696F6E5F31365F6633320000000000160000000200000000004F00000047000000696E7400000000000E00000002004F00000048000000000000000E00000002009700000048000000000000000E0000000200DF000000480000000000000086000000040040000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C69720000000000000902F0190000000000000105080A030A4A769506036E660603120858050303710239010508030F02310105030371580508030F74022B14060B2E020200010175000000040043000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C69720000000000000902D01A0000000000000105080A030A4A754B4E050A4C4B0508C5050A925905088D5F060B2E020500010177000000040041000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C69720000000000000902201B0000000000000105080A030A4A75060374BA050A060312900508023810050A6805084E060B2E02020001017D000000040042000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C69720000000000000902901B0000000000000105080A030A4A754B06037308120603123C050A5A59910508024B0E050A6A05084E060B2E0205000101495245450000000000000000000000000000000000000000000000000000002300000000020900D02D00000000000000000000000000000100000012000700301C0000000000001100000000000000002E64796E73796D002E68617368002E64796E737472002E72656C612E64796E002E726F64617461002E65685F6672616D65002E74657874002E646174612E72656C2E726F002E64796E616D6963002E72656C726F5F70616464696E67002E64656275675F616262726576002E64656275675F696E666F002E64656275675F737472002E64656275675F7075626E616D6573002E64656275675F7075627479706573002E64656275675F6C696E65002E636F6D6D656E74002E73796D746162002E7368737472746162002E7374727461620000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279005F44594E414D494300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000B0000000200000000000000C801000000000000C801000000000000300000000000000003000000010000000800000000000000180000000000000009000000050000000200000000000000F801000000000000F80100000000000018000000000000000100000000000000040000000000000004000000000000000F0000000300000002000000000000001002000000000000100200000000000023000000000000000000000000000000010000000000000000000000000000001700000004000000020000000000000038020000000000003802000000000000880200000000000001000000000000000800000000000000180000000000000021000000010000000200000000000000C004000000000000C00400000000000080040000000000000000000000000000100000000000000000000000000000002900000001000000020000000000000040090000000000004009000000000000B00000000000000000000000000000000800000000000000000000000000000033000000010000000600000000000000F019000000000000F009000000000000510200000000000000000000000000001000000000000000000000000000000039000000010000000300000000000000502C000000000000500C000000000000800100000000000000000000000000001000000000000000000000000000000046000000060000000300000000000000D02D000000000000D00D000000000000C0000000000000000300000000000000080000000000000010000000000000004F000000080000000300000000000000902E000000000000900E00000000000070010000000000000000000000000000010000000000000000000000000000005E0000000100000000000000000000000000000000000000900E00000000000050000000000000000000000000000000010000000000000000000000000000006C0000000100000000000000000000000000000000000000E00E00000000000027010000000000000000000000000000010000000000000000000000000000007800000001000000300000000000000000000000000000000710000000000000D501000000000000000000000000000001000000000000000100000000000000830000000100000000000000000000000000000000000000DC11000000000000EE00000000000000000000000000000001000000000000000000000000000000930000000100000000000000000000000000000000000000CA120000000000005000000000000000000000000000000001000000000000000000000000000000A300000001000000000000000000000000000000000000001A13000000000000FF01000000000000000000000000000001000000000000000000000000000000AF000000010000003000000000000000000000000000000019150000000000000500000000000000000000000000000001000000000000000100000000000000B8000000020000000000000000000000000000000000000020150000000000004800000000000000140000000200000008000000000000001800000000000000C000000003000000000000000000000000000000000000006815000000000000D200000000000000000000000000000001000000000000000000000000000000CA00000003000000000000000000000000000000000000003A160000000000002C00000000000000000000000000000001000000000000000000000000000000"> : vector<7080xi8>, format = "embedded-elf-x86_64", mime_type = "application/x-elf"}
  }
  util.global private @__device_0 : !hal.device
  util.initializer {
    %c18_i32 = arith.constant 18 : i32
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.device
    %device_count = hal.devices.count : index
    cf.br ^bb1(%c0, %c0, %0 : index, index, !hal.device)
  ^bb1(%1: index, %2: index, %3: !hal.device):  // 2 preds: ^bb0, ^bb4
    %4 = util.cmp.eq %3, %0 : !hal.device
    %5 = arith.cmpi slt, %1, %device_count : index
    %6 = arith.andi %4, %5 : i1
    cf.cond_br %6, ^bb2, ^bb5
  ^bb2:  // pred: ^bb1
    %device_n = hal.devices.get %1 : !hal.device
    %ok, %value = hal.device.query<%device_n : !hal.device> key("hal.device.id" :: "local*") : i1, i1 = false
    cf.cond_br %value, ^bb3, ^bb4(%false : i1)
  ^bb3:  // pred: ^bb2
    %ok_0, %value_1 = hal.device.query<%device_n : !hal.device> key("hal.executable.format" :: "embedded-elf-x86_64") : i1, i1 = false
    cf.br ^bb4(%value_1 : i1)
  ^bb4(%7: i1):  // 2 preds: ^bb2, ^bb3
    %8 = arith.cmpi eq, %2, %c0 : index
    %9 = arith.select %7, %c1, %c0 : index
    %10 = arith.addi %2, %9 : index
    %11 = arith.andi %7, %8 : i1
    %12 = arith.select %11, %device_n, %0 : !hal.device
    %13 = arith.addi %1, %c1 : index
    cf.br ^bb1(%13, %10, %12 : index, index, !hal.device)
  ^bb5:  // pred: ^bb1
    cf.cond_br %4, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    util.status.check_ok %c18_i32, "HAL device `__device_0` not found or unavailable: #hal.device.target<\22local\22, [#hal.executable.target<\22llvm-cpu\22, \22embedded-elf-x86_64\22, {cpu = \22raptorlake\22, cpu_features = \22+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu\22, data_layout = \22e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128\22, iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = \22x86_64-unknown-unknown-eabi-elf\22}>]>"
    cf.br ^bb7
  ^bb7:  // 2 preds: ^bb5, ^bb6
    util.global.store %3, @__device_0 : !hal.device
    util.return
  }
  util.global private @__device_0_query_0_hal_executable_format_embedded_elf_x86_64 : i1
  util.initializer {
    %__device_0 = util.global.load @__device_0 : !hal.device
    %ok, %value = hal.device.query<%__device_0 : !hal.device> key("hal.executable.format" :: "embedded-elf-x86_64") : i1, i1 = false
    util.global.store %value, @__device_0_query_0_hal_executable_format_embedded_elf_x86_64 : i1
    util.return
  }
  util.global private @__device_0_executable_0_tiny_linked : !hal.executable
  util.initializer {
    %c-1_i64 = arith.constant -1 : i64
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c14_i32 = arith.constant 14 : i32
    %0 = util.null : !hal.executable
    %__device_0_query_0_hal_executable_format_embedded_elf_x86_64 = util.global.load @__device_0_query_0_hal_executable_format_embedded_elf_x86_64 : i1
    %__device_0 = util.global.load @__device_0 : !hal.device
    %1 = arith.select %__device_0_query_0_hal_executable_format_embedded_elf_x86_64, %c0, %c-1 : index
    %2 = arith.cmpi eq, %1, %c0 : index
    cf.cond_br %2, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %executable = hal.executable.create device(%__device_0 : !hal.device) affinity(%c-1_i64) target(@tiny_linked::@embedded_elf_x86_64) : !hal.executable
    cf.br ^bb3(%executable : !hal.executable)
  ^bb2:  // pred: ^bb0
    util.status.check_ok %c14_i32, "HAL device `__device_0` does not support any variant of executable `tiny_linked`; available formats: [embedded-elf-x86_64]"
    cf.br ^bb3(%0 : !hal.executable)
  ^bb3(%3: !hal.executable):  // 2 preds: ^bb1, ^bb2
    util.global.store %3, @__device_0_executable_0_tiny_linked : !hal.executable
    util.return
  }
  util.func private @__matmul_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
    %c-1_i64 = arith.constant -1 : i64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c128 = arith.constant 128 : index
    %c2048 = arith.constant 2048 : index
    %c64 = arith.constant 64 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__device_0_executable_0_tiny_linked = util.global.load immutable @__device_0_executable_0_tiny_linked : !hal.executable
    %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c3) : !hal.command_buffer
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tiny_linked : !hal.executable)[%c0] workgroups([%c1, %c1, %c1]) bindings([
      (%c0 : index)[%c0, %c128], 
      (%c1 : index)[%c0, %c2048], 
      (%c2 : index)[%c0, %c64]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|Transfer|CommandRetire") target("CommandIssue|Dispatch|Transfer") flags("None")
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    util.return %cmd : !hal.command_buffer
  }
  util.global private @__matmul_memoize_result_0_device_0 : !hal.command_buffer
  util.initializer {
    %0 = util.call @__matmul_memoize_apply() : () -> !hal.command_buffer
    util.global.store %0, @__matmul_memoize_result_0_device_0 : !hal.command_buffer
    util.return
  }
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<1x32xf32>, %input1: tensor<32x16xf32>) -> (%output0: tensor<1x16xf32>)"}} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = util.null : !hal.fence
    %c-1_i64 = arith.constant -1 : i64
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__matmul_memoize_result_0_device_0 = util.global.load immutable @__matmul_memoize_result_0_device_0 : !hal.command_buffer
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c1, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c128) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer_0 = hal.buffer_view.buffer<%arg1 : !hal.buffer_view> : !hal.buffer
    hal.buffer.assert<%buffer_0 : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c2048) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c64}
    %fence_1 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence) signal(%fence_1) commands(%__matmul_memoize_result_0_device_0) bindings([
      (%buffer : !hal.buffer)[%c0, %c128], 
      (%buffer_0 : !hal.buffer)[%c0, %c2048], 
      (%transient_buffer : !hal.buffer)[%c0, %c64]
    ]) flags("None")
    %status = hal.fence.await until([%fence_1]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c64] shape([%c1, %c16]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
  util.func private @__bias_relu_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
    %c-1_i64 = arith.constant -1 : i64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c64 = arith.constant 64 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__device_0_executable_0_tiny_linked = util.global.load immutable @__device_0_executable_0_tiny_linked : !hal.executable
    %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c3) : !hal.command_buffer
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tiny_linked : !hal.executable)[%c1] workgroups([%c1, %c1, %c1]) bindings([
      (%c0 : index)[%c0, %c64], 
      (%c1 : index)[%c0, %c64], 
      (%c2 : index)[%c0, %c64]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|Transfer|CommandRetire") target("CommandIssue|Dispatch|Transfer") flags("None")
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    util.return %cmd : !hal.command_buffer
  }
  util.global private @__bias_relu_memoize_result_0_device_0 : !hal.command_buffer
  util.initializer {
    %0 = util.call @__bias_relu_memoize_apply() : () -> !hal.command_buffer
    util.global.store %0, @__bias_relu_memoize_result_0_device_0 : !hal.command_buffer
    util.return
  }
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<1x16xf32>, %input1: tensor<16xf32>) -> (%output0: tensor<1x16xf32>)"}} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = util.null : !hal.fence
    %c-1_i64 = arith.constant -1 : i64
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__bias_relu_memoize_result_0_device_0 = util.global.load immutable @__bias_relu_memoize_result_0_device_0 : !hal.command_buffer
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c1, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c64) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c16]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer_0 = hal.buffer_view.buffer<%arg1 : !hal.buffer_view> : !hal.buffer
    hal.buffer.assert<%buffer_0 : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c64) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c64}
    %fence_1 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence) signal(%fence_1) commands(%__bias_relu_memoize_result_0_device_0) bindings([
      (%buffer : !hal.buffer)[%c0, %c64], 
      (%buffer_0 : !hal.buffer)[%c0, %c64], 
      (%transient_buffer : !hal.buffer)[%c0, %c64]
    ]) flags("None")
    %status = hal.fence.await until([%fence_1]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c64] shape([%c1, %c16]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
  util.func private @__row_sum_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
    %c-1_i64 = arith.constant -1 : i64
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c64 = arith.constant 64 : index
    %c4 = arith.constant 4 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__device_0_executable_0_tiny_linked = util.global.load immutable @__device_0_executable_0_tiny_linked : !hal.executable
    %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c2) : !hal.command_buffer
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tiny_linked : !hal.executable)[%c2] workgroups([%c1, %c1, %c1]) bindings([
      (%c0 : index)[%c0, %c64], 
      (%c1 : index)[%c0, %c4]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|Transfer|CommandRetire") target("CommandIssue|Dispatch|Transfer") flags("None")
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    util.return %cmd : !hal.command_buffer
  }
  util.global private @__row_sum_memoize_result_0_device_0 : !hal.command_buffer
  util.initializer {
    %0 = util.call @__row_sum_memoize_apply() : () -> !hal.command_buffer
    util.global.store %0, @__row_sum_memoize_result_0_device_0 : !hal.command_buffer
    util.return
  }
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<1x16xf32>) -> (%output0: tensor<1xf32>)"}} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = util.null : !hal.fence
    %c-1_i64 = arith.constant -1 : i64
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c64 = arith.constant 64 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__row_sum_memoize_result_0_device_0 = util.global.load immutable @__row_sum_memoize_result_0_device_0 : !hal.command_buffer
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c1, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c64) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c4}
    %fence_0 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence) signal(%fence_0) commands(%__row_sum_memoize_result_0_device_0) bindings([
      (%buffer : !hal.buffer)[%c0, %c64], 
      (%transient_buffer : !hal.buffer)[%c0, %c4]
    ]) flags("None")
    %status = hal.fence.await until([%fence_0]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c4] shape([%c1]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
  util.func private @__fragment_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
    %c-1_i64 = arith.constant -1 : i64
    %c5 = arith.constant 5 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c128 = arith.constant 128 : index
    %c2048 = arith.constant 2048 : index
    %c64 = arith.constant 64 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__device_0_executable_0_tiny_linked = util.global.load immutable @__device_0_executable_0_tiny_linked : !hal.executable
    %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c5) : !hal.command_buffer
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tiny_linked : !hal.executable)[%c0] workgroups([%c1, %c1, %c1]) bindings([
      (%c0 : index)[%c0, %c128], 
      (%c1 : index)[%c0, %c2048], 
      (%c4 : index)[%c0, %c64]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|Transfer|CommandRetire") target("CommandIssue|Dispatch|Transfer") flags("None")
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tiny_linked : !hal.executable)[%c3] workgroups([%c1, %c1, %c1]) bindings([
      (%c4 : index)[%c0, %c64], 
      (%c2 : index)[%c0, %c64], 
      (%c3 : index)[%c0, %c4]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|Transfer|CommandRetire") target("CommandIssue|Dispatch|Transfer") flags("None")
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    util.return %cmd : !hal.command_buffer
  }
  util.global private @__fragment_memoize_result_0_device_0 : !hal.command_buffer
  util.initializer {
    %0 = util.call @__fragment_memoize_apply() : () -> !hal.command_buffer
    util.global.store %0, @__fragment_memoize_result_0_device_0 : !hal.command_buffer
    util.return
  }
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<1x32xf32>, %input1: tensor<32x16xf32>, %input2: tensor<16xf32>) -> (%output0: tensor<1xf32>)"}} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = util.null : !hal.fence
    %c-1_i64 = arith.constant -1 : i64
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c2048 = arith.constant 2048 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__fragment_memoize_result_0_device_0 = util.global.load immutable @__fragment_memoize_result_0_device_0 : !hal.command_buffer
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c1, %c32]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c128) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c32, %c16]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer_0 = hal.buffer_view.buffer<%arg1 : !hal.buffer_view> : !hal.buffer
    hal.buffer.assert<%buffer_0 : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c2048) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    hal.buffer_view.assert<%arg2 : !hal.buffer_view> message("input2") shape([%c16]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer_1 = hal.buffer_view.buffer<%arg2 : !hal.buffer_view> : !hal.buffer
    hal.buffer.assert<%buffer_1 : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c64) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c4}
    %fence_2 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer_3 = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence_2) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c64}
    %fence_4 = hal.fence.join at([%fence, %fence_2]) flags("None") -> !hal.fence
    %fence_5 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence_4) signal(%fence_5) commands(%__fragment_memoize_result_0_device_0) bindings([
      (%buffer : !hal.buffer)[%c0, %c128], 
      (%buffer_0 : !hal.buffer)[%c0, %c2048], 
      (%buffer_1 : !hal.buffer)[%c0, %c64], 
      (%transient_buffer : !hal.buffer)[%c0, %c4], 
      (%transient_buffer_3 : !hal.buffer)[%c0, %c64]
    ]) flags("None")
    %fence_6 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.dealloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence_5) signal(%fence_6) buffer(%transient_buffer_3 : !hal.buffer) flags("None")
    %status = hal.fence.await until([%fence_6]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c4] shape([%c1]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
}
