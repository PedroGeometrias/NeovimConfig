-- Function to create key mappings.
local function map(mode, lhs, rhs, opts)
    -- Set default options for mappings.
    local options = { noremap = true, silent = true }
    -- Merge provided options with defaults.
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    -- Set the key mapping using Vim API.
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set the mapleader to space.
vim.g.mapleader = " "

--function to read the file
function cobol_mainframe_template()
    -- Path to the file containing the template
    local template_file = "/home/pedro/.config/nvim/lua/cobolTemplate.cob"

    -- Execute the :read command to insert the file content into the buffer
    vim.cmd("read " .. template_file)
end

-- Create the command to generate COBOL mainframe template
vim.cmd("command! -nargs=0 Cobmain lua cobol_mainframe_template()")


-- COPY and PASTE mappings.
map("x", "<leader>y", '"+y') -- Copy selected text to system clipboard in visual mode.
map("n", "<leader>p", '"+p') -- Paste from system clipboard.

-- Navigation mappings.
map("n", "H", "^") -- Move to the beginning of the line in NORMAL MODE.
map("v", "H", "^") -- Move to the beginning of the line in VISUAL MODE.
map("n", "L", "$") -- Move to the end of the line in NORMAL MODE.
map("v", "L", "$") -- Move to the end of the line in VISUAL MODE.

-- Searching mappings.
map("n", "#", "#N") -- Search backward for the word under the cursor.
map("n", "<leader>sh", ":set hlsearch! hlsearch?<CR>") -- Toggle search highlighting.

-- Delete trailing white space on save.
vim.keymap.set("n", "<leader>wt", [[:lua vim.lsp.buf.format()<cr> <bar> :%s/\s\+$//e<cr>]])

-- Scroll mappings.
map("n", "<C-U>", "<C-U>") -- Scroll up faster.
map("n", "<C-D>", "<C-D>") -- Scroll down faster.

-- Visual Mode mappings.
map("x", "<", "<gv") -- Move selected text left.
map("x", ">", ">gv") -- Move selected text right.

-- Open a new split with the current file.
map("n", "<leader>vs", ":vsp %<CR>")
map("n", "<leader>hs", ":sp %<CR>")

-- Quickfix mappings.
map("n", "<leader>qo", ":copen<CR>") -- Open quickfix window.
map("n", "<leader>qc", ":cclose<CR>") -- Close quickfix window.
map("n", "<leader>qn", ":cnext<CR>") -- Jump to the next quickfix item.
map("n", "<leader>qp", ":cprev<CR>") -- Jump to the previous quickfix item.

-- Find and replace text in the whole file.
map("n", "<leader>fr", ":%s/")

-- Alternate File mapping.
map("n", "<leader>a", ":A<CR>") -- Quick access to alternate file.

-- Last Buffer mapping.
map("n", "<leader>b", "<C-^>") -- Quick access to last buffer.

-- Command-Line Window mapping.
map("n", "<leader>:", ":<C-u>command<CR>") -- Easy access to the command-line window.

-- Center screen on the current line after moving.
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- Indent entire file mapping.
map("n", "<leader>f", ":execute 'normal gg=G' | normal!``<CR>")

-- New Tab mapping.
map("n", "<leader>t", ":tabnew<CR>")

-- Close Tab mapping.
map("n", "<leader>c", ":tabclose<CR>")

-- Close tab using leader + number of tab + c, and switch between tabs using leader + number of tab.
for i = 1, 9 do
    map("n", "<leader>" .. i .. "c", ":exe 'tabclose ' . " .. i .. "<CR>")
    map("n", "<leader>" .. i, ":" .. i .. "tabnext<CR>")
end

-- Split Navigation mappings.
map("n", "<leader><Up>", ":wincmd k<CR>") -- Move to the split above.
map("n", "<leader><Down>", ":wincmd j<CR>") -- Move to the split below.
map("n", "<leader><Left>", ":wincmd h<CR>") -- Move to the split on the left.
map("n", "<leader><Right>", ":wincmd l<CR>") -- Move to the split on the right.

-- Move selected text up and down in visual mode.
map("x", "J", ":move '>+1<CR>gv=gv")
map("x", "K", ":move '<-2<CR>gv=gv")

-- Resize Splits mappings.
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Netrw mapping.
map("n", "<leader>pv", ":Explore<CR>")

-- Terminal toggling mappings.
map("n", "<leader>tt", ":tabnew | term<CR>") -- Open a terminal on a new tab.
map("n", "<leader>tb", ":belowright split term://bash<CR>") -- Open a terminal below.
map("n", "<leader>tv", ":vertical belowright split term://bash<CR>") -- Open a terminal vertically on the right.
map("t", "<leader>tc", "<C-\\><C-n>:q<CR>") -- Close the terminal buffer.

