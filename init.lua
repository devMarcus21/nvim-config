vim.cmd [[packadd packer.nvim]]

vim.cmd [[colorscheme nord]]
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.guicursor = ""

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "rust", "go", "javascript" },
  sync_install = false,
  auto_install = false,
  ignore_install = { },

  highlight = {
    enable = true,
    disable = { },
    --Special disable for large file sizes
    --disable = function(lang, buf)
        --local max_filesize = 100 * 1024 -- 100 KB
        --local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        --if ok and stats and stats.size > max_filesize then
            --return true
        --end
    --end,
    additional_vim_regex_highlighting = false,
  },
}

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

   use({
    "shaunsingh/nord.nvim", -- Colorscheme
    commit = "78f5f001709b5b321a35dcdc44549ef93185e024",
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
    end,
  })
  --use 'shaunsingh/nord.nvim'
end)
