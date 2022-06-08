require('plugins')
require('mappings')
require('configs')
require('settings')

local g = vim.g

--vim.cmd('colorscheme kanagawa')
vim.cmd('colorscheme onedarkpro')

-- Map space to leader
g.mapleader = " "

-- Python
g.python_host_prog = '/home/gabriel/Code/py2venv/bin/python'
g.python3_host_prog = '/home/gabriel/Code/pyvenv/bin/python'

-- Close terminal on esc
vim.cmd([[
  au TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
]])

vim.cmd([[
autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
]])

-- Set tab config
vim.cmd([[
autocmd FileType vue,javascript,json,typescript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html,htmldjango setlocal shiftwidth=4 softtabstop=4 expandtab
]])

require('lualine').setup()


-- Telescope
require('telescope').setup{  defaults = { file_ignore_patterns = { "yarn.lock", "_venv", "__pycache__" }} }
