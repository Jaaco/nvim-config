--0=========================================================================0
-- █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
-- ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█
--0=========================================================================0
--
vim.g.mapleader = ' ' -- setting the leader key
-- terminal tab filename title
vim.opt.title = true
vim.opt.titlestring = '%t'

vim.opt.autoindent = true
vim.opt.swapfile = false
vim.o.number = true

-- jacob added
vim.opt.relativenumber = true

-- indent lines
vim.o.list = true
vim.opt.listchars = { tab = "   ", leadmultispace = '│   ' }

vim.o.cursorline = true
vim.o.expandtab = true
-- vim.o.lazyredraw = true
vim.o.mouse = 'a'
vim.o.ruler = true
vim.o.showcmd = true
vim.o.syntax = 'enable'
vim.o.timeoutlen = 300
vim.o.wildmenu = true
vim.o.wrap = false
vim.o.completeopt = 'menuone,preview,noselect'

-- Faster update time
vim.o.updatetime = 50

-- format
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.smarttab = true
vim.o.tabstop = 2

vim.opt.termguicolors = true
vim.o.clipboard = 'unnamedplus'
vim.o.encoding = 'utf-8'
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.showmatch = true
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.scrolloff = 5
vim.o.signcolumn = 'yes'


-- Highlight yanked text for 150ms
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end
})
