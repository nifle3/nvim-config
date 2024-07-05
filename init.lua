-- number settings
vim.opt.number = true
vim.opt.relativenumber = true
-- tab settings
vim.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.smartindent = true
vim.opt.wrap = false
-- settings for search
vim.opt.ignorecase = true
-- color settings
vim.opt.termguicolors = true

require('plugins')
require('colorscheme')
