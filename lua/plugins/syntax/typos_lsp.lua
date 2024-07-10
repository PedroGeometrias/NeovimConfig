local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.typos_lsp.setup{
    capabilities = capabilities,

    filetypes = {
        "c",
        "md"
    },
}
