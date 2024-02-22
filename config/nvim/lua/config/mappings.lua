local conform = require("conform")

local kopts = { noremap = true }

-- Formatting
vim.keymap.set("n", "<leader>f", function()
  conform.format()
end, { noremap = true })

-- Navigation
vim.keymap.set("n", "<C-h>", "<C-W>h", kopts)
vim.keymap.set("n", "<C-j>", "<C-W>j", kopts)
vim.keymap.set("n", "<C-k>", "<C-W>k", kopts)
vim.keymap.set("n", "<C-l>", "<C-W>l", kopts)

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", telescope.find_files, {})
vim.keymap.set("n", "<C-f>", telescope.live_grep, {})
vim.keymap.set("n", "<C-b>", telescope.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})

-- Dx
vim.keymap.set('n', "<leader>e", vim.diagnostic.open_float)
vim.keymap.set('n', "[d", vim.diagnostic.goto_prev)
vim.keymap.set('n', "]d", vim.diagnostic.goto_next)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-i>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    -- Diabled, configured in Conform.nvim
    --vim.keymap.set('n', '<space>f', function()
    --  vim.lsp.buf.format { async = true }
    --end, opts)
  end,
})
