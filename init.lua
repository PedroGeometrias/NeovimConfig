pcall(function() vim.loader.enable(false) end)
-- init.lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git","clone","--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git","--branch=stable",lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("pedroConfiguracoes").setup()
require("keymaps")
require("requireMappings")

-- import every spec under lua/plugins/**
require("lazy").setup({
  spec = { { import = "plugins" } },
})
