local key_mappings = require("keymaps")

--text mannipulation

-- COPY and PASTE new_Mapping.mappings.
key_mappings.map("x", "<leader>y", '"+y') -- Copy selected text to system clipboard in visual mode.
key_mappings.map("n", "<leader>p", '"+p') -- Paste from system clipboard.

-- Visual Mode key_mappings.mappings.
key_mappings.map("x", "<", "<gv") -- Move selected text left.
key_mappings.map("x", ">", ">gv") -- Move selected text right.

-- Quickfix key_mappings.mappings.
key_mappings.map("n", "<leader>qo", ":copen<CR>") -- Open quickfix window.
key_mappings.map("n", "<leader>qc", ":cclose<CR>") -- Close quickfix window.
key_mappings.map("n", "<leader>qn", ":cnext<CR>") -- Jump to the next quickfix item.
key_mappings.map("n", "<leader>qp", ":cprev<CR>") -- Jump to the previous quickfix item.

-- Searching key_mappings.mappings.
key_mappings.map("n", "#", "#N") -- Search backward for the word under the cursor.
key_mappings.map("n", "<leader>sh", ":set hlsearch! hlsearch?<CR>") -- Toggle search highlighting.

-- Find and replace text in the whole file.
key_mappings.map("n", "<leader>fr", ":%s/")

-- Find and replace selected text in visual mode.
key_mappings.map("x", "<leader>fr", [[:s/]], {noremap = true, silent = false})

-- Indent entire file key_mappings.mapping.
key_mappings.map("n", "<leader>f", ":execute 'normal gg=G' | normal!``<CR>")

-- Move selected text up and down in visual mode.
key_mappings.map("x", "J", ":move '>+1<CR>gv=gv")
key_mappings.map("x", "K", ":move '<-2<CR>gv=gv")
