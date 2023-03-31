-- windows path = ~\AppData\Local\nvim\init.lua
-- linux path = ~\.config\nvim\init.lua
vim.cmd.packadd('packer.nvim')

vim.cmd "colorscheme nord"
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.guicursor = ""

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
end)
