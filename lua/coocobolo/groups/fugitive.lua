local M = {}

function M.hl(c)
	return {
		["fugitiveUntrackedModifier"] = { fg = c.neutral_15 },
		["fugitiveHeader"] = { bold = true },
	}
end

return M
