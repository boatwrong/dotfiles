" general {{{
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
nnoremap <leader>d dd
nnoremap <leader>c ddO
" }}}

" vimscript the hard way! {{{
" move to next buffer
nnoremap <leader>bn :bnext<CR>
" in insert mode, delete line and go back to insert mode
inoremap <c-d> <esc>ddi
" from insert mode uppercase the word you are typing in
inoremap <c-u> <esc>viwU<esc>ea
" same but for normal mode where your cursor is
nnoremap <c-u> viwU
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
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Raimondi/delimitMate'
call plug#end()
" }}}

" coc {{{
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
" Formatting selected code.
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
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

