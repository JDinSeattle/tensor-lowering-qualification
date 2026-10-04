module attributes {vm.toplevel} {
  vm.module public @module {
    vm.global.ref private mutable @__device_0 : !vm.ref<!hal.device>
    vm.global.ref private mutable @__device_0_executable_0_aligned_linked : !vm.ref<!hal.executable>
    vm.global.ref private mutable @__matmul_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    vm.global.ref private mutable @__bias_relu_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    vm.global.ref private mutable @__row_sum_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    vm.global.ref private mutable @__fragment_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    vm.rodata private @_utf8_hal_device_id_C6650FF277232B5A {alignment = 1 : i64} "hal.device.id"
    vm.rodata private @_utf8_local_1A8FF0278D7661D8 {alignment = 1 : i64} "local*"
    vm.rodata private @_utf8_hal_executable_format_E03EECB63A2AAF52 {alignment = 1 : i64} "hal.executable.format"
    vm.rodata private @_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 {alignment = 1 : i64} "embedded-elf-x86_64"
    vm.rodata private @aligned_linked_embedded_elf_x86_64 {alignment = 16 : i64, mime_type = "application/x-elf"} dense<"0x7F454C4602010100000000000000000003003E000100000000000000000000004000000000000000181C0000000000000000000040003800070040001500130006000000040000004000000000000000400000000000000040000000000000008801000000000000880100000000000008000000000000000100000004000000000000000000000000000000000000000000000000000000080A000000000000080A00000000000000100000000000000100000005000000100A000000000000101A000000000000101A000000000000C107000000000000C10700000000000000100000000000000100000006000000E011000000000000E031000000000000E0310000000000004002000000000000200E00000000000000100000000000000200000006000000601300000000000060330000000000006033000000000000C000000000000000C000000000000000080000000000000052E5746404000000E011000000000000E031000000000000E0310000000000004002000000000000200E000000000000010000000000000051E57464060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000012000700C021000000000000110000000000000002000000020000000000000001000000000000000000000000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279000000000000E8310000000000000800000000000000C00400000000000000320000000000000800000000000000101A00000000000008320000000000000800000000000000101B00000000000010320000000000000800000000000000801B00000000000018320000000000000800000000000000401E00000000000020320000000000000800000000000000D00500000000000028320000000000000800000000000000F60500000000000030320000000000000800000000000000210600000000000038320000000000000800000000000000480600000000000048320000000000000800000000000000700600000000000058320000000000000800000000000000280700000000000068320000000000000800000000000000E307000000000000783200000000000008000000000000009C08000000000000883200000000000008000000000000005809000000000000903200000000000008000000000000005809000000000000A03200000000000008000000000000005809000000000000A83200000000000008000000000000005809000000000000B83200000000000008000000000000005809000000000000C03200000000000008000000000000005809000000000000D03200000000000008000000000000005809000000000000D83200000000000008000000000000005809000000000000E0320000000000000800000000000000E03100000000000000330000000000000800000000000000003200000000000008330000000000000800000000000000D004000000000000203300000000000008000000000000002032000000000000383300000000000008000000000000004032000000000000403300000000000008000000000000008032000000000000616C69676E65645F6C696E6B65640000000000000000000000000003010000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030100000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000201000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003010000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000006D61746D756C5F64697370617463685F305F6D61746D756C5F36347833327836345F66333200626961735F72656C755F64697370617463685F305F656C656D656E74776973655F36347833325F66333200726F775F73756D5F64697370617463685F305F726564756374696F6E5F36347833325F66333200667261676D656E745F64697370617463685F315F726564756374696F6E5F36347833325F663332002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F616C69676E65642D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F616C69676E65642D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F616C69676E65642D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C6972002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F616C69676E65642D756E74696C65642F65786563757461626C65732F636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C69720000001400000000000000017A5200017810011B0C0708900100001C0000001C00000098100000FC00000000410E108602430D0602F70C070800001C0000003C000000781100006D00000000410E108602430D0602650C070800001C0000005C000000C8110000BB02000000410E108602430D0603B3020C0708001C0000007C000000681400008003000000410E108602430D060378030C070800100000009C000000C81700001100000000000000000000000000000000000000554889E5488B7620488B06488B4E10BA80030000480356084883C01C31F666904889F748C1E7074801CF4989D04531C9C5F857C049C7C2F8FFFFFF4D89C36690C4C17A108B80FCFFFFC4C17A109300FDFFFFC4C17A109B80FDFFFFC4C17A10A300FEFFFFC4C17A10AB80FEFFFFC4C17A10B300FFFFFFC4C17A107B80C4A271B9449004C4A269B9449008C4A261B944900CC4A259B9449010C4A251B9449014C4A249B9449018C4A241B944901CC4C17A100BC4A271B94490204983C2084981C3000400004983FA380F8272FFFFFFC4A17A11048F49FFC14983C0044983F9200F854BFFFFFF48FFC64805000100004883FE400F8528FFFFFF31C05DC3CCCCCCCC554889E5488B5620488B02488B4A08488B521031F6C5F857C00F1F800000000048C7C7F8FFFFFF660F1F840000000000C5FC284CB820C5F4584CB920C5F4C2D006C5EC54C9C5FC294CBA204883C7084883FF1872DB48FFC64883EA804883E8804883FE4075BA31C05DC5F877C3CCCCCC554889E5488B5620488B4208B98003000048030A31D2662E0F1F840000000000C5F857C048C7C6F8FFFFFF0F1F440000C5FA588CB1A0FCFFFFC5F2588CB1A4FCFFFFC5F2588CB1A8FCFFFFC5F2588CB1ACFCFFFFC5F2588CB1B0FCFFFFC5F2588CB1B4FCFFFFC5F2588CB1B8FCFFFFC5F2588CB1BCFCFFFFC5FA16D0C5EA5894B120FDFFFFC5EA5894B124FDFFFFC5EA5894B128FDFFFFC5EA5894B12CFDFFFFC5EA5894B130FDFFFFC5EA5894B134FDFFFFC5EA5894B138FDFFFFC5EA5894B13CFDFFFFC5F9C6D801C5E2589CB1A0FDFFFFC5E2589CB1A4FDFFFFC5E2589CB1A8FDFFFFC5E2589CB1ACFDFFFFC5E2589CB1B0FDFFFFC5E2589CB1B4FDFFFFC5E2589CB1B8FDFFFFC4E37121CA10C5E25894B1BCFDFFFFC5F8C6D8FFC5E2589CB120FEFFFFC5E2589CB124FEFFFFC5E2589CB128FEFFFFC5E2589CB12CFEFFFFC5E2589CB130FEFFFFC5E2589CB134FEFFFFC5E2589CB138FEFFFFC4E37121D220C5E2589CB13CFEFFFFC4E37D19C101C5F25884B1A0FEFFFFC5FA5884B1A4FEFFFFC5FA5884B1A8FEFFFFC5FA5884B1ACFEFFFFC5FA5884B1B0FEFFFFC5FA5884B1B4FEFFFFC5FA58A4B1B8FEFFFFC4E36921C330C5DA5894B1BCFEFFFFC5FA16D9C5E2589CB120FFFFFFC5E2589CB124FFFFFFC5E2589CB128FFFFFFC5E2589CB12CFFFFFFC5E2589CB130FFFFFFC5E2589CB134FFFFFFC5E2589CB138FFFFFFC5E2589CB13CFFFFFFC4E36921D310C5F1C6D901C5E2585CB1A0C5E2585CB1A4C5E2585CB1A8C5E2585CB1ACC5E2585CB1B0C5E2585CB1B4C5E2585CB1B8C5E2585CB1BCC4E36921D320C5F0C6C9FFC5F2584CB120C5F2584CB124C5F2584CB128C5F2584CB12CC5F2584CB130C5F2584CB134C5F2584CB138C5F2584CB13CC4E36921C930C4E37D18C1014883C6084883FE180F8296FDFFFFC5FC2904904881C1000400004883FA38488D52080F826CFDFFFF31C05DC5F877C3CCCCCCCCCC554889E5488B7620488B4608488B4E10BA8003000048031631F6C5F857C0669048C7C7F8FFFFFFC5E057DB0F1F440000C5FC284CB820C5F45894BAA0FCFFFFC5F458A4BA20FDFFFFC5F458ACBAA0FDFFFFC5F458B4BA20FEFFFFC574588CBAA0FEFFFFC5745894BA20FFFFFFC574585CBAA0C5F4584CBA20C5ECC2F806C54454E2C5DCC2D006C56C54C4C5D4C2D006C5EC54FDC5CCC2D006C5EC54F6C5B4C2D006C5B454EAC5ACC2D006C5AC54E2C5A4C2D006C5A454D2C574C2C806C5B454C9C51A58CBC44118C6D4F5C4413258CAC44118C6D44EC4413258CAC44118C6D4FFC4413258CAC4437D19E201C4413258CAC44128C6DAF5C4413258CBC44128C6DA4EC4413258CBC44128C6D2FFC4413258CAC57A16D3C4412A58D0C44138C6D8F5C4412A58D3C44138C6D84EC4412A58D3C44138C6D8FFC4412A58D3C4437D19C001C4412A58D0C44138C6D8F5C4412A58D3C44138C6D84EC4412A58D3C44138C6C0FFC4412A58C0C4433121C010C561C6CB01C53258CFC540C6D7F5C4413258CAC540C6D74EC4413258CAC540C6D7FFC4413258CAC4E37D19FF01C53258CFC540C6D7F5C4413258CAC540C6D74EC4413258CAC5C0C6FFFFC5B258FFC4E33921FF20C560C6C3FFC53A58C6C548C6CEF5C4413A58C1C548C6CE4EC4413A58C1C548C6CEFFC4413A58C1C4E37D19F601C53A58C6C548C6CEF5C4413A58C1C548C6CE4EC4413A58C1C5C8C6F6FFC5BA58F6C4E34121F630C4E37D19DB01C5E258FDC550C6C5F5C5BA58FFC550C6C54EC5BA58FFC550C6C5FFC5BA58FFC4E37D19ED01C5C258FDC550C6C5F5C5BA58FFC550C6C54EC5BA58FFC5D0C6EDFFC5C258EDC5FA16FBC5C258FCC558C6C4F5C5BA58FFC558C6C44EC5BA58FFC558C6C4FFC5BA58FFC4E37D19E401C5C258FCC558C6C4F5C5BA58FFC558C6C44EC5BA58FFC5D8C6E4FFC5C258E4C4E35121E410C5E1C6EB01C5D258EAC5E8C6FAF5C5D258EFC5E8C6FA4EC5D258EFC5E8C6FAFFC5D258EFC4E37D19D201C5D258EAC5E8C6FAF5C5D258EFC5E8C6FA4EC5D258EFC5E8C6D2FFC5D258D2C4E35921D220C5E0C6DBFFC5E258D9C5F0C6E1F5C5E258DCC5F0C6E14EC5E258DCC5F0C6E1FFC5E258DCC4E37D19C901C5E258D9C5F0C6E1F5C5E258DCC5F0C6E14EC5E258DCC5F0C6C9FFC5E258C9C4E36921C930C4E34D18D9014883C7084883FF180F82D1FCFFFFC5FC291CB14881C2000400004883FE38488D76080F82A7FCFFFF31C05DC5F877C331C083FF06488D0D14110000480F44C1C300000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000B7000000000000000000000003000000BA000000000000000000000003000000B8000000000000000000000003000000B9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E000000000000000800000000000000FBFFFF6F000000000100000000000000070000000000000038020000000000000800000000000000880200000000000009000000000000001800000000000000F9FFFF6F000000001B000000000000000600000000000000C8010000000000000B000000000000001800000000000000050000000000000010020000000000000A0000000000000023000000000000000400000000000000F80100000000000000000000000000000000000000000000011101250E1305030E10171B0EB44219110112060000022E001101120640186E0E030E3A0B3B0B49133F190000032400030E3E0B0B0B0000042E001101120640186E0E030E3A0B3B0B49103F190000004B0000000400000000000801B40100002C00B90100000000000057000000101A000000000000FC00000002101A000000000000FC00000001568E0100008E010000010147000000030D010000050400440000000400000000000801B40100002C00000000008B00000057000000101B0000000000006D00000004101B0000000000006D00000001562C0000002C00000001014700000000440000000400000000000801B40100002C00110100000601000057000000801B000000000000BB02000004801B000000000000BB0200000156E6000000E600000001014700000000440000000400000000000801B40100002C00630100008101000057000000401E0000000000008003000004401E0000000000008003000001563B0100003B01000001014700000000636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C697200626961735F72656C755F64697370617463685F305F656C656D656E74776973655F36347833325F663332002F686F6D652F706F7374656469736D2F4465736B746F702F636F6D706C696572732F422D74656E736F722D6C6F776572696E672D7175616C696669636174696F6E2F65766964656E63652F6D61696E74656E616E63652D32303236303930372F66756C6C2D72756E2F6172746966616374732F616C69676E65642D756E74696C65642F65786563757461626C657300726F775F73756D5F64697370617463685F305F726564756374696F6E5F36347833325F66333200696E7400636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C697200667261676D656E745F64697370617463685F315F726564756374696F6E5F36347833325F66333200636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C6972006D61746D756C5F64697370617463685F305F6D61746D756C5F36347833327836345F663332004952454500636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C697200380000000200000000004F0000002A0000006D61746D756C5F64697370617463685F305F6D61746D756C5F36347833327836345F66333200000000003D00000002004F000000480000002A000000626961735F72656C755F64697370617463685F305F656C656D656E74776973655F36347833325F663332000000000039000000020097000000480000002A000000726F775F73756D5F64697370617463685F305F726564756374696F6E5F36347833325F66333200000000003A0000000200DF000000480000002A000000667261676D656E745F64697370617463685F315F726564756374696F6E5F36347833325F6633320000000000160000000200000000004F00000047000000696E7400000000000E00000002004F00000048000000000000000E00000002009700000048000000000000000E0000000200DF000000480000000000000087000000040040000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F6D61746D756C5F64697370617463685F302E6D6C69720000000000000902101A0000000000000105080A030A4A769506036E9E06031202220105030371023C010508030F02310105030371580508030F74023F14060B2E020200010177000000040043000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F626961735F72656C755F64697370617463685F302E6D6C69720000000000000902101B0000000000000105080A030A4A754B0603739E0603110866050A686705088D08F9060B2E020500010177000000040041000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F726F775F73756D5F64697370617463685F302E6D6C69720000000000000902801B0000000000000105080A030A4A4B9406037058050A0603120890050802DC0410022818060B2E020500010180000000040042000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F667261676D656E745F64697370617463685F312E6D6C69720000000000000902401E0000000000000105080A030A4A4B4B9506036E900603120820050A6802421302481305080291050E02281A060B2E0205000101495245450000000000000000000000000000000000000000000000000000000000002300000000020900603300000000000000000000000000000100000012000700C0210000000000001100000000000000002E64796E73796D002E68617368002E64796E737472002E72656C612E64796E002E726F64617461002E65685F6672616D65002E74657874002E646174612E72656C2E726F002E64796E616D6963002E72656C726F5F70616464696E67002E64656275675F616262726576002E64656275675F696E666F002E64656275675F737472002E64656275675F7075626E616D6573002E64656275675F7075627479706573002E64656275675F6C696E65002E636F6D6D656E74002E73796D746162002E7368737472746162002E7374727461620000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279005F44594E414D494300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000B0000000200000000000000C801000000000000C801000000000000300000000000000003000000010000000800000000000000180000000000000009000000050000000200000000000000F801000000000000F80100000000000018000000000000000100000000000000040000000000000004000000000000000F0000000300000002000000000000001002000000000000100200000000000023000000000000000000000000000000010000000000000000000000000000001700000004000000020000000000000038020000000000003802000000000000880200000000000001000000000000000800000000000000180000000000000021000000010000000200000000000000C004000000000000C00400000000000098040000000000000000000000000000100000000000000000000000000000002900000001000000020000000000000058090000000000005809000000000000B00000000000000000000000000000000800000000000000000000000000000033000000010000000600000000000000101A000000000000100A000000000000C10700000000000000000000000000001000000000000000000000000000000039000000010000000300000000000000E031000000000000E01100000000000080010000000000000000000000000000100000000000000000000000000000004600000006000000030000000000000060330000000000006013000000000000C0000000000000000300000000000000080000000000000010000000000000004F00000008000000030000000000000020340000000000002014000000000000E00B0000000000000000000000000000010000000000000000000000000000005E0000000100000000000000000000000000000000000000201400000000000050000000000000000000000000000000010000000000000000000000000000006C0000000100000000000000000000000000000000000000701400000000000027010000000000000000000000000000010000000000000000000000000000007800000001000000300000000000000000000000000000009715000000000000E2010000000000000000000000000000010000000000000001000000000000008300000001000000000000000000000000000000000000007917000000000000F80000000000000000000000000000000100000000000000000000000000000093000000010000000000000000000000000000000000000071180000000000005000000000000000000000000000000001000000000000000000000000000000A30000000100000000000000000000000000000000000000C1180000000000000502000000000000000000000000000001000000000000000000000000000000AF0000000100000030000000000000000000000000000000C61A0000000000000500000000000000000000000000000001000000000000000100000000000000B80000000200000000000000000000000000000000000000D01A0000000000004800000000000000140000000200000008000000000000001800000000000000C00000000300000000000000000000000000000000000000181B000000000000D200000000000000000000000000000001000000000000000000000000000000CA0000000300000000000000000000000000000000000000EA1B0000000000002C00000000000000000000000000000001000000000000000000000000000000"> : vector<8536xi8>
    vm.func private @__matmul_memoize_apply() -> !vm.ref<!hal.command_buffer> attributes {inlining_policy = #util.inline.never, vm.unwind} {
      %c13 = vm.const.i32 13
      %c28 = vm.const.i32 28
      %c2 = vm.const.i32 2
      %null = vm.const.ref.zero : !vm.ref<!hal.buffer>
      %c1 = vm.const.i32 1
      %c3 = vm.const.i32 3
      %zero = vm.const.i32.zero
      %c8192 = vm.const.i64 8192
      %c16384 = vm.const.i64 16384
      %zero_0 = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__device_0_executable_0_aligned_linked = vm.global.load.ref @__device_0_executable_0_aligned_linked : !vm.ref<!hal.executable>
      %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c3) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_aligned_linked, %zero, %c1, %c1, %c1, %zero_0, [], [(%zero, %zero, %null, %zero_0, %c16384), (%zero, %c1, %null, %zero_0, %c8192), (%zero, %c2, %null, %zero_0, %c8192)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_0) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call @hal.command_buffer.finalize(%ref) : (!vm.ref<!hal.command_buffer>) -> ()
      vm.return %ref : !vm.ref<!hal.command_buffer>
    }
    vm.rodata private @_utf8_input0_DCE99660CEB3F6B {alignment = 1 : i64} "input0"
    vm.rodata private @_utf8_tensor_FC1814BC4A58F22A {alignment = 1 : i64} "tensor"
    vm.rodata private @_utf8_input1_B898B726583C85DA {alignment = 1 : i64} "input1"
    vm.func private @matmul(%arg0: !vm.ref<!hal.buffer_view>, %arg1: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> attributes {iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>) -> (%output0: tensor<64x32xf32>)"}, vm.unwind, vm.yield} {
      %c16 = vm.const.i32 16
      %c1 = vm.const.i32 1
      %c553648160 = vm.const.i32 553648160
      %c3075 = vm.const.i32 3075
      %c48 = vm.const.i32 48
      %c64 = vm.const.i64 64
      %c32 = vm.const.i64 32
      %c16384 = vm.const.i64 16384
      %c8192 = vm.const.i64 8192
      %zero = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %null = vm.const.ref.zero : !vm.ref<!hal.fence>
      %c-1_0 = vm.const.i32 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__matmul_memoize_result_0_device_0 = vm.global.load.ref @__matmul_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %_utf8_input0_DCE99660CEB3F6B = vm.const.ref.rodata @_utf8_input0_DCE99660CEB3F6B : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_input0_DCE99660CEB3F6B, %c553648160, %c1, [%c64, %c64]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
      %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
      vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c16384, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %_utf8_input1_B898B726583C85DA = vm.const.ref.rodata @_utf8_input1_B898B726583C85DA : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg1, %_utf8_input1_B898B726583C85DA, %c553648160, %c1, [%c64, %c32]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref_2 = vm.call @hal.buffer_view.buffer(%arg1) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      vm.call @hal.buffer.assert(%ref_2, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c8192, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %ref_3 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_4 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_3, %zero, %c48, %c3075, %c8192, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_5 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_3, %ref_5, %__matmul_memoize_result_0_device_0, %zero, [(%ref, %zero, %c16384), (%ref_2, %zero, %c8192), (%ref_4, %zero, %c8192)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call.variadic.yieldable @hal.fence.await(%c-1_0, %zero, %ref_5) {segment_sizes = dense<[-1, -1, 1]> : vector<3xi16>, segment_types = [i32, i64, !vm.ref<!hal.fence>]} : (i32, i64, !vm.ref<!hal.fence>) -> ^bb1 (i32)
    ^bb1(%0: i32):  // pred: ^bb0
      vm.cond_br %0, ^bb3, ^bb2
    ^bb2:  // pred: ^bb1
      %ref_6 = vm.call.variadic @hal.buffer_view.create(%ref_4, %zero, %c8192, %c553648160, %c1, [%c64, %c32]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
      vm.return %ref_6 : !vm.ref<!hal.buffer_view>
    ^bb3:  // pred: ^bb1
      vm.discard.refs %ref_4 : !vm.ref<!hal.buffer>
      vm.fail %0, "failed to wait on timepoint"
    }
    vm.export @matmul attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @matmul(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>) -> (%output0: tensor<64x32xf32>)"}}
    vm.func private @__bias_relu_memoize_apply() -> !vm.ref<!hal.command_buffer> attributes {inlining_policy = #util.inline.never, vm.unwind} {
      %c13 = vm.const.i32 13
      %c28 = vm.const.i32 28
      %c2 = vm.const.i32 2
      %null = vm.const.ref.zero : !vm.ref<!hal.buffer>
      %c1 = vm.const.i32 1
      %c3 = vm.const.i32 3
      %zero = vm.const.i32.zero
      %c128 = vm.const.i64 128
      %c8192 = vm.const.i64 8192
      %zero_0 = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__device_0_executable_0_aligned_linked = vm.global.load.ref @__device_0_executable_0_aligned_linked : !vm.ref<!hal.executable>
      %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c3) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_aligned_linked, %c1, %c1, %c1, %c1, %zero_0, [], [(%zero, %zero, %null, %zero_0, %c8192), (%zero, %c1, %null, %zero_0, %c128), (%zero, %c2, %null, %zero_0, %c8192)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_0) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call @hal.command_buffer.finalize(%ref) : (!vm.ref<!hal.command_buffer>) -> ()
      vm.return %ref : !vm.ref<!hal.command_buffer>
    }
    vm.func private @bias_relu(%arg0: !vm.ref<!hal.buffer_view>, %arg1: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> attributes {iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<64x32xf32>, %input1: tensor<32xf32>) -> (%output0: tensor<64x32xf32>)"}, vm.unwind, vm.yield} {
      %c16 = vm.const.i32 16
      %c1 = vm.const.i32 1
      %c553648160 = vm.const.i32 553648160
      %c3075 = vm.const.i32 3075
      %c48 = vm.const.i32 48
      %c64 = vm.const.i64 64
      %c32 = vm.const.i64 32
      %c8192 = vm.const.i64 8192
      %c128 = vm.const.i64 128
      %zero = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %null = vm.const.ref.zero : !vm.ref<!hal.fence>
      %c-1_0 = vm.const.i32 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__bias_relu_memoize_result_0_device_0 = vm.global.load.ref @__bias_relu_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %_utf8_input0_DCE99660CEB3F6B = vm.const.ref.rodata @_utf8_input0_DCE99660CEB3F6B : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_input0_DCE99660CEB3F6B, %c553648160, %c1, [%c64, %c32]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
      %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
      vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c8192, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %_utf8_input1_B898B726583C85DA = vm.const.ref.rodata @_utf8_input1_B898B726583C85DA : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg1, %_utf8_input1_B898B726583C85DA, %c553648160, %c1, [%c32]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref_2 = vm.call @hal.buffer_view.buffer(%arg1) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      vm.call @hal.buffer.assert(%ref_2, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c128, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %ref_3 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_4 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_3, %zero, %c48, %c3075, %c8192, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_5 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_3, %ref_5, %__bias_relu_memoize_result_0_device_0, %zero, [(%ref, %zero, %c8192), (%ref_2, %zero, %c128), (%ref_4, %zero, %c8192)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call.variadic.yieldable @hal.fence.await(%c-1_0, %zero, %ref_5) {segment_sizes = dense<[-1, -1, 1]> : vector<3xi16>, segment_types = [i32, i64, !vm.ref<!hal.fence>]} : (i32, i64, !vm.ref<!hal.fence>) -> ^bb1 (i32)
    ^bb1(%0: i32):  // pred: ^bb0
      vm.cond_br %0, ^bb3, ^bb2
    ^bb2:  // pred: ^bb1
      %ref_6 = vm.call.variadic @hal.buffer_view.create(%ref_4, %zero, %c8192, %c553648160, %c1, [%c64, %c32]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
      vm.return %ref_6 : !vm.ref<!hal.buffer_view>
    ^bb3:  // pred: ^bb1
      vm.discard.refs %ref_4 : !vm.ref<!hal.buffer>
      vm.fail %0, "failed to wait on timepoint"
    }
    vm.export @bias_relu attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @bias_relu(%input0: tensor<64x32xf32>, %input1: tensor<32xf32>) -> (%output0: tensor<64x32xf32>)"}}
    vm.func private @__row_sum_memoize_apply() -> !vm.ref<!hal.command_buffer> attributes {inlining_policy = #util.inline.never, vm.unwind} {
      %c13 = vm.const.i32 13
      %c28 = vm.const.i32 28
      %null = vm.const.ref.zero : !vm.ref<!hal.buffer>
      %c1 = vm.const.i32 1
      %c2 = vm.const.i32 2
      %c3 = vm.const.i32 3
      %zero = vm.const.i32.zero
      %c256 = vm.const.i64 256
      %c8192 = vm.const.i64 8192
      %zero_0 = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__device_0_executable_0_aligned_linked = vm.global.load.ref @__device_0_executable_0_aligned_linked : !vm.ref<!hal.executable>
      %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c2) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_aligned_linked, %c2, %c1, %c1, %c1, %zero_0, [], [(%zero, %zero, %null, %zero_0, %c8192), (%zero, %c1, %null, %zero_0, %c256)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_0) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call @hal.command_buffer.finalize(%ref) : (!vm.ref<!hal.command_buffer>) -> ()
      vm.return %ref : !vm.ref<!hal.command_buffer>
    }
    vm.func private @row_sum(%arg0: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> attributes {iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<64x32xf32>) -> (%output0: tensor<64xf32>)"}, vm.unwind, vm.yield} {
      %c16 = vm.const.i32 16
      %c1 = vm.const.i32 1
      %c553648160 = vm.const.i32 553648160
      %c3075 = vm.const.i32 3075
      %c48 = vm.const.i32 48
      %c64 = vm.const.i64 64
      %c32 = vm.const.i64 32
      %c8192 = vm.const.i64 8192
      %c256 = vm.const.i64 256
      %zero = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %null = vm.const.ref.zero : !vm.ref<!hal.fence>
      %c-1_0 = vm.const.i32 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__row_sum_memoize_result_0_device_0 = vm.global.load.ref @__row_sum_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %_utf8_input0_DCE99660CEB3F6B = vm.const.ref.rodata @_utf8_input0_DCE99660CEB3F6B : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_input0_DCE99660CEB3F6B, %c553648160, %c1, [%c64, %c32]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
      %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
      vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c8192, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %ref_2 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_3 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_2, %zero, %c48, %c3075, %c256, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_4 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_2, %ref_4, %__row_sum_memoize_result_0_device_0, %zero, [(%ref, %zero, %c8192), (%ref_3, %zero, %c256)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call.variadic.yieldable @hal.fence.await(%c-1_0, %zero, %ref_4) {segment_sizes = dense<[-1, -1, 1]> : vector<3xi16>, segment_types = [i32, i64, !vm.ref<!hal.fence>]} : (i32, i64, !vm.ref<!hal.fence>) -> ^bb1 (i32)
    ^bb1(%0: i32):  // pred: ^bb0
      vm.cond_br %0, ^bb3, ^bb2
    ^bb2:  // pred: ^bb1
      %ref_5 = vm.call.variadic @hal.buffer_view.create(%ref_3, %zero, %c256, %c553648160, %c1, [%c64]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
      vm.return %ref_5 : !vm.ref<!hal.buffer_view>
    ^bb3:  // pred: ^bb1
      vm.discard.refs %ref_3 : !vm.ref<!hal.buffer>
      vm.fail %0, "failed to wait on timepoint"
    }
    vm.export @row_sum attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @row_sum(%input0: tensor<64x32xf32>) -> (%output0: tensor<64xf32>)"}}
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
      %c256 = vm.const.i64 256
      %c128 = vm.const.i64 128
      %c8192 = vm.const.i64 8192
      %c16384 = vm.const.i64 16384
      %zero_0 = vm.const.i64.zero
      %c-1 = vm.const.i64 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__device_0_executable_0_aligned_linked = vm.global.load.ref @__device_0_executable_0_aligned_linked : !vm.ref<!hal.executable>
      %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c5) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_aligned_linked, %zero, %c1, %c1, %c1, %zero_0, [], [(%zero, %zero, %null, %zero_0, %c16384), (%zero, %c1, %null, %zero_0, %c8192), (%zero, %c4, %null, %zero_0, %c8192)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_0) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
      vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_aligned_linked, %c3, %c1, %c1, %c1, %zero_0, [], [(%zero, %c4, %null, %zero_0, %c8192), (%zero, %c2, %null, %zero_0, %c128), (%zero, %c3, %null, %zero_0, %c256)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
      vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_0) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
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
    vm.func private @fragment(%arg0: !vm.ref<!hal.buffer_view>, %arg1: !vm.ref<!hal.buffer_view>, %arg2: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> attributes {iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>, %input2: tensor<32xf32>) -> (%output0: tensor<64xf32>)"}, vm.unwind, vm.yield} {
      %c16 = vm.const.i32 16
      %c1 = vm.const.i32 1
      %c553648160 = vm.const.i32 553648160
      %c3075 = vm.const.i32 3075
      %c48 = vm.const.i32 48
      %c64 = vm.const.i64 64
      %c32 = vm.const.i64 32
      %c16384 = vm.const.i64 16384
      %c8192 = vm.const.i64 8192
      %c128 = vm.const.i64 128
      %zero = vm.const.i64.zero
      %c256 = vm.const.i64 256
      %c-1 = vm.const.i64 -1
      %null = vm.const.ref.zero : !vm.ref<!hal.fence>
      %c-1_0 = vm.const.i32 -1
      %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
      %__fragment_memoize_result_0_device_0 = vm.global.load.ref @__fragment_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
      %_utf8_input0_DCE99660CEB3F6B = vm.const.ref.rodata @_utf8_input0_DCE99660CEB3F6B : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_input0_DCE99660CEB3F6B, %c553648160, %c1, [%c64, %c64]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
      %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
      vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c16384, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %_utf8_input1_B898B726583C85DA = vm.const.ref.rodata @_utf8_input1_B898B726583C85DA : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg1, %_utf8_input1_B898B726583C85DA, %c553648160, %c1, [%c64, %c32]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref_2 = vm.call @hal.buffer_view.buffer(%arg1) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      vm.call @hal.buffer.assert(%ref_2, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c8192, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %_utf8_input2_396EAC3FD425AA3E = vm.const.ref.rodata @_utf8_input2_396EAC3FD425AA3E : !vm.buffer
      vm.call.variadic @hal.buffer_view.assert(%arg2, %_utf8_input2_396EAC3FD425AA3E, %c553648160, %c1, [%c32]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
      %ref_3 = vm.call @hal.buffer_view.buffer(%arg2) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
      vm.call @hal.buffer.assert(%ref_3, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c128, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
      %ref_4 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_5 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_4, %zero, %c48, %c3075, %c256, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_6 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      %ref_7 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %null, %ref_6, %zero, %c48, %c3075, %c8192, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
      %ref_8 = vm.call.variadic @hal.fence.join(%zero, [%ref_4, %ref_6]) {nosideeffects} : (i64, !vm.ref<!hal.fence> ...) -> !vm.ref<!hal.fence>
      %ref_9 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_8, %ref_9, %__fragment_memoize_result_0_device_0, %zero, [(%ref, %zero, %c16384), (%ref_2, %zero, %c8192), (%ref_3, %zero, %c128), (%ref_5, %zero, %c256), (%ref_7, %zero, %c8192)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
      %ref_10 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
      vm.call @hal.device.queue.dealloca(%__device_0, %c-1, %ref_9, %ref_10, %ref_7, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.buffer>, i64) -> ()
      vm.call.variadic.yieldable @hal.fence.await(%c-1_0, %zero, %ref_10) {segment_sizes = dense<[-1, -1, 1]> : vector<3xi16>, segment_types = [i32, i64, !vm.ref<!hal.fence>]} : (i32, i64, !vm.ref<!hal.fence>) -> ^bb1 (i32)
    ^bb1(%0: i32):  // pred: ^bb0
      vm.cond_br %0, ^bb3, ^bb2
    ^bb2:  // pred: ^bb1
      %ref_11 = vm.call.variadic @hal.buffer_view.create(%ref_5, %zero, %c256, %c553648160, %c1, [%c64]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
      vm.return %ref_11 : !vm.ref<!hal.buffer_view>
    ^bb3:  // pred: ^bb1
      vm.discard.refs %ref_5 : !vm.ref<!hal.buffer>
      vm.fail %0, "failed to wait on timepoint"
    }
    vm.export @fragment attributes {iree.abi.stub, iree.reflection = {iree.abi.declaration = "sync func @fragment(%input0: tensor<64x64xf32>, %input1: tensor<64x32xf32>, %input2: tensor<32xf32>) -> (%output0: tensor<64xf32>)"}}
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
      %aligned_linked_embedded_elf_x86_64 = vm.const.ref.rodata @aligned_linked_embedded_elf_x86_64 : !vm.buffer
      %ref_9 = vm.call @hal.executable.create(%4, %c-1, %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83_6, %aligned_linked_embedded_elf_x86_64, %null) {nosideeffects} : (!vm.ref<!hal.device>, i64, !vm.buffer, !vm.buffer, !vm.buffer) -> !vm.ref<!hal.executable>
      vm.global.store.ref %ref_9, @__device_0_executable_0_aligned_linked : !vm.ref<!hal.executable>
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
      vm.fail %c14, "HAL device `__device_0` does not support any variant of executable `aligned_linked`; available formats: [embedded-elf-x86_64]"
    }
  }
}
