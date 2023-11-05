require('lspconfig').jsonls.setup {
  cmd = { 'vscode-json-languageserver', '--stdio' },
  on_attach = require('plugins.lsp').on_attach,
}
