require('lspconfig')['pyright'].setup {
  on_attach = require'plugins.lsp'.on_attach,
  capabilities = require'plugins.lsp'.capabilities,
  formatCommand = {"black"},
  flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  }
}
