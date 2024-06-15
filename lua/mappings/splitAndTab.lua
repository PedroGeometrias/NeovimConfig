local key_mapping = require("keymaps")

-- Split commands
key_mapping.map("n", "gsv", ":vsp %<CR>") -- open vertical split
key_mapping.map("n", "gsh", ":sp %<CR>") -- open horizontal split
key_mapping.map("n", "gn", ":tabnew<CR>") -- open new Tab
key_mapping.map("n", "cg", ":tabclose!<CR>") -- close current tab
key_mapping.map("n", "gq", ":%bd|e#<CR>") -- close all buffers except current

-- Split Navigation mappings
key_mapping.map("n", "<leader><Up>", ":wincmd k<CR>") -- Move to the split above
key_mapping.map("n", "<leader><Down>", ":wincmd j<CR>") -- Move to the split below
key_mapping.map("n", "<leader><Left>", ":wincmd h<CR>") -- Move to the split on the left
key_mapping.map("n", "<leader><Right>", ":wincmd l<CR>") -- Move to the split on the right

-- Tab Navigation mappings
key_mapping.map("n", "gh", "gT") -- go to the tab on the left
key_mapping.map("n", "gl", "gt") -- go to the tab on the right

-- Close tab using leader + number of tab + c
for i = 1, 9, 1 do
    key_mapping.map("n", "gc"..i, ":tabclose "..i.."<CR>")
end

-- Switch between tabs using leader + number of tab
for i = 1, 9, 1 do
    key_mapping.map("n", "g"..i, ":"..i.."tabnext<CR>")
end

-- Resize Splits mappings
key_mapping.map("n", "<C-Up>", ":resize +2<CR>")
key_mapping.map("n", "<C-Down>", ":resize -2<CR>")
key_mapping.map("n", "<C-Left>", ":vertical resize +2<CR>")
key_mapping.map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Terminal toggling mappings
key_mapping.map("n", "gtt", ":tabnew | term<CR>") -- Open a terminal in a new tab
key_mapping.map("n", "gtb", ":belowright split term://bash<CR>") -- Open a terminal below
key_mapping.map("n", "gtv", ":vertical belowright split term://bash<CR>") -- Open a terminal vertically on the right
key_mapping.map("t", "gte", "<C-\\><C-n><C-w>h",{silent = true})

-- dditional Split Management
key_mapping.map("n", "<leader>ws", ":wincmd s<CR>") -- Split window horizontally
key_mapping.map("n", "<leader>wv", ":wincmd v<CR>") -- Split window vertically
key_mapping.map("n", "<leader>wo", ":only<CR>") -- Close other windows
key_mapping.map("n", "<leader>wm", ":wincmd o<CR>") -- Maximize current window
