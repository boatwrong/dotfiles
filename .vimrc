" don't adhere to `vi` rules.
set nocompatible 
" allow copy/paste from outside vim.
set clipboard=unnamed 
" spacebar is the leader.
let mapleader = " " 
" do not wrap text on long lines.
set nowrap 
" show line numbers.
set number 
" show lines above/below cursor as relative line numbers.
set relativenumber 
" show the command being typed or num lines/columns selected.
set showcmd 
" show color bar.
set signcolumn=yes 
" place color bar at 80'th column.
set colorcolumn=80 
" fuzzy file search.
set path+=** 
" make autocomplete faster!
set complete-=i 
" dark mode.
set background=dark 
" always have a status line.
set laststatus=2 
" stop making .swap files.
set noswapfile 
" no netrw banner
let g:netrw_banner=0 
" make netrw sane to use.
let g:netrw_liststyle=3 
" Show the active line in insert mode.
autocmd InsertEnter * set cursorline 
" hide the active line in insert mode.
autocmd InsertLeave * set nocursorline 
set culopt=number
" run ctags recursively in current dir.
command! MakeTags !ctags -R .
" easy escape
inoremap jk <ESC>
" easy go to beginning of line.
nnoremap H 0
" easy go to beginning of line.
nnoremap L $
" " easy (visual) go to beginning of line.
" vnoremap L $
" insert empty line below cursor in normal mode.
nnoremap <leader>o o<ESC>
" insert empty line above cursor in normal mode.
nnoremap <leader>O O<ESC>
" open vimrc in split
nnoremap <leader>ev :split $MYVIMRC<CR>
" source vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
" switch to next buffer in buffer list
nnoremap <leader>bn :bnext<CR>
" switch to previous buffer in buffer list
nnoremap <leader>bp :bprevious<CR>
" switch to last buffer
nnoremap <leader>bl :blast<CR>
" delete current buffer
nnoremap <leader>bd :bdelete<CR>

" TODO: document these.
filetype plugin indent on
syntax on
set autoindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start

" C indent styles.
set cindent
set cino=:0,l1,t0,g0,(0

" Arrow keys are annoying to bump accidentally, disable them.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Insert mode wasn't disabling. Specifically disable them.
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
