local map = vim.api.nvim_set_keymap

-- Disable accidental help menu popup
map('n', '<F1>', '<nop>', { noremap = true })
map('i', '<F1>', '<nop>', { noremap = true })

-- Quick Edit
map('n', 'ev', ':e $MYVIMRC<CR>', { noremap = true })
map('n', 'sv', ':so $MYVIMRC<CR>', { noremap = true })

-- Nerdtree
map('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true })

-- Split navigation
map('n', '<C-J>', '<C-W><C-J>', { noremap = true })
map('n', '<C-K>', '<C-W><C-K>', { noremap = true })
map('n', '<C-L>', '<C-W><C-L>', { noremap = true })
map('n', '<C-H>', '<C-W><C-H>', { noremap = true })

-- Diagnostics
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Example : https://jose-elias-alvarez.medium.com/configuring-neovims-lsp-client-for-typescript-development-5789d58ea9c
--require'lspconfig'.tsserver.setup{
--        on_attach = function(client, bufnr)
--                client.resolved_capabilities.document_formatting = false
--                client.resolved_capabilities.document_range_formatting = false
--                on_attach(client, bufnr)
--        end
--}

--local eslint_ft = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" } -- Removed vue
--require'lspconfig'.eslint.setup{
--  filetypes = eslint_ft
--}

-- Load snippets
--require"luasnip/loaders/from_vscode".load({include = {"html"}})

-- setup formatter
