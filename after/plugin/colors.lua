

local function CustomColorSetup(color)
	
	if (color) then 
		vim.cmd("colorscheme "..color)
	end

--	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

end

CustomColorSetup("terafox")
