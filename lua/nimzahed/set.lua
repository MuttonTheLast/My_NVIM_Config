
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4       -- Number of visual spaces per TAB
vim.opt.softtabstop = 4   -- Number of spaces inserted when hitting TAB
vim.opt.shiftwidth = 4    -- Number of spaces for each indentation
vim.opt.expandtab = true  -- Use spaces instead of TAB characters

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

local width = vim.api.nvim_get_option_value("columns", {})
vim.opt.colorcolumn = tostring(width - width/10)

vim.g.mapleader = " "
