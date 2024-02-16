local M = {
  "neovim/nvim-lspconfig",
  -- event = "LazyFile",
  --  dependencies = {
  --    { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
  --    { "folke/neodev.nvim", opts = {} },
  --    "mason.nvim",
  --    "williamboman/mason-lspconfig.nvim",
  --  },
}

M.opts = {
  diagnostics = {
    underline = true,
    update_in_insert = false,
    virtual_text = {
      spacing = 4,
      source = "if_many",
      prefix = "●",
      -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
      -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
      -- prefix = "icons",
    },
    severity_sort = true,
    --    signs = {
    --      text = {
    --        [vim.diagnostic.severity.ERROR] = require("lazyvim.config").icons.diagnostics.Error,
    --        [vim.diagnostic.severity.WARN] = require("lazyvim.config").icons.diagnostics.Warn,
    --        [vim.diagnostic.severity.HINT] = require("lazyvim.config").icons.diagnostics.Hint,
    --        [vim.diagnostic.severity.INFO] = require("lazyvim.config").icons.diagnostics.Info,
    --      },
    --    },
  },
}

M.config = function()
end

return M
