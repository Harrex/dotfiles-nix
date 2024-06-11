vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>cc", function() vim.api.nvim_command("set colorcolumn=80") end)
vim.keymap.set("n", "<leader>cn", function() vim.api.nvim_command("set colorcolumn=00") end)
vim.keymap.set("n", "<leader>tt", function() vim.api.nvim_command("terminal") end)
-- Bind <C-c> to Esc

vim.keymap.set("n", "<C-c>", "<Esc>")

vim.keymap.set("n", "k", "t")
vim.keymap.set("n", "<C-n>", "n")

vim.keymap.set("n", "h", "h")
vim.keymap.set("n", "t", "k")
vim.keymap.set("n", "n", "j")
vim.keymap.set("n", "s", "l")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")


-- Cool Shit
-- Select Last changed text
vim.keymap.set("n", "gV", "'[V']")

-- Esc in normal mode to :noh
vim.keymap.set("n", "<Esc>", function() vim.api.nvim_command("noh") end)

vim.keymap.set("v", "t", "k")
vim.keymap.set("v", "k", "t")
vim.keymap.set("v", "m", "n")
vim.keymap.set("v", "n", "j")
vim.keymap.set("v", "s", "l")
vim.keymap.set("s", "s", "s") -- fix for "s" issue in select mode

vim.keymap.set("o", "t", "k")
vim.keymap.set("o", "k", "t")
vim.keymap.set("o", "m", "n")
vim.keymap.set("o", "n", "j")
vim.keymap.set("o", "s", "l")


vim.keymap.set("n", "<M-h>", function() vim.api.nvim_command("wincmd u") end)
vim.keymap.set("n", "<M-t>", function() vim.api.nvim_command("wincmd k") end)
vim.keymap.set("n", "<M-n>", function() vim.api.nvim_command("wincmd j") end)
vim.keymap.set("n", "<M-s>", function() vim.api.nvim_command("wincmd l") end)
vim.keymap.set("n", "<M-N>", function() vim.api.nvim_command("wincmd n") end)
vim.keymap.set("n", "<M-q>", function() vim.api.nvim_command("wincmd q") end)
vim.keymap.set("n", "<M-r>", function() vim.api.nvim_command("wincmd r") end)
vim.keymap.set("n", "<M-R>", function() vim.api.nvim_command("wincmd R") end)
vim.keymap.set("n", "<M-z>", function() vim.api.nvim_command("wincmd q") end)

vim.keymap.set("n", "<leader>k", ":!kitty &<CR><CR>")

-- Hotkey to cd into the current directory
vim.keymap.set("n", "<leader>cd", function() vim.api.nvim_command("cd %:p:h") end)

vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeToggle)
vim.keymap.set("v", "<leader>n", vim.cmd.NvimTreeToggle)

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)
vim.keymap.set("v", "<leader>e", vim.cmd.NvimTreeFocus)

vim.keymap.set("n", "<leader>tj", function() vim.api.nvim_command("TSJToggle") end)

vim.g.vindent_object_XX_ii     = 'ii' -- select current block.
vim.g.vindent_object_XX_ai     = 'ai' -- select current block + one extra lineat beginning.

-- LSP Mappings --
-- { CMP mappings in after/cmp.lua }
local opts = { buffer = true }

vim.keymap.set('n', '<leader>ff', function() vim.api.nvim_command("Telescope find_files") end)
vim.keymap.set('n', '<leader>fg', function() vim.api.nvim_command("Telescope live_grep") end)
vim.keymap.set('n', '<leader>fs', function() vim.api.nvim_command("Telescope lsp_workspace_symbols") end)

vim.keymap.set('n', 'gr', function() vim.api.nvim_command('Telescope lsp_references') end)

vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end)
vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end)
vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end)
vim.keymap.set('n', 'go', function() vim.lsp.buf.type_definition() end)
vim.keymap.set('n', 'gs', function() vim.lsp.buf.signature_help() end)
vim.keymap.set('n', '<F2>', function() vim.lsp.buf.rename() end)
vim.keymap.set({ 'n', 'x' }, '<F3>', function() vim.lsp.buf.format({async = true}) end)
vim.keymap.set('n', '<F4>', function() vim.lsp.buf.code_action() end)

vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end)
vim.keymap.set('n', 'gE', function() vim.diagnostic.goto_prev() end)
vim.keymap.set('n', 'ge', function() vim.diagnostic.goto_next() end)
