return {
  {
    "f-person/git-blame.nvim",
    config = function()
      enabled = true
    end,
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
