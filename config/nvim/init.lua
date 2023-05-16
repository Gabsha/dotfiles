require 'plugins'
require 'mappings'
require 'settings'
require 'term'

-- vim.cmd 'colorscheme kanagawa'
-- vim.cmd 'colorscheme onedarkpro'
--vim.cmd 'colorscheme catppuccin'
 vim.cmd 'colorscheme tokyonight-night'

-- Map space to leader
vim.g.mapleader = ' '

-- Python
vim.g.python_host_prog = '/home/gabriel/Code/py2venv/bin/python'
vim.g.python3_host_prog = '/home/gabriel/Code/pynvim/bin/python'

-- NerdTree
vim.g.NERDTreeShowHidden = 1
--vim.g.NERDTreeWinSize = 50
vim.g.NERDTreeIgnore = { '.git$[[dir]]', '_venv', '.egg-info$[[dir]]', '.eggs$[[dir]]', '.pytest_cache', '.pyc' }
vim.g.NERDDefaultAlign = 'left'

-- Set tab config
vim.cmd [[
  autocmd FileType vue,javascript,json,typescript setlocal shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType html,htmldjango setlocal shiftwidth=4 softtabstop=4 expandtab
]]
