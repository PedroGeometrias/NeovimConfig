--vim
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").vimls.setup({
  capabilities = capabilities
})
