local config = require("coocobolo.config")

local M = {}

M.config = {
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

function M.setup(options)
	M.config = vim.tbl_deep_extend("force", M.config, config)
	config.setup(M.config)
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
