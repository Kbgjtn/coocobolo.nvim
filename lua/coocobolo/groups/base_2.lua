local M = {}

local function hex_to_dec(hex)
	-- Remove the leading '#' if present
	hex = hex:gsub("#", "")
	-- Convert hex to decimal
	return tonumber(hex, 16)
end

function M.hl(p)
	local base = {
		Normal = { bg = p.none },

		Visual = { fg = p.none, bold = true, bg = p.primary },

		YankHighlight = { fg = p.primary_5, bold = true },

		Cursor = { fg = p.none, bg = p.primary_2, blend = 90 },

		CursorIM = { fg = p.none },

		CursorLine = { fg = p.none, bg = p.primary, blend = 90 },

		CursorLineSign = { fg = p.bg },

		SignColumn = { fg = p.fg, bg = p.bg },

		CursorLineNr = { fg = p.green_shadow },

		CursorLineFold = { fg = p.green_shadow },

		EndOfBuffer = { fg = p.bg },

		LineNr = { fg = p.primary_2, bg = p.bg },

		FloatBorder = { bold = true, fg = p.primary, bg = p.none },

		FloatTitle = { fg = p.primary_2 },

		StatusLine = { bg = p.bg, fg = p.bg },

		StatusLineNC = { bg = p.bg, fg = p.bg },

		StatusLineTerm = { bg = p.bg, fg = p.bg },

		VertSplit = { bg = p.bg, fg = p.bg },

		Directory = { fg = p.primary_3 },

		WinSeparator = { bg = p.bg, fg = p.bg },

		Error = { fg = p.crimson_40 },

		Todo = { fg = p.primary_6 },

		ErrorMsg = { fg = p.crimson_40 },

		CurSearch = { fg = p.green_shadow, bg = p.none, bold = true },

		Search = { fg = p.blue_deepsky, bg = p.bg, blend = 2 },

		IncSearch = { fg = p.green_shadow, bold = true },

		Folded = { fg = p.primary_2 },

		FoldColumn = { fg = p.primary_2 },

		NormalFloat = { bg = p.none },
	}

	local codes = {
		Type = { fg = p.primary_3 },
		Comment = { fg = p.primary_2 },
		Function = { fg = p.primary_5, bold = true },
		Identifier = { fg = p.green_shadow },
		Special = { fg = p.primary_3 },
		Delimiter = { fg = p.grey_davy, bold = true },
		String = { fg = p.primary_3 },
		Statement = { fg = p.primary_4 },
		Operator = { fg = p.primary_2, bold = true },
		Constant = { fg = p.primary_3 },
		["@variable"] = { fg = p.primary_3 },
	}

	local diagnostics = {
		DiagnosticUnderlineError = { undercurl = true, sp = hex_to_dec(p.crimson_40) },
		DiagnosticUnderlineWarn = { undercurl = true, sp = hex_to_dec(p.yellow_candle) },
		DiagnosticUnnecessary = { fg = p.primary_2, undercurl = true, sp = p.primary_3 },
		DiagnosticSignError = { fg = p.crimson_40 },
		DiagnosticSignWarn = { fg = p.yellow_candle },
		DiagnosticWarn = { fg = p.yellow_candle, bg = p.none },
		DiagnosticError = { fg = p.crimson_40, bg = p.none },
		DiagnosticInfo = { fg = p.primary_6, bg = p.none },
		DiagnosticVirtualTextWarn = { fg = p.yellow_candle, bg = p.none },
		DiagnosticVirtualTextError = { fg = p.crimson_40, bg = p.none },
		DiagnosticVirtualLinesWarn = { fg = p.yellow_candle, bg = p.none },
		DiagnosticVirtualLinesError = { fg = p.crimson_40, bg = p.none },
	}

	local codes_go = {
		["@boolean.go"] = { fg = p.yellow_candle, bold = true },
		["@module.go"] = { fg = p.primary_6 },
		["@keyword.repeat.go"] = { fg = p.blue_deepsky },
		["@keyword.conditional.go"] = { fg = p.primary_6 },
		["@keyword.coroutine.go"] = { fg = p.primary_4, bold = true },
		["@keyword.return.go"] = { fg = p.primary_6, bold = true },
		["@keyword.type.go"] = { fg = p.primary_5 },
		["@function.builtin.go"] = { fg = p.yellow_candle },
		["@type.builtin.go"] = { fg = p.primary_6 },
	}

	local codes_lua = {
		["@lsp.type.property.lua"] = { fg = p.primary_4 },
		["@property.lua"] = { fg = p.primary_4 },
		["@keyword.lua"] = { fg = p.primary_5 },
	}

	local diff = {
		Added = { fg = p.darkolivegreen },
		Changed = { fg = p.primary_2 },
		Removed = { fg = p.crimson_40 },

		DiffChange = { fg = p.primary_2 },
		DiffAdd = { fg = p.green_shadow },
		DiffDelete = { fg = p.crimson_40 },
	}

	local snippets = {
		SnippetTabstop = { fg = p.none },
	}

	local groups = vim.tbl_deep_extend(
		--
		"force",
		base,
		codes,
		diagnostics,
		codes_go,
		codes_lua,
		diff,
		snippets
		--
	)

	-- Iterate over each group and apply default values if empty
	for _, properties in pairs(groups) do
		-- If the group is empty, apply the default { fg = p.fg, bg = p.bg }
		if next(properties) == nil then -- Check if the table is empty
			properties.fg = p.fg
			properties.bg = p.bg
		else
			-- If there's an override, respect it, and only change missing properties
			if properties.fg then
				properties.fg = properties.fg or p.fg
			end

			if properties.bg then
				properties.bg = properties.bg or p.bg
			end
		end
	end
	return groups
