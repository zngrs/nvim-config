call plug#begin()
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'

"File tree + icons
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'vimwiki/vimwiki'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
Plug 'navarasu/onedark.nvim'

Plug 'mhinz/vim-startify'

Plug 'lervag/vimtex'

Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

let g:airline_theme='minimalist'

set relativenumber
set number
set nocompatible
filetype plugin on
