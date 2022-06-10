require 'plugins'
require 'mappings'
require 'settings'
require 'term'

local g = vim.g

vim.cmd 'colorscheme kanagawa'
--vim.cmd 'colorscheme onedarkpro'

-- Map space to leader
g.mapleader = ' '

-- Python
g.python_host_prog = '/home/gabriel/Code/py2venv/bin/python'
g.python3_host_prog = '/home/gabriel/Code/pyvenv/bin/python'

-- NerdTree
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeWinSize = 50
vim.g.NERDTreeIgnore = { '.git$[[dir]]', '_venv', '.egg-info$[[dir]]', '.eggs$[[dir]]', '.pytest_cache', '.pyc' }
vim.g.NERDDefaultAlign = 'left'

-- Set tab config
vim.cmd [[
  autocmd FileType vue,javascript,json,typescript setlocal shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType html,htmldjango setlocal shiftwidth=4 softtabstop=4 expandtab
]]
