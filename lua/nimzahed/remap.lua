vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- replace telescope with snacks
-- local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ'z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- vim.keymap.set("n", "<leader>d", "\"_d")
-- vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

-- NOTE: Quick Fix
--
vim.keymap.set({ "n", "v" }, "<leader>.", vim.lsp.buf.code_action,
    { noremap = true, silent = true, desc = "Line quick fix menu" })
-- vim.keymap.set("n", "<leader><C-.>", "<cmd>Telescope diagnostics<CR>",
--     { noremap = true, silent = true, desc = "Telescope quick fix" })

-- vim.keymap.set('n', '<leader><CR>', vim.lsp.buf.definition, {
--     noremap = true,
--     silent = true,
--     desc = "LSP Go to Definition"
-- })

-- NOTE: Tab

-- Add a new tab
vim.keymap.set('n', '<leader>ta', '<cmd>tabnew<cr>', {
    noremap = true,
    silent = true,
    desc = "New Tab"
})

-- Close current tab
vim.keymap.set('n', '<leader>tc', '<cmd>tabclose<cr>', {
    noremap = true,
    silent = true,
    desc = "Close Tab"
})

-- Go to previous tab
vim.keymap.set('n', '<leader>[', '<cmd>tabprevious<cr>', {
    noremap = true,
    silent = true,
    desc = "Previous Tab"
})

-- Go to next tab
vim.keymap.set('n', '<leader>]', '<cmd>tabnext<cr>', {
    noremap = true,
    silent = true,
    desc = "Next Tab"
})

-- NOTE: Split

-- Split to the right
vim.keymap.set('n', '<leader>sl', '<cmd>vsplit<cr>', {
    noremap = true,
    silent = true,
    desc = "Vertical split right"
})

-- Split to the left
vim.keymap.set('n', '<leader>sh', '<cmd>leftabove vsplit<cr>', {
    noremap = true,
    silent = true,
    desc = "Vertical split left"
})

-- Split above
vim.keymap.set('n', '<leader>sk', '<cmd>aboveleft split<cr>', {
    noremap = true,
    silent = true,
    desc = "Horizontal split above"
})

-- Split below
vim.keymap.set('n', '<leader>sj', '<cmd>belowright split<cr>', {
    noremap = true,
    silent = true,
    desc = "Horizontal split below"
})

-- Close current split
vim.keymap.set('n', '<leader>sc', '<cmd>close<cr>', {
    noremap = true,
    silent = true,
    desc = "Close split"
})

-- NOTE: Copilot Accept suggestion with Shift+Tab
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })

-- NOTE: Toggle between absolute and relative line numbers
-- vim.keymap.set("n", "<leader>ln", function()
--     if vim.wo.relativenumber then
--         vim.wo.relativenumber = false
--         vim.wo.number = true
--     else
--         vim.wo.relativenumber = true
--         vim.wo.number = true
--     end
-- end, { desc = "Toggle line numbers" })
--

vim.keymap.set("n", "<leader>vl", ToggleLspText)

vim.keymap.set("n", "<leader><C-j>", SetNextColor);
vim.keymap.set("n", "<leader><C-k>", SetPrevColor);


-- vim.keymap.set("n", "<leader>lw", function()
--     vim.opt.wrap = not vim.opt.wrap
--     print("line wrap is: " .. vim.opt.wrap);
-- end, { desc = "tohhle line wrap" })
