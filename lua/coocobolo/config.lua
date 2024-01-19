local c = require("coocobolo.colors").color_palette

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

local function clearHighlights()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
end

function M.setup()
	clearHighlights()
	vim.g.colors_name = "coocobolo"
	vim.g.termguicolors = true
	vim.o.background = "dark"
	vim.o.winblend = 0
	M.set_groups()
end

function M.set_groups()
	local groups = {
		-- Base
		-- normal mode
		-- todo: if opts.transparent then bg = none, if not then bg = chinese
		Normal = { fg = c.grey_davy, bg = c.dark_onxy },

		-- todo: if opts.dim_inactive then bg = chinese_dim, if not then bg = chinese
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

		SignColumn = { fg = c.dark_onxy, bg = c.dark_onxy, bold = false },

		CursorLineSign = { fg = c.dark_onxy, bg = c.none, bold = false },

		SignalSign = { fg = c.dark_onxy, bg = c.dark_onxy, bold = false },

		LineNr = { fg = c.dark_jungle, bg = c.none },

		-- tilde end of buffer in the sidebars
		EndOfBuffer = { fg = c.dark_onxy, bg = c.none },

		MsgArea = { fg = c.dark_gravelest, bg = c.dark_onxy, bold = true },

		ModeMsg = { fg = c.dark_gravel, bg = c.dark_onxy, bold = false },

		MoreMsg = { fg = c.white_dust, bg = c.dark_onxy, bold = false },

		MsgSeparator = { fg = c.dim_grey, bg = c.dark_onxy, bold = true },

		-- Question
		Question = { fg = c.dark_gravel, bg = c.dark_eerie },

		Search = { fg = c.orange_chrome, bg = c.dark_rangoon, bold = false },

		IncSearch = { fg = c.green_meadow, bg = c.none, bold = true },

		-- Fold
		Folded = { fg = c.dark_thunder, bg = c.none, bold = false },

		FoldColumn = { fg = c.dark_rangoon, bg = c.none, bold = false },

		-- TREESITTER
		Function = { fg = c.white_dust, bg = c.none, bold = false },

		Operator = { fg = c.grey_gravel, bg = c.none, bold = false },

		Identifier = { fg = c.grey_smokey, bg = c.none, bold = false },

		String = { fg = c.grey_davy, bg = c.none, bold = false },

		Delimiter = { fg = c.grey_davy, bg = c.none, bold = false },

		Number = { fg = c.grey_davy, bg = c.none, bold = false },

		Boolean = { fg = c.grey_davy, bg = c.none, bold = false },

		Comment = { fg = c.dark_grey, bg = c.none, bold = false },

		Keyword = { fg = c.fg, bg = c.none, bold = false },

		Repeat = { fg = c.shocking_orange, bg = c.none, bold = false },

		Special = { fg = c.grey_davy, bg = c.none, bold = false },

		NonText = { fg = c.grey_davy, bg = c.none, bold = false },

		Type = { fg = c.grey_smokey, bg = c.none, bold = false },

		Title = { fg = c.dark_gravelest, bg = c.none, bold = true },

		Statement = { fg = c.yellow_candle, bg = c.none, bold = false },

		Constant = { fg = c.dark_gravelest, bg = c.none, bold = true },

		PreProc = { fg = c.grey_davy, bg = c.none, bold = false },

		Underlined = { fg = c.blue_meadow, bg = c.none, bold = false },

		SpecialKey = { fg = c.grey_davy, bg = c.none, bold = false },

		Directory = { fg = c.dim_grey, bg = c.none, bold = true },

		Error = { fg = c.shocking_orange, bg = c.none },

		ErrorMsg = { fg = c.shocking_orange, bg = c.none },

		DiagnosticUnderlineWarn = { fg = c.shocking_orange, bg = c.none, bold = false, underline = true },

		DiagnosticUnderlineError = { fg = c.shocking_orange, bg = c.none, bold = false, underline = true },

		DiagnosticUnderlineHint = { fg = c.dark_thunder, bg = c.none, underline = true },

		-- Float
		FloatTitle = { fg = c.grey_smokey, bg = c.none },

		FloatBorder = { fg = c.dark_jungle, bg = c.none },

		WildMenu = { bg = c.dark_eerie, fg = c.yellow_naples },

		WildMenuSelected = { bg = c.dark_eerie, fg = c.yellow_naples },

		-- Pmenu
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

		["@lsp.mod.global.lua"] = { bold = false },
		["@label.json"] = { fg = c.dim_grey, bg = c.none, bold = false },
		["@label.jsonc"] = { fg = c.dim_grey, bg = c.none, bold = false },
		["@tag.html"] = { fg = c.dim_grey, bg = c.none, bold = false },
	}

	for group, property in pairs(groups) do
		vim.api.nvim_set_hl(0, group, property)
	end
end

return M
