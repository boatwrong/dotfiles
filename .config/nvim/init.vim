filetype on
filetype indent on
filetype plugin on

syntax enable
set number
set relativenumber

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap

set backspace=indent,eol,start

set path+=**
set wildmenu

nnoremap <Up> :echo "NO" <CR>
nnoremap <Left> :echo "NO" <CR>
nnoremap <Right> :echo "NO" <CR>
nnoremap <Down> :echo "NO" <CR>

noremap <Up> :echo "NO" <CR>
noremap <Left> :echo "NO" <CR>
noremap <Right> :echo "NO" <CR>
noremap <Down> :echo "NO" <CR>

set background=dark
set laststatus=2

call plug#begin('~/.vim/plugged')

" Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier'
Plug 'alvan/vim-closetag'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

colorscheme gruvbox 

let g:closetag_filenames = "*.html,*.js"
let g:pretter#quickfix_enabled = 0
