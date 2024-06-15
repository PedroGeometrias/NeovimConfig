local lspconfig = require('lspconfig')

lspconfig.cobol_ls.setup({
  cmd = { "path/to/cobol-lsp" },  -- Update with the actual path to the cobol-lsp executable
  on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  end,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

