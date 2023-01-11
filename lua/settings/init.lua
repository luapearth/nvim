local set = vim.opt

vim.notify = require 'notify'
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 7
set.fileencoding = 'utf-8'
set.termguicolors = true

set.number = true
set.relativenumber = true
set.cursorline = true
set.colorcolumn = "100"

set.hidden = true

vim.cmd "autocmd Filetype javascript,typescript,typescriptreact setlocal ts=2 sw=2 sts=0 expandtab"
vim.cmd "autocmd Filetype css,scss setlocal ts=2 sw=2 sts=0 expandtab"
-- vim.cmd "autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab"
-- vim.cmd "autocmd Filetype typescriptreact setlocal ts=2 sw=2 sts=0 expandtab"
