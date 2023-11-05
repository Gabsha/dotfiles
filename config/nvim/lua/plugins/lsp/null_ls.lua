local null_ls = require 'null-ls'
local u = require 'null-ls.utils'
local b = null_ls.builtins

function setup_finder(params)
  local cwd = u.root_pattern { 'setup.py', 'pyproject.toml', '_venv' }(params.bufname)
  return cwd
end

null_ls.setup {
  sources = {
    b.formatting.prettier,
    b.formatting.black.with { cwd = setup_finder },
    b.formatting.isort.with { cwd = setup_finder },
    b.diagnostics.flake8.with { cwd = setup_finder },
    b.formatting.stylua.with {
      condition = function(utils)
        return utils.root_has_file 'stylua.toml'
      end,
    },
  },
  on_attach = require('plugins.lsp').on_attach, --function(client)
}
