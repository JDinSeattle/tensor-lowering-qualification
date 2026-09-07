module {
  hal.executable private @tail_linked {
    hal.executable.binary public @embedded_elf_x86_64 attributes {data = dense<"0x7F454C4602010100000000000000000003003E00010000000000000000000000400000000000000008180000000000000000000040003800070040001500130006000000040000004000000000000000400000000000000040000000000000008801000000000000880100000000000008000000000000000100000004000000000000000000000000000000000000000000000000000000E409000000000000E40900000000000000100000000000000100000005000000F009000000000000F019000000000000F019000000000000D103000000000000D10300000000000000100000000000000100000006000000D00D000000000000D02D000000000000D02D0000000000004002000000000000301200000000000000100000000000000200000006000000500F000000000000502F000000000000502F000000000000C000000000000000C000000000000000080000000000000052E5746404000000D00D000000000000D02D000000000000D02D00000000000040020000000000003012000000000000010000000000000051E57464060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000012000700B01D000000000000110000000000000002000000020000000000000001000000000000000000000000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279000000000000D82D0000000000000800000000000000E404000000000000F02D0000000000000800000000000000F019000000000000F82D0000000000000800000000000000201B000000000000002E0000000000000800000000000000D01B000000000000082E0000000000000800000000000000B01C000000000000102E0000000000000800000000000000F005000000000000182E00000000000008000000000000001506000000000000202E00000000000008000000000000003F06000000000000282E00000000000008000000000000006506000000000000382E00000000000008000000000000008C06000000000000482E00000000000008000000000000003207000000000000582E0000000000000800000000000000DB07000000000000682E00000000000008000000000000008208000000000000782E00000000000008000000000000003009000000000000802E00000000000008000000000000003009000000000000902E00000000000008000000000000003009000000000000982E00000000000008000000000000003009000000000000A82E00000000000008000000000000003009000000000000B02E00000000000008000000000000003009000000000000C02E00000000000008000000000000003009000000000000C82E00000000000008000000000000003009000000000000D02E0000000000000800000000000000D02D000000000000F02E0000000000000800000000000000F02D000000000000F82E0000000000000800000000000000F004000000000000102F0000000000000800000000000000102E000000000000282F0000000000000800000000000000302E000000000000302F0000000000000800000000000000702E0000000000000000000001000000020000000300000004000000050000000600000007000000000000807461696C5F6C696E6B656400000000000000000000000003010000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030100000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000201000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003010000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000006D61746D756C5F64697370617463685F305F6D61746D756C5F377831377833335F66333200626961735F72656C755F64697370617463685F305F656C656D656E74776973655F377831375F66333200726F775F73756D5F64697370617463685F305F726564756374696F6E5F377831375F66333200667261676D656E745F64697370617463685F315F726564756374696F6E5F377831375F663332002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6C6F63616C2D32303236303930362F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6C6F63616C2D32303236303930362F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6C6F63616C2D32303236303930362F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6C6F63616C2D32303236303930362F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C6972000000000000001400000000000000017A5200017810011B0C070890010000200000001C000000A01000002401000000410E108602430D064383048E03031C010C07081C00000040000000AC110000AD00000000410E108602430D0602A50C070800001C000000600000003C120000DF00000000410E108602430D0602D70C070800001C00000080000000FC120000F700000000410E108602430D0602EF0C0708000010000000A0000000DC130000110000000000000000000000000000000000000000000000554889E5415653488B5620488B02488B4A08488B5210488D701C31FF0F1F40004989F849C1E0074D8D04B84989F949C1E1064D8D0CB94901D14989CA4531DB90C5F857C048C7C3F8FFFFFF4D89D66690C4C17A100EC4C17A105644C4C17A109E88000000C4C17A10A6CC000000C4C17A10AE10010000C4C17A10B654010000C4C17A10BE98010000C4E271B9449E04C4E269B9449E08C4E261B9449E0CC4E259B9449E10C4E251B9449E14C4E249B9449E18C4E241B9449E1CC4C17A108EDC010000C4E271B9449E204883C3084981C6200200004883FB180F8272FFFFFFC4A17A108C9980080000C4A271B9840080000000C4817A11049949FFC34983C2044983FB110F8537FFFFFF48FFC74881C6840000004883FF070F8503FFFFFF31C05B415E5DC3CCCCCCCCCCCCCCCCCCCCCCCC554889E5488B5620488B02488B4A08488B521031F6BF08000000C5FD6F057EE9FFFFC5F057C9662E0F1F84000000000049C7C0F8FFFFFF41BA1100000041B911000000666666662E0F1F8400000000004983E9084C0F43D7C4C1796ED2C4E27D58D2C5ED66D0C4A26D2C5C8020C4A26D2C648120C5E458DCC5E4C2E106C5DC54DBC4A26D2E5C82204983C0084D89CA4983F80972BB48FFC64883C2444883C0444883FE07758A31C05DC5F877C3CCCCCC554889E5488B4E20488B01488B490831D2BE08000000C5FD6F05D2E8FFFFC4E27D180DE9E8FFFF660F1F840000000000C5E857D248C7C7F8FFFFFF41B91100000041B811000000660F1F8400000000004983E8084C0F43CEC4C1796ED9C4E27D58DBC5E566D8C4E2652C64B820C4E3754ADC30C5EA58D3C5FA16E3C5EA58D4C5E1C6E301C5EA58D4C5E0C6E3FFC5EA58D4C4E37D19DB01C5EA58D3C5FA16E3C5EA58D4C5E1C6E301C5EA58D4C5E0C6DBFFC5EA58D34883C7084D89C14883FF09728EC5FA11149148FFC24883C0444883FA070F8558FFFFFF31C05DC5F877C3CC554889E5488B5620488B02488B4A08488B521031F6BF08000000C5FD6F05EEE7FFFFC5F057C9C4E27D181501E8FFFF90C5E057DB49C7C0F8FFFFFF41BA1100000041B911000000660F1F8400000000004983E9084C0F43D7C4C1796EE2C4E27D58E4C5DD66E0C4A25D2C6C8020C4A25D2C748120C5D458EEC5D4C2F106C5CC54EDC4E36D4AE540C5E258DCC5FA16ECC5E258DDC5D9C6EC01C5E258DDC5D8C6ECFFC5E258DDC4E37D19E401C5E258DCC5FA16ECC5E258DDC5D9C6EC01C5E258DDC5D8C6E4FFC5E258DC4983C0084D89CA4983F8090F8276FFFFFFC5FA111CB248FFC64883C0444883FE070F8540FFFFFF31C05DC5F877C3CCCCCCCCCCCCCCCCCC31C083FF06488D0D14110000480F44C1C300000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000A5000000000000000000000003000000A8000000000000000000000003000000A6000000000000000000000003000000A7000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E000000000000000800000000000000FBFFFF6F000000000100000000000000070000000000000038020000000000000800000000000000880200000000000009000000000000001800000000000000F9FFFF6F000000001B000000000000000600000000000000C8010000000000000B000000000000001800000000000000050000000000000010020000000000000A0000000000000023000000000000000400000000000000F80100000000000000000000000000000000000000000000011101250E1305030E10171B0EB44219110112060000022E001101120640186E0E030E3A0B3B0B49133F190000032400030E3E0B0B0B0000042E001101120640186E0E030E3A0B3B0B49103F190000004B00000004000000000008019E0100002C00A301000000000000D1000000F0190000000000002401000002F0190000000000002401000001564E0100004E010000010147000000037D0000000504004400000004000000000008019E0100002C00000000008C000000D1000000201B000000000000AD00000004201B000000000000AD00000001565300000053000000010147000000004400000004000000000008019E0100002C00A700000012010000D1000000D01B000000000000DF00000004D01B000000000000DF00000001568100000081000000010147000000004400000004000000000008019E0100002C007301000096010000D1000000B01C000000000000F700000004B01C000000000000F700000001562C0000002C00000001014700000000636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C697200667261676D656E745F64697370617463685F315F726564756374696F6E5F377831375F66333200626961735F72656C755F64697370617463685F305F656C656D656E74776973655F377831375F66333200696E7400726F775F73756D5F64697370617463685F305F726564756374696F6E5F377831375F66333200636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6C6F63616C2D32303236303930362F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C6573006D61746D756C5F64697370617463685F305F6D61746D756C5F377831377833335F66333200636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C6972004952454500636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C697200370000000200000000004F0000002A0000006D61746D756C5F64697370617463685F305F6D61746D756C5F377831377833335F66333200000000003C00000002004F000000480000002A000000626961735F72656C755F64697370617463685F305F656C656D656E74776973655F377831375F663332000000000038000000020097000000480000002A000000726F775F73756D5F64697370617463685F305F726564756374696F6E5F377831375F6633320000000000390000000200DF000000480000002A000000667261676D656E745F64697370617463685F315F726564756374696F6E5F377831375F6633320000000000160000000200000000004F00000047000000696E7400000000000E00000002004F00000048000000000000000E00000002009700000048000000000000000E0000000200DF000000480000000000000088000000040040000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C69720000000000000902F0190000000000000105080A030A74754B4F06036E66060312023401050303710238010508030F02310105030371900508030F74025414060B2E020500010182000000040043000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C69720000000000000902201B0000000000000105080A030A4A754B0603730866060311086606036F660311C8050A060224144B0508EF08CF060B2E020500010180000000040041000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C69720000000000000902D01B0000000000000105080A030A4A7506037408AC060310089006037066031090050A0608BC0508024810022318060B2E020500010185000000040042000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C69720000000000000902B01C0000000000000105080A030A4A754B06037308E4060312082006036E66031290050A060224144B91050802480E02271A060B2E0205000101495245450000000000000000000000000000000000000000000000000000000000002300000000020900502F00000000000000000000000000000100000012000700B01D0000000000001100000000000000002E64796E73796D002E68617368002E64796E737472002E72656C612E64796E002E726F64617461002E65685F6672616D65002E74657874002E646174612E72656C2E726F002E64796E616D6963002E72656C726F5F70616464696E67002E64656275675F616262726576002E64656275675F696E666F002E64656275675F737472002E64656275675F7075626E616D6573002E64656275675F7075627479706573002E64656275675F6C696E65002E636F6D6D656E74002E73796D746162002E7368737472746162002E7374727461620000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279005F44594E414D494300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000B0000000200000000000000C801000000000000C801000000000000300000000000000003000000010000000800000000000000180000000000000009000000050000000200000000000000F801000000000000F80100000000000018000000000000000100000000000000040000000000000004000000000000000F0000000300000002000000000000001002000000000000100200000000000023000000000000000000000000000000010000000000000000000000000000001700000004000000020000000000000038020000000000003802000000000000880200000000000001000000000000000800000000000000180000000000000021000000010000001200000000000000C004000000000000C00400000000000070040000000000000000000000000000200000000000000000000000000000002900000001000000020000000000000030090000000000003009000000000000B40000000000000000000000000000000800000000000000000000000000000033000000010000000600000000000000F019000000000000F009000000000000D10300000000000000000000000000001000000000000000000000000000000039000000010000000300000000000000D02D000000000000D00D000000000000800100000000000000000000000000001000000000000000000000000000000046000000060000000300000000000000502F000000000000500F000000000000C0000000000000000300000000000000080000000000000010000000000000004F00000008000000030000000000000010300000000000001010000000000000F00F0000000000000000000000000000010000000000000000000000000000005E0000000100000000000000000000000000000000000000101000000000000050000000000000000000000000000000010000000000000000000000000000006C0000000100000000000000000000000000000000000000601000000000000027010000000000000000000000000000010000000000000000000000000000007800000001000000300000000000000000000000000000008711000000000000CC010000000000000000000000000000010000000000000001000000000000008300000001000000000000000000000000000000000000005313000000000000F40000000000000000000000000000000100000000000000000000000000000093000000010000000000000000000000000000000000000047140000000000005000000000000000000000000000000001000000000000000000000000000000A3000000010000000000000000000000000000000000000097140000000000001F02000000000000000000000000000001000000000000000000000000000000AF0000000100000030000000000000000000000000000000B6160000000000000500000000000000000000000000000001000000000000000100000000000000B80000000200000000000000000000000000000000000000C0160000000000004800000000000000140000000200000008000000000000001800000000000000C000000003000000000000000000000000000000000000000817000000000000D200000000000000000000000000000001000000000000000000000000000000CA0000000300000000000000000000000000000000000000DA170000000000002C00000000000000000000000000000001000000000000000000000000000000"> : vector<7496xi8>, format = "embedded-elf-x86_64", mime_type = "application/x-elf"}
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
  util.global private @__device_0_executable_0_tail_linked : !hal.executable
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
    %executable = hal.executable.create device(%__device_0 : !hal.device) affinity(%c-1_i64) target(@tail_linked::@embedded_elf_x86_64) : !hal.executable
    cf.br ^bb3(%executable : !hal.executable)
  ^bb2:  // pred: ^bb0
    util.status.check_ok %c14_i32, "HAL device `__device_0` does not support any variant of executable `tail_linked`; available formats: [embedded-elf-x86_64]"
    cf.br ^bb3(%0 : !hal.executable)
  ^bb3(%3: !hal.executable):  // 2 preds: ^bb1, ^bb2
    util.global.store %3, @__device_0_executable_0_tail_linked : !hal.executable
    util.return
  }
  util.func private @__matmul_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
    %c-1_i64 = arith.constant -1 : i64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c924 = arith.constant 924 : index
    %c2244 = arith.constant 2244 : index
    %c476 = arith.constant 476 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__device_0_executable_0_tail_linked = util.global.load immutable @__device_0_executable_0_tail_linked : !hal.executable
    %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c3) : !hal.command_buffer
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tail_linked : !hal.executable)[%c0] workgroups([%c1, %c1, %c1]) bindings([
      (%c0 : index)[%c0, %c924], 
      (%c1 : index)[%c0, %c2244], 
      (%c2 : index)[%c0, %c476]
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
  util.func public @matmul(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>) -> (%output0: tensor<7x17xf32>)"}} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = util.null : !hal.fence
    %c-1_i64 = arith.constant -1 : i64
    %c0 = arith.constant 0 : index
    %c476 = arith.constant 476 : index
    %c2244 = arith.constant 2244 : index
    %c924 = arith.constant 924 : index
    %c17 = arith.constant 17 : index
    %c33 = arith.constant 33 : index
    %c7 = arith.constant 7 : index
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__matmul_memoize_result_0_device_0 = util.global.load immutable @__matmul_memoize_result_0_device_0 : !hal.command_buffer
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c7, %c33]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c924) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c33, %c17]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer_0 = hal.buffer_view.buffer<%arg1 : !hal.buffer_view> : !hal.buffer
    hal.buffer.assert<%buffer_0 : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c2244) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c476}
    %fence_1 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence) signal(%fence_1) commands(%__matmul_memoize_result_0_device_0) bindings([
      (%buffer : !hal.buffer)[%c0, %c924], 
      (%buffer_0 : !hal.buffer)[%c0, %c2244], 
      (%transient_buffer : !hal.buffer)[%c0, %c476]
    ]) flags("None")
    %status = hal.fence.await until([%fence_1]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c476] shape([%c7, %c17]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
  util.func private @__bias_relu_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
    %c-1_i64 = arith.constant -1 : i64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c476 = arith.constant 476 : index
    %c68 = arith.constant 68 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__device_0_executable_0_tail_linked = util.global.load immutable @__device_0_executable_0_tail_linked : !hal.executable
    %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c3) : !hal.command_buffer
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tail_linked : !hal.executable)[%c1] workgroups([%c1, %c1, %c1]) bindings([
      (%c0 : index)[%c0, %c476], 
      (%c1 : index)[%c0, %c68], 
      (%c2 : index)[%c0, %c476]
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
  util.func public @bias_relu(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<7x17xf32>, %input1: tensor<17xf32>) -> (%output0: tensor<7x17xf32>)"}} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = util.null : !hal.fence
    %c-1_i64 = arith.constant -1 : i64
    %c0 = arith.constant 0 : index
    %c68 = arith.constant 68 : index
    %c476 = arith.constant 476 : index
    %c17 = arith.constant 17 : index
    %c7 = arith.constant 7 : index
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__bias_relu_memoize_result_0_device_0 = util.global.load immutable @__bias_relu_memoize_result_0_device_0 : !hal.command_buffer
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c7, %c17]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c476) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c17]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer_0 = hal.buffer_view.buffer<%arg1 : !hal.buffer_view> : !hal.buffer
    hal.buffer.assert<%buffer_0 : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c68) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c476}
    %fence_1 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence) signal(%fence_1) commands(%__bias_relu_memoize_result_0_device_0) bindings([
      (%buffer : !hal.buffer)[%c0, %c476], 
      (%buffer_0 : !hal.buffer)[%c0, %c68], 
      (%transient_buffer : !hal.buffer)[%c0, %c476]
    ]) flags("None")
    %status = hal.fence.await until([%fence_1]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c476] shape([%c7, %c17]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
  util.func private @__row_sum_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
    %c-1_i64 = arith.constant -1 : i64
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c476 = arith.constant 476 : index
    %c28 = arith.constant 28 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__device_0_executable_0_tail_linked = util.global.load immutable @__device_0_executable_0_tail_linked : !hal.executable
    %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c2) : !hal.command_buffer
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tail_linked : !hal.executable)[%c2] workgroups([%c1, %c1, %c1]) bindings([
      (%c0 : index)[%c0, %c476], 
      (%c1 : index)[%c0, %c28]
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
  util.func public @row_sum(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<7x17xf32>) -> (%output0: tensor<7xf32>)"}} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = util.null : !hal.fence
    %c-1_i64 = arith.constant -1 : i64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c476 = arith.constant 476 : index
    %c17 = arith.constant 17 : index
    %c7 = arith.constant 7 : index
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__row_sum_memoize_result_0_device_0 = util.global.load immutable @__row_sum_memoize_result_0_device_0 : !hal.command_buffer
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c7, %c17]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c476) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c28}
    %fence_0 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence) signal(%fence_0) commands(%__row_sum_memoize_result_0_device_0) bindings([
      (%buffer : !hal.buffer)[%c0, %c476], 
      (%transient_buffer : !hal.buffer)[%c0, %c28]
    ]) flags("None")
    %status = hal.fence.await until([%fence_0]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c28] shape([%c7]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
  util.func private @__fragment_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
    %c-1_i64 = arith.constant -1 : i64
    %c5 = arith.constant 5 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c924 = arith.constant 924 : index
    %c2244 = arith.constant 2244 : index
    %c512 = arith.constant 512 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c68 = arith.constant 68 : index
    %c28 = arith.constant 28 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__device_0_executable_0_tail_linked = util.global.load immutable @__device_0_executable_0_tail_linked : !hal.executable
    %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c5) : !hal.command_buffer
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tail_linked : !hal.executable)[%c0] workgroups([%c1, %c1, %c1]) bindings([
      (%c0 : index)[%c0, %c924], 
      (%c1 : index)[%c0, %c2244], 
      (%c4 : index)[%c0, %c512]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|Transfer|CommandRetire") target("CommandIssue|Dispatch|Transfer") flags("None")
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_tail_linked : !hal.executable)[%c3] workgroups([%c1, %c1, %c1]) bindings([
      (%c4 : index)[%c0, %c512], 
      (%c2 : index)[%c0, %c68], 
      (%c3 : index)[%c0, %c28]
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
  util.func public @fragment(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view, %arg2: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>, %input2: tensor<17xf32>) -> (%output0: tensor<7xf32>)"}} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = util.null : !hal.fence
    %c-1_i64 = arith.constant -1 : i64
    %c512 = arith.constant 512 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %c68 = arith.constant 68 : index
    %c2244 = arith.constant 2244 : index
    %c924 = arith.constant 924 : index
    %c17 = arith.constant 17 : index
    %c33 = arith.constant 33 : index
    %c7 = arith.constant 7 : index
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__fragment_memoize_result_0_device_0 = util.global.load immutable @__fragment_memoize_result_0_device_0 : !hal.command_buffer
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("input0") shape([%c7, %c33]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c924) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    hal.buffer_view.assert<%arg1 : !hal.buffer_view> message("input1") shape([%c33, %c17]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer_0 = hal.buffer_view.buffer<%arg1 : !hal.buffer_view> : !hal.buffer
    hal.buffer.assert<%buffer_0 : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c2244) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    hal.buffer_view.assert<%arg2 : !hal.buffer_view> message("input2") shape([%c17]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer_1 = hal.buffer_view.buffer<%arg2 : !hal.buffer_view> : !hal.buffer
    hal.buffer.assert<%buffer_1 : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c68) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c28}
    %fence_2 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer_3 = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence_2) pool(%c0_i64) type(%memory_type) usage(%buffer_usage) flags("None") : !hal.buffer{%c512}
    %fence_4 = hal.fence.join at([%fence, %fence_2]) flags("None") -> !hal.fence
    %fence_5 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence_4) signal(%fence_5) commands(%__fragment_memoize_result_0_device_0) bindings([
      (%buffer : !hal.buffer)[%c0, %c924], 
      (%buffer_0 : !hal.buffer)[%c0, %c2244], 
      (%buffer_1 : !hal.buffer)[%c0, %c68], 
      (%transient_buffer : !hal.buffer)[%c0, %c28], 
      (%transient_buffer_3 : !hal.buffer)[%c0, %c512]
    ]) flags("None")
    %fence_6 = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.dealloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence_5) signal(%fence_6) buffer(%transient_buffer_3 : !hal.buffer) flags("None")
    %status = hal.fence.await until([%fence_6]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c28] shape([%c7]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
}
