return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "Find files in current working directory (fzf)",
    },

    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Find by grepping in project directory",
    },
    {
      "<leader>gs",
      function()
        require("fzf-lua").git_status()
      end,
      desc = "View git status",
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").builtin()
      end,
      desc = "Fzf-lua builtin commands",
    },
    {
      "<leader>fw",
      function()
        require("fzf-lua").grep_cword()
      end,
      desc = "Find current word",
    },
    {
      "<leader>bf",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Find existing buffers",
    },
    -- {
    -- 	"<leader>fp",
    -- 	function() require('fzf-lua').files({cwd="/folder/projects"}) end
    -- 	desc = "Find in folder projects"
    -- },
  },
}
