local C = require("syntax._common")
require("lspconfig").ts_ls.setup({
  capabilities = C.capabilities,
  on_attach = C.on_attach,
  filetypes = { "javascript", "typescript", "typescriptreact" },
  root_dir = C.util.root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git"),
})