end

--[[ 
		-- TODO: if opts.dim_inactive then bg = chinese_dim, if not then bg = chinese
		NormalNC = { fg = p.dark_gravel, bg = p.dark_black },

		NormalFloat = { fg = p.grey_gravel, bg = p.dark_black },

		-- visual mode
		Visual = { fg = p.none, bg = p.dark_eerie, bold = true },

		Bold = { bold = true },

		["@spell"] = { fg = p.neutral_20 },

		-- Cursor
		Cursor = { bg = p.dark_jungle, fg = p.dark_black },

		lCursor = { fg = p.red_orange, bg = p.dark_black, bold = true },

		CursorLine = { fg = p.none, bg = p.dark_onxy },

		TermCursor = { fg = p.green_meadow, bg = p.dark_rangoon },

		cursorlinenr = { fg = p.dark_grey, bg = p.dark_black, bold = true },

		CurSearch = { fg = p.grape_elsie, bg = p.none, bold = true },

		SignColumn = { fg = p.dark_black, bg = p.none },

		CursorLineSign = { fg = p.dark_black, bg = p.none },

		SignalSign = { fg = p.dark_black, bg = p.none },

		LineNr = { fg = p.dark_jungle, bg = p.dark_black },

		EndOfBuffer = { fg = p.dark_black, bg = p.none },

		MsgArea = { fg = p.dark_gravelest, bg = p.dark_black, bold = false },

		ModeMsg = { fg = p.dark_gravel, bg = p.dark_black },

		MoreMsg = { fg = p.white_dust, bg = p.dark_black },

		Exception = { fg = p.white_dust2, bg = p.dark_black },

		MsgSeparator = { fg = p.dim_grey, bg = p.dark_black, bold = true },

		Question = { fg = p.dark_gravel, bg = p.dark_eerie },

		Search = { fg = p.white_dust0, bg = p.dark_rangoon },

		IncSearch = { fg = p.red_orange, bg = p.none, bold = true },

		Folded = { fg = p.dark_thunder, bg = p.none },

		FoldColumn = { fg = p.dark_rangoon, bg = p.none },

		-- CODE
		Function = { fg = p.grey_simple, bg = p.none },

		Operator = { fg = p.grey_davy, bg = p.none },

		Identifier = { fg = p.white_dust2, bg = p.none },

		String = { fg = p.grey_davy, bg = p.none },

		Delimiter = { fg = p.dark_dune, bg = p.none },

		Number = { fg = p.grey_simple, bg = p.none },

		Boolean = { fg = p.grey_davy, bg = p.none },

		Comment = {
			-- fg = c.dark_dune,
			fg = p.neutral_40,
			bg = p.none,
		},

		Keyword = { fg = p.grey_davy, bg = p.none },

		Repeat = { fg = p.green_dull, bg = p.none },

		Special = { fg = p.grey_davy, bg = p.none },

		Todo = { fg = p.neutral_30, bold = true },

		NonText = { fg = p.grey_davy, bg = p.none },

		Type = { fg = p.white_dust3, bg = p.none },

		Title = { fg = p.dark_gravelest, bg = p.none, bold = true },

		Statement = { fg = p.grey_gravel, bg = p.none },

		Constant = { fg = p.grey_davy, bg = p.none },

		PreProc = { fg = p.grey_davy, bg = p.none },

		Conceal = { fg = p.white_dust3, bg = p.none },

		Underlined = { fg = p.blue_meadow, bg = p.none },

		Italic = { fg = p.grey_davy, bg = p.none, italic = true },

		SpecialKey = { fg = p.grey_davy, bg = p.none },

		Directory = { fg = p.dim_grey, bg = p.none, bold = true },

		Error = { fg = p.shocking_orange, bg = p.none },

		ErrorMsg = { fg = p.shocking_orange, bg = p.none },

		DiagnosticUnderlineWarn = { fg = p.orange_chinese, bg = p.none, underline = true },

		DiagnosticUnderlineError = { fg = p.shocking_orange, bg = p.none, underline = true },

		DiagnosticUnderlineHint = { fg = p.goldenrod, bg = p.none, underline = true },

		FloatTitle = { fg = p.grey_smokey, bg = p.dust_white },

		FloatBorder = { fg = p.dark_eerie, bg = p.none },

		FloatShadow = { fg = p.dark_eerie, bg = p.none },

		FloatShadowThrough = { fg = p.dark_eerie, bg = p.none },

		WildMenu = { bg = p.dark_eerie, fg = p.yellow_naples },

		WildMenuSelected = { bg = p.dark_eerie, fg = p.yellow_naples },

		Pmenu = { fg = p.dark_grey, bg = p.dark_black },

		PmenuSel = { fg = p.red_orange, bg = p.dark_onxy, bold = true },

		PmenuSbar = { bg = p.none },

		PmenuThumb = { bg = p.none },

		PmenuBorder = { fg = p.dark_eerie, bg = p.none },

		PopupWindowBorder = { fg = p.dark_black, bg = p.none },

		VertSplit = { bg = p.dark_black, fg = p.dark_black },

		WinSeparator = { bg = p.dark_black, fg = p.dark_black },

		StatusLine = { bg = p.dark_black, fg = p.dark_black },

		StatusLineNC = { bg = p.dark_black, fg = p.dark_black },

		StatusLineTerm = { bg = p.dark_black, fg = p.dark_black },

		DiagnosticOk = { bg = p.none, fg = p.grey_smokey },

		DiagnosticHint = { bg = p.none, fg = p.goldenrod },

		DiagnosticError = { bg = p.none, fg = p.red_orange },

		DiagnosticWarn = { bg = p.none, fg = p.orange_chrome },

		["@keyword.return.lua"] = { fg = p.grey_smokey },

		["@label.json"] = { fg = p.dim_grey, bg = p.none },
		["@label.jsonc"] = { fg = p.dim_grey, bg = p.none },
		["@tag.html"] = { fg = p.dim_grey, bg = p.none },
		["@method"] = { fg = p.white_dust2 },
		["@variable"] = { fg = p.grey_simple },

		["@lsp.type.class.java"] = { bold = true },

		["helpWarning"] = { fg = p.orange_chrome, bold = true },
		["helpNote"] = { fg = p.yellow_candle, bold = true },

		["shQuote"] = { fg = p.grey_davy },
		["luaString"] = { fg = p.dark_onxy, link = "Constant" },

		NvimInternalError = { fg = p.red_orange, bg = p.none, bold = true },

		OilDir = { link = "Keyword" },
		OilFile = { link = "Keyword" },
		OilDirHidden = { link = "Keyword" },
		OilFileHidden = { link = "Keyword" },

		["protoFloat"] = { fg = p.white_dust3 },
		["@comment.note"] = { fg = p.yellow_candle },
		["type_identifier"] = { fg = p.yellow_candle },
		["luaTableBlock"] = { fg = p.yellow_candle },
		["SnippetTabstop"] = { bg = p.none },
--]]

return M
