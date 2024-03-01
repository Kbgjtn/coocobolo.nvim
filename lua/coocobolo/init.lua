local cfg = require("coocobolo.config")

local M = {}

M.base_options = {
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { bold = false, italic = false },
		keywords = { bold = true, italic = false },
		functions = { bold = true, italic = false },
		variables = { bold = false, italic = false },
	},
	dim_inactive = false,
	theme = "dark",
	default_background = true,
	palette = {},
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
