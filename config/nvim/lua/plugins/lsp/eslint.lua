require('lspconfig').eslint.setup {
  on_attach = require('plugins.lsp').on_attach,
  filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx' },
  --filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
  --cmd = "
}
