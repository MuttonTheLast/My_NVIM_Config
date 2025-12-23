
function CustomColorSetup(color)
    color = color or "carbonfox"

	if (color) then 
		vim.cmd("colorscheme "..color)
	end
--[[
    -- transparent background
    local groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer',
    }
    for i,v in ipairs(groups) do 
        vim.api.nvim_set_hl(0, v, { bg = 'none' })
    end]]
end

CustomColorSetup()
