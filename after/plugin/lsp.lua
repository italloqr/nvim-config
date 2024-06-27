require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'tsserver'}
--   handlers = {
--     lsp_zero.default_setup,
--     lua_ls = function()
--       local lua_opts = lsp_zero.nvim_lua_ls()
--       require('lspconfig').lua_ls.setup(lua_opts)
--     end,
--   }
})

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.tsserver.setup({})
--
-- local cmp = require('cmp')
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_action = require('lsp-zero').cmp_action()
--
-- cmp.setup({
--   mapping = cmp.mapping.preset.insert({
--     ['<Tab>'] = cmp_action.luasnip_supertab(),
--     ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
--   }),
-- })
--
-- -- this is the function that loads the extra snippets to luasnip
-- -- from rafamadriz/friendly-snippets
-- require('luasnip.loaders.from_vscode').lazy_load()
--
-- cmp.setup({
--   sources = {
--     {name = 'path'},
--     {name = 'nvim_lsp'},
--     {name = 'nvim_lua'},
--     {name = 'luasnip', keyword_length = 2},
--     {name = 'buffer', keyword_length = 3},
--   },
--   formatting = lsp_zero.cmp_format(),
--   mapping = cmp.mapping.preset.insert({
--     ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--     ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
-- 		['<CR>'] = cmp.mapping.confirm({select = false}),
--     ['<C-Space>'] = cmp.mapping.complete(),
--   }),
-- })
