
local html_cap = vim.lsp.protocol.make_client_capabilities()
html_cap.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  on_attach = require'plugins.lsp'.on_attach,
  capabilities = html_cap,
  filetypes = { 'html', 'htmldjango' },
  settings = { indent_size = 2 },
}
