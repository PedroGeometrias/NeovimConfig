local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
lspconfig.asm_lsp.setup {
    capabilities = capabilities,
    cmd ={
        "asm-lsp"
    },
    root_dir = function(fname)
        return vim.fn.fnamemodify(fname, ':p:h') -- Set the root directory to the directory of the current file
    end,
}
