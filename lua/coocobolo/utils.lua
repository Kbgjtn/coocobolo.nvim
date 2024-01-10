local M = {}

function M.highlight(group, hl)
	if hl.style and type(hl.style) == "table" then
		local style = "gui="

		for _, v in ipairs(hl.style) do
			style = style .. v .. ","
		end
		hl.style = style:sub(1, -2)
	end
end

function M.load_theme(theme)
	if vim.g.colors_name then
		vim.cmd("highlight clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "coocobolo"
end

return M
