local M = {}

function M.hl(c)
	return {
		["GitSignsAdd"] = { fg = c.green_toska },
		["GitSignsChange"] = { fg = c.yellow_naples },
		["GitSignsDelete"] = { fg = c.red_orange },

		DiffChange = { fg = c.yellow_naples, bg = c.none },
		DiffAdd = { fg = c.green_meadow2 },
		DiffDelete = { fg = c.shocking_orange },
	}
end

return M
