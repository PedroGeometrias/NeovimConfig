--assembly lsp 
local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.asm_lsp.setup{
  capabilities = capabilities,
}


