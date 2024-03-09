return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local sources = {
            null_ls.builtins.formatting.prettier,
            null_ls.builtins.diagnostics.write_good,
            null_ls.builtins.code_actions.gitsigns,
        }
        null_ls.setup({
            sources = sources,
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}

