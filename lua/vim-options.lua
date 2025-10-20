vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set completeopt=menu,menuone,noselect,noinsert")

vim.opt.winborder = "rounded"
vim.opt.signcolumn  = "yes"

vim.g.mapleader = " "

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('i', '<C-space>', function()
  vim.lsp.completion.get()
end)  

vim.keymap.set('n', "<C-d>", "<C-d>zz")
vim.keymap.set('n', "<C-u>", "<C-u>zz")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
-- vim.opt.colorcolumn = "120"

vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
]])

-- Normal line numbers (all lines)
vim.cmd("hi LineNr guifg=#7aa2f7 gui=bold")

-- Current line number (where cursor is)
vim.cmd("hi CursorLineNr guifg=#ff9e64 gui=bold")

-- Relative numbers above and below
vim.cmd("hi LineNrAbove guifg=#9ece6a")
vim.cmd("hi LineNrBelow guifg=#9ece6a")

