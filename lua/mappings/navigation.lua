-- ################################# --
-- Navigation Key Mappings --
-- Author : PedroGeomerias --
-- ################################# --

local key_mappings = require("keymaps")

-- ================================= -- 
-- Buffer Navigation
-- ================================= -- 

-- --------------------------------- --
-- Quick access to last buffer
-- --------------------------------- --
key_mappings.map("n", "<leader>b", "<C-^>")

-- --------------------------------- --
-- Cycle through buffers
-- --------------------------------- --
key_mappings.map("n", "<leader>bn", ":bnext<CR>") -- Next buffer
key_mappings.map("n", "<leader>bp", ":bprevious<CR>") -- Previous buffer

-- --------------------------------- --
-- List and select buffers
-- --------------------------------- --
key_mappings.map("n", "<leader>bl", ":echo \"Current Buffer ->\"  bufnr()|:ls<CR>:b<Space>") -- List buffers and prompt for selection

-- --------------------------------- --
-- Open file explorer
-- --------------------------------- -- 
key_mappings.map("n", "<leader>e", ":Ex<CR>") -- Open file explorer in current directory

-- ================================= -- 
-- Search Navigation
-- ================================= -- 

-- --------------------------------- --
-- Navigate search results
-- --------------------------------- --
key_mappings.map("n", "<leader>n", "nzzzv") -- Next search result, centered
key_mappings.map("n", "<leader>N", "Nzzzv") -- Previous search result, centered

-- ================================= -- 
-- Mark Navigation
-- ================================= -- 

-- ---------------------------------
-- Set and jump to marks
-- ---------------------------------
key_mappings.map("n", "ms", "m'") -- Set mark
key_mappings.map("n", "mj", "`'") -- Jump to mark
