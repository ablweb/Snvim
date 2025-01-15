# Snvim
My simple Neovim configuration

## Installation
All packages are installed automatically by lazy

## Features
- File tree
- undo tree
- move between windows easily
- focus mode
- latex support
- lsp and completion
- copilot available
- terminal integration

## Keybindings
- move between windows
  - Ctrl h : move focus left
  - Ctrl l : move focus right
  - Ctrl j : move focus down
  - Ctrl k : move focus up
  - Leader b : new buffer
- line numbers
  - Leader n : toggle line numbers
  - Leader rn : toggle relative numbers
- terminal
  - Leader tt : open system default terminal
  - Alt i : toggle floating terminal
  - Alt h : toggle horizontal terminal
  - Alt v : toggle vertical terminal
  - Alt r : reset focused terminal
  - Ctrl x : exit terminal mode
- file tree
  - Ctrl n : toggle file tree 
  - leader fc : focus on current file buffer in file tree
  - leader cd : cd in folder under cursor
- undo tree
  - leader u : toggle undo tree
- focus mode
  - leader zn : toggle zen-mode
- latex
  - leader r : compile and view latex file
- lsp
  - Ctrl y : confirm completion
  - Ctrl n : next completion
  - Ctrl p : previous completion
  - Ctrl l : abort completion
  - leader e : go to next error
  - leader a : show action suggestion
- copilot
  - leader cop : toggle copilot
  - alt y : accept suggestion
  - alt l : accept line
  - alt w : accept word
  - alt - : next suggestion
  - alt ) : previous suggestion
  - alt / : dismiss suggestion

## Requirements
IDK

## Plugins
- **File Explorer and Icons**
  - [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
  - [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- **Color Scheme**
  - [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- **Syntax Highlighting**
  - [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Git Integration**
  - [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- **Completion Framework**
  - [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
  - [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
  - [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
  - [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- **AI Assistance**
  - [github/copilot.vim](https://github.com/github/copilot.vim)
- **LSP and Tools**
  - [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
  - [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
  - [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- **Preview and Documentation**
  - [vinnymeller/swagger-preview.nvim](https://github.com/vinnymeller/swagger-preview.nvim)
  - [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- **Writing and Focus**
  - [lervag/vimtex](https://github.com/lervag/vimtex)
  - [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)
- **Undo History**
  - [mbbill/undotree](https://github.com/mbbill/undotree)
- **Terminal Integration**
  - [NvChad/nvterm](https://github.com/NvChad/nvterm)
