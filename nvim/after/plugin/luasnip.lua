local ls = require('luasnip')

vim.keymap.set({"i"}, "<C-b>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-s>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

ls.config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<C-b>",
})

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
