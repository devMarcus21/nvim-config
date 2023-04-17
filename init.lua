-- windows path = ~\AppData\Local\nvim\init.lua
-- linux path = ~\.config\nvim\init.lua

vim.cmd [[packadd packer.nvim]]

vim.cmd [[colorscheme nord]]
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.guicursor = ""

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

   use({
    "shaunsingh/nord.nvim", -- Colorscheme
    commit = "78f5f001709b5b321a35dcdc44549ef93185e024",
  })
  --use 'shaunsingh/nord.nvim'
end)
