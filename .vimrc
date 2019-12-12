"------------------------------------------------------
"__     _____ __  __     ____ ___  _   _ _____ ___ ____ 
"\ \   / /_ _|  \/  |   / ___/ _ \| \ | |  ___|_ _/ ___|
" \ \ / / | || |\/| |  | |  | | | |  \| | |_   | | |  _ 
"  \ V /  | || |  | |  | |__| |_| | |\  |  _|  | | |_| |
"   \_/  |___|_|  |_|   \____\___/|_| \_|_|   |___\____|                                                      
"-------------------------------------------------------
"Startup Config {{{
set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" PluginList {{{

Plugin 'VundleVim/Vundle.vim'

"File Navigation (NERDTREE)
Plugin 'scrooloose/nerdtree'

"Fuzzy Finding
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'

"Undo
Plugin 'sjl/gundo.vim'

"Comment Handling (NERDCOMMENTER)
Plugin 'scrooloose/nerdcommenter'

"AutoComplete
Plugin 'ajh17/VimCompletesMe'

"Python Syntax support"
Plugin 'vim-syntastic/syntastic' "Basic Error Checking
Plugin 'nvie/vim-flake8' "Linter Broken ATM <F7>
Plugin 'tpope/vim-surround' "Surround <CS> or <S>
Plugin 'itchyny/lightline.vim'

"Vim Wiki
Plugin 'vimwiki/vimwiki'

"Latex
Plugin 'lervag/vimtex'

"}}}

call vundle#end()            " required
"}}}
"Appearance {{{
filetype plugin indent on 
let python_highlight_all=1
syntax on

set foldmethod=marker
set foldlevel=0
set modelines=1

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set nowrap

"Line Numbering
set number
set relativenumber
set lazyredraw
set showmatch

"Better Search
set incsearch

"Poweline Stuff
set laststatus=2
set noshowmode
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['fileformat', 'fileencoding']]
  \     }
  \ }
"}}}
"Searching{{{
set wildmenu
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"}}}
"Keybindings {{{

"toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"BufferEditing
nnoremap gb :ls<cr>:b<space>

"Better Search Quality
nnoremap <leader>a :Ag

"NerdTree Open
map <tab> :NERDTreeToggle<CR>

"Set Relative Numbering
map <leader>r :set rnu!<CR>
nnoremap <leader><space> :nohlsearch<CR>

"Tab Management
map ] :tabNext<CR>
map [ :tabprevious<CR>
map \= :tabfind  
map \+ :tabedit  
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

"Window Management
map _  :split  
map \_ :vsplit  

"VIMRC Handling
nnoremap <leader>ev :vsplit $MYVIMRC <CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"ESC Betteer
inoremap jk <esc>
inoremap <ESC> <nop>

"Stop Using The Arrow Keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <up> :echoerr "Stop being stupid"<CR>
nnoremap <down> :echoerr "Stop being stupid"<CR>
nnoremap <left> :echoerr "Stop being stupid"<CR>
nnoremap <right> :echoerr "Stop being stupid"<CR>

" save session
nnoremap <leader>s :mksession<CR>

"Better Pasting in insert mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
"}}}
" Autocomands {{{
"Vim Wiki Autocompile
autocmd  BufWritePost *.wiki silent Vimwiki2HTML
"}}}
" vim:foldmethod=marker:foldlevel=0
