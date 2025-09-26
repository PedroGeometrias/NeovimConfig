local C = require("syntax._common")
require("lspconfig").cssls.setup({
  capabilities = C.capabilities, -- includes snippet support already
  on_attach = C.on_attach,
})

