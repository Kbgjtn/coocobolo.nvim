local M = {}

function M.hl(c)
	return {
		["CoverageCovered"] = { fg = c.green_emerald },
		["CoverageUncovered"] = { fg = c.dark_thunder },
		["CoverageSummaryHeader"] = { fg = c.grey_corporate },
		["CoverageSummaryFail"] = { fg = c.grey_corporate },
	}
end

return M
