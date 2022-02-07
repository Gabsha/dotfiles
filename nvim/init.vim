

let mapleader=" "

" Plugin setup
call plug#begin()
:
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
Plug 'kevinoid/vim-jsonc'

" Git
Plug 'airblade/vim-gitgutter'

" Colorthemes
Plug 'rakr/vim-one'
Plug 'srcery-colors/srcery-vim'
Plug 'lighthaus-theme/vim-lighthaus'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'joshdick/onedark.vim'

" Semantic highlight 
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}  " python
Plug 'jackguo380/vim-lsp-cxx-highlight'                 " cxx
Plug 'sheerun/vim-polyglot'

" Completion and linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'

" TDD
Plug 'mgedmin/coverage-highlight.vim'

Plug 'liuchengxu/vista.vim'     " Symbol browser
Plug 'ryanoasis/vim-devicons'   " Dev icons
Plug 'itchyny/lightline.vim'    " status line

call plug#end()

set clipboard=unnamed

""" Shorcuts
nnoremap ev :e $MYVIMRC<cr>
nnoremap sv :so $MYVIMRC<cr>

""" Fuzzy finder
nmap <C-P> :GFiles<CR>
nmap <C-B> :Buffers<CR>

""" Python dev setup 
let g:python_host_prog = '/home/gabriel/Code/py2venv/bin/python'
let g:python3_host_prog = '/home/gabriel/Code/pyvenv/bin/python'

" Config ALE
let g:ale_fixers = {'python' : ['black', 'isort'], 'cpp' : ['clang-format']}

" let g:ale_fixers = {'python' : ['autopep8', 'isort']}
let g:ale_linters = {'python': ['flake8']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_python_pylint_options = '--rcfile setup.cfg'
let g:ale_disable_lsp = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_sign_column_always = 1

" Completion config
nmap <silent> gd <Plug>(coc-definition)nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Coverage
let g:show_coverage = 0
function! ToggleCoverage()
        if g:show_coverage
                :HighlightCoverageOff
                let g:show_coverage = 0
        else
                :HighlightCoverage
                let g:show_coverage = 1
        endif
endfunction
nnoremap <silent> <leader>g :call ToggleCoverage()<cr><cr>

" Symbol browser
let g:vista_default_executive = 'coc'
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
nmap <F8> :Vista!!<CR>

" Navigation
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeWinSize=50
let NERDTreeIgnore=['.git', '.pytest_cache', '\.pyc$', '\~$', '^__pycache__$[[dir]]'] "ignore files in NERDTree
let g:NERDDefaultAlign='left'

" Base 
set number       " show line numbers
set expandtab    " Tabs to spaces
set smartindent  " Auto indent new lines
set encoding=utf-8
set cmdheight=1  " More space to display messages
set signcolumn=yes " Keep signcolumn open

"autocmd FileType json autocmd BufWritePre <buffer> %!python -m json.tool

" Python setup
au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set fileformat=unix

let python_highlight_all = 1

" YAML setup
au FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au Filetype cpp set tabstop=4 softtabstop=4 shiftwidth=4 

let g:ctrlp_custom_ignore = '\v[\/]\.(git)$'
set wildignore+=_env/**,*/__pycache__/*,*/transient/*,*/test_output/*
set wildignore+=.git/*,_venv/*,*.a,*.o,_build/*
set wildignore+=_*/*

" colorscheme
syntax on
colorscheme onedark
if has('termguicolors')
  set termguicolors
endif

" Configure lightline
let g:lightline = {
 \ 'colorscheme': 'onedark',
 \ 'active': {
 \   'left': [ [ 'mode', 'paste' ],
 \             [ 'readonly', 'relativepath', 'modified', 'helloworld' ] ]
 \ },
 \ }


" Terminal mode
tnoremap <Esc> <C-\><C-n>

" Coc Tab Completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)


""" Execute per project vimrc file
set exrc
set secure

"get rid of [  ] around icons in NerdTree
syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

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
