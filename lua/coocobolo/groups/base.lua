local M = {}

function M.hl(c)
	local group = {
		Normal = { fg = c.grey_gravel, bg = c.dark_onxy },

		-- TODO: if opts.dim_inactive then bg = chinese_dim, if not then bg = chinese
		NormalNC = { fg = c.dark_gravel, bg = c.dark_onxy },

		NormalFloat = { fg = c.grey_gravel },

		-- visual mode
		Visual = { fg = c.none, bg = c.dark_rangoon, bold = true },

		-- Cursor
		Cursor = { bg = c.dark_grey },

		lCursor = { fg = c.red_orange, bg = c.dark_grey, bold = true },

		CursorLine = { bg = c.dark_rangoon, fg = c.none },

		TermCursor = { bg = c.dark_rangoon, fg = c.green_meadow },

		cursorlinenr = { fg = c.shocking_orange, bg = c.none, bold = true },

		CurSearch = { fg = c.green_meadow, bg = c.none, bold = true },

		SignColumn = { fg = c.dark_onxy, bg = c.dark_onxy },

		CursorLineSign = { fg = c.dark_onxy, bg = c.none },

		SignalSign = { fg = c.dark_onxy, bg = c.dark_onxy },

		LineNr = { fg = c.dark_jungle, bg = c.none },

		EndOfBuffer = { fg = c.dark_onxy, bg = c.none },

		MsgArea = { fg = c.dark_gravelest, bg = c.dark_onxy, bold = true },

		ModeMsg = { fg = c.dark_gravel, bg = c.dark_onxy },

		MoreMsg = { fg = c.white_dust, bg = c.dark_onxy },

		Exception = { fg = c.white_dust2, bg = c.dark_onxy },

		MsgSeparator = { fg = c.dim_grey, bg = c.dark_onxy, bold = true },

		Question = { fg = c.dark_gravel, bg = c.dark_eerie },

		Search = { fg = c.orange_chrome, bg = c.dark_rangoon },

		IncSearch = { fg = c.yellow_naples, bg = c.none, bold = true },

		Folded = { fg = c.dark_thunder, bg = c.none },

		FoldColumn = { fg = c.dark_rangoon, bg = c.none },

		-- CODE
		Function = { fg = c.yellow_candle, bg = c.none },

		Operator = { fg = c.grey_davy, bg = c.none },

		Identifier = { fg = c.red_orange, bg = c.none },

		String = { fg = c.grey_davy, bg = c.none },

		Delimiter = { fg = c.grey_davy, bg = c.none },

		Number = { fg = c.grey_davy, bg = c.none },

		Boolean = { fg = c.grey_davy, bg = c.none },

		Comment = { fg = c.dark_grey, bg = c.none },

		Keyword = { fg = c.shocking_orange, bg = c.none },

		Repeat = { fg = c.green_dull, bg = c.none },

		Special = { fg = c.grey_davy, bg = c.none },

		Todo = { fg = c.white_dust2, bold = false },

		NonText = { fg = c.grey_davy, bg = c.none },

		Type = { fg = c.white_dust2, bg = c.none },

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

		Pmenu = { fg = c.dark_grey, bg = c.dark_onxy },

		PmenuSel = { fg = c.red_orange, bg = c.dark_rangoon, bold = true },

		PmenuSbar = { bg = c.none },

		PmenuThumb = { bg = c.none },

		PopupWindowBorder = { fg = c.dark_gravelest, bg = c.none },

		VertSplit = { bg = c.dark_onxy, fg = c.dark_onxy },

		StatusLine = { bg = c.dark_eerie, fg = c.dark_eerie },

		StatusLineNC = { bg = c.dark_eerie, fg = c.dark_eerie },

		StatusLineTerm = { bg = c.dark_eerie, fg = c.dark_eerie },

		-- Telescope
		TelescopeBorder = { bg = c.none, fg = c.dark_jungle2 },

		TelescopeMatching = { fg = c.shocking_orange },

		TelescopeNormal = { bg = c.none },

		TelescopePreviewTitle = { bg = c.none, fg = c.grey_davy },

		TelescopePromptTitle = { bg = c.none, fg = c.grey_davy },

		TelescopePromptPrefix = { bg = c.none, fg = c.grey_davy },

		TelescopeResultsTitle = { bg = c.none, fg = c.grey_davy },

		TelescopeSelectionCaret = { fg = c.shocking_orange },

		TelescopeSelection = { bg = c.dark_rangoon, fg = c.none },

		["@keyword.return.lua"] = { fg = c.grey_smokey, bg = c.none, bold = true },
		["@keyword.return.go"] = { fg = c.grey_smokey, bg = c.none, bold = true },
		["@namespace.go"] = { bold = true },
		["@function.builtin.go"] = { fg = c.red_orange },

		["@lsp.mod.global.lua"] = {},
		["@label.json"] = { fg = c.dim_grey, bg = c.none },
		["@label.jsonc"] = { fg = c.dim_grey, bg = c.none },
		["@tag.html"] = { fg = c.dim_grey, bg = c.none },
		["@method"] = { fg = c.white_dust2 },

		["@lsp.type.class.java"] = { bold = true },

		["helpWarning"] = { fg = c.orange_chrome, bold = true },
		["helpNote"] = { fg = c.yellow_candle, bold = true },

		["shQuote"] = { fg = c.grey_davy },
		["luaString"] = { fg = c.dark_onxy, link = "Constant" },

		NvimInternalError = { fg = c.red_orange, bg = c.none, bold = true },

		["protoFloat"] = { fg = c.white_dust3 },
		["@comment.note"] = { fg = c.yellow_candle },
		["type_identifier"] = { fg = c.yellow_candle },
		["luaTableBlock"] = { fg = c.yellow_candle },
	}

	return group
end

return M
