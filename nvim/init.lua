require("harrek")
require("harrek.lazy")
require("harrek.theme")
require("harrek.settings")

-- Vimtex
vim.g["vimtex_mappings_enabled"] = 0
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_quickfix_open_on_warning = 0
-- vim.g.vimtex_quickfix_latexlog = {
--     general = 0,
--     packages = {
--         included = 0,
--         max_warnings = 5,
--     },
-- }

require("harrek.remap")


vim.cmd [[set title]]



if vim.loop.os_uname().sysname == "Darwin" then
    vim.g.gruvbox_material_background = 'medium'
    vim.cmd [[set background=dark]]
    vim.g.gruvbox_material_better_performance = 1
    vim.cmd [[colorscheme gruvbox-material]]
else
    vim.cmd [[colorscheme harrek]]
end
