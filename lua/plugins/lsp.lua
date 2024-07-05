return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function() 
      local mason = require("mason")
      mason.setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local mason_registry = require("mason-registry")
      -- local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path() .. "/home/italloqr/node_modules/@vue/language-server"
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
	      -- ensure_installed = { "lua_ls", "tsserver", "ruby_lsp", "rubocop" },
	      ensure_installed = { "lua_ls", "tsserver" },
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities
      })

      -- lspconfig.tsserver.setup({
      -- 	capabilities = capabilities,
      -- 	init_options = {
      -- 		plugins = {
      -- 			{
      -- 				name = "@vue/typescript-plugin",
      -- 				location = vue_language_server_path,
      -- 				languages = { "vue" },
      -- 			},
      -- 		},
      -- 	},
      -- 	lspconfig.volar.setup({
      -- 		init_options = {
      -- 			vue = {
      -- 				hybridMode = false,
      -- 			},
      -- 		},
      -- 	}),
      -- 	filetypes = { "typescript", "javascript", "typescriptreact", "typescript.tsx", "vue" },
      -- })

      -- lspconfig.ruby_lsp.setup({
        -- capabilities = capabilities,
      -- })

      -- lspconfig.rubocop.setup({
        -- capabilities = capabilities,
      -- })
    end
  },
}
