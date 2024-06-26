local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = "\\"
vim.opt.termguicolors = true

local plugins = {
  "lewis6991/gitsigns.nvim",
  "RRethy/vim-illuminate",
  "sindrets/diffview.nvim",
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
  },
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-cmdline",
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "leoluz/nvim-dap-go",
    },
  },
  -- {
  -- 	"dense-analysis/ale",
  -- 	config = function()
  -- 		local g = vim.g
  --
  -- 		g.ale_ruby_rubocop_auto_correct_all = 1
  --
  -- 		g.ale_linters = {
  -- 			ruby = { "rubocop", "ruby" },
  -- 			lua = { "lua_language_server" },
  -- 			-- javascript = {'prettier', 'eslint'},
  -- 			-- vue = {'volar', 'prettier'},
  -- 			-- typescript = {'eslint', 'prettier', 'tslint'}
  -- 		}
  -- 	end,
  -- },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest"
    },
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
  { "akinsho/bufferline.nvim",   version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
  "f-person/git-blame.nvim",
  "wakatime/vim-wakatime",
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.5",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- 'navarasu/onedark.nvim',
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "arsham/arshamiser.nvim",
    dependencies = {
      "arsham/arshlib.nvim",
      "famiu/feline.nvim",
      "rebelot/heirline.nvim",
    },
    config = function()
      require("arshamiser.feliniser")

      _G.custom_foldtext = require("arshamiser.folding").foldtext
      vim.opt.foldtext = "v:lua.custom_foldtext()"
      -- if you want to draw a tabline:
      vim.api.nvim_set_option("tabline", [[%{%v:lua.require("arshamiser.tabline").draw()%}]])
    end,
  },
}

require("lazy").setup(plugins, {})
