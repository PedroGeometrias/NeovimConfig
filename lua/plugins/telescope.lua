--telescope config
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")

--Open telescope to find files
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
--Open telescope grep     
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  },
}
