require("neo-tree").setup({
  window = {
    position = "right",
    width = 50,
    mappings = {
      ["A"]  = "git_add_all",
      ["gu"] = "git_unstage_file",
      ["ga"] = "git_add_file",
      ["gr"] = "git_revert_file",
      ["gc"] = "git_commit",
      ["gp"] = "git_push",
      ["gg"] = "git_commit_and_push",
      ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
      ["oc"] = { "order_by_created", nowait = false },
      ["od"] = { "order_by_diagnostics", nowait = false },
      ["om"] = { "order_by_modified", nowait = false },
      ["on"] = { "order_by_name", nowait = false },
      ["os"] = { "order_by_size", nowait = false },
      ["ot"] = { "order_by_type", nowait = false },
    }
  },
  buffers = {
    follow_current_file = { enabled = true }
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false
    }
  },
  default_component_configs = {
    git_status = {
      symbols = {
        deleted   = "✖",-- this can only be used in the git_status source
        added = "󰁕",
        modified = "M",
        untracked = "",
        ignored   = "",
        unstaged  = "󰄱",
        staged    = "",
        conflict  = "",
      }
    }
  }
})
