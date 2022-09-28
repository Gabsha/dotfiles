require('lspconfig').astro.setup {
  on_attach = require('plugins.lsp').on_attach,
}
