local C = require("syntax._common")
require("lspconfig").html.setup({
  capabilities = C.capabilities,
  on_attach = C.on_attach,
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = { css = true, javascript = true },
    provideFormatter = true,
  },
})

