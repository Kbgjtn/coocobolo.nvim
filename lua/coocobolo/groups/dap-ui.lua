local M = {}

function M.hl(c)
	return {
		--[[ 
         DapUIScope     xxx guifg=#00f1f5
         DapUIType      xxx guifg=#d484ff
         DapUIValue     xxx links to Normal
         DapUIModifiedValue xxx gui=bold guifg=#00f1f5
         DapUIDecoration xxx guifg=#00f1f5
         DapUIThread    xxx guifg=#a9ff68
         DapUIStoppedThread xxx guifg=#00f1f5
         DapUIFrameName xxx links to Normal
         DapUISource    xxx guifg=#d484ff
         DapUILineNumber xxx guifg=#00f1f5
         DapUIFloatNormal xxx links to NormalFloat
         DapUIFloatBorder xxx guifg=#00f1f5
         DapUIWatchesEmpty xxx guifg=#f70067
         DapUIWatchesValue xxx guifg=#a9ff68
         DapUIWatchesError xxx guifg=#f70067
         DapUIBreakpointsPath xxx guifg=#00f1f5
         DapUIBreakpointsInfo xxx guifg=#a9ff68
         DapUIBreakpointsCurrentLine xxx gui=bold guifg=#a9ff68
         DapUIBreakpointsLine xxx links to DapUILineNumber
         DapUIBreakpointsDisabledLine xxx guifg=#424242
         DapUICurrentFrameName xxx links to DapUIBreakpointsCurrentLine
         DapUIStepOver  xxx guifg=#00f1f5
         DapUIStepInto  xxx guifg=#00f1f5
         DapUIStepBack  xxx guifg=#00f1f5
         DapUIStepOut   xxx guifg=#00f1f5
         DapUIStop      xxx guifg=#f70067
         DapUIPlayPause xxx guifg=#a9ff68
         DapUIRestart   xxx guifg=#a9ff68
         DapUIUnavailable xxx guifg=#424242
         DapUIWinSelect xxx ctermfg=14 gui=bold guifg=#00f1f5
         DapUIEndofBuffer xxx links to EndOfBuffer
         DapUINormalNC  xxx cterm= gui=
                            links to Normal
         DapUIPlayPauseNC xxx cterm= gui= guifg=#a9ff68
         DapUIRestartNC xxx cterm= gui= guifg=#a9ff68
         DapUIStopNC    xxx cterm= gui= guifg=#f70067
         DapUIUnavailableNC xxx cterm= gui= guifg=#424242
         DapUIStepOverNC xxx cterm= gui= guifg=#00f1f5
         DapUIStepIntoNC xxx cterm= gui= guifg=#00f1f5
         DapUIStepBackNC xxx cterm= gui= guifg=#00f1f5
         DapUIStepOutNC xxx cterm= gui= guifg=#00f1f5 --]]

		DapUIScope = { fg = c.grey_davy, bg = c.none },
		DapUIBreakpointsPath = { fg = c.grey_davy, bg = c.none },
		DapUIStoppedThread = { fg = c.grey_davy, bg = c.none },
		DapUICurrentFrameName = { fg = c.grey_davy, bg = c.none },
		DapUILineNumber = { fg = c.grey_davy, bg = c.none },
		DapUIThread = { fg = c.grey_davy, bg = c.none },
		DapUIWatchesEmpty = { fg = c.grey_davy, bg = c.none },
		DapUISource = { fg = c.grey_davy, bg = c.none },
		DapUIStepOver = { fg = c.white_dust3, bg = c.none },
		DapUIStepInto = { fg = c.white_dust3, bg = c.none },
		DapUIStepBack = { fg = c.white_dust3, bg = c.none },
		DapUIStepOut = { fg = c.white_dust3, bg = c.none },
		DapUIStop = { fg = c.white_dust3, bg = c.none },
		DapUIPlayPause = { fg = c.white_dust3, bg = c.none },
		DapUIRestart = { fg = c.white_dust3, bg = c.none },
		DapUIDecoration = { link = "Type" },
		DapUIType = { link = "Normal" },
		DapUIModifiedValue = { link = "Keyword" },

		--[[ DapUIType     
         DapUIValue     
         DapUIModifiedValue
         DapUIDecoration 
         DapUIThread    
         DapUIStoppedThread 
         DapUIFrameName 
         DapUISource    
         DapUILineNumber 
         DapUIFloatNormal 
         DapUIFloatBorder 
         DapUIWatchesEmpty 
         DapUIWatchesValue 
         DapUIWatchesError 
         DapUIBreakpointsPath 
         DapUIBreakpointsInfo 
         DapUIBreakpointsCurrentLine 
         DapUIBreakpointsLine 
         DapUIBreakpointsDisabledLine 
         DapUICurrentFrameName 
         DapUIStepOver 
         DapUIStepInto  
         DapUIStepBack  
         DapUIStepOut  
         DapUIStop      
         DapUIPlayPause 
         DapUIRestart   ]]
	}
end

return M
