return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {}
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ruby_lsp",
          "lua_ls",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'saghen/blink.cmp',
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      local on_attach = function(_, _)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
        vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, {})
      end

      local lspconfig = require("lspconfig")

      lspconfig.ruby_lsp.setup {
        on_attach = on_attach,
        capabilities = capabilities
      }
      lspconfig.lua_ls.setup {
        on_attach = on_attach,
        capabilities = capabilities
      }
    end
  },
}
