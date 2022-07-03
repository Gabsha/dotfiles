local lspconfig = require 'lspconfig'
lspconfig.ccls.setup {
  on_attach = require('plugins.lsp').on_attach,
  init_options = {
    compilationDatabaseDirectory = 'build',
    index = {
      threads = 0,
    },
    clang = {
      excludeArgs = { '-frounding-math' },
    },
  },
}
