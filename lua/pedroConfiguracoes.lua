local M = {}
M.options = {
    autoindent = true,
    smartindent = true,
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    showmatch = true,

    number = true,
    relativenumber = true,
    numberwidth = 4,
    incsearch = true,
    hlsearch = false,
    ignorecase = true,
    smartcase = true,

    splitbelow = true,
    splitright = true,

    termguicolors = true,
    signcolumn = "yes",
    errorbells = false,
    wrap = false,
    cursorline = true,
    fileencoding = "utf-8",

    backup = false,
    writebackup = false,
    swapfile = false,
    undodir = os.getenv("HOME") and os.getenv("HOME") .. "/.vim/undodir" or vim.fn.stdpath("data") .. "/undodir",
    undofile = true,
    

    colorcolumn = "120",
    updatetime = 20,
    scrolloff = 15,
    mouse = "a",
    guicursor = "a:block",


    title = true,
    titlestring = "Neovim - %t",
    guifont = "MesloLGS NF:h18",
}

-- vim.opt.nrformats:append("alpha") -- increment letters
--vim.opt.shortmess:append("IsF")

-- vim.o.shortmess = "filnxstToOFS"

function M.setup()
    for option, value in pairs(M.options) do
        vim.opt[option] = value
    end

    vim.opt.nrformats:append("alpha")
end

return M
