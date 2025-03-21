-- Настройка менеджера плагинов (например, vim-plug)
vim.cmd [[
  call plug#begin('~/.vim/plugged')

  " LSP и Pyright
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'jose-elias-alvarez/null-ls.nvim'

  " Другие плагины
  Plug 'antonk52/bad-practices.nvim'
  Plug 'https://github.com/MICOR-MARY/NerdTree.git'
  Plug 'motemen/git-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'christoomey/vim-system-copy'
  Plug 'lewis6991/gitsigns.nvim'
 

  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

  " Темы
  Plug 'projekt0n/github-nvim-theme'
  Plug 'ful1e5/onedark.nvim'
  Plug 'ellisonleao/gruvbox.nvim'
  Plug 'shaunsingh/nord.nvim'
  Plug 'Mofiqul/vscode.nvim'
  Plug 'tjdevries/colorbuddy.nvim', { 'branch': 'dev' }
  Plug 'https://github.com/jordanokn/nvim-andromeda.git'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'Mofiqul/dracula.nvim'

  call plug#end()
]]

