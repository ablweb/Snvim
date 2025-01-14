local opt = vim.opt

opt.clipboard = "unnamedplus"

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.numberwidth = 1
opt.relativenumber = true
opt.ruler = true

-- hl
opt.hlsearch = false
opt.incsearch = true

-- undo
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- appearance
opt.scrolloff = 6
opt.wrap = false
opt.cursorline = false
opt.colorcolumn = '80'
opt.signcolumn = "no"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250
