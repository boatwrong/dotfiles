" general {{{
syntax on
let mapleader = " "
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
set backspace=indent,eol,start
set path+=**
set wildmenu
set background=dark
set laststatus=2
"}}}

" NO ARROWS!!! {{{
nnoremap <Up> <nop>
nnoremap <Left>  <nop>
nnoremap <Right> <nop>
nnoremap <Down>  <nop>
inoremap <Up> <nop>
inoremap <Left>  <nop>
inoremap <Right> <nop>
inoremap <Down>  <nop>
vnoremap <Up> <nop>
vnoremap <Left>  <nop>
vnoremap <Right> <nop>
vnoremap <Down>  <nop>
"" }}}

" remaps {{{
nnoremap <silent> <leader>go :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
nnoremap <leader>js :!node %<CR>
nnoremap <leader>cc <c-w>z
nnoremap cw ciw
nnoremap dw diw
nnoremap <leader>d dd
nnoremap <leader>c ddO
nnoremap <leader>a <C-w><left>
nnoremap <leader>; <C-w><right>
"
" snipps {{{
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>
nnoremap ,c :-1read $HOME/.vim/.skeleton.c<CR>
autocmd Filetype c nnoremap <buffer> ,f :-1read $HOME/.vim/.skeleton.cfunction<CR>jo
autocmd Filetype js nnoremap <buffer> ,f :-1read $HOME/.vim/.skeleton.jsfunction<CR>jo
" }}}
" }}}

" vimscript the hard way! {{{
" move to next buffer
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bp :bprevious<CR>
" in insert mode, delete line and go back to insert mode
inoremap <c-d> <esc>ddi
" from insert mode uppercase the word you are typing in
inoremap <c-u> <esc>viwU<esc>ea
" same but for normal mode where your cursor is
nnoremap <leader>U viwU
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" easier write quit
nnoremap zz :wq<CR>
"put in empty lines in normal mode
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>
" Typa abbreviations!!
iabbrev waht what
iabbrev wath what
iabbrev teh the
iabbrev BB Bryant Boatright
" go to beginning or end o line in normal
nnoremap H I<esc>
nnoremap L A<esc>
"surroun word in " or '
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>U viwU<esc>
"""""
" stopped on  12. autocommands 
"""""
" }}}

" plug {{{
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'ycm-core/YouCompleteMe'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Raimondi/delimitMate'
call plug#end()
" }}}

" extras {{{
colorscheme gruvbox 
au FileType html let b:delimitMate_autoclose = 0
let g:closetag_filenames = "*.c,*.java,*.html,*.js"
let g:pretter#quickfix_enabled = 0
let g:ycm_global_ycm_extra_conf = '~/dotfiles/.ycm_extra_conf.py'
" }}}

" NO ARROWS!!! {{{
nnoremap <Up> <nop>
nnoremap <Left>  <nop>
nnoremap <Right> <nop>
nnoremap <Down>  <nop>
inoremap <Up> <nop>
inoremap <Left>  <nop>
inoremap <Right> <nop>
inoremap <Down>  <nop>
vnoremap <Up> <nop>
vnoremap <Left>  <nop>
vnoremap <Right> <nop>
vnoremap <Down>  <nop>
"" }}}

set foldmethod=marker
set foldtext=v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g')

