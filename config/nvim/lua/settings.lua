-- Identation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true -- Auto indent new lines

-- Ignore
vim.opt.wildignore = {
  '**/node_modules/**',
  '**/_venv/**',
  '**/coverage/**',
}

-- UI
vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = 'yes' -- Keep signcolumn open

vim.opt.cursorline = true -- Highlight current line
vim.opt.showmatch = true -- Highlight parenthesis

-- Clipboard
vim.opt.clipboard = { 'unnamed', 'unnamedplus' }
