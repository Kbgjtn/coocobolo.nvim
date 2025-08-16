local color = require("coocobolo.colors")
local hl = require("coocobolo.groups.init")

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

function M.set_groups(c)
	local dark = color.dark_palette
	local colorful = color.colorful_palette

	local palette = dark

	if c.theme == nil then
		palette = vim.tbl_deep_extend("force", palette, dark)
	end

	if c.theme == "dark" then
		palette = vim.tbl_deep_extend("force", palette, dark)
	elseif c.theme == "light" then
		palette = vim.tbl_deep_extend("force", palette, colorful)
	end

	local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })

	vim.api.nvim_create_autocmd("TextYankPost", {
		callback = function()
			vim.highlight.on_yank()
		end,
		group = highlight_group,
		pattern = "*",
	})

	for _, group in pairs(hl) do
		for key, property in pairs(group.hl(c.palette)) do
			vim.api.nvim_set_hl(0, key, property)
		end
	end
end

local function setup_color(options)
	if options.theme then
		if options.theme == "dark" then
			options.palette = color.dark_palette
		elseif options.theme == "light" then
			options.palette = color.colorful_palette
		end
	else
		P("theme is not defined")
	end
end

function M.setup(options)
	clear_highlights()
	set_vim_option()
	setup_color(options)
	M.set_groups(options)
end

return M
