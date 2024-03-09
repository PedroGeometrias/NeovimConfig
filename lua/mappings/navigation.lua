local key_mappings = require("keymaps")

--navigation mappings

-- Navigation key_mappings.mappings.
key_mappings.map("n", "H", "^") -- Move to the beginning of the line in NORMAL MODE.
key_mappings.map("v", "H", "^") -- Move to the beginning of the line in VISUAL MODE.
key_mappings.map("n", "L", "$") -- Move to the end of the line in NORMAL MODE.
key_mappings.map("v", "L", "$") -- Move to the end of the line in VISUAL MODE.

-- Scroll key_mappings.mappings.
key_mappings.map("n", "<C-U>", "<C-U>") -- Scroll up faster.
key_mappings.map("n", "<C-D>", "<C-D>") -- Scroll down faster.

-- Alternate File key_mappings.mapping.
key_mappings.map("n", "<leader>a", ":A<CR>") -- Quick access to alternate file.

-- Last Buffer key_mappings.mapping.
key_mappings.map("n", "<leader>b", "<C-^>") -- Quick access to last buffer.

-- Center screen on the current line after moving.
key_mappings.map("n", "n", "nzz")
key_mappings.map("n", "N", "Nzz")


