
" Map leader key
" let mapleader="\<SPACE>"

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

" CtrlP
Plug 'kien/ctrlp.vim'

" Distraction free
Plug 'junegunn/goyo.vim'

" Colorthemes
Plug 'iCyMind/NeoSolarized'
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'rakr/vim-one'

" Language pack
Plug 'sheerun/vim-polyglot'

" Autcomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'

call plug#end()

""" Python dev setup """
let g:python3_host_prog = '/home/gabriel/Code/neovimVenv/bin/python'

""" CtrlP setup
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" colorscheme
colorscheme one
set background=dark

" Set 24-bit colors
set termguicolors

" Show line numbers
set number

" Tabs to spaces
set expandtab

" Auto indent new lines
set smartindent
