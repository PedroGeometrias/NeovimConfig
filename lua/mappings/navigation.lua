local key_mappings = require("keymaps")

--navigation mappings

-- Navigation key_mappings.mappings.
key_mappings.map("n", "H", "^") -- Move to the beginning of the line in NORMAL MODE.
key_mappings.map("v", "H", "^") -- Move to the beginning of the line in VISUAL MODE.
key_mappings.map("n", "L", "$") -- Move to the end of the line in NORMAL MODE.
key_mappings.map("v", "L", "$") -- Move to the end of the line in VISUAL MODE.

-- Last Buffer key_mappings.mapping.
key_mappings.map("n", "<leader>b", "<C-^>") -- Quick access to last buffer.

