local capabilities = require('cmp_nvim_lsp').default_capabilities()
--Enable (broadcasting) snippet capability for completion
local broadcastingCapabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
    broadcastingCapabilities = broadcastingCapabilities
}
