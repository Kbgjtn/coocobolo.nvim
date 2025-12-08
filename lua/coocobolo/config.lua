local color = require("coocobolo.colors")
local hl = require("coocobolo.groups.init")

local M = {}

local function clear_highlights()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
end

function M.pick_accent(c)
	local opts = c.accent
	if opts.randomize and #opts.colors > 0 then
		math.randomseed(os.time())
		local idx = math.random(#opts.colors)
		return opts.colors[idx]
	else
		return opts.default or opts.colors[1]
	end
end

local function set_vim_option()
	vim.g.colors_name = "coocobolo"
	vim.cmd("set t_Co=256")
	vim.o.winblend = 0
end

function M.enable_dim_inactive(p)
	vim.api.nvim_set_hl(0, "NormalNC", { fg = p.none, bg = p.theme == "dark" and p.dark_onxy or p.bg })
	vim.api.nvim_set_hl(0, "WinSeparator", { bg = p.bg, fg = p.primary })
end

function M.disable_status_line(p)
	vim.api.nvim_set_hl(0, "StatusLine", { bg = p.bg, fg = p.bg })
	vim.api.nvim_set_hl(0, "StatusLineNC", { bg = p.bg, fg = p.bg })
	vim.api.nvim_set_hl(0, "StatusLineTerm", { bg = p.bg, fg = p.bg })
end

function M.enable_yank_highlight()
	local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
	vim.api.nvim_create_autocmd("TextYankPost", {
		callback = function()
			vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 50 })
		end,
		group = highlight_group,
		pattern = "*",
	})
end

function M.set_groups(c)
	local light = color.colorful_palette
	local palette = color.dark_palette

	if c.accent.current then
		palette.accent = c.accent.current
	end

	if c.theme == "light" then
		palette = light
	end

	if c.custom_palette then
		palette = vim.tbl_deep_extend("force", palette, c.custom_palette or {})
	end

	palette.theme = c.theme

	for _, group in pairs(hl) do
		for key, property in pairs(group.hl(palette)) do
			vim.api.nvim_set_hl(0, key, property)
		end
	end

	if c.dim_inactive then
		M.enable_dim_inactive(palette)
	end

	if c.highlights then
		for key, property in pairs(c.highlights) do
			vim.api.nvim_set_hl(0, key, property)
		end
	end

	if c.clear_status_line then
		M.disable_status_line(palette)
	end
end

local function setup_color(options)
	if options.theme then
		if options.theme == "dark" then
			vim.o.background = "dark"
			options.palette = color.dark_palette
		elseif options.theme == "light" then
			options.palette = color.colorful_palette
			vim.o.background = "light"
		end
	else
		P("theme is not defined")
		options.palette = color.dark_palette
	end
end

function M.setup(options)
	clear_highlights()
	set_vim_option()

	if options.terminal_colors then
		vim.g.termguicolors = true
	end

	if options.enable_yank_highlight then
		M.enable_yank_highlight()
	end

	vim.o.background = options.theme or "dark"
	options.accent.current = M.pick_accent(options)
	M.set_groups(options)
end

function M.set_theme(theme)
	local options = { theme = theme }
	M.setup(options)
end

return M
