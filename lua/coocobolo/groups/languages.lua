local M = {}

function M.hl(c)
	return {
		["goParen"] = { fg = c.yellow_candle, bold = true },
		["goPackage"] = { fg = c.green_dull, bold = true },
		["goImport"] = { fg = c.green_dull, bold = true },
		["goImportString"] = { fg = c.dark_dune },
		["goLabel"] = { fg = c.blue_lowkey },
		["goRepeat"] = { fg = c.green_dull },
		["goVar"] = { fg = c.blue_light_teal },
		["goDeclaration"] = { fg = c.red_orange },
		["goConditional"] = { fg = c.white_dust3 },
		["goFunctionReturn"] = { fg = c.white_dust2 },
		["goFunction"] = { fg = c.white_dust2 },
		["goFunctionCall"] = { fg = c.red_orange },
		["goConst"] = { fg = c.red_orange },
		["goStatement"] = { fg = c.red_orange },
		["goType"] = { fg = c.grey_simple },
		["goExtraType"] = { fg = c.yellow_sunglow_dim },
		["goPredefinedIdentifiers"] = { fg = c.white_dust3 },
		["goTypeName"] = { fg = c.shocking_orange },
		["goBlock"] = { fg = c.shocking_orange },
		["goSingleDecl"] = { fg = c.shocking_orange },
		["goDeclType"] = { fg = c.shocking_orange },
		["goGenerate"] = { fg = c.shocking_orange },
		["goGenerateVariables"] = { fg = c.yellow_candle },
		["goSpecialString"] = { fg = c.white_dust3 },
		["goBuiltins"] = { fg = c.white_dust2 },
		["goBuildDirectives"] = { fg = c.blue_deepsky },
		["goParamName"] = { fg = c.grape },
		["goParamType"] = { fg = c.grape },
		["goBuildKeyword"] = { fg = c.grape },
		["goOperator"] = { fg = c.white_dust2 },
		["goTypeConstructor"] = { fg = c.grape },
		["goReceiverVar"] = { fg = c.white_dust2 },
		["goReceiver"] = { fg = c.grape },
		["goSignedInts"] = { fg = c.white_dust3 },
		["goUnsignedInts"] = { fg = c.white_dust3 },
		["goFormatSpecifier"] = { fg = c.grey_corporate },
		["goEscapeC"] = { fg = c.grey_corporate },

		--[[ 
           goRepeat       xxx links to Repeat
           goType         xxx links to Type
           goSignedInts   xxx links to Type
           goUnsignedInts xxx links to Type
           goFloats       xxx links to Type
           goComplexes    xxx links to Type
           goBuiltins     xxx links to Identifier
           goBoolean      xxx links to Boolean
           goPredefinedIdentifiers xxx links to Constant
           goTodo         xxx links to Todo
           goGenerate     xxx cleared
           goComment      xxx links to Comment
           goGenerateVariables xxx cleared
           goEscapeOctal  xxx links to goSpecialString
           goEscapeC      xxx links to goSpecialString
           goEscapeX      xxx links to goSpecialString
           goEscapeU      xxx links to goSpecialString
           goEscapeBigU   xxx links to goSpecialString
           goEscapeError  xxx links to Error
           goSpecialString xxx links to Special
           goString       xxx links to String
           goRawString    xxx links to String
           goImportString xxx links to String
           goFormatSpecifier xxx links to goSpecialString
           goCharacter    xxx links to Character
           goBlock        xxx cleared
           goFunction     xxx links to Function
           goTypeName     xxx links to Type
           goReceiverType xxx cleared
           goReceiverVar  xxx cleared
           goParamName    xxx cleared
           goParamType    xxx cleared
           goSimpleParams xxx cleared
           goPointerOperator xxx cleared
           goSingleDecl   xxx cleared
           goDecimalInt   xxx links to Integer
           goHexadecimalInt xxx links to Integer
           goOctalInt     xxx links to Integer
           goBinaryInt    xxx links to Integer
           Integer        xxx links to Number
           goDecimalError xxx links to Error
           goHexadecimalError xxx links to Error
           goOctalError   xxx links to Error
           goBinaryError  xxx links to Error
           goFloat        xxx links to Float
           goHexadecimalFloat xxx links to Float
           goImaginaryDecimal xxx links to Number
           goImaginaryHexadecimal xxx links to Number
           goImaginaryOctal xxx links to Number
           goImaginaryBinary xxx links to Number
           goImaginaryFloat xxx links to Float
           goImaginaryHexadecimalFloat xxx links to Float
           goExtraType    xxx links to Type
           goSpaceError   xxx links to Error
           goVarArgs      xxx cleared 
           goOperator     xxx links to Operator
           goDeclType     xxx links to Keyword
           goTypeParams   xxx cleared
           goReceiver     xxx cleared
           goFunctionReturn xxx cleared
           goReceiverDecl xxx cleared
           goFunctionCall xxx links to Type
           goField        xxx links to Identifier
           goTypeConstructor xxx links to Type
           goTypeDecl     xxx links to Keyword
           goBuildKeyword xxx cleared
           goBuildDirectives xxx cleared
           goPackageComment xxx links to Comment
           goCoverageNormalText xxx links to Comment

      ]]

		["luaTableBlock"] = { fg = c.grey_gravel },
		["luaStatement"] = { fg = c.red_orange },
		["luaFunction"] = { fg = c.white_dust2 },
		["luaFunctionBlock"] = { fg = c.grey_corporate },
		["@lsp.type.method.lua"] = { fg = c.grey_corporate },
		["@lsp.type.property.lua"] = { fg = c.grey_smokey },
		["@lsp.type.variable.lua"] = { fg = c.grey_slate },

		["typescriptBraces"] = { fg = c.grey_slate },

		-- yaml
		["yamlBlockCollectionItemStart"] = { fg = c.green_payton },
		["yamlPlainScalar"] = { fg = c.grey_gravel },
		["yamlKeyValueDelimiter"] = { fg = c.dark_dune },

		TelescopeSelection = { bg = c.dark_rangoon, fg = c.none },
		["@lsp"] = { fg = c.grey_smokey },
		-- ["@lsp.type.property.lua"] = { fg = c.white_dust2 },
		-- ["@lsp.type.method.lua"] = { fg = c.shocking_orange },
	}
end
return M
