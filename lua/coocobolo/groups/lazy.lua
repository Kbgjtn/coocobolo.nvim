local M = {}

function M.hl(c)
	return {
		["MasonHighlightBlockBold"] = { fg = c.grey_corporate },
		["LazyButton"] = { bg = c.dark_onxy },
		["LazySpecial"] = { bg = c.dark_onxy },
		["LazyInfo"] = { bg = c.grey_corporate },
		["LazyButtonActive"] = { bg = c.dark_onxy },
		["DiagnosticFloatingInfo"] = { fg = c.grey_corporate },
		["DiagnosticInfo"] = { fg = c.grey_corporate },
		["MasonHeaderSecondary"] = { bg = c.dark_onxy },
		["MasonHeader"] = { bg = c.dark_onxy },
		["MasonMutedBlock"] = { bg = c.dark_onxy },
		["MasonMutedBlockBold"] = { bg = c.dark_onxy },
		["MasonHighlight"] = { fg = c.grey_corporate },
		["MasonMuted"] = { fg = c.grey_corporate },
		["MasonHighlightBlock"] = { bg = c.dark_onxy },
		["MasonHighlightBlockBoldSecondary"] = { bg = c.dark_onxy },
		["MasonHighlightBlockSecondary"] = { bg = c.dark_onxy },
	}
end

return M
