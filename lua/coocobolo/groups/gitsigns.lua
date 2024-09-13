local M = {}

function M.hl(c)
	return {
		["GitSignsAdd"] = { fg = c.green_neon },
		["GitSignsChange"] = { fg = c.grey_simple },
		["GitSignsDelete"] = { fg = c.dark_thunder },

		DiffChange = { fg = c.yellow_naples, bg = c.none },
		DiffAdd = { fg = c.green_meadow2 },
		DiffDelete = { fg = c.shocking_orange },
	}
end

return M
