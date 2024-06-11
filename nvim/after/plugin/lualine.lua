local lualine = require('lualine')


local use_lualine = true

if use_lualine then
    lualine.setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = ':', right = ':'},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics', 'filename'},
        lualine_c = {},
        lualine_x = {'progress', 'location'},
        -- lualine_y = {'fileformat', 'filetype'},
        lualine_y = {},
        lualine_z = {}

        -- 'encoding'
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
end
