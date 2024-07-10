return {
	"akinsho/toggleterm.nvim",
  version = "*",
  config = function() 
    local config = require("toggleterm")
    config.setup{
      vim.keymap.set("n", "<leader>t", ":ToggleTerm size=20 dir=$PWD direction=horizontal name=terminal<CR>")
    }
  end,
}
