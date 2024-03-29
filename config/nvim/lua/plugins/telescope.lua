local map = vim.api.nvim_set_keymap
local actions = require 'telescope.actions'

-- Mappings
local opts = { noremap = true }
map('n', '<c-p>', '<cmd>Telescope find_files<CR>', opts)
map('n', '<C-b>', '<cmd>Telescope buffers<CR>', opts)
map('n', '<C-f>', '<cmd>Telescope live_grep hidden=true<CR>', opts)

-- Setup
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { '.git/', 'node_modules', 'yarn.lock', '_venv', '__pycache__' },
    mappings = {
      i = {
        ['<esc>'] = actions.close,
      },
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    live_grep = {
      additional_args = function(opts)
        return { '--hidden' }
      end,
    },
    buffers = {
      ignore_current_buffer = true,
      sort_mru = true,
      sort_lastused = true,
    },
  },
}
