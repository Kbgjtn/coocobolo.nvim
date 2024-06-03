local M = {}

function M.hl(c)
	return {
		["GitSignsAdd"] = { fg = c.dark_dune },
		["GitSignsChange"] = { fg = c.grape_elsie2 },
		["GitSignsDelete"] = { fg = c.orange_beer },

		DiffChange = { fg = c.yellow_naples, bg = c.none },
		DiffAdd = { fg = c.green_meadow2 },
		DiffDelete = { fg = c.shocking_orange },
	}
end

return M
