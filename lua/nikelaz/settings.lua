-- Map the leader key
vim.g.mapleader = " "

-- Synchronizes the clipboard
-- You will need to install wl-clipboard on Wayland
-- and xclip and/or xsel on XOrg
vim.opt.clipboard = "unnamedplus"

-- Line Numbers
vim.opt.nu = true

-- Relative Line Numbers
vim.opt.relativenumber = true

-- Tab Width
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Smart Indentation
vim.opt.smartindent = true

-- Search Settings / Incremental Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- There will never be less than <scrolloff value> characters
-- towards the bottom edge as you scroll down
vim.opt.scrolloff = 10

-- Misc
vim.opt.updatetime = 50

