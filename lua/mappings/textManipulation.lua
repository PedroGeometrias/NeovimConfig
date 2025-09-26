-- ################################# --
-- Keys for manipulating text --
-- Author : PedroGeomerias --
-- ################################# --

local key_mapping = require("keymaps")

-- ---------------------
-- 1. Movement and Rearranging Text
-- ---------------------
key_mapping.map("x", "J", ":move '>+1<CR>gv=gv")
key_mapping.map("x", "K", ":move '<-2<CR>gv=gv")

-- ---------------------
-- 2. Searching and Replacing Text
-- ---------------------
function subst(flags)
    return function()
        local word = vim.fn.expand("<cword>")
        vim.cmd("let @/ = '\\<" .. word .. "\\>'")
        if vim.fn.mode():find("[Vv]") ~= nil then
            vim.cmd("'<,'>s/\\<" .. word .. "\\>//" .. flags)
        else
            vim.cmd(":%s/\\<" .. word .. "\\>//" .. flags)
        end
        vim.api.nvim_feedkeys("i", "n", false)
    end
end

-- global, confirm each       = <leader>fr
key_mapping.map("n", "<leader>fr",
    ":%s/\\<<C-r><C-w>\\>//gc<Left><Left><Left>",
    { noremap = true, silent = false })

-- global, *no* confirm       = <leader>fr!
key_mapping.map("n", "<leader>fr!",
    ":%s/\\<<C-r><C-w>\\>//g<Left><Left>",
    { noremap = true, silent = false })

-- visual-range, confirm      = <leader>sr
key_mapping.map("x", "<leader>sr",
    [[<Esc>:'<,'>s/\<<C-r><C-w>\>//gc<Left><Left><Left>]],
    { noremap = true, silent = false })

-- visual-range, no confirm   = <leader>sr!
key_mapping.map("x", "<leader>sr!",
    [[<Esc>:'<,'>s/\<<C-r><C-w>\>//g<Left><Left>]],
    { noremap = true, silent = false })

-- repeat last :s (unchanged)
key_mapping.map("n", "<leader>rr", ":%&<CR>")
key_mapping.map("x", "<leader>rr", ":&&<CR>")

-- ---------------------
-- 3. Text Selection and Manipulation
-- ---------------------

key_mapping.map("v", "<leader>y", '"+y') -- Copy selection to system clipboard
key_mapping.map("v", "<leader>P", '"+P') -- Paste before selection from system clipboard

-- ---------------------
-- 4. formating
-- ---------------------

key_mapping.map("n", "<leader>w",
    [[:silent keepjumps keeppatterns %s/\s\+$//e<Bar>silent keepjumps normal! gg=G<CR>]],
    { noremap = true, silent = true })

