local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.asm_lsp.setup {
    capabilities = capabilities,
}


