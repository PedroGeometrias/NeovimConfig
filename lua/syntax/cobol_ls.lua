local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")
local C = require("syntax._common")

if not configs.cobol_ls then
  configs.cobol_ls = {
    default_config = {
      cmd = { "cobol-language-support" },
      filetypes = { "cobol" },
      root_dir = C.util.root_pattern(".git") or vim.loop.cwd,
    },
    docs = {
      description = [[Cobol language support]],
    },
  }
end

lspconfig.cobol_ls.setup({
  capabilities = C.capabilities,
  on_attach = C.on_attach,
})

