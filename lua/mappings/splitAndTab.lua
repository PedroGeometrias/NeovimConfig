local key_mapping = require("keymaps")

--split and tab manipulation:

key_mapping.map("n", "<leader>vs", ":vsp %<CR>")--open vertical split
key_mapping.map("n", "<leader>hs", ":sp %<CR>")--open horizontal split
key_mapping.map("n", "<leader>t", ":tabnew<CR>")--open new Tab
key_mapping.map("n", "<leader>c", ":tabclose<CR>")--close current tab

-- Split Navigation mappings.
key_mapping.map("n", "<leader><Up>", ":wincmd k<CR>") -- Move to the split above.
key_mapping.map("n", "<leader><Down>", ":wincmd j<CR>") -- Move to the split below.
key_mapping.map("n", "<leader><Left>", ":wincmd h<CR>") -- Move to the split on the left.
key_mapping.map("n", "<leader><Right>", ":wincmd l<CR>") -- Move to the split on the right.

-- Close tab using leader + number of tab + c, and switch between tabs using leader + number of tab.
for i = 1, 9 do
    key_mapping.map("n", "<leader>" .. i .. "c", ":exe 'tabclose ' . " .. i .. "<CR>")
    key_mapping.map("n", "<leader>" .. i, ":" .. i .. "tabnext<CR>")
end

-- Resize Splits mappings.
key_mapping.map("n", "<C-Up>", ":resize +2<CR>")
key_mapping.map("n", "<C-Down>", ":resize -2<CR>")
key_mapping.map("n", "<C-Left>", ":vertical resize +2<CR>")
key_mapping.map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Terminal toggling mappings.
key_mapping.map("n", "<leader>tt", ":tabnew | term<CR>") -- Open a terminal on a new tab.
key_mapping.map("n", "<leader>tb", ":belowright split term://bash<CR>") -- Open a terminal below.
key_mapping.map("n", "<leader>tv", ":vertical belowright split term://bash<CR>") -- Open a terminal vertically on the right.
key_mapping.map("t", "<leader>tc", "<C-\\><C-n>:q<CR>") -- Close the terminal buffer.
key_mapping.map("t", "<leader>tm", "<C-\\><C-n>")--swap to main buffer when inside terminal



