--My cobol config
return{
    {'Jorengarenar/COBOl.vim',
        config = function()
            vim.g.cobol_legacy_code = 1 -- for legacy code
            vim.g.cobol_colorcolumns = 1 -- show the COBOL column  
            vim.g.cobol_folding = 0 -- syntax based code folding
            vim.g.cobol_autoupper = 1 -- automatic make letters uppercase
            vim.g.cobol_indent_data_items = 1 --[[ indentation of items in DATA DIVISION 
            0 - all in area A, 1 - to area B, 2 - each level more indented)]]--
            vim.g.cobol_indent_id_paras = 1 -- indent paragraphs in IDENTIFICATION DIVISION to area B
            vim.g.cobol_comp_mp_cobc = 1 -- if set to 1, compiler will set cobc\ -O\ -x as makeprg
            vim.g.cobol_format_free = 0 -- set to 1 to have file in to have FORMAT FREE without compiler directives
            vim.g.cobol_comp_mp = "" -- if not empty and cobol_comp_mp_cobc not set to 1, the value will be used to set makeprg
            vim.g.cobol_syntax_compl = 1 -- set to 0 to disable setting omnifunc to syntaxcomplete#CompleteDone
            vim.g.cobol_inline_comment = 1 -- set to 0 to disable highlighting inline comments (*> ...)
        end
    }

}
