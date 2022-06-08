local map = vim.api.nvim_set_keymap

map('n', 'ev', ':e $MYVIMRC<CR>', {noremap = true})
map('n', 'sv', ':so $MYVIMRC<CR>', {noremap = true})

-- Nerdtree
map('n', '<C-n>', ':NERDTreeToggle<CR>', {noremap = true})


-- Split navigation
map('n', '<C-J>', '<C-W><C-J>', {noremap = true})
map('n', '<C-K>', '<C-W><C-K>', {noremap = true})
map('n', '<C-L>', '<C-W><C-L>', {noremap = true})
map('n', '<C-H>', '<C-W><C-H>', {noremap = true})
-- Diagnostics
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- LSP

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Autocomplete setup
-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
--local servers = { 'pyright' }
--for _, lsp in pairs(servers) do
require('lspconfig')['pyright'].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  formatCommand = {"black"},
  flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  }
}
--end

-- HTML
local html_cap = vim.lsp.protocol.make_client_capabilities()
html_cap.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  on_attach = on_attach,
  capabilities = html_cap,
  filetypes = { 'html', 'htmldjango' },
  settings = { indent_size = 2 },
}

-- Example : https://jose-elias-alvarez.medium.com/configuring-neovims-lsp-client-for-typescript-development-5789d58ea9c
--require'lspconfig'.tsserver.setup{
--        on_attach = function(client, bufnr)
--                client.resolved_capabilities.document_formatting = false
--                client.resolved_capabilities.document_range_formatting = false
--                on_attach(client, bufnr)
--        end
--}

-- Check here for example of volar configuration : https://github.com/johnsoncodehk/volar/discussions/606
require'lspconfig'.volar.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'typescript', 'javascript','vue', 'json' },
  --filetypes = { 'vue' }, -- let eslint handle the rest ?
  -- See here options for findings tsserver : https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/volar.lua#L97-L135
  init_options = {
    typescript = {
      serverPath = '/home/gabriel/.config/yarn/global/node_modules/typescript/lib/tsserverlibrary.js'
    }
  }
}
--local eslint_ft = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" } -- Removed vue
--require'lspconfig'.eslint.setup{
--  filetypes = eslint_ft
--}

-- luasnip & nvim-cmp setup
local luasnip = require 'luasnip'
local cmp = require 'cmp'

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
          {name = 'buffer'},
  }), 
}

-- Load snippets
--require"luasnip/loaders/from_vscode".load({include = {"html"}})
require("luasnip.loaders.from_vscode").lazy_load()
-- setup gutter signs
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- setup formatter
u = require("null-ls.utils")
local setup_finder = function(params)
        local cwd = u.root_pattern({ "setup.py" })(params.bufname)
        return cwd
end
require("null-ls").setup({
    sources = {
        --require("null-ls").builtins.formatting.eslint.with({
        --        prefer_local = "node_modules/.bin",
        --        filetypes = { "typescript", "javascript", "json" }
        --}),
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.isort.with({
                cwd = setup_finder,
                -- args = { "--show-config" }
                -- extra_args = { "--profile", "black" }
        }),
    },
    on_attach = function(client)
        -- Format on save
        if client.resolved_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
})
