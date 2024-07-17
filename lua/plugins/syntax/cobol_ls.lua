require'lspconfig'.cobol_ls.setup {
    cmd = {"cobol-language-support"},
    filetypes = { "cobol" },
    root_dir = function(fname)
        return vim.fn.getcwd()
    end,
    settings = {
            formatter = {
                enabled = true,
                style = {
                    indent = 4,
                    lineLength = 80                                                                                     
                }
            },
            diagnostics = {
                enable = true,
                showUnused = true,
                showDeprecated = true
            },
        }
    }


