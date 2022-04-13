
-- Global
vim.opt.number = true
vim.opt.expandtab = true    -- Tabs to spaces
vim.opt.smartindent = true  -- Auto indent new lines
vim.opt.encoding='utf-8'
vim.opt.cmdheight=1  	    -- More space to display messages
vim.opt.signcolumn='yes'    -- Keep signcolumn open
vim.opt.clipboard='unnamed'

-- NerdTree
vim.g.NERDTreeShowHidden=1
vim.g.NERDTreeWinSize=50
vim.g.NERDTreeIgnore={ '.git$[[dir]]', '_venv', '.egg-info$[[dir]]', '.eggs$[[dir]]', '.pytest_cache', '.pyc' }
vim.g.NERDDefaultAlign='left'

-- LuaLine
require('lualine').setup {
    sections = { 
        lualine_c = { 
             { 'filename', path = 1 }
        }
    }
}


-- Telescope
local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
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

-- Treesitter
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  -- sync_install = false,

  -- List of parsers to ignore installing
  -- ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    --   additional_vim_regex_highlighting = false,
  },
}

-- Neogen
require'neogen'.setup{
        enabled = true,
        languages = {
                python = {
                        template = {
                                annotation_convention = 'numpydoc'
                        }
                }
        }
}
