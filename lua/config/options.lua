local opt = vim.opt

opt.number = true
opt.nu = true
opt.relativenumber = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smarttab = true
opt.autoindent = true
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.hlsearch = false
opt.incsearch = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.updatetime = 50
opt.colorcolumn = "120"
opt.clipboard = "unnamedplus"
opt.foldmethod = "expr"
opt.undofile = true
-- opt.expandtab = true
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
-- opt.foldlevel = 99
-- opt.cursorline = true
