require('lspconfig').tsserver.setup {
  on_attach = require('plugins.lsp').on_attach,
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx', 'javascript', 'javascript.jsx', 'javascriptreact' },
}
