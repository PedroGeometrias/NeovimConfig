local M = {}
-- Global variable to store typed characters
typed_keys = ""

-- Define a function to get the label for a tab
function my_tab_label(n)
    local buflist = vim.fn.tabpagebuflist(n)
    local winnr = vim.fn.tabpagewinnr(n)
    local bufname = vim.fn.fnamemodify(vim.fn.bufname(buflist[winnr]), ':t')
    return bufname == '' and '[unnamed]' or bufname
end

function my_tab_line()
    local s = ''
    for i = 1, vim.fn.tabpagenr('$') do
        -- select the highlighting
        if i == vim.fn.tabpagenr() then
            s = s .. '%#TabLineSel#'
        else
            s = s .. '%#TabLine#'
        end

        -- set the tab page number (for mouse clicks)
        s = s .. ' ' .. i .. ' '

        -- the label is made by my_tab_label()
        s = s .. ' ' .. my_tab_label(i) .. ' '

        if i < vim.fn.tabpagenr('$') then
            s = s .. ' |'
        end
    end
    return s
end

-- Configuration options for Neovim settings
M.options = {
 syntax = "enable",          -- Enable syntax
    autoindent = true,          -- Enable auto-indentation
    smartindent = true,         -- Enable smart-indentation
    tabstop = 4,                -- Set tab width to 4 spaces
    shiftwidth = 4,             -- Set indentation width to 4 spaces
    expandtab = true,           -- Use spaces instead of tabs
    showmatch = true,           -- Show matching brackets
    number = true,              -- Show line numbers
    relativenumber = true,      -- Show relative line numbers
    numberwidth = 4,            -- Set width for line numbers
    incsearch = true,           -- Incremental search
    hlsearch = false,           -- Disable search highlighting
    ignorecase = true,          -- Case insensitive searching
    smartcase = true,           -- Use smart case for searching
    splitbelow = true,          -- Open new split below current split
    splitright = true,          -- Open new split to the right of current split
    termguicolors = true,       -- Enable true colors in the terminal
    signcolumn = "yes",         -- Always show the signcolumn
    errorbells = false,         -- Disable error bells
    wrap = false,               -- Disable line wrapping
    cursorline = true,          -- Highlight the current line
    fileencoding = "utf-8",     -- Set file encoding to UTF-8
    backup = false,             -- Disable backup files
    writebackup = false,        -- Disable writing backup files before overwriting
    swapfile = false,           -- Disable swap files
    -- Set directory for undo files
    undodir = os.getenv("HOME") and os.getenv("HOME") .. "/.vim/undodir" or vim.fn.stdpath("data") .. "/undodir", 
    undofile = true,            -- Enable persistent undo
    colorcolumn = "120",        -- Highlight column at 120 characters
    updatetime = 20,            -- Set time (in milliseconds) for updating text
    scrolloff = 15,             -- Set minimum lines to keep above/below cursor when scrolling
    mouse = '',-- Disable mouse support
    guicursor = "a:block",      -- Set GUI cursor to block shape
    title = true,               -- Show the titlebar
    titlestring = "%t - line %l, col %c",-- Set the titlestring format
    wrapscan = true,            -- Enable wrapscan, so I can search the whole file
    hidden = true,              -- Switch between files without saving changes 
    cursorcolumn = true,        -- Highlights the column where the cursor is located
    lazyredraw = true,          -- For improve performance
    timeoutlen = 970,          -- setting the time for a mapped key
    statusline = "%!v:lua.MyStatusLine()" -- Custom status line
}

-- Global function to update the typed characters in the status line
function update_typed_keys(char)
    typed_keys = typed_keys .. char
    if #typed_keys > 10 then
        typed_keys = string.sub(typed_keys, -16)
    end
    vim.cmd("redrawstatus")
end

-- Autocommand to capture typed characters in Insert mode
vim.api.nvim_exec([[
    augroup TypedKeys
        autocmd!
        autocmd InsertCharPre * lua update_typed_keys(vim.v.char)
    augroup END
]], false)

-- Status line function to show typed keys
function MyStatusLine()
    return "%{fnamemodify(expand('%:p'), ':~:.')} | Type %y, Num %n | Line %l of %L | " .. "Typed : ".. typed_keys .. " |%="
end

-- Apply configurations to Neovim
function M.setup()
    for option, value in pairs(M.options) do
        -- Set the option if it exists
        if vim.opt[option] then
            vim.opt[option] = value
        else
            -- Handle unsupported options or typos
            print("Option not found:", option)
        end
    end
    -- Append "alpha" format to nrformats option for incrementing letters
    vim.opt.nrformats:append("alpha")

    -- Set the tabline to be generated by my_tab_line()
    vim.o.tabline = '%!v:lua.my_tab_line()'
end

return M

