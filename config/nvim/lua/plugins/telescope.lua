local map = vim.api.nvim_set_keymap
local builtin = require 'telescope.builtin'
local actions = require 'telescope.actions'

-- Mappings
local opts = { noremap = true }
map('n', '<c-p>', '<cmd>Telescope find_files<CR>', opts)
map('n', '<C-b>', '<cmd>Telescope buffers<CR>', opts)
map('n', '<C-f>', '<cmd>Telescope live_grep<CR>', opts)

-- Setup
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { 'node_modules', 'yarn.lock', '_venv', '__pycache__' },
    mappings = {
      i = {
        ['<esc>'] = actions.close,
      },
    },
  },
  pickers = {
    buffers = {
      ignore_current_buffer = true,
      sort_mru = true,
      sort_lastused = true,
    },
  },
}
