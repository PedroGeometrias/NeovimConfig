-- here I'm declaring some commands

--function to read the file
function cobol_mainframe_template()
    -- Path to the file containing the template
    local template_file = "/home/pedro/.config/nvim/lua/cobolTemplate.cob"

    -- Execute the :read command to insert the file content into the buffer
    vim.cmd("read " .. template_file)
end

-- Create the command to generate COBOL mainframe template
vim.cmd("command! -nargs=0 Cobmain lua cobol_mainframe_template()")

-- for this command you goota install " npm install -g markdown-it markdown-it-html "
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

-- Command to open a preview on the browser
vim.cmd("command! Markdown lua markdown_preview()")

