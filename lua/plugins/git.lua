return {
  {
    "f-person/git-blame.nvim",
    config = function()
      enabled = true
    end,
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function() end,
  },
  {
	  "lewis6991/gitsigns.nvim",
    config = function()
     local config = require("gitsigns")
      config.setup({});
    end,
  },
  {
    "tpope/vim-fugitive"
  }
}
