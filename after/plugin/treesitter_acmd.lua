vim.api.nvim_create_autocmd("FileType", {
  pattern = { "hlsl" }, -- all shader extensions mapped to hlsl
  callback = function()
    vim.treesitter.start()
    --vim.wo.foldmethod = "expr"
    vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

