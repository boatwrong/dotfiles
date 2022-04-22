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
set backspace=indent,eol,start
set path+=**
set wildmenu
set background=dark
set laststatus=2
set noswapfile
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
nnoremap <leader>js :!node %<CR>
nnoremap <leader>cc <c-w>z
nnoremap cw ciw
nnoremap dw diw
nnoremap <leader>d dd
nnoremap <leader>c ddO
nnoremap <leader>a <C-w><left>
nnoremap <leader>; <C-w><right>
inoremap jk <esc>
autocmd Filetype c nnoremap <buffer>  <leader>/ 0i//<esc>
autocmd Filetype python nnoremap <buffer>  <leader>/ <esc>0i#<esc>
autocmd Filetype c nnoremap <leader>py :call RunC()<CR>
autocmd Filetype python nnoremap <leader>py :exe "!tmux send-keys -t 1 'py %' Enter"<CR><CR>

"
" snipps {{{
" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>
nnoremap ,html :call SetupHTML()<CR>
nnoremap ,c :-1read $HOME/home/dotfiles/skeletons/c<CR>
autocmd Filetype c nnoremap <buffer> ,f :-1read $HOME/home/skeletons/cfunc<CR>jo
autocmd Filetype js nnoremap <buffer> ,f :-1read $HOME/home/skeletons/jsfunc<CR>jo
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
nnoremap ZZ :wq<CR>
nnoremap zz :w<CR>
nnoremap X <c-z>
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

" plug {{{za
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ycm-core/YouCompleteMe'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
call plug#end()

" ycm {{{
let g:ycm_semantic_triggers = {
	\   'python, javascript, c, java': [ 're!\w{2}' ]
	\ }
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" }}}

" }}}

" extras {{{
colorscheme gruvbox 
au FileType html let b:delimitMate_autoclose = 0
let g:closetag_filenames = "*.c,*.java,*.html,*.js"
let g:pretter#quickfix_enabled = 0

function! SetupHTML()
    :-1read $HOME/home/dotfiles/skeletons/html
    :w
    :e style.css
    :-1read $HOME/home/dotfiles/skeletons/css
    :w
    :bd
    :e index.js
    :-1read $HOME/home/dotfiles/skeletons/js
    :w
    :bn
    :bd index.js
endfunction
    
function! RunC()
    :!gcc %
	:call feedkeys("\<CR>")
	:exe "!tmux send-keys -t 1 './a.out' Enter"
	:call feedkeys("\<CR>")

endfunction

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


