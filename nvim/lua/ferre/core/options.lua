local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- line wrapping
opt.wrap = false -- ':set wrap' to undo this for buffer

-- search settings
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true -- where there is capitalization, use it as part of search

-- cursor line
opt.cursorline = true

-- appearance 
opt.number = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.colorcolumn = '100'
opt.signcolumn = "yes"

-- behaviour
opt.hidden = true
opt.errorbells = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.mouse:append("a")

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
