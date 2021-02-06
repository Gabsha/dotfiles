

let mapleader=" "

" Plugin setup
call plug#begin()

" Plugin everyone can agree on
Plug 'tpope/vim-sensible'

" File manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Plug 'kien/ctrlp.vim'
Plug 'junegunn/goyo.vim'

" Colorthemes
Plug 'rakr/vim-one'

" Semantic highlight python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Completion and linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'

call plug#end()

set clipboard=unnamed

""" File navigtaion
nmap <C-P> :GFiles<CR>
nmap <C-B> :Buffers<CR>

""" Python dev setup 
let g:python_host_prog = '/home/gabriel/Code/py2venv/bin/python'
let g:python3_host_prog = '/home/gabriel/Code/pyvenv/bin/python'

" Config ALE
let g:ale_fixers = {'python' : ['autopep8', 'isort']}
let g:ale_linters = {'python': ['pylint']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_python_pylint_options = '--rcfile setup.cfg'

" Completion config
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Navigation
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['.git', '.pytest_cache', '\.pyc$', '\~$', '^__pycache__$[[dir]]'] "ignore files in NERDTree

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


let g:ctrlp_custom_ignore = '\v[\/]\.(git)$'
set wildignore+=_env/**,*/__pycache__/*,*/transient/*,*/test_output/*
set wildignore+=.git/*

" colorscheme
colorscheme one
set background=dark
set termguicolors

set number       " show line numbers
set expandtab    " Tabs to spaces
set smartindent  " Auto indent new lines


""" Virtualenv setup
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  # execfile(activate_this, dict(__file__=activate_this))
  exec(open(activate_this).read(), dict(__file__=activate_this))
EOF
