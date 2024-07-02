vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & identation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-senstive

opt.cursorline = false

-- turn on termguicolors for tokyonight colorscheme to work
-- have to use iterm2 or any other true color terminal
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- change cursor style
vim.o.guicursor = "n-v-c-sm-i-ci-ve:ver25-iCursor"
-- vim.o.guicursor = "n-c-v-sm:block-nCursor"

-- Latex Config
-- Enable filetype plugins and indentation
vim.cmd([[filetype plugin indent on]])

-- Enable syntax highlighting
vim.cmd([[syntax enable]])

-- Set the compiler method
-- vim.g.vimtex_compiler_method = "latexrun"

-- Set the localleader key
vim.g.maplocalleader = ","
-- vim.g.vimtex_view_method = "zathura"
