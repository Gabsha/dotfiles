local conform = require("conform")

local opts = { noremap = true }

-- Formatting
vim.keymap.set("n", "<leader>f", function()
  conform.format()
end, { noremap = true })

-- Navigation
vim.keymap.set("n", "<C-h>", "<C-W>h", opts)
vim.keymap.set("n", "<C-j>", "<C-W>j", opts)
vim.keymap.set("n", "<C-k>", "<C-W>k", opts)
vim.keymap.set("n", "<C-l>", "<C-W>l", opts)

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", telescope.find_files, {})
vim.keymap.set("n", "<C-f>", telescope.live_grep, {})
vim.keymap.set("n", "<C-b>", telescope.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
