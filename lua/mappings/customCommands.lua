-- ################################# --
-- Custom Commands  --
-- Author : PedroGeomerias -- 
-- ################################# --

local key_mappings = require("keymaps")

-- ================================= -- 
-- TEMPLATES
-- ================================= --

-- --------------------------------- --
-- C Template
-- --------------------------------- --
function c_template()
    -- Path to the file containing the template, it's going to be different for you
    local template_file = "/home/pedro/.config/nvim/lua/cTemplate.c"

    -- Execute the :read command to insert the file content into the buffer
    vim.cmd("read" .. template_file)
end

-- --------------------------------- --
-- Cobol Template
-- --------------------------------- --
--function to read the file
function cobol_mainframe_template()
    -- Path to the file containing the template, it's going to be different for you
    local template_file = "/home/pedro/.config/nvim/lua/cobolTemplate.cob"

    -- Execute the :read command to insert the file content into the buffer
    vim.cmd("read " .. template_file)
end

-- ################################# --
-- Mardown Prev
-- ################################# --

-- for this command you gotta install " npm install -g markdown-it markdown-it-html "
-- it basically let's you preview markdown code 
function markdown_preview()
    -- Save the current buffer to a temporary Markdown file
    local temp_file = vim.fn.tempname() .. ".md"
    vim.cmd('silent w! ' .. temp_file)

    -- Render the Markdown file to HTML
    local html_file = temp_file:gsub("%.md$", ".html")
    os.execute('markdown-it ' .. temp_file .. ' > ' .. html_file)

    -- Open the HTML file in a browser
    os.execute('xdg-open ' .. html_file)
end

-- ################################# --
-- Commands created 
-- ################################# --

-- --------------------------------- --
-- READ COBOL TEMPLATE INTO FILE (:Cobmain) 
-- --------------------------------- --
vim.cmd("command! -nargs=0 Cobmain lua cobol_mainframe_template()")

-- --------------------------------- --
-- READ C TEMPLATE INTO FILE (:Cmain) 
-- --------------------------------- --
vim.cmd("command! -nargs=0 Cmain lua c_template()")

-- --------------------------------- --
-- MARKDOWN PREV COMMAND (:Markdown) 
-- --------------------------------- --
vim.cmd("command! Markdown lua markdown_preview()")

-- --------------------------------- --
-- OPEN FIREFOX FROM NEOVIM!!
-- --------------------------------- --
key_mappings.map("n", "<leader>sf", ":! wmctrl -a Firefox<CR><CR>")


