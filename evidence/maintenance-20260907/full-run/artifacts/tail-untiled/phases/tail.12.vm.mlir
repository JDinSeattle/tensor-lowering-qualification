module attributes {vm.toplevel} {
  vm.module public @module {
    vm.global.ref private mutable @__device_0 : !vm.ref<!hal.device>
    vm.global.ref private mutable @__device_0_executable_0_tail_linked : !vm.ref<!hal.executable>
    vm.global.ref private mutable @__matmul_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    vm.global.ref private mutable @__bias_relu_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    vm.global.ref private mutable @__row_sum_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    vm.global.ref private mutable @__fragment_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    vm.rodata private @_utf8_hal_device_id_C6650FF277232B5A {alignment = 1 : i64} "hal.device.id"
    vm.rodata private @_utf8_local_1A8FF0278D7661D8 {alignment = 1 : i64} "local*"
    vm.rodata private @_utf8_hal_executable_format_E03EECB63A2AAF52 {alignment = 1 : i64} "hal.executable.format"
    vm.rodata private @_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 {alignment = 1 : i64} "embedded-elf-x86_64"
    vm.rodata private @tail_linked_embedded_elf_x86_64 {alignment = 16 : i64, mime_type = "application/x-elf"} dense<"0x7F454C4602010100000000000000000003003E000100000000000000000000004000000000000000481800000000000000000000400038000700400015001300060000000400000040000000000000004000000000000000400000000000000088010000000000008801000000000000080000000000000001000000040000000000000000000000000000000000000000000000000000001C0A0000000000001C0A00000000000000100000000000000100000005000000200A000000000000201A000000000000201A000000000000D103000000000000D10300000000000000100000000000000100000006000000000E000000000000002E000000000000002E0000000000004002000000000000001200000000000000100000000000000200000006000000800F000000000000802F000000000000802F000000000000C000000000000000C000000000000000080000000000000052E5746404000000000E000000000000002E000000000000002E00000000000040020000000000000012000000000000010000000000000051E57464060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000012000700E01D000000000000110000000000000002000000020000000000000001000000000000000000000000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279000000000000082E0000000000000800000000000000E404000000000000202E0000000000000800000000000000201A000000000000282E0000000000000800000000000000501B000000000000302E0000000000000800000000000000001C000000000000382E0000000000000800000000000000E01C000000000000402E0000000000000800000000000000F005000000000000482E00000000000008000000000000001506000000000000502E00000000000008000000000000003F06000000000000582E00000000000008000000000000006506000000000000682E00000000000008000000000000008C06000000000000782E00000000000008000000000000004107000000000000882E0000000000000800000000000000F907000000000000982E0000000000000800000000000000AF08000000000000A82E00000000000008000000000000006809000000000000B02E00000000000008000000000000006809000000000000C02E00000000000008000000000000006809000000000000C82E00000000000008000000000000006809000000000000D82E00000000000008000000000000006809000000000000E02E00000000000008000000000000006809000000000000F02E00000000000008000000000000006809000000000000F82E00000000000008000000000000006809000000000000002F0000000000000800000000000000002E000000000000202F0000000000000800000000000000202E000000000000282F0000000000000800000000000000F004000000000000402F0000000000000800000000000000402E000000000000582F0000000000000800000000000000602E000000000000602F0000000000000800000000000000A02E0000000000000000000001000000020000000300000004000000050000000600000007000000000000807461696C5F6C696E6B656400000000000000000000000003010000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030100000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000201000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003010000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000006D61746D756C5F64697370617463685F305F6D61746D756C5F377831377833335F66333200626961735F72656C755F64697370617463685F305F656C656D656E74776973655F377831375F66333200726F775F73756D5F64697370617463685F305F726564756374696F6E5F377831375F66333200667261676D656E745F64697370617463685F315F726564756374696F6E5F377831375F663332002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C69720000001400000000000000017A5200017810011B0C070890010000200000001C000000981000002401000000410E108602430D064383048E03031C010C07081C00000040000000A4110000AD00000000410E108602430D0602A50C070800001C0000006000000034120000DF00000000410E108602430D0602D70C070800001C00000080000000F4120000F700000000410E108602430D0602EF0C0708000010000000A0000000D413000011000000000000000000000000000000554889E5415653488B5620488B02488B4A08488B5210488D701C31FF0F1F40004989F849C1E0074D8D04B84989F949C1E1064D8D0CB94901D14989CA4531DB90C5F857C048C7C3F8FFFFFF4D89D66690C4C17A100EC4C17A105644C4C17A109E88000000C4C17A10A6CC000000C4C17A10AE10010000C4C17A10B654010000C4C17A10BE98010000C4E271B9449E04C4E269B9449E08C4E261B9449E0CC4E259B9449E10C4E251B9449E14C4E249B9449E18C4E241B9449E1CC4C17A108EDC010000C4E271B9449E204883C3084981C6200200004883FB180F8272FFFFFFC4A17A108C9980080000C4A271B9840080000000C4817A11049949FFC34983C2044983FB110F8537FFFFFF48FFC74881C6840000004883FF070F8503FFFFFF31C05B415E5DC3CCCCCCCCCCCCCCCCCCCCCCCC554889E5488B5620488B02488B4A08488B521031F6BF08000000C5FD6F054EE9FFFFC5F057C9662E0F1F84000000000049C7C0F8FFFFFF41BA1100000041B911000000666666662E0F1F8400000000004983E9084C0F43D7C4C1796ED2C4E27D58D2C5ED66D0C4A26D2C5C8020C4A26D2C648120C5E458DCC5E4C2E106C5DC54DBC4A26D2E5C82204983C0084D89CA4983F80972BB48FFC64883C2444883C0444883FE07758A31C05DC5F877C3CCCCCC554889E5488B4E20488B01488B490831D2BE08000000C5FD6F05A2E8FFFFC4E27D180DB9E8FFFF660F1F840000000000C5E857D248C7C7F8FFFFFF41B91100000041B811000000660F1F8400000000004983E8084C0F43CEC4C1796ED9C4E27D58DBC5E566D8C4E2652C64B820C4E3754ADC30C5EA58D3C5FA16E3C5EA58D4C5E1C6E301C5EA58D4C5E0C6E3FFC5EA58D4C4E37D19DB01C5EA58D3C5FA16E3C5EA58D4C5E1C6E301C5EA58D4C5E0C6DBFFC5EA58D34883C7084D89C14883FF09728EC5FA11149148FFC24883C0444883FA070F8558FFFFFF31C05DC5F877C3CC554889E5488B5620488B02488B4A08488B521031F6BF08000000C5FD6F05BEE7FFFFC5F057C9C4E27D1815D1E7FFFF90C5E057DB49C7C0F8FFFFFF41BA1100000041B911000000660F1F8400000000004983E9084C0F43D7C4C1796EE2C4E27D58E4C5DD66E0C4A25D2C6C8020C4A25D2C748120C5D458EEC5D4C2F106C5CC54EDC4E36D4AE540C5E258DCC5FA16ECC5E258DDC5D9C6EC01C5E258DDC5D8C6ECFFC5E258DDC4E37D19E401C5E258DCC5FA16ECC5E258DDC5D9C6EC01C5E258DDC5D8C6E4FFC5E258DC4983C0084D89CA4983F8090F8276FFFFFFC5FA111CB248FFC64883C0444883FE070F8540FFFFFF31C05DC5F877C3CCCCCCCCCCCCCCCCCC31C083FF06488D0D14110000480F44C1C300000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000B4000000000000000000000003000000B7000000000000000000000003000000B5000000000000000000000003000000B6000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E000000000000000800000000000000FBFFFF6F000000000100000000000000070000000000000038020000000000000800000000000000880200000000000009000000000000001800000000000000F9FFFF6F000000001B000000000000000600000000000000C8010000000000000B000000000000001800000000000000050000000000000010020000000000000A0000000000000023000000000000000400000000000000F80100000000000000000000000000000000000000000000011101250E1305030E10171B0EB44219110112060000022E001101120640186E0E030E3A0B3B0B49133F190000032400030E3E0B0B0B0000042E001101120640186E0E030E3A0B3B0B49103F190000004B0000000400000000000801AD0100002C00B20100000000000000000000201A0000000000002401000002201A0000000000002401000001565D0100005D0100000101470000000309010000050400440000000400000000000801AD0100002C008C0000008C00000000000000501B000000000000AD00000004501B000000000000AD0000000156DF000000DF00000001014700000000440000000400000000000801AD0100002C00330100001201000000000000001C000000000000DF00000004001C000000000000DF00000001560D0100000D01000001014700000000440000000400000000000801AD0100002C00820100009601000000000000E01C000000000000F700000004E01C000000000000F70000000156B8000000B8000000010147000000002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F7461696C2D756E74696C65642F65786563757461626C657300636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C697200667261676D656E745F64697370617463685F315F726564756374696F6E5F377831375F66333200626961735F72656C755F64697370617463685F305F656C656D656E74776973655F377831375F66333200696E7400726F775F73756D5F64697370617463685F305F726564756374696F6E5F377831375F66333200636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C6972006D61746D756C5F64697370617463685F305F6D61746D756C5F377831377833335F66333200636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C6972004952454500636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C697200370000000200000000004F0000002A0000006D61746D756C5F64697370617463685F305F6D61746D756C5F377831377833335F66333200000000003C00000002004F000000480000002A000000626961735F72656C755F64697370617463685F305F656C656D656E74776973655F377831375F663332000000000038000000020097000000480000002A000000726F775F73756D5F64697370617463685F305F726564756374696F6E5F377831375F6633320000000000390000000200DF000000480000002A000000667261676D656E745F64697370617463685F315F726564756374696F6E5F377831375F6633320000000000160000000200000000004F00000047000000696E7400000000000E00000002004F00000048000000000000000E00000002009700000048000000000000000E0000000200DF000000480000000000000088000000040040000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C69720000000000000902201A0000000000000105080A030A74754B4F06036E66060312023401050303710238010508030F02310105030371900508030F74025414060B2E020500010182000000040043000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C69720000000000000902501B0000000000000105080A030A4A754B0603730866060311086606036F660311C8050A060224144B0508EF08CF060B2E020500010180000000040041000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C69720000000000000902001C0000000000000105080A030A4A7506037408AC060310089006037066031090050A0608BC0508024810022318060B2E020500010185000000040042000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C69720000000000000902E01C0000000000000105080A030A4A754B06037308E4060312082006036E66031290050A060224144B91050802480E02271A060B2E020500010149524545000000000000000000000000000000000000000000000000000000000000002300000000020900802F00000000000000000000000000000100000012000700E01D0000000000001100000000000000002E64796E73796D002E68617368002E64796E737472002E72656C612E64796E002E726F64617461002E65685F6672616D65002E74657874002E646174612E72656C2E726F002E64796E616D6963002E72656C726F5F70616464696E67002E64656275675F616262726576002E64656275675F696E666F002E64656275675F737472002E64656275675F7075626E616D6573002E64656275675F7075627479706573002E64656275675F6C696E65002E636F6D6D656E74002E73796D746162002E7368737472746162002E7374727461620000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279005F44594E414D494300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000B0000000200000000000000C801000000000000C801000000000000300000000000000003000000010000000800000000000000180000000000000009000000050000000200000000000000F801000000000000F80100000000000018000000000000000100000000000000040000000000000004000000000000000F0000000300000002000000000000001002000000000000100200000000000023000000000000000000000000000000010000000000000000000000000000001700000004000000020000000000000038020000000000003802000000000000880200000000000001000000000000000800000000000000180000000000000021000000010000001200000000000000C004000000000000C004000000000000A8040000000000000000000000000000200000000000000000000000000000002900000001000000020000000000000068090000000000006809000000000000B40000000000000000000000000000000800000000000000000000000000000033000000010000000600000000000000201A000000000000200A000000000000D10300000000000000000000000000001000000000000000000000000000000039000000010000000300000000000000002E000000000000000E000000000000800100000000000000000000000000001000000000000000000000000000000046000000060000000300000000000000802F000000000000800F000000000000C0000000000000000300000000000000080000000000000010000000000000004F00000008000000030000000000000040300000000000004010000000000000C00F0000000000000000000000000000010000000000000000000000000000005E0000000100000000000000000000000000000000000000401000000000000050000000000000000000000000000000010000000000000000000000000000006C000000010000000000000000000000000000000000000090100000000000002701000000000000000000000000000001000000000000000000000000000000780000000100000030000000000000000000000000000000B711000000000000DB010000000000000000000000000000010000000000000001000000000000008300000001000000000000000000000000000000000000009213000000000000F40000000000000000000000000000000100000000000000000000000000000093000000010000000000000000000000000000000000000086140000000000005000000000000000000000000000000001000000000000000000000000000000A30000000100000000000000000000000000000000000000D6140000000000001F02000000000000000000000000000001000000000000000000000000000000AF0000000100000030000000000000000000000000000000F5160000000000000500000000000000000000000000000001000000000000000100000000000000B8000000020000000000000000000000000000000000000000170000000000004800000000000000140000000200000008000000000000001800000000000000C000000003000000000000000000000000000000000000004817000000000000D200000000000000000000000000000001000000000000000000000000000000CA00000003000000000000000000000000000000000000001A180000000000002C00000000000000000000000000000001000000000000000000000000000000"> : vector<7560xi8>
    vm.func private @__matmul_memoize_apply() -> !vm.ref<!hal.command_buffer> attributes {inlining_policy = #util.inline.never, vm.unwind} {
      %c13 = vm.const.i32 13
      %c28 = vm.const.i32 28
      %c2 = vm.const.i32 2
      %null = vm.const.ref.zero : !vm.ref<!hal.buffer>
      %c1 = vm.const.i32 1
      %c3 = vm.const.i32 3
      %zero = vm.const.i32.zero
      %c476 = vm.const.i64 476
      %c2244 = vm.const.i64 2244
      %c924 = vm.const.i64 924
      %zero_0 = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__device_0_executable_0_tail_linked = vm.global.load.ref @__device_0_executable_0_tail_linked : !vm.ref<!hal.executable>
      %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c3) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_tail_linked, %zero, %c1, %c1, %c1, %zero_0, [], [(%zero, %zero, %null, %zero_0, %c924), (%zero, %c1, %null, %zero_0, %c2244), (%zero, %c2, %null, %zero_0, %c476)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_0) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call @hal.command_buffer.finalize(%ref) : (!vm.ref<!hal.command_buffer>) -> ()
      vm.return %ref : !vm.ref<!hal.command_buffer>
    }
    vm.rodata private @_utf8_input0_DCE99660CEB3F6B {alignment = 1 : i64} "input0"
    vm.rodata private @_utf8_tensor_FC1814BC4A58F22A {alignment = 1 : i64} "tensor"
    vm.rodata private @_utf8_input1_B898B726583C85DA {alignment = 1 : i64} "input1"
    vm.func private @matmul(%arg0: !vm.ref<!hal.buffer_view>, %arg1: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> attributes {iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>) -> (%output0: tensor<7x17xf32>)"}, vm.unwind, vm.yield} {
      %c16 = vm.const.i32 16
      %c1 = vm.const.i32 1
      %c553648160 = vm.const.i32 553648160
      %c3075 = vm.const.i32 3075
      %c48 = vm.const.i32 48
      %c7 = vm.const.i64 7
      %c33 = vm.const.i64 33
      %c17 = vm.const.i64 17
      %c924 = vm.const.i64 924
      %c2244 = vm.const.i64 2244
      %c476 = vm.const.i64 476
      %zero = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %null = vm.const.ref.zero : !vm.ref<!hal.fence>
      %c-1_0 = vm.const.i32 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__matmul_memoize_result_0_device_0 = vm.global.load.ref @__matmul_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %_utf8_input0_DCE99660CEB3F6B = vm.const.ref.rodata @_utf8_input0_DCE99660CEB3F6B : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_input0_DCE99660CEB3F6B, %c553648160, %c1, [%c7, %c33]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
      %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
      vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c924, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %_utf8_input1_B898B726583C85DA = vm.const.ref.rodata @_utf8_input1_B898B726583C85DA : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg1, %_utf8_input1_B898B726583C85DA, %c553648160, %c1, [%c33, %c17]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref_2 = vm.call @hal.buffer_view.buffer(%arg1) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      vm.call @hal.buffer.assert(%ref_2, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c2244, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %ref_3 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_4 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_3, %zero, %c48, %c3075, %c476, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_5 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_3, %ref_5, %__matmul_memoize_result_0_device_0, %zero, [(%ref, %zero, %c924), (%ref_2, %zero, %c2244), (%ref_4, %zero, %c476)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call.variadic.yieldable @hal.fence.await(%c-1_0, %zero, %ref_5) {segment_sizes = dense<[-1, -1, 1]> : vector<3xi16>, segment_types = [i32, i64, !vm.ref<!hal.fence>]} : (i32, i64, !vm.ref<!hal.fence>) -> ^bb1 (i32)
    ^bb1(%0: i32):  // pred: ^bb0
      vm.cond_br %0, ^bb3, ^bb2
    ^bb2:  // pred: ^bb1
      %ref_6 = vm.call.variadic @hal.buffer_view.create(%ref_4, %zero, %c476, %c553648160, %c1, [%c7, %c17]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
      vm.return %ref_6 : !vm.ref<!hal.buffer_view>
    ^bb3:  // pred: ^bb1
      vm.discard.refs %ref_4 : !vm.ref<!hal.buffer>
      vm.fail %0, "failed to wait on timepoint"
    }
    vm.export @matmul attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>) -> (%output0: tensor<7x17xf32>)"}}
    vm.func private @__bias_relu_memoize_apply() -> !vm.ref<!hal.command_buffer> attributes {inlining_policy = #util.inline.never, vm.unwind} {
      %c13 = vm.const.i32 13
      %c28 = vm.const.i32 28
      %c2 = vm.const.i32 2
      %null = vm.const.ref.zero : !vm.ref<!hal.buffer>
      %c1 = vm.const.i32 1
      %c3 = vm.const.i32 3
      %zero = vm.const.i32.zero
      %c68 = vm.const.i64 68
      %c476 = vm.const.i64 476
      %zero_0 = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__device_0_executable_0_tail_linked = vm.global.load.ref @__device_0_executable_0_tail_linked : !vm.ref<!hal.executable>
      %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c3) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_tail_linked, %c1, %c1, %c1, %c1, %zero_0, [], [(%zero, %zero, %null, %zero_0, %c476), (%zero, %c1, %null, %zero_0, %c68), (%zero, %c2, %null, %zero_0, %c476)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_0) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call @hal.command_buffer.finalize(%ref) : (!vm.ref<!hal.command_buffer>) -> ()
      vm.return %ref : !vm.ref<!hal.command_buffer>
    }
    vm.func private @bias_relu(%arg0: !vm.ref<!hal.buffer_view>, %arg1: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> attributes {iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<7x17xf32>, %input1: tensor<17xf32>) -> (%output0: tensor<7x17xf32>)"}, vm.unwind, vm.yield} {
      %c16 = vm.const.i32 16
      %c1 = vm.const.i32 1
      %c553648160 = vm.const.i32 553648160
      %c3075 = vm.const.i32 3075
      %c48 = vm.const.i32 48
      %c7 = vm.const.i64 7
      %c17 = vm.const.i64 17
      %c476 = vm.const.i64 476
      %c68 = vm.const.i64 68
      %zero = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %null = vm.const.ref.zero : !vm.ref<!hal.fence>
      %c-1_0 = vm.const.i32 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__bias_relu_memoize_result_0_device_0 = vm.global.load.ref @__bias_relu_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %_utf8_input0_DCE99660CEB3F6B = vm.const.ref.rodata @_utf8_input0_DCE99660CEB3F6B : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_input0_DCE99660CEB3F6B, %c553648160, %c1, [%c7, %c17]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
      %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
      vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c476, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %_utf8_input1_B898B726583C85DA = vm.const.ref.rodata @_utf8_input1_B898B726583C85DA : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg1, %_utf8_input1_B898B726583C85DA, %c553648160, %c1, [%c17]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref_2 = vm.call @hal.buffer_view.buffer(%arg1) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      vm.call @hal.buffer.assert(%ref_2, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c68, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %ref_3 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_4 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_3, %zero, %c48, %c3075, %c476, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_5 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_3, %ref_5, %__bias_relu_memoize_result_0_device_0, %zero, [(%ref, %zero, %c476), (%ref_2, %zero, %c68), (%ref_4, %zero, %c476)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call.variadic.yieldable @hal.fence.await(%c-1_0, %zero, %ref_5) {segment_sizes = dense<[-1, -1, 1]> : vector<3xi16>, segment_types = [i32, i64, !vm.ref<!hal.fence>]} : (i32, i64, !vm.ref<!hal.fence>) -> ^bb1 (i32)
    ^bb1(%0: i32):  // pred: ^bb0
      vm.cond_br %0, ^bb3, ^bb2
    ^bb2:  // pred: ^bb1
      %ref_6 = vm.call.variadic @hal.buffer_view.create(%ref_4, %zero, %c476, %c553648160, %c1, [%c7, %c17]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
      vm.return %ref_6 : !vm.ref<!hal.buffer_view>
    ^bb3:  // pred: ^bb1
      vm.discard.refs %ref_4 : !vm.ref<!hal.buffer>
      vm.fail %0, "failed to wait on timepoint"
    }
    vm.export @bias_relu attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<7x17xf32>, %input1: tensor<17xf32>) -> (%output0: tensor<7x17xf32>)"}}
    vm.func private @__row_sum_memoize_apply() -> !vm.ref<!hal.command_buffer> attributes {inlining_policy = #util.inline.never, vm.unwind} {
      %c13 = vm.const.i32 13
      %c28 = vm.const.i32 28
      %null = vm.const.ref.zero : !vm.ref<!hal.buffer>
      %c1 = vm.const.i32 1
      %c2 = vm.const.i32 2
      %c3 = vm.const.i32 3
      %zero = vm.const.i32.zero
      %c28_0 = vm.const.i64 28
      %c476 = vm.const.i64 476
      %zero_1 = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__device_0_executable_0_tail_linked = vm.global.load.ref @__device_0_executable_0_tail_linked : !vm.ref<!hal.executable>
      %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c2) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_tail_linked, %c2, %c1, %c1, %c1, %zero_1, [], [(%zero, %zero, %null, %zero_1, %c476), (%zero, %c1, %null, %zero_1, %c28_0)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_1) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call @hal.command_buffer.finalize(%ref) : (!vm.ref<!hal.command_buffer>) -> ()
      vm.return %ref : !vm.ref<!hal.command_buffer>
    }
    vm.func private @row_sum(%arg0: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> attributes {iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<7x17xf32>) -> (%output0: tensor<7xf32>)"}, vm.unwind, vm.yield} {
      %c16 = vm.const.i32 16
      %c1 = vm.const.i32 1
      %c553648160 = vm.const.i32 553648160
      %c3075 = vm.const.i32 3075
      %c48 = vm.const.i32 48
      %c7 = vm.const.i64 7
      %c17 = vm.const.i64 17
      %c476 = vm.const.i64 476
      %c28 = vm.const.i64 28
      %zero = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %null = vm.const.ref.zero : !vm.ref<!hal.fence>
      %c-1_0 = vm.const.i32 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__row_sum_memoize_result_0_device_0 = vm.global.load.ref @__row_sum_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %_utf8_input0_DCE99660CEB3F6B = vm.const.ref.rodata @_utf8_input0_DCE99660CEB3F6B : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_input0_DCE99660CEB3F6B, %c553648160, %c1, [%c7, %c17]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
      %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
      vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c476, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %ref_2 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_3 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_2, %zero, %c48, %c3075, %c28, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_4 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_2, %ref_4, %__row_sum_memoize_result_0_device_0, %zero, [(%ref, %zero, %c476), (%ref_3, %zero, %c28)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call.variadic.yieldable @hal.fence.await(%c-1_0, %zero, %ref_4) {segment_sizes = dense<[-1, -1, 1]> : vector<3xi16>, segment_types = [i32, i64, !vm.ref<!hal.fence>]} : (i32, i64, !vm.ref<!hal.fence>) -> ^bb1 (i32)
    ^bb1(%0: i32):  // pred: ^bb0
      vm.cond_br %0, ^bb3, ^bb2
    ^bb2:  // pred: ^bb1
      %ref_5 = vm.call.variadic @hal.buffer_view.create(%ref_3, %zero, %c28, %c553648160, %c1, [%c7]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
      vm.return %ref_5 : !vm.ref<!hal.buffer_view>
    ^bb3:  // pred: ^bb1
      vm.discard.refs %ref_3 : !vm.ref<!hal.buffer>
      vm.fail %0, "failed to wait on timepoint"
    }
    vm.export @row_sum attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<7x17xf32>) -> (%output0: tensor<7xf32>)"}}
    vm.func private @__fragment_memoize_apply() -> !vm.ref<!hal.command_buffer> attributes {inlining_policy = #util.inline.never, vm.unwind} {
      %c2 = vm.const.i32 2
      %c13 = vm.const.i32 13
      %c28 = vm.const.i32 28
      %c4 = vm.const.i32 4
      %null = vm.const.ref.zero : !vm.ref<!hal.buffer>
      %c1 = vm.const.i32 1
      %c5 = vm.const.i32 5
      %c3 = vm.const.i32 3
      %zero = vm.const.i32.zero
      %c28_0 = vm.const.i64 28
      %c68 = vm.const.i64 68
      %c512 = vm.const.i64 512
      %c2244 = vm.const.i64 2244
      %c924 = vm.const.i64 924
      %zero_1 = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__device_0_executable_0_tail_linked = vm.global.load.ref @__device_0_executable_0_tail_linked : !vm.ref<!hal.executable>
      %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c5) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_tail_linked, %zero, %c1, %c1, %c1, %zero_1, [], [(%zero, %zero, %null, %zero_1, %c924), (%zero, %c1, %null, %zero_1, %c2244), (%zero, %c4, %null, %zero_1, %c512)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_1) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_tail_linked, %c3, %c1, %c1, %c1, %zero_1, [], [(%zero, %c4, %null, %zero_1, %c512), (%zero, %c2, %null, %zero_1, %c68), (%zero, %c3, %null, %zero_1, %c28_0)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_1) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call @hal.command_buffer.finalize(%ref) : (!vm.ref<!hal.command_buffer>) -> ()
      vm.return %ref : !vm.ref<!hal.command_buffer>
    }
    vm.import private @hal.buffer.assert(%buffer : !vm.ref<!hal.buffer>, %message : !vm.buffer, %allocator : !vm.ref<!hal.allocator>, %minimum_length : i64, %memory_types : i32, %buffer_usage : i32)
    vm.import private @hal.buffer_view.create(%buffer : !vm.ref<!hal.buffer>, %source_offset : i64, %source_length : i64, %element_type : i32, %encoding_type : i32, %shape : i64 ...) -> !vm.ref<!hal.buffer_view> attributes {nosideeffects}
    vm.import private @hal.buffer_view.assert(%buffer_view : !vm.ref<!hal.buffer_view>, %message : !vm.buffer, %element_type : i32, %encoding_type : i32, %shape : i64 ...)
    vm.import private @hal.buffer_view.buffer(%buffer_view : !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer> attributes {nosideeffects}
    vm.import private @hal.command_buffer.create(%device : !vm.ref<!hal.device>, %modes : i32, %command_categories : i32, %queue_affinity : i64, %binding_capacity : i32) -> !vm.ref<!hal.command_buffer> attributes {minimum_version = 6 : i32}
    vm.import private @hal.command_buffer.finalize(%command_buffer : !vm.ref<!hal.command_buffer>)
    vm.import private @hal.command_buffer.execution_barrier(%command_buffer : !vm.ref<!hal.command_buffer>, %source_stage_mask : i32, %target_stage_mask : i32, %flags : i64)
    vm.import private @hal.command_buffer.dispatch(%command_buffer : !vm.ref<!hal.command_buffer>, %executable : !vm.ref<!hal.executable>, %entry_point : i32, %workgroup_x : i32, %workgroup_y : i32, %workgroup_z : i32, %flags : i64, %constants : i32 ..., %bindings : tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
    vm.import private @hal.device.allocator(%device : !vm.ref<!hal.device>) -> !vm.ref<!hal.allocator> attributes {nosideeffects}
    vm.import private @hal.device.query.i64(%device : !vm.ref<!hal.device>, %category : !vm.buffer, %key : !vm.buffer) -> (i32, i64) attributes {nosideeffects}
    vm.import private @hal.device.queue.alloca(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %wait_fence : !vm.ref<!hal.fence>, %signal_fence : !vm.ref<!hal.fence>, %pool : i64, %memory_types : i32, %buffer_usage : i32, %allocation_size : i64, %flags : i64) -> !vm.ref<!hal.buffer>
    vm.import private @hal.device.queue.dealloca(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %wait_fence : !vm.ref<!hal.fence>, %signal_fence : !vm.ref<!hal.fence>, %buffer : !vm.ref<!hal.buffer>, %flags : i64)
    vm.import private @hal.device.queue.execute.indirect(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %wait_fence : !vm.ref<!hal.fence>, %signal_fence : !vm.ref<!hal.fence>, %command_buffer : !vm.ref<!hal.command_buffer>, %flags : i64, %binding_table : tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
    vm.import private @hal.devices.count() -> i32 attributes {nosideeffects}
    vm.import private @hal.devices.get(%index : i32) -> !vm.ref<!hal.device> attributes {nosideeffects}
    vm.import private @hal.executable.create(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %executable_format : !vm.buffer, %executable_data : !vm.buffer, %constants : !vm.buffer) -> !vm.ref<!hal.executable> attributes {nosideeffects}
    vm.import private @hal.fence.create(%device : !vm.ref<!hal.device>, %flags : i64) -> !vm.ref<!hal.fence>
    vm.import private @hal.fence.join(%flags : i64, %fences : !vm.ref<!hal.fence> ...) -> !vm.ref<!hal.fence> attributes {nosideeffects}
    vm.import private @hal.fence.await(%timeout_millis : i32, %flags : i64, %fences : !vm.ref<!hal.fence> ...) -> i32 attributes {vm.yield}
    vm.rodata private @_utf8_input2_396EAC3FD425AA3E {alignment = 1 : i64} "input2"
    vm.func private @fragment(%arg0: !vm.ref<!hal.buffer_view>, %arg1: !vm.ref<!hal.buffer_view>, %arg2: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> attributes {iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>, %input2: tensor<17xf32>) -> (%output0: tensor<7xf32>)"}, vm.unwind, vm.yield} {
      %c16 = vm.const.i32 16
      %c1 = vm.const.i32 1
      %c553648160 = vm.const.i32 553648160
      %c3075 = vm.const.i32 3075
      %c48 = vm.const.i32 48
      %c7 = vm.const.i64 7
      %c33 = vm.const.i64 33
      %c17 = vm.const.i64 17
      %c924 = vm.const.i64 924
      %c2244 = vm.const.i64 2244
      %c68 = vm.const.i64 68
      %zero = vm.const.i64.zero
      %c28 = vm.const.i64 28
      %c512 = vm.const.i64 512
      %c-1 = vm.const.i64 -1
      %null = vm.const.ref.zero : !vm.ref<!hal.fence>
      %c-1_0 = vm.const.i32 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__fragment_memoize_result_0_device_0 = vm.global.load.ref @__fragment_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %_utf8_input0_DCE99660CEB3F6B = vm.const.ref.rodata @_utf8_input0_DCE99660CEB3F6B : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_input0_DCE99660CEB3F6B, %c553648160, %c1, [%c7, %c33]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
      %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
      vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c924, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %_utf8_input1_B898B726583C85DA = vm.const.ref.rodata @_utf8_input1_B898B726583C85DA : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg1, %_utf8_input1_B898B726583C85DA, %c553648160, %c1, [%c33, %c17]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref_2 = vm.call @hal.buffer_view.buffer(%arg1) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      vm.call @hal.buffer.assert(%ref_2, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c2244, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %_utf8_input2_396EAC3FD425AA3E = vm.const.ref.rodata @_utf8_input2_396EAC3FD425AA3E : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg2, %_utf8_input2_396EAC3FD425AA3E, %c553648160, %c1, [%c17]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref_3 = vm.call @hal.buffer_view.buffer(%arg2) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      vm.call @hal.buffer.assert(%ref_3, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c68, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %ref_4 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_5 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_4, %zero, %c48, %c3075, %c28, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_6 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_7 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_6, %zero, %c48, %c3075, %c512, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_8 = vm.call.variadic @hal.fence.join(%zero, [%ref_4, %ref_6]) {nosideeffects} : (i64, !vm.ref<!hal.fence> ...) -> !vm.ref<!hal.fence>
      %ref_9 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_8, %ref_9, %__fragment_memoize_result_0_device_0, %zero, [(%ref, %zero, %c924), (%ref_2, %zero, %c2244), (%ref_3, %zero, %c68), (%ref_5, %zero, %c28), (%ref_7, %zero, %c512)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
      %ref_10 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call @hal.device.queue.dealloca(%__device_0, %c-1, %ref_9, %ref_10, %ref_7, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.buffer>, i64) -> ()
      vm.call.variadic.yieldable @hal.fence.await(%c-1_0, %zero, %ref_10) {segment_sizes = dense<[-1, -1, 1]> : vector<3xi16>, segment_types = [i32, i64, !vm.ref<!hal.fence>]} : (i32, i64, !vm.ref<!hal.fence>) -> ^bb1 (i32)
    ^bb1(%0: i32):  // pred: ^bb0
      vm.cond_br %0, ^bb3, ^bb2
    ^bb2:  // pred: ^bb1
      %ref_11 = vm.call.variadic @hal.buffer_view.create(%ref_5, %zero, %c28, %c553648160, %c1, [%c7]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
      vm.return %ref_11 : !vm.ref<!hal.buffer_view>
    ^bb3:  // pred: ^bb1
      vm.discard.refs %ref_5 : !vm.ref<!hal.buffer>
      vm.fail %0, "failed to wait on timepoint"
    }
    vm.export @fragment attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<7x33xf32>, %input1: tensor<33x17xf32>, %input2: tensor<17xf32>) -> (%output0: tensor<7xf32>)"}}
    vm.export @__init
    vm.func private @__init() attributes {vm.unwind} {
      %c1 = vm.const.i32 1
      %null = vm.const.ref.zero : !vm.buffer
      %c14 = vm.const.i32 14
      %c-1 = vm.const.i64 -1
      %c18 = vm.const.i32 18
      %zero = vm.const.i32.zero
      %zero_0 = vm.const.i64.zero
      %c1_1 = vm.const.i64 1
      %null_2 = vm.const.ref.zero : !vm.ref<!hal.device>
      %0 = vm.call @hal.devices.count() {nosideeffects} : () -> i32
      %1 = vm.ext.i32.i64.s %0 : i32 -> i64
      vm.br ^bb1(%zero_0, %zero_0, %null_2 : i64, i64, !vm.ref<!hal.device>)
    ^bb1(%2: i64, %3: i64, %4: !vm.ref<!hal.device>):  // 2 preds: ^bb0, ^bb4
      %rnz = vm.cmp.nz.ref %4 : !vm.ref<!hal.device>
      %5 = vm.xor.i32 %rnz, %c1 : i32
      %slt = vm.cmp.lt.i64.s %2, %1 : i64
      %6 = vm.and.i32 %5, %slt : i32
      vm.cond_br %6, ^bb2, ^bb5
    ^bb2:  // pred: ^bb1
      vm.discard.refs %4 : !vm.ref<!hal.device>
      %7 = vm.trunc.i64.i32 %2 : i64 -> i32
      %ref = vm.call @hal.devices.get(%7) {nosideeffects} : (i32) -> !vm.ref<!hal.device>
      %_utf8_hal_device_id_C6650FF277232B5A = vm.const.ref.rodata @_utf8_hal_device_id_C6650FF277232B5A : !vm.buffer
      %_utf8_local_1A8FF0278D7661D8 = vm.const.ref.rodata @_utf8_local_1A8FF0278D7661D8 : !vm.buffer
      %8:2 = vm.call @hal.device.query.i64(%ref, %_utf8_hal_device_id_C6650FF277232B5A, %_utf8_local_1A8FF0278D7661D8) {nosideeffects} : (!vm.ref<!hal.device>, !vm.buffer, !vm.buffer) -> (i32, i64)
      %nz = vm.cmp.nz.i64 %8#1 : i64
      %9 = vm.select.i32 %8#0, %nz, %zero : i32
      vm.cond_br %9, ^bb3, ^bb4(%zero : i32)
    ^bb3:  // pred: ^bb2
      %_utf8_hal_executable_format_E03EECB63A2AAF52 = vm.const.ref.rodata @_utf8_hal_executable_format_E03EECB63A2AAF52 : !vm.buffer
      %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 = vm.const.ref.rodata @_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 : !vm.buffer
      %10:2 = vm.call @hal.device.query.i64(%ref, %_utf8_hal_executable_format_E03EECB63A2AAF52, %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83) {nosideeffects} : (!vm.ref<!hal.device>, !vm.buffer, !vm.buffer) -> (i32, i64)
      %nz_3 = vm.cmp.nz.i64 %10#1 : i64
      %11 = vm.select.i32 %10#0, %nz_3, %zero : i32
      vm.br ^bb4(%11 : i32)
    ^bb4(%12: i32):  // 2 preds: ^bb2, ^bb3
      %eq = vm.cmp.eq.i64 %3, %zero_0 : i64
      %13 = vm.select.i64 %12, %c1_1, %zero_0 : i64
      %14 = vm.add.i64 %3, %13 : i64
      %15 = vm.and.i32 %12, %eq : i32
      %ref_4 = vm.select.ref %15, %ref, %null_2 : !vm.ref<!hal.device>
      %16 = vm.add.i64 %2, %c1_1 : i64
      vm.br ^bb1(%16, %14, %ref_4 : i64, i64, !vm.ref<!hal.device>)
    ^bb5:  // pred: ^bb1
      vm.discard.refs %null_2 : !vm.ref<!hal.device>
      vm.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      vm.discard.refs %null, %4 : !vm.buffer, !vm.ref<!hal.device>
      vm.fail %c18, "HAL device `__device_0` not found or unavailable: #hal.device.target<\22local\22, [#hal.executable.target<\22llvm-cpu\22, \22embedded-elf-x86_64\22, {cpu = \22raptorlake\22, cpu_features = \22+64bit,+adx,+aes,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tf32,-amx-tile,+avx,-avx10.1,-avx10.2,+avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,+avxvnni,-avxvnniint16,-avxvnniint8,+bmi,+bmi2,-ccmp,-cf,-cldemote,+clflushopt,+clwb,-clzero,+cmov,-cmpccxadd,+crc32,+cx16,+cx8,-egpr,-enqcmd,+f16c,+fma,-fma4,+fsgsbase,+fxsr,+gfni,+hreset,+invpcid,+kl,-lwp,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,-movrs,-mwaitx,-ndd,-nf,+pclmul,+pconfig,+pku,+popcnt,-ppx,-prefetchi,+prfchw,+ptwrite,-push2pop2,-raoint,+rdpid,-rdpru,+rdrnd,+rdseed,-rtm,+sahf,+serialize,-sgx,+sha,-sha512,+shstk,-sm3,-sm4,+sse,+sse2,+sse3,+sse4.1,+sse4.2,-sse4a,+ssse3,-tbm,-tsxldtrk,-uintr,-usermsr,+vaes,+vpclmulqdq,+waitpkg,-wbnoinvd,+widekl,-xop,+xsave,+xsavec,+xsaveopt,+xsaves,-zu\22, data_layout = \22e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128\22, iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = \22x86_64-unknown-unknown-eabi-elf\22}>]>"
    ^bb7:  // pred: ^bb5
      %_utf8_hal_executable_format_E03EECB63A2AAF52_5 = vm.const.ref.rodata @_utf8_hal_executable_format_E03EECB63A2AAF52 : !vm.buffer
      %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83_6 = vm.const.ref.rodata @_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 : !vm.buffer
      %17:2 = vm.call @hal.device.query.i64(%4, %_utf8_hal_executable_format_E03EECB63A2AAF52_5, %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83_6) {nosideeffects} : (!vm.ref<!hal.device>, !vm.buffer, !vm.buffer) -> (i32, i64)
      %nz_7 = vm.cmp.nz.i64 %17#1 : i64
      %18 = vm.select.i32 %17#0, %nz_7, %zero : i32
      %19 = vm.select.i64 %18, %zero_0, %c-1 : i64
      %eq_8 = vm.cmp.eq.i64 %19, %zero_0 : i64
      vm.global.store.ref %4, @__device_0 : !vm.ref<!hal.device>
      vm.cond_br %eq_8, ^bb8, ^bb9
    ^bb8:  // pred: ^bb7
      %tail_linked_embedded_elf_x86_64 = vm.const.ref.rodata @tail_linked_embedded_elf_x86_64 : !vm.buffer
      %ref_9 = vm.call @hal.executable.create(%4, %c-1, %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83_6, %tail_linked_embedded_elf_x86_64, %null) {nosideeffects} : (!vm.ref<!hal.device>, i64, !vm.buffer, !vm.buffer, !vm.buffer) -> !vm.ref<!hal.executable>
      vm.global.store.ref %ref_9, @__device_0_executable_0_tail_linked : !vm.ref<!hal.executable>
      %ref_10 = vm.call @__matmul_memoize_apply() : () -> !vm.ref<!hal.command_buffer>
      vm.global.store.ref %ref_10, @__matmul_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %ref_11 = vm.call @__bias_relu_memoize_apply() : () -> !vm.ref<!hal.command_buffer>
      vm.global.store.ref %ref_11, @__bias_relu_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %ref_12 = vm.call @__row_sum_memoize_apply() : () -> !vm.ref<!hal.command_buffer>
      vm.global.store.ref %ref_12, @__row_sum_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %ref_13 = vm.call @__fragment_memoize_apply() : () -> !vm.ref<!hal.command_buffer>
      vm.global.store.ref %ref_13, @__fragment_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      vm.return
    ^bb9:  // pred: ^bb7
      vm.discard.refs %null, %4, %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83_6 : !vm.buffer, !vm.ref<!hal.device>, !vm.buffer
      vm.fail %c14, "HAL device `__device_0` does not support any variant of executable `tail_linked`; available formats: [embedded-elf-x86_64]"
    }
  }
}
