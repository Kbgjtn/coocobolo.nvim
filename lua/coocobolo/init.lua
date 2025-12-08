local cfg = require("coocobolo.config")

local M = {}

-- table of accent colors to choose from
local accents = {
	"#7A7B4C", -- green
	"#E3635F", -- red
	"#FFD93D", -- yellow
	"#00BFFF", -- blue
	"#D79FC7", -- purple
	"#00CED1", -- teal
	"#FFB000", -- orange
	"#FF8DA1", -- pink
}

M.base_options = {
	terminal_colors = true,
	dim_inactive = false,
	theme = "dark",
	palette = {},
	highlights = {},
	clear_status_line = false,
	accent = {
		colors = accents, -- default accent color
		default = "#71AC1E",
		randomize = false,
		current = nil, -- startup
	},
	enable_yank_highlight = true,
}

function M.setup(options)
	if options == nil then
		options = M.base_options
	else
		M.base_options = vim.tbl_deep_extend("force", M.base_options, options)
	end

	cfg.setup(M.base_options)
end

P = function(v)
	print(vim.inspect(v))
	return v
end

RELOAD = function(...)
	return require("plenary.reload").reload_module(...)
end

R = function(name)
	RELOAD(name)
	return require(name)
end

return M
