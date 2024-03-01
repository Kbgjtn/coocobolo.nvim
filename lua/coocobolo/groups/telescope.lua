local M = {}

function M.hl(c)
	return {
		TelescopeBorder = { bg = c.none, fg = c.dark_jungle2 },

		TelescopeMatching = { fg = c.shocking_orange },

		TelescopeNormal = { bg = c.none },

		TelescopePreviewTitle = { bg = c.none, fg = c.grey_davy },

		TelescopePromptTitle = { bg = c.none, fg = c.grey_davy },

		TelescopePromptPrefix = { bg = c.none, fg = c.grey_davy },

		TelescopeResultsTitle = { bg = c.none, fg = c.grey_davy },

		TelescopeSelectionCaret = { fg = c.shocking_orange },

		TelescopeSelection = { bg = c.dark_rangoon, fg = c.none },
	}
end
return M
