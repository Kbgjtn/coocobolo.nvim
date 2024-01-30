local c = require("coocobolo.colors").color_palette

local M = {}

local function clear_highlights()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
end

local function set_vim_option()
	vim.g.colors_name = "coocobolo"
	vim.g.termguicolors = true

	vim.cmd("set t_Co=256")
	vim.o.background = "dark"
	vim.o.winblend = 0
end

function M.setup(config)
	clear_highlights()
	set_vim_option()
	M.set_groups(config)
end

function M.set_groups(config)
	local styles = config.styles
	local groups = {
		-- Base
		-- normal mode
		-- todo: if opts.transparent then bg = none, if not then bg = chinese
		Normal = { fg = c.grey_davy, bg = c.none },

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

		SignColumn = { fg = c.dark_onxy, bg = c.dark_onxy },

		CursorLineSign = { fg = c.dark_onxy, bg = c.none },

		SignalSign = { fg = c.dark_onxy, bg = c.dark_onxy },

		LineNr = { fg = c.dark_jungle, bg = c.none },

		-- tilde end of buffer in the sidebars
		EndOfBuffer = { fg = c.dark_onxy, bg = c.none },

		MsgArea = { fg = c.dark_gravelest, bg = c.dark_onxy, bold = true },

		ModeMsg = { fg = c.dark_gravel, bg = c.dark_onxy },

		MoreMsg = { fg = c.white_dust, bg = c.dark_onxy },

		MsgSeparator = { fg = c.dim_grey, bg = c.dark_onxy, bold = true },

		-- Question
		Question = { fg = c.dark_gravel, bg = c.dark_eerie },

		Search = { fg = c.orange_chrome, bg = c.dark_rangoon },

		IncSearch = { fg = c.green_meadow, bg = c.none, bold = true },

		-- Fold
		Folded = { fg = c.dark_thunder, bg = c.none },

		FoldColumn = { fg = c.dark_rangoon, bg = c.none },

		-- CODE
		Function = { fg = c.white_dust, bg = c.none },

		Operator = { fg = c.grey_gravel, bg = c.none },

		Identifier = { fg = c.grey_smokey, bg = c.none },

		String = { fg = c.grey_davy, bg = c.none },

		Delimiter = { fg = c.grey_davy, bg = c.none },

		Number = { fg = c.grey_davy, bg = c.none },

		Boolean = { fg = c.grey_davy, bg = c.none },

		Comment = { fg = c.dark_grey, bg = c.none },

		Keyword = { fg = c.fg, bg = c.none },

		Repeat = { fg = c.shocking_orange, bg = c.none },

		Special = { fg = c.grey_davy, bg = c.none },

		NonText = { fg = c.grey_davy, bg = c.none },

		Type = { fg = c.grey_smokey, bg = c.none },

		Title = { fg = c.dark_gravelest, bg = c.none, bold = true },

		Statement = { fg = c.yellow_candle, bg = c.none },

		Constant = { fg = c.dark_gravelest, bg = c.none, bold = true },

		PreProc = { fg = c.grey_davy, bg = c.none },

		Conceal = { fg = c.white_dust3, bg = c.none },

		Underlined = { fg = c.blue_meadow, bg = c.none },

		Italic = { fg = c.grey_davy, bg = c.none, italic = true },

		SpecialKey = { fg = c.grey_davy, bg = c.none },

		Directory = { fg = c.dim_grey, bg = c.none, bold = true },

		Error = { fg = c.shocking_orange, bg = c.none },

		ErrorMsg = { fg = c.shocking_orange, bg = c.none },

		DiagnosticUnderlineWarn = { fg = c.shocking_orange, bg = c.none, underline = true },

		DiagnosticUnderlineError = { fg = c.shocking_orange, bg = c.none, underline = true },

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

		["@lsp.mod.global.lua"] = {},
		["@label.json"] = { fg = c.dim_grey, bg = c.none },
		["@label.jsonc"] = { fg = c.dim_grey, bg = c.none },
		["@tag.html"] = { fg = c.dim_grey, bg = c.none },

		["@lsp.type.annotation.java"] = { fg = c.yellow_candle },
		["@lsp.type.class.java"] = { bold = true },

		-- git signs
		["GitSignsAdd"] = { fg = c.green_meadow2 },
		["GitSignsChange"] = { fg = c.orange_chrome },
		["GitSignsDelete"] = { fg = c.shocking_orange },
	}

	for group, property in pairs(groups) do
		vim.api.nvim_set_hl(0, group, property)
	end
end

return M
