local palette = require("coocobolo.colors").palette

local M = {}

local config = {
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { bold = false, italic = false },
		keywords = { bold = true, italic = false },
		functions = { bold = true, italic = false },
		variables = { bold = false, italic = false },
	},
	dim_inactive = false,
	default_background = true,
}

M.options = {}

local function clearHighlights()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
end

function M.setup()
	clearHighlights()
	M.set_groups()
end

function M.set_groups()
	local groups = {
		-- Base
		-- normal mode
		-- todo: if opts.transparent then bg = none, if not then bg = chinese
		Normal = { fg = palette.dark.soft, bg = palette.dark.chinese },

		-- todo: if opts.dim_inactive then bg = chinese_dim, if not then bg = chinese
		NormalNC = { fg = palette.dark.soft, bg = palette.dark.chinese },

		NormalFloat = { fg = palette.dark.soft },

		-- visual mode
		Visual = { fg = palette.none, bg = palette.dark.elitle, bold = true },

		-- Cursor
		Cursor = { bg = palette.dark.charcoal, ctermfg = 15, bold = true },

		lCursor = { fg = palette.red.soft, bg = palette.dark.liver, bold = true },

		CursorLine = { bg = palette.dark.elitle },

		cursorlinenr = { fg = palette.red.cg, bg = palette.none, bold = true },

		CurSearch = { fg = palette.green.g_yellow, bg = palette.dark.elitle, bold = true },

		SignColumn = { fg = palette.dark.chinese, bg = palette.dark.chinese, bold = false },

		CursorLineSign = { fg = palette.dark.chinese, bg = palette.none, bold = false },

		SignalSign = { fg = palette.dark.chinese, bg = palette.dark.chinese, bold = false },

		LineNr = { fg = palette.dark.charcoal, bg = palette.dark.chinese },

		-- tilde end of buffer in the sidebars
		EndOfBuffer = { fg = palette.dark.chinese, bg = palette.dark.chinese },

		MsgArea = { fg = palette.dark.softest, bg = palette.dark.chinese, bold = true },

		ModeMsg = { fg = palette.dark.soft, bg = palette.dark.chinese, bold = false },

		MoreMsg = { fg = palette.grey.tints, bg = palette.dark.chinese, bold = false },

		MsgSeparator = { fg = palette.dark.other, bg = palette.dark.chinese, bold = true },

		-- Question
		Question = { fg = palette.dark.soft, bg = palette.dark.eerie },

		Search = { fg = palette.green.g_yellow, bg = palette.none, bold = true },

		IncSearch = { fg = palette.green.g_yellow, bg = palette.none, bold = true },

		-- Fold
		Folded = { fg = palette.dark.charcoal, bg = palette.none, bold = false },
		FoldColumn = { fg = palette.dark.raisin, bg = palette.none, bold = false },

		-- TREESITTER
		Function = { fg = palette.grey.tints, bg = palette.none, bold = true },
		Operator = { fg = palette.dark.other, bg = palette.none, bold = false },
		Identifier = { fg = palette.dark.softest, bg = palette.none, bold = false },
		String = { fg = palette.dark.soft2, bg = palette.none, bold = false },
		Delimiter = { fg = palette.dark.soft2, bg = palette.none, bold = false },
		Number = { fg = palette.dark.soft2, bg = palette.none, bold = false },
		Boolean = { fg = palette.dark.soft2, bg = palette.none, bold = false },
		Comment = { fg = palette.dark.charcoal, bg = palette.none, bold = false },
		Keyword = { fg = palette.grey.suplight, bg = palette.none, bold = false },
		Repeat = { fg = palette.red.soft, bg = palette.none, bold = false },
		Special = { fg = palette.dark.softest, bg = palette.none, bold = false },
		NonText = { fg = palette.dark.soft2, bg = palette.none, bold = false },
		Type = { fg = palette.dark.soft, bg = palette.none, bold = false },
		Title = { fg = palette.dark.softest, bg = palette.none, bold = true },
		Statement = { fg = palette.yellow.sunglow, bg = palette.none, bold = false },
		Constant = { fg = palette.dark.softest, bg = palette.none, bold = true },
		PreProc = { fg = palette.dark.soft2, bg = palette.none, bold = false },
		Underlined = { fg = palette.blue.meadow, bg = palette.none, bold = true },
		SpecialKey = { fg = palette.dark.soft2, bg = palette.none, bold = false },
		Directory = { fg = palette.dark.other, bg = palette.none, bold = true },

		Error = { fg = palette.red.cg, bg = palette.none },
		ErrorMsg = { fg = palette.red.cg, bg = palette.none },

		-- DiagnosticUnderlineWarn
		-- DiagnosticUnderlineError
		DiagnosticUnderlineWarn = { fg = palette.orange.chinese, bg = palette.none, bold = false, underline = true },
		DiagnosticUnderlineError = { fg = palette.red.cg, bg = palette.none, bold = false, underline = true },

		-- Float
		FloatTitle = { fg = palette.dark.soft, bg = palette.none },
		FloatBorder = { fg = palette.dark.raisin, bg = palette.none },

		WildMenu = { bg = palette.dark.eerie, fg = palette.yellow.sunglow_dim },
		WildMenuSelected = { bg = palette.dark.eerie, fg = palette.yellow.sunglow_dim },

		-- Pmenu
		Pmenu = { fg = palette.dark.liver, bg = palette.dark.chinese },
		PmenuSel = { fg = palette.grey.suplight, bg = palette.dark.elitle, bold = true },
		PmenuSbar = { bg = palette.none },
		PmenuThumb = { bg = palette.none },
		PopupWindowBorder = { fg = palette.dark.softest, bg = palette.none },

		-- Ts
		["@keyword.return.lua"] = { fg = palette.green.g_yellow, bg = palette.none, bold = true },
		["@label.json"] = { fg = palette.dark.other, bg = palette.none, bold = false },
		["@label.jsonc"] = { fg = palette.dark.other, bg = palette.none, bold = false },
		["@tag.html"] = { fg = palette.dark.other, bg = palette.none, bold = false },
	}

	for group, properties in pairs(groups) do
		vim.api.nvim_set_hl(0, group, properties)
	end
end

return M
