require('plugins')
require('mappings')
require('configs')

--vim.cmd('colorscheme kanagawa')
vim.cmd('colorscheme onedarkpro')
vim.cmd('let mapleader=" "')

-- Python
vim.g.python_host_prog = '/home/gabriel/Code/py2venv/bin/python'
vim.g.python3_host_prog = '/home/gabriel/Code/pyvenv/bin/python'

-- Close terminal on esc
vim.cmd([[
  au TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
]])

vim.cmd([[
autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
]])

-- Set tab config
vim.cmd([[
autocmd FileType vue,javascript setlocal shiftwidth=2 softtabstop=2 expandtab
]])

require('lualine').setup()


-- Telescope
require('telescope').setup{  defaults = { file_ignore_patterns = { "yarn.lock", "_venv", "__pycache__" }} }
