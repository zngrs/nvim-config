call plug#begin()
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
Plug 'j-hui/fidget.nvim'

"File tree + icons
Plug 'nvim-tree/nvim-web-devicons'
Plug 'vimwiki/vimwiki'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
Plug 'folke/neodev.nvim'

Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
Plug 'navarasu/onedark.nvim'
Plug 'evprkr/galaxian-vim'
Plug 'sainnhe/edge'
Plug 'arzg/vim-colors-xcode'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'


Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'kelly-lin/ranger.nvim'


Plug 'lervag/vimtex'

Plug 'lukas-reineke/indent-blankline.nvim'


Plug 'vimwiki/vimwiki'

Plug 'rebelot/kanagawa.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'petertriho/nvim-scrollbar'

Plug 'yuttie/comfortable-motion.vim'

Plug 'kenn7/vim-arsync'

" vim-arsync depedencies
Plug 'prabirshrestha/async.vim'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'


call plug#end()


let g:edge_style = 'neon'
let g:edge_enable_italic = 1

let g:Hexokinase_highlighters = ['backgroundfull']


set relativenumber
set termguicolors
set nocompatible
filetype plugin on
syntax on
set number
set nocompatible
filetype plugin on
set fillchars=eob:\-
