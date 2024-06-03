local M = {}

function M.hl(c)
	return {
		TelescopeBorder = { bg = c.none, fg = c.dark_jungle2 },

		TelescopeMatching = { fg = c.white_dust3 },

		TelescopeNormal = { bg = c.dark_onxy },

		TelescopePreviewTitle = { bg = c.none, fg = c.grey_davy },

		TelescopePromptTitle = { bg = c.none, fg = c.grey_davy },

		TelescopePromptPrefix = { bg = c.none, fg = c.grey_davy },

		TelescopeResultsTitle = { bg = c.none, fg = c.grey_davy },

		TelescopeSelectionCaret = { fg = c.grey_smokey },

		TelescopeSelection = { bg = c.dark_rangoon, fg = c.none },
	}
end
return M
