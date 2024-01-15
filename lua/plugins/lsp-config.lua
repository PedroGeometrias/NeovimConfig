--my lsp config
return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
       lazy = false,
        opts = {
        ensure_installed = {
            "clangd",
            "lua_ls",
        },
             auto_install = true,
        },
    },
    {
       "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            require("plugins.syntax.servers") --calling the file that load the servers to modulorize my config   
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}

