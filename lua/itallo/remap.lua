vim.g.mapleader = "\\"

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-b>", vim.cmd.Neotree)
--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "tr", ":bp<CR>")
vim.keymap.set("n", "ty", ":bn<CR>")
vim.keymap.set("n", "td", ":bd<CR>")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>gd", vim.cmd.DiffviewOpen)

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

vim.keymap.set("n", "<leader>oc", vim.cmd.GitBlameOpenCommitURL)
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, {})


-- nvim-surround
--    Old text                    Command         New text
--------------------------------------------------------------------------------
    -- surr*ound_words             ysiw)           (surround_words)
    -- *make strings               ys$"            "make strings"
    -- [delete ar*ound me!]        ds]             delete around me!
    -- remove <b>HTML t*ags</b>    dst             remove HTML tags
    -- 'change quot*es'            cs'"            "change quotes"
    -- <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    -- delete(functi*on calls)     dsf             function calls

