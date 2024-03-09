-- Set the mapleader to space.
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Function to create key mappings.
local M = {}

function M.map(mode, lhs, rhs, opts)
    -- Set default options for mappings.
    local options = { noremap = true, silent = true }
    -- Merge provided options with defaults.
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    -- Set the key mapping using Vim API.
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M

