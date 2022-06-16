require('lspconfig').rust_analyzer.setup {
  on_attach = require('plugins.lsp').on_attach,
}
