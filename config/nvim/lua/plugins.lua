local cmd = vim.cmd
local fn = vim.fn

-- Automatically install packer.nvim
local install_path = fn.stdpath 'data' .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
end

vim.cmd [[packadd packer.nvim]]

-- Load plugins
return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- Colorthemes
  use 'rakr/vim-one'
  use 'srcery-colors/srcery-vim'
  use 'lighthaus-theme/vim-lighthaus'
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
  use 'olimorris/onedarkpro.nvim'
  use 'rebelot/kanagawa.nvim'

  use 'scrooloose/nerdtree'

  -- Comments
  use 'scrooloose/nerdcommenter'
  use 'tpope/vim-commentary'

  -- TDD
  use 'mgedmin/coverage-highlight.vim'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    config = function()
      require 'plugins.telescope'
    end,
    requires = { 'nvim-lua/plenary.nvim' }, -- Useful lua utilities
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig', -- Collection of configurations for the built-in LSP client
    config = function()
      require 'plugins.lsp'
      require 'plugins.lsp.volar'
      require 'plugins.lsp.js'
      require 'plugins.lsp.pyright'
      require 'plugins.lsp.html'
      require 'plugins.lsp.null_ls'
      require 'plugins.lsp.json'
      require 'plugins.lsp.rust-analyzer'
      require 'plugins.lsp.ccls'
    end,
    requires = {
      {
        'hrsh7th/nvim-cmp',
        requires = {
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
          'saadparwaiz1/cmp_luasnip',
          'petertriho/cmp-git',
        },
        config = function()
          require 'plugins.cmp'
        end,
      },
    },
  }

  -- Snippets plugin
  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require 'plugins.luasnip'
    end,
    requires = {
      'rafamadriz/friendly-snippets',
    },
  }

  -- Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require 'plugins.treesitter'
    end,
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
      'nvim-treesitter/playground',
    },
  }

  -- Documentation
  use {
    'danymat/neogen',
    config = function()
      require('neogen').setup {}
    end,
    requires = 'nvim-treesitter/nvim-treesitter',
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
  }

  -- Formatter
  use 'jose-elias-alvarez/null-ls.nvim' --

  -- Git
  -- use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'

  -- Markdown
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview' }

  -- Powerline
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'plugins.lualine'
    end,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  -- Symbols browser
  use {
    'simrat39/symbols-outline.nvim',
    config = function()
      require('symbols-outline').setup()
    end,
  }

  -- Mind note taking
  use {
    'phaazon/mind.nvim',
    branch = 'v2.2',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('mind').setup { ui = {
        width = 45,
      } }
    end,
  }

  -- use 'liuchengxu/vista.vim'
  use 'ryanoasis/vim-devicons' -- Dev icons
  -- use 'itchyny/lightline.vim'    -- status line
end)
