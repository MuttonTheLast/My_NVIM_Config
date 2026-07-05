vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4      -- Number of visual spaces per TAB
vim.opt.softtabstop = 4  -- Number of spaces inserted when hitting TAB
vim.opt.shiftwidth = 4   -- Number of spaces for each indentation
vim.opt.expandtab = true -- Use spaces instead of TAB characters

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80,100"

vim.g.mapleader = " "
