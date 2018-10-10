
" Map leader key
let mapleader=" "

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

" Folding
Plug 'tmhedberg/SimpylFold'

" CtrlP
Plug 'kien/ctrlp.vim'

" Distraction free
Plug 'junegunn/goyo.vim'

" Colorthemes
Plug 'iCyMind/NeoSolarized'
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'rakr/vim-one'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'

" Language pack
" Plug 'sheerun/vim-polyglot'

" Autcomplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'ervandew/supertab'
" let g:deoplete#enable_at_startup = 1

" YCM
Plug 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Jedi Python
" Plug 'davidhalter/jedi-vim'
" Plug 'zchee/deoplete-jedi'

" Javascript setup
" Plug 'posva/vim-vue'
" Plug 'pangloss/vim-javascript'

Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'


" Powerline
" Plug 'powerline/powerline'
" Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plug 'vim-airline/vim-airline'

set clipboard=unnamed

" Config ALE
"Plug 'w0rp/ale'
"let g:ale_fixers = {'javascript' : ['prettier', 'eslint']}
"let g:ale_fix_on_save = 1

" Javascript config
" set path+=$PWD/node_modules

call plug#end()

""" Python dev setup """
" let g:python3_host_prog = '/home/gabriel/Code/neovimVenv/bin/python'
let g:python3_host_prog = '/home/gabriel/Code/pyvenv/bin/python'

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Python setup
au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

set encoding=utf-8

" Flag whitespaces (for python)
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h : match BadWhitespace /\s\+$/

" Colorscheme
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif



let NERDTreeIgnore=['\.pyc$', '\~$', '^__pycache__$[[dir]]'] "ignore files in NERDTree


" Code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

""" CtrlP setup
" Open file menu
" nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
" nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

set wildignore+=_env/**
set wildignore+=.git/**

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

" Python setup
let python_highlight_all=1
syntax on

""" Virtualenv setup
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

