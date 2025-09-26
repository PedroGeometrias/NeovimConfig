-- lua/syntax/_common.lua
local M = {}

local ok, cmp = pcall(require, "cmp_nvim_lsp")
M.capabilities = ok and cmp.default_capabilities()
  or vim.lsp.protocol.make_client_capabilities()

-- Optional: add per-buffer keymaps, inlay hints, etc.
M.on_attach = function(client, bufnr)
  -- example:
  -- vim.keymap.set("n","K",vim.lsp.buf.hover,{buffer=bufnr})
end

M.util = require("lspconfig.util")
return M

