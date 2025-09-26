local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.enable('clangd')

require('lspconfig').clangd.setup {
  capabilities = capabilities,
  cmd = { "clangd", "--background-index", "--clang-tidy", "--completion-style=detailed", "--header-insertion=never", "--pch-storage=memory" },
  init_options = {
    clangdFileStatus = true,
    fallbackFlags = { "-Wall", "-Wextra", "-Wpedantic" },
  },
}

