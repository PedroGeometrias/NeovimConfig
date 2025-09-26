
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.awk_ls.setup{
 capabilities = capabilities,
    cmd ={
        "awk-language-server"
    },
    filetypes={
        "awk"
    }
}
