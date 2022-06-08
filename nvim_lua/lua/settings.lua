local opt = vim.opt

-- Identation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
vim.opt.smartindent = true -- Auto indent new lines

-- Ignore
opt.wildignore = {
  '**/node_modules/**',
  '**/_venv/**',
  '**/coverage/**',
}

-- UI
opt.wrap = false

opt.number = true
opt.encoding = 'utf-8'
opt.cmdheight = 1 -- More space to display messages
opt.signcolumn = 'yes' -- Keep signcolumn open

opt.cursorline = true -- Highlight current line
opt.showmatch = true -- Highlight parenthesis

-- Clipboard
opt.clipboard = { 'unnamed', 'unnamedplus' }
