-- vim default config options

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 8
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
vim.opt.isfname:append("@-@")

vim.g.mapleader = " "


-- the undodir functionality allows for file undos to perist after closing
local undodir = vim.fn.stdpath("state") .. "/undodir"
vim.opt.undodir = undodir
vim.opt.undofile = true

-- create save directory if it does not exist
vim.fn.mkdir(undodir, "p")
