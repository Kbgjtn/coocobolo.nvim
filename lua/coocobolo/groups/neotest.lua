local M = {}

function M.hl(c)
	return {
		NeotestAdapterName = { fg = c.none },
		NeotestIndent = { link = "Type" },
		NeotestFocused = { fg = c.white_dust2 },
		NeotestExpandMarker = { link = "Type" },
		NeotestDir = { link = "Normal" },
		NeotestFile = { link = "Normal" },
		NeotestPassed = { fg = c.green_meadow2, bg = c.none },
		NeotestFailed = { fg = c.shocking_orange },
	}
end

return M
