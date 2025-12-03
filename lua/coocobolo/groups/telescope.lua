local M = {}

function M.hl(c)
	return {
		TelescopeBorder = { bg = c.dark_black, fg = c.dark_jungle2 },

		TelescopeMatching = { fg = c.white_dust3 },

		TelescopeNormal = { bg = c.dark_black },

		TelescopePreviewTitle = { bg = c.dark_black, fg = c.grey_davy },

		TelescopePromptTitle = { bg = c.dark_black, fg = c.grey_davy },

		TelescopePromptPrefix = { bg = c.dark_black, fg = c.grey_davy },

		TelescopeResultsTitle = { bg = c.dark_black, fg = c.grey_davy },

		TelescopeSelectionCaret = { fg = c.dark_jungle2, bg = c.dark_black },

		TelescopeSelection = { bg = c.dark_onxy, fg = c.none },
	}
end
return M
