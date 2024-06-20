vim.g.mapleader = "\\"

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-b>", vim.cmd.Ex)

--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")

--vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "tr", ":bp<CR>")
vim.keymap.set("n", "ty", ":bn<CR>")
vim.keymap.set("n", "td", ":bd<CR>")

--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Comment.nvim
-- `gcc` - Toggles the current line using linewise comment
-- [[ `gbc` - Toggles the current line using blockwise comment ]]
-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
-- 'gcw' - Toggles the current word
-- gcw` - Toggle from the current cursor position to the next word
-- `gc$` - Toggle from the current cursor position to the end of line
-- `gc}` - Toggle until the next blank line
-- `gc5j` - Toggle 5 lines after the current cursor position
-- `gc8k` - Toggle 8 lines before the current cursor position
-- `gcip` - Toggle inside of paragraph
-- `gca}` - Toggle around curly brackets

-- vim.keymap.set("n", "<leader>t", function()
	-- vim.cmd("ToggleTerm size=20 dir=$PWD direction=horizontal name=terminal")
-- end)
















