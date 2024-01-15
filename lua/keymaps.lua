--function to create keymaps
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
vim.g.mapleader = " "

--COPY and PASTING
map("x", "<leader>y", '"+y')-- Copy to system clipboard in visual mode
map("n", "<leader>p", '"+p')-- Paste from system clipboard

-- Navigation
map("n", "H", "^") -- move to the beginning of the line(NORMAL MODE)
map("v", "H", "^") -- move to the beginning of the line(VISUAL MODE)
map("n", "L", "$") -- move to the end of the line(NORMAL MODE)
map("v", "L", "$") -- move to the end of the line(VISUAL MODE)

--Searching
map("n", "#", "#N") -- Search backward for the word under the cursor
map("n", "<leader>sh", ":set hlsearch! hlsearch?<CR>") -- Toggle search

-- delete trailing white space on save
vim.keymap.set("n", "<leader>wt", [[:lua vim.lsp.buf.format()<cr> <bar> :%s/\s\+$//e<cr>]])

-- Scroll
map("n", "<C-U>", "<C-U>") -- Scroll up faster
map("n", "<C-D>", "<C-D>") -- Scroll down faster

-- Visual Mode
map("x", "<", "<gv") -- move selected text left
map("x", ">", ">gv") -- move selected text right

-- Open a new split with the current file
map("n", "<leader>vs", ":vsp %<CR>")
map("n", "<leader>hs", ":sp %<CR>")

-- Quickfix
map("n", "<leader>qo", ":copen<CR>") -- Open quickfix window
map("n", "<leader>qc", ":cclose<CR>") -- Close quickfix window
map("n", "<leader>qn", ":cnext<CR>") -- Jump to the next quickfix item
map("n", "<leader>qp", ":cprev<CR>") -- Jump to the previous quickfix item
map("n", "<leader>fr", ":%s/") -- Find and replace text in the whole file

-- Alternate File
map("n", "<leader>a", ":A<CR>") -- Quick access to alternate file

-- Last Buffer
map("n", "<leader>b", "<C-^>") -- Quick access to last buffer

-- Command-Line Window
map("n", "<leader>:", ":<C-u>command<CR>") -- Easy access to the command-line window

-- Center screen on the current line after moving
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- Indent entire file
map("n", "<leader>f", ":execute 'normal gg=G' | normal!``<CR>")

-- New Tab
map("n", "<leader>t", ":tabnew<CR>")

-- Close Tab
map("n", "<leader>c", ":tabclose<CR>")

-- Close tab using leader + number of tab + c, and switch between tabs using leader + number of tab
for i = 1, 9 do
    map("n", "<leader>" .. i .. "c", ":exe 'tabclose ' . " .. i .. "<CR>")
    map("n", "<leader>" .. i, ":" .. i .. "tabnext<CR>")
end

-- Split Navigation
map("n", "<leader><Up>", ":wincmd k<CR>") -- Move to the split above
map("n", "<leader><Down>", ":wincmd j<CR>") -- Move to the split below
map("n", "<leader><Left>", ":wincmd h<CR>") -- Move to the split on the left
map("n", "<leader><Right>", ":wincmd l<CR>") -- Move to the split on the right

-- Move selected text up and down in visual mode
map("x", "J", ":move '>+1<CR>gv=gv")
map("x", "K", ":move '<-2<CR>gv=gv")

-- Resize Splits
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Netrw
map("n", "<leader>pv", ":Explore<CR>")

-- Toggle terminal
map("n", "<leader>tt", ":tabnew | term<CR>") -- open a terminal on a new tab
map("n", "<leader>tb", ":belowright split term://bash<CR>") -- open a terminal bellow
map("n", "<leader>tv", ":vertical belowright split term://bash<CR>") -- open a terminal vertically on the right
map("t", "<leader>tc", "<C-\\><C-n>:q<CR>") -- close the terminal buffer
