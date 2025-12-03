local M = {}

function M.hl(c)
	return {
		["GitSignsAdd"] = { fg = c.green_dull, bold = false },
		["GitSignsChange"] = { fg = c.dark_jungle },
		["GitSignsDelete"] = { fg = c.red_coral },

		DiffChange = { fg = c.yellow_naples, bg = c.none },
		DiffAdd = { fg = c.green_meadow2 },
		DiffDelete = { fg = c.shocking_orange },
	}
end

return M
