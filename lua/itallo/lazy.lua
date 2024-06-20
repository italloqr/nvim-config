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
	'RRethy/vim-illuminate',
  "sindrets/diffview.nvim",
  {
    'dense-analysis/ale',
    config = function()
      -- Configuration goes here.
      local g = vim.g

      g.ale_ruby_rubocop_auto_correct_all = 1

      g.ale_linters = {
        ruby = {'rubocop', 'ruby'},
        lua = {'lua_language_server'},
        javascript = {'prettier', 'eslint'},
        vue = {'volar', 'prettier'},
        typescript = {'eslint', 'prettier', 'tslint'}
      }
    end
  },
	{'akinsho/git-conflict.nvim', version = "*", config = true },
	{
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
	},
	{"akinsho/toggleterm.nvim", version = '*', config = function()
		require("toggleterm").setup()
		end
	},
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	'f-person/git-blame.nvim',
	'wakatime/vim-wakatime',
	{
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
	},
  {
		'nvim-telescope/telescope.nvim', version = '0.1.5',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- 'navarasu/onedark.nvim',
		'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
  {
		'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lua'},
      {'rafamadriz/friendly-snippets'}
    }
  },
	{
		"arsham/arshamiser.nvim",
		dependencies = {
			"arsham/arshlib.nvim",
			"famiu/feline.nvim",
			"rebelot/heirline.nvim",
		},
		config = function()
    -- ignore any parts you don't want to 
    vim.cmd.colorscheme("arshamiser_light")
    require("arshamiser.feliniser")
    -- or:
    -- require("arshamiser.heirliniser")
    _G.custom_foldtext = require("arshamiser.folding").foldtext
    vim.opt.foldtext = "v:lua.custom_foldtext()"
    -- if you want to draw a tabline:
    vim.api.nvim_set_option("tabline", [[%{%v:lua.require("arshamiser.tabline").draw()%}]])
		end,
	}
}

require("lazy").setup(plugins, {})
