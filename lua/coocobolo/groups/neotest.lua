local M = {}

function M.hl(c)
	return {
		--[[ 
         CopilotSuggestion xxx ctermfg=244 guifg=#808080
         CopilotAnnotation xxx links to Normal
         NeotestPassed  xxx ctermfg=10 guifg=#96f291
         NeotestFailed  xxx ctermfg=9 guifg=#f70067
         NeotestRunning xxx ctermfg=11 guifg=#ffec63
         NeotestSkipped xxx ctermfg=14 guifg=#00f1f5
         NeotestTest    xxx links to Normal
         NeotestNamespace xxx ctermfg=13 guifg=#d484ff
         NeotestFocused xxx cterm=bold,underline gui=bold,underline
         NeotestFile    xxx ctermfg=14 guifg=#00f1f5
         NeotestDir     xxx ctermfg=14 guifg=#00f1f5
         NeotestIndent  xxx ctermfg=248 guifg=#8b8b8b
         NeotestExpandMarker xxx ctermfg=248 guifg=#8094b4
         NeotestAdapterName xxx ctermfg=9 guifg=#f70067
         NeotestWinSelect xxx ctermfg=14 gui=bold guifg=#00f1f5
         NeotestMarked  xxx ctermfg=130 gui=bold guifg=#f79000
         NeotestTarget  xxx ctermfg=9 guifg=#f70067
         NeotestWatching xxx ctermfg=11 guifg=#ffec63
         NeotestUnknown xxx links to Normal --]]
		NeotestAdapterName = { link = "String" },
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
