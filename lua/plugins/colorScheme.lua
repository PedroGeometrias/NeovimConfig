return {
    "savq/melange-nvim",
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("melange")
        vim.opt.termguicolors = true
        --vim.cmd.colorscheme("lackluster-hack")
        -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
        -- vim.cmd.colorscheme("lackluster-mint")
    end,
}
