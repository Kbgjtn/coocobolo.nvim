local M = {}

function M.hl(c)
	return {
		["CoverageCovered"] = { fg = c.green_neon },
		["CoverageUncovered"] = { fg = c.dark_jungle2, bold = true },
		["CoverageSummaryHeader"] = { fg = c.grey_corporate },
		["CoverageSummaryFail"] = { fg = c.grey_corporate },
	}
end

return M
