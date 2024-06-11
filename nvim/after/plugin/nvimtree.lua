-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

-- empty setup using defaults
-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  respect_buf_cwd = true,
  update_focused_file = {
      enable = true,
      update_root = true,
  },
  git = {
    enable = true,
    ignore = false,
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
      -- dotfiles = true,
  },
  actions = {
      open_file = {
            quit_on_open = true
        }
    }
})
