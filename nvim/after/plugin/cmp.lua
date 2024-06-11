local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
cmp.setup ({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = true}),
        ['<Tab>'] = cmp_action.tab_complete(),}
})
