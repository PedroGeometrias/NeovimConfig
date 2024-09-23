-- ################################# --
-- Keys for manipulating text --
-- Author : PedroGeomerias -- 
-- ################################# --

local key_mapping = require("keymaps")

-- ---------------------
-- 1. Movement and Rearranging Text
-- ---------------------
key_mapping.map("v", "<leader>J", ":m '>+1<CR>gv=gv") -- Move selected block down
key_mapping.map("v", "<leader>K", ":m '<-2<CR>gv=gv") -- Move selected block up

-- ---------------------
-- 2. Searching and Replacing Text
-- ---------------------
key_mapping.map("n", "<leader>fr", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>") -- Find and replace the word under the cursor
key_mapping.map("v", "<leader>sr", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>") -- Search and replace within selection

-- Repeat last search and replace
key_mapping.map("n", "<leader>rr", ":%&<CR>")
key_mapping.map("v", "<leader>rr", ":&&<CR>")

-- ---------------------
-- 3. Text Selection and Manipulation
-- ---------------------
key_mapping.map("v", "<leader>y", '"+y') -- Copy selection to system clipboard
key_mapping.map("v", "<leader>P", '"+P') -- Paste before selection from system clipboard
