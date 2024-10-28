local capabilities = require('cmp_nvim_lsp').default_capabilities()
require'lspconfig'.pylsp.setup{
    settings = {
        pylsp = {
            plugins = {
                plugins = {
                    jedi = { environment = "/usr/bin/python3" }
                },
                pycodestyle = {
                    ignore = {'W391'},
                    maxLineLength = 100
                }
            }
        }
    }
}
