vim.opt.termguicolors = true
require("itallo.lazy")
require("itallo.set")
require("itallo.keymap")
require("bufferline").setup({
  options = {
    mode = "buffers",
    diagnostics = "nvim_lsp", -- Integração com LSP
    separator_style = "slant",
    show_buffer_close_icons = true,
    show_close_icon = true,
    always_show_bufferline = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "center",
      },
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    }
  },
})
