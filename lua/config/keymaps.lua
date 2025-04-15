vim.g.mapleader = "\\"

local map = vim.keymap
map.set("n", "<leader>a", function()
  print("hi")
end)
-- move code slice
map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '<-2<CR>gv=gv")

-- replace global
map.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- save file
map.set({ "i", "n" }, "<C-s>", "<Esc>:w<CR>")

-- tabs navigation
map.set("n", "tr", ":bp<CR>")
map.set("n", "ty", ":bn<CR>")
map.set("n", "td", ":bd<CR>")

--vim diagnostics
map.set("n", "<leader>od", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostics in float" })

-- open Neotree
map.set("n", "<leader>e", vim.cmd.Neotree)

map.set("n", "db", 'vb"_d') --delete word backwards

map.set("n", "<C-a>", "gg<S-v>G") --select all file

-- Copy Relative Path
vim.api.nvim_create_user_command("CopyRelPath", function()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

map.set("n", "<leader>rp", ":CopyRelPath<CR>")

map.set("n", "<leader>ft", function()
  require("conform").format({ lsp_format = "fallback" })
end, { desc = "Code Format" })
