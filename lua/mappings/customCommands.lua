--function to read the file
function cobol_mainframe_template()
    -- Path to the file containing the template
    local template_file = "/home/pedro/.config/nvim/lua/cobolTemplate.cob"

    -- Execute the :read command to insert the file content into the buffer
    vim.cmd("read " .. template_file)
end

-- Create the command to generate COBOL mainframe template
vim.cmd("command! -nargs=0 Cobmain lua cobol_mainframe_template()")

