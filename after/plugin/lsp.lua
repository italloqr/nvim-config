require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "tsserver" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	capabilities = capabilities,
})
lspconfig.tsserver.setup({
	capabilities = capabilities,
})
