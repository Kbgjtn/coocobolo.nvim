local M = {}

function M.hl(p)
	return {
		["CoverageCovered"] = { fg = p.fg },
		["CoverageUncovered"] = { fg = p.fg, bold = true },
		["CoverageSummaryHeader"] = { fg = p.fg },
		["CoverageSummaryFail"] = { fg = p.fg },
	}
end

return M
