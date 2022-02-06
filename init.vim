" general {{{
filetype on
filetype indent on
filetype plugin on
syntax enable
set number
set relativenumber
set showcmd
set signcolumn=yes
set colorcolumn=80
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set backspace=indent,eol,start
set path+=**
set wildmenu
set background=dark
set laststatus=2
"}}}

" remaps {{{
nnoremap <Up> :echo "NO" <CR>
nnoremap <Left> :echo "NO" <CR>
nnoremap <Right> :echo "NO" <CR>
nnoremap <Down> :echo "NO" <CR>

noremap <Up> :echo "NO" <CR>
noremap <Left> :echo "NO" <CR>
noremap <Right> :echo "NO" <CR>
noremap <Down> :echo "NO" <CR>

nnoremap <leader>yfo :YcmCompleter Format
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

nnoremap ,js :!node %<CR>
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>
nnoremap ,c :-1read $HOME/.vim/.skeleton.c<CR>
nnoremap <leader>cc <c-w>z
nnoremap <leader>ycf :YcmCompleter FixIt
nnoremap cw ciw
nnoremap dw diw
" }}}

" plug {{{
call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'Raimondi/delimitMate'

call plug#end()
" }}}

" extras {{{
colorscheme gruvbox 

au FileType html let b:delimitMate_autoclose = 0

let g:closetag_filenames = "*.c,*.java,*.html,*.js"
let g:pretter#quickfix_enabled = 0

let mapleader = "\<Space>"

let g:ycm_global_ycm_extra_conf = '~/dotfiles/.ycm_extra_conf.py'

" }}}

set foldmethod=marker
set foldtext=v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g')

