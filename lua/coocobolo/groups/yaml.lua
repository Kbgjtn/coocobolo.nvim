local M = {}

function M.hl(c)
	return {
		["yamlMappingKey"] = { fg = c.grey_smokey },
		["yamlBlockMappingKey"] = { fg = c.grey_smokey },
		["yamlFlowMappingKey"] = { fg = c.grey_smokey },
		["yamlBlockCollectionItemStart"] = { fg = c.dark_thunder },
	}
end

return M
