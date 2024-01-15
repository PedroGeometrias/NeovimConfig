--html configuration
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").html.setup({
  capabilities = capabilities
})


