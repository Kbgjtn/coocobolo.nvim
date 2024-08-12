local M = {}

function M.hl(c)
	return {
		["GitSignsAdd"] = { fg = c.green_emerald },
		["GitSignsChange"] = { fg = c.dark_thunder },
		["GitSignsDelete"] = { fg = c.shocking_orange },

		DiffChange = { fg = c.yellow_naples, bg = c.none },
		DiffAdd = { fg = c.green_meadow2 },
		DiffDelete = { fg = c.shocking_orange },
	}
end

return M
