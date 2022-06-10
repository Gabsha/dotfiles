require('lspconfig').jsonls.setup {
  on_attach = require('plugins.lsp').on_attach,
}
