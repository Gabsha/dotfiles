
" Map leader key
let mapleader="\<SPACE>"



" Plugin setup
call plug#begin()

" Plugin everyone can agree on
Plug 'tpope/vim-sensible'

" File manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'



" Distraction free
Plug 'junegunn/goyo.vim'

" Colorthemes
Plug 'iCyMind/NeoSolarized'
Plug 'tomasr/molokai'

" Language pack
Plug 'sheerun/vim-polyglot'

" Autcomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

call plug#end()

""" CtrlP setup
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>


" Set 24-bit colors
set termguicolors

" colorscheme 
colorscheme molokai

" NeoSolarized
let g:neosolarized_contrast = "normal"

" Dark background
set background=dark

" Show line numbers
set number

" Tabs to spaces
set expandtab

" Auto indent new lines
set smartindent
