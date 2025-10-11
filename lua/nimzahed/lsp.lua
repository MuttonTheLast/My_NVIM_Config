
vim.lsp.enable("lua_ls")



vim.diagnostic.config({
  virtual_text = {
    prefix = "●",   -- or ">>", "E:", etc.
    spacing = 2,    -- space between code and message
  },
  signs = true,     -- keep signs in the gutter
  underline = true, -- underline offending code
  update_in_insert = false,
})
