local M = {}

function M.hl(c)
	return {
		["LazyButton"] = { bg = c.dark_black },
		["LazySpecial"] = { bg = c.dark_black },
		["LazyInfo"] = { bg = c.grey_corporate },
		["LazyButtonActive"] = { bg = c.dark_black },

		["DiagnosticFloatingInfo"] = { fg = c.grey_corporate },
		["DiagnosticInfo"] = { fg = c.grey_corporate },

		["MasonHeaderSecondary"] = { bg = c.dark_onxy },
		["MasonHeader"] = { fg = c.white_dust2, bg = c.dark_onxy },
		["MasonHeading"] = { fg = c.white_dust2 },
		["MasonWarning"] = { fg = c.orange_chrome, bg = c.dark_black },
		["MasonMutedBlock"] = { bg = c.dark_onxy },
		["MasonMutedBlockBold"] = { bg = c.dark_onxy },
		["MasonMuted"] = { fg = c.dark_dune },
		["MasonHighlight"] = { fg = c.grey_smokey, bg = c.none },
		["MasonHighlightBlock"] = { bg = c.dark_onxy },
		["MasonHighlightBlockBold"] = { fg = c.white_dust2, bg = c.dark_onxy },
		["MasonHighlightBlockBoldSecondary"] = { bg = c.dark_black },
		["MasonHighlightBlockSecondary"] = { bg = c.dark_black },
		["masonLine"] = { bg = c.dark_black, fg = c.dark_black },
	}
end

return M
