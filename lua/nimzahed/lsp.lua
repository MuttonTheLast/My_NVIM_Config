
vim.lsp.enable("lua_ls")
vim.lsp.enable('html')
vim.lsp.enable('cssls')
vim.lsp.enable("clangd")
vim.lsp.enable("omnisharp")
vim.lsp.enable("slangd")


local SingleLine = false;
function ToggleLspText()
    SingleLine = not SingleLine;
    if (SingleLine) then
        vim.diagnostic.config({
            virtual_text = {
                prefix = "●",   -- or ">>", "E:", etc.
                spacing = 2,    -- space between code and message
            },
            virtual_lines=false,
            signs = true,     -- keep signs in the gutter
            underline = true, -- underline offending code
            update_in_insert = false,
        })
    else
        vim.diagnostic.config({
            virtual_text = false,  -- disable inline text
            virtual_lines = true,  -- show diagnostics as separate wrapped lines
            signs = true,
            underline = true,
            update_in_insert = false,
        })

    end

end
ToggleLspText()

vim.keymap.set("n", "<leader>vl",ToggleLspText )

