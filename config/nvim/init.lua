require('config.options')
require('config.lazy')
require("config.mappings")

require("neodev").setup({})

-- Move this somewhere else
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.tsserver.setup({})
