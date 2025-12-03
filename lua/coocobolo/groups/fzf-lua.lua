local M = {}

function M.hl(c)
	return {
		FzfLuaBorder = { bg = c.dark_black, fg = c.dark_jungle2 },
		FzfLuaFzfSeparator = { bg = c.dark_black, fg = c.dark_jungle2 },

		FzfLuaLivePrompt = { bg = c.dark_black, fg = c.dark_jungle2 },

		FzfLuaInfo = { bg = c.dark_black, fg = c.grey_davy },
		FzfLuaPrompt = { bg = c.dark_black, fg = c.grey_davy },
		FzfLuaPointer = { bg = c.dark_black, fg = c.grey_davy },
		FzfLuaBufNr = { bg = c.dark_black, fg = c.grey_davy },
		FzfLuaTabTitle = { bg = c.dark_black, fg = c.grey_davy },

		FzfLuaFzfPointer = { bg = c.dark_black, fg = c.blue_deepsky },
		FzfLuaLiveSym = { bg = c.dark_black, fg = c.blue_deepsky },
		FzfLuaBufFlagCur = { bg = c.dark_black, fg = c.blue_deepsky },
		FzfLuaTitle = { bg = c.none, fg = c.none },
	}
end

return M
