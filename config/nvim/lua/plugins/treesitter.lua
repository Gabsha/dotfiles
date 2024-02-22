M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
}

M.config = function()
  local configs = require("nvim-treesitter.configs")

  configs.setup({
    ensure_installed = { "c", "lua", "vim", "vimdoc", "elixir", "javascript", "html", "python" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  })
end

return M