-- Check here for example of volar configuration : https://github.com/johnsoncodehk/volar/discussions/606
require('lspconfig').volar.setup {
  on_attach = require('plugins.lsp').on_attach,
  capabilities = require('plugins.lsp').capabilities,
  filetypes = { 'typescript', 'javascript', 'vue', 'json' },
  --filetypes = { 'vue' }, -- let eslint handle the rest ?
  -- See here options for findings tsserver : https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/volar.lua#L97-L135
  init_options = {
    typescript = {
      serverPath = '/home/gabriel/.config/yarn/global/node_modules/typescript/lib/tsserverlibrary.js',
    },
  },
}
