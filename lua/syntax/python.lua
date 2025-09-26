local C = require("syntax._common")
require("lspconfig").pylsp.setup({
  capabilities = C.capabilities,
  on_attach = C.on_attach,
  settings = {
    pylsp = {
      plugins = {
        -- Example plugin tweaks; drop or adjust as you like
        pycodestyle = { ignore = { "W391" }, maxLineLength = 100 },
        -- Jedi plugin family; environment is autodetected via venvs
        jedi_completion = { fuzzy = true },
        jedi = { environment = nil }, -- let it resolve from venv if present
      },
    },
  },
})

