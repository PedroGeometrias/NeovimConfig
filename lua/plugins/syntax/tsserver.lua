--tsserver configuration
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").tsserver.setup({
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  root_dir = function() return vim.loop.cwd() end      -- run lsp for javascript in any directory
})

