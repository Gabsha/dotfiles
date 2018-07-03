
" Map leader key
let mapleader=","

" Plugin setup
call plug#begin()

" Plugin everyone can agree on
Plug 'tpope/vim-sensible'
set expandtab
set tabstop=2
set shiftwidth=2


" File manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
Plug 'jlanzarotta/bufexplorer'
Plug 'qpkorr/vim-bufkill'
map <C-c> :BD<cr>
map <F5> :ToggleBufExplorer<cr>

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
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'ervandew/supertab'
let g:deoplete#enable_at_startup = 1

" Jedi Python
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'

" Javascript setup
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'

" Powerline
Plug 'powerline/powerline'

" Config ALE
Plug 'w0rp/ale'
let g:ale_fixers = {'javascript' : ['prettier', 'eslint']}
let g:ale_fix_on_save = 1

" Javascript config
set path+=$PWD/node_modules

call plug#end()

""" Python dev setup """
" let g:python3_host_prog = '/home/gabriel/Code/neovimVenv/bin/python'
let g:python3_host_prog = '/home/gabriel/Code/pyvenv/bin/python'

""" CtrlP setup
" Open file menu
" nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
" nnoremap <Leader>b :CtrlPBuffer<CR>
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
