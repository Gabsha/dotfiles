vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'	-- Packer can manage itself

  use 'scrooloose/nerdtree'
  use 'scrooloose/nerdcommenter'

  -- Telescope, treesitter, git gutter?, lightline
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- LSP
  use 'neovim/nvim-lspconfig'   -- Collection of configurations for the built-in LSP client
  use 'hrsh7th/nvim-cmp'        -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'    -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip'-- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'        -- Snippets plugin
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Formatter
  use 'jose-elias-alvarez/null-ls.nvim' --
  
  -- Git
  -- use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'


  -- Markdown
  use 'iamcco/markdown-preview.nvim'

  -- Powerline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Colorthemes
  use 'rakr/vim-one'
  use 'srcery-colors/srcery-vim'
  use 'lighthaus-theme/vim-lighthaus'
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
  use 'olimorris/onedarkpro.nvim'
  use "rebelot/kanagawa.nvim"

  -- Docstring
  use 'danymat/neogen'
  
  -- Semantic highlight 
  -- Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}  -- python
  -- use 'jackguo380/vim-lsp-cxx-highlight'                 -- cxx
  -- use 'sheerun/vim-polyglot'
  
  -- Completion and linting
  -- use 'neoclide/coc.nvim', {'branch': 'release'}
  -- use 'w0rp/ale'
  
  -- TDD
  -- use 'mgedmin/coverage-highlight.vim'
  
  -- use 'liuchengxu/vista.vim'     -- Symbol browser
  use 'ryanoasis/vim-devicons'   -- Dev icons
  -- use 'itchyny/lightline.vim'    -- status line

end)
