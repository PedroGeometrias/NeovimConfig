local C = require("syntax._common")
require("lspconfig").lua_ls.setup({
  capabilities = C.capabilities,
  on_attach = C.on_attach,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
      diagnostics = {
        globals = { "vim" },
        -- keep your disables if you like
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})

