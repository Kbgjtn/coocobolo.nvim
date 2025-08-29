local M = {}

function M.hl(c)
	local group = {
		Normal = { fg = c.grey_simple, bg = c.none },

		-- TODO: if opts.dim_inactive then bg = chinese_dim, if not then bg = chinese
		NormalNC = { fg = c.dark_gravel, bg = c.dark_black },

		NormalFloat = { fg = c.grey_gravel, bg = c.dark_black },

		-- visual mode
		Visual = { fg = c.none, bg = c.dark_eerie, bold = true },

		-- Cursor
		Cursor = { bg = c.dark_jungle, fg = c.dark_black },

		lCursor = { fg = c.red_orange, bg = c.dark_black, bold = true },

		CursorLine = { fg = c.none, bg = c.dark_onxy },

		TermCursor = { fg = c.green_meadow, bg = c.dark_rangoon },

		cursorlinenr = { fg = c.dark_grey, bg = c.dark_black, bold = true },

		CurSearch = { fg = c.grape_elsie, bg = c.none, bold = true },

		SignColumn = { fg = c.dark_black, bg = c.none },

		CursorLineSign = { fg = c.dark_black, bg = c.none },

		SignalSign = { fg = c.dark_black, bg = c.none },

		LineNr = { fg = c.dark_jungle, bg = c.dark_black },

		EndOfBuffer = { fg = c.dark_black, bg = c.none },

		MsgArea = { fg = c.dark_gravelest, bg = c.dark_black, bold = false },

		ModeMsg = { fg = c.dark_gravel, bg = c.dark_black },

		MoreMsg = { fg = c.white_dust, bg = c.dark_black },

		Exception = { fg = c.white_dust2, bg = c.dark_black },

		MsgSeparator = { fg = c.dim_grey, bg = c.dark_black, bold = true },

		Question = { fg = c.dark_gravel, bg = c.dark_eerie },

		Search = { fg = c.white_dust0, bg = c.dark_rangoon },

		IncSearch = { fg = c.red_orange, bg = c.none, bold = true },

		Folded = { fg = c.dark_thunder, bg = c.none },

		FoldColumn = { fg = c.dark_rangoon, bg = c.none },

		-- CODE
		Function = { fg = c.grey_simple, bg = c.none },

		Operator = { fg = c.grey_davy, bg = c.none },

		Identifier = { fg = c.white_dust2, bg = c.none },

		String = { fg = c.grey_davy, bg = c.none },

		Delimiter = { fg = c.dark_dune, bg = c.none },

		Number = { fg = c.grey_simple, bg = c.none },

		Boolean = { fg = c.grey_davy, bg = c.none },

		Comment = { fg = c.dark_dune, bg = c.none },

		Keyword = { fg = c.grey_davy, bg = c.none },

		Repeat = { fg = c.green_dull, bg = c.none },

		Special = { fg = c.grey_davy, bg = c.none },

		Todo = { fg = c.grey_davy, bold = false },

		NonText = { fg = c.grey_davy, bg = c.none },

		Type = { fg = c.white_dust3, bg = c.none },

		Title = { fg = c.dark_gravelest, bg = c.none, bold = true },

		Statement = { fg = c.grey_gravel, bg = c.none },

		Constant = { fg = c.grey_davy, bg = c.none },

		PreProc = { fg = c.grey_davy, bg = c.none },

		Conceal = { fg = c.white_dust3, bg = c.none },

		Underlined = { fg = c.blue_meadow, bg = c.none },

		Italic = { fg = c.grey_davy, bg = c.none, italic = true },

		SpecialKey = { fg = c.grey_davy, bg = c.none },

		Directory = { fg = c.dim_grey, bg = c.none, bold = true },

		Error = { fg = c.shocking_orange, bg = c.none },

		ErrorMsg = { fg = c.shocking_orange, bg = c.none },

		DiagnosticUnderlineWarn = { fg = c.orange_chinese, bg = c.none, underline = true },

		DiagnosticUnderlineError = { fg = c.shocking_orange, bg = c.none, underline = true },

		DiagnosticUnderlineHint = { fg = c.dark_thunder, bg = c.none, underline = true },

		FloatTitle = { fg = c.grey_smokey, bg = c.none },

		FloatBorder = { fg = c.dark_jungle, bg = c.none },

		WildMenu = { bg = c.dark_eerie, fg = c.yellow_naples },

		WildMenuSelected = { bg = c.dark_eerie, fg = c.yellow_naples },

		Pmenu = { fg = c.dark_grey, bg = c.dark_black },

		PmenuSel = { fg = c.red_orange, bg = c.dark_onxy, bold = true },

		PmenuSbar = { bg = c.none },

		PmenuThumb = { bg = c.none },

		PopupWindowBorder = { fg = c.dark_gravelest, bg = c.none },

		VertSplit = { bg = c.dark_black, fg = c.dark_black },

		WinSeparator = { bg = c.dark_black, fg = c.dark_black },

		StatusLine = { bg = c.dark_black, fg = c.dark_black },

		StatusLineNC = { bg = c.dark_black, fg = c.dark_black },

		StatusLineTerm = { bg = c.dark_black, fg = c.dark_black },

		DiagnosticOk = { bg = c.none, fg = c.grey_smokey },

		DiagnosticError = { bg = c.none, fg = c.red_orange },

		DiagnosticWarn = { bg = c.none, fg = c.orange_chrome },

		["@keyword.return.lua"] = { fg = c.grey_smokey },

		["@keyword.repeat.go"] = { fg = c.grey_smokey },
		["@keyword.conditional.go"] = { link = "Type" },
		["@keyword.return.go"] = { fg = c.shocking_orange },
		["@keyword.type.go"] = { fg = c.grey_davy },
		["@keyword.go"] = { fg = c.white_dust3 },
		["@variable.go"] = { fg = c.grey_davy },
		["@type.go"] = { fg = c.grey_davy },
		["@namespace.go"] = { bold = true },
		["@property.go"] = { link = "Function" },
		["@function.method.go"] = { fg = c.grey_smokey },
		["@constant.builtin.go"] = { fg = c.grey_davy },
		-- ["@function.builtin.go"] = { fg = c.blue_meadow },

		["@label.json"] = { fg = c.dim_grey, bg = c.none },
		["@label.jsonc"] = { fg = c.dim_grey, bg = c.none },
		["@tag.html"] = { fg = c.dim_grey, bg = c.none },
		["@method"] = { fg = c.white_dust2 },
		["@variable"] = { fg = c.grey_simple },

		["@lsp.type.class.java"] = { bold = true },

		["helpWarning"] = { fg = c.orange_chrome, bold = true },
		["helpNote"] = { fg = c.yellow_candle, bold = true },

		["shQuote"] = { fg = c.grey_davy },
		["luaString"] = { fg = c.dark_onxy, link = "Constant" },

		NvimInternalError = { fg = c.red_orange, bg = c.none, bold = true },

		OilDir = { link = "Keyword" },
		OilFile = { link = "Keyword" },
		OilDirHidden = { link = "Keyword" },
		OilFileHidden = { link = "Keyword" },

		["protoFloat"] = { fg = c.white_dust3 },
		["@comment.note"] = { fg = c.yellow_candle },
		["type_identifier"] = { fg = c.yellow_candle },
		["luaTableBlock"] = { fg = c.yellow_candle },
	}

	return group
end

return M
