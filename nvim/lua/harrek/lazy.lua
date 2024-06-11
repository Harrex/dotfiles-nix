-- Lazy.nvim Bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
--


require("lazy").setup({
    {
        "jeffkreeftmeijer/vim-dim"
        -- Theme
    },

    {
        "nvimtools/none-ls.nvim"
    },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
    },

    -- {
    --     'https://github.com/airblade/vim-gitgutter.git'
    -- },

    {
        "https://github.com/sainnhe/gruvbox-material"
        -- Theme for Macbooks
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        cmd = 'TSUpdate'
    },


    {
        'Wansmer/treesj',
        keys = { '<space>m', '<space>j', '<space>s' },
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        config = function()
            require('treesj').setup({--[[ your config ]]})
        end,
    },


    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    {
        "https://github.com/jessekelighine/vindent.vim"
    },


    {
        'chrisbra/Colorizer'
    },

    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    },
    {
        'tpope/vim-surround'
    },

    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end,
    },

    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup {
                filetypes = {
                    'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'ts', 'js', 'rescript',
                    'xml',
                    'php',
                    'markdown',
                    'astro', 'glimmer', 'handlebars', 'hbs'
                }
            }
        end,
    },


    --	-- Auto tag
    --	{
        --		"windwp/nvim-ts-autotag",
        --		config = function()
            --			require("nvim-ts-autotag").setup { enable = true }
            --		end,
            --	},

            {
                "junegunn/vim-easy-align"
            },

            {
                'dstein64/vim-startuptime'
            },

            {                                      -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
                config = function ()
                    require('mason').setup({
                        ui = {
                            border = 'single'
                        }
                    })
                end
            },

            {
                'VonHeikemen/lsp-zero.nvim',
                branch = 'v2.x',
                dependencies = {
                    -- LSP Support
                    {'neovim/nvim-lspconfig'},             -- Required
                    {'williamboman/mason-lspconfig.nvim'}, -- Optional

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},     -- Required
                {'hrsh7th/cmp-nvim-lsp'}, -- Required
                {'L3MON4D3/LuaSnip'},     -- Required
            }
        },

        {
            'simrat39/rust-tools.nvim'
        },

        -- Theme
        {
            'daschw/leaf.nvim'
        },

        {
            'realprogrammersusevim/md-to-html.nvim',
            cmd = { 'MarkdownToHTML', 'NewMarkdownToHTML' },
        },

        {
            'lervag/vimtex',
            config = function ()
                -- Vimtex Mappings --
                vim.keymap.set('n', 'ds$', '<plug>(vimtex-env-delete-math)')
                vim.keymap.set('n', 'cs$', '<plug>(vimtex-env-change-math)')
                vim.keymap.set('n', 'dse', '<plug>(vimtex-env-delete)')
                vim.keymap.set('n', 'cse', '<plug>(vimtex-env-change)')
                vim.keymap.set('n', 'kse', '<plug>(vimtex-env-toggle-star)')
                vim.keymap.set('n', 'ks$', '<plug>(vimtex-env-toggle-math)')
                vim.keymap.set('n', '<F6>', '<plug>(vimtex-env-surround-line)')
                vim.keymap.set('x', '<F6>', '<plug>(vimtex-env-surround-visual)')

                vim.keymap.set('n', 'dsc',  '<plug>(vimtex-cmd-delete)')
                vim.keymap.set('n', 'csc',  '<plug>(vimtex-cmd-change)')
                vim.keymap.set('n', 'ksc',  '<plug>(vimtex-cmd-toggle-star)')
                vim.keymap.set('n', 'ksf',  '<plug>(vimtex-cmd-toggle-frac)')
                vim.keymap.set('x', 'ksf',  '<plug>(vimtex-cmd-toggle-frac)')
                vim.keymap.set('i', '<F7>', '<plug>(vimtex-cmd-create)')
                vim.keymap.set('n', '<F7>', '<plug>(vimtex-cmd-create)')
                vim.keymap.set('x', '<F7>', '<plug>(vimtex-cmd-create)')

                vim.keymap.set('n', 'dsd', '<plug>(vimtex-delim-delete)')
                vim.keymap.set('n', 'csd', '<plug>(vimtex-delim-change-math)')
                vim.keymap.set('n', 'ksd', '<plug>(vimtex-delim-toggle-modifier)')
                vim.keymap.set('x', 'ksd', '<plug>(vimtex-delim-toggle-modifier)')
                vim.keymap.set('n', 'ksD', '<plug>(vimtex-delim-toggle-modifier-reverse)')
                vim.keymap.set('x', 'ksD', '<plug>(vimtex-delim-toggle-modifier-reverse)')
                vim.keymap.set('n', ']]',  '<plug>(vimtex-delim-close)')
                vim.keymap.set('n', '<F8>', '<plug>(vimtex-delim-add-modifiers)')
            end
        },

        {
            "folke/which-key.nvim",
            event = "VeryLazy",
            init = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 300
            end,
            opts = {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        },

        {
            "epwalsh/obsidian.nvim",
            version = "*",  -- recommended, use latest release instead of latest commit
            lazy = true,
            ft = "markdown",
            -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
            -- event = {
                --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
                --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
                --   "BufReadPre path/to/my-vault/**.md",
                --   "BufNewFile path/to/my-vault/**.md",
                -- },
                dependencies = {
                    -- Required.
                    "nvim-lua/plenary.nvim",

                    -- see below for full list of optional dependencies 👇
                },
                opts = {
                    workspaces = {
                        {
                            name = "Obsidian",
                            path = "~/Documents/Obsidian",
                        },
                    },

                    -- see below for full list of options 👇
                },
            },


            --     {
                --         "nvim-neorg/neorg",
                --         build = ":Neorg sync-parsers",
                --         dependencies = { "nvim-lua/plenary.nvim" },
                --         config = function()
                    --             require("neorg").setup {
                        --                 load = {
                            --                     ["core.defaults"] = {}, -- Loads default behaviour
                            --                     ["core.concealer"] = {}, -- Adds pretty icons to your documents
                            --                     ["core.completion"] = {
                                --                         config = {
                                    --                             engine = "nvim-cmp"
                                    --                         }
                                    --                     }, -- Adds pretty icons to your documents
                                    --                     ["core.dirman"] = { -- Manages Neorg workspaces
                                    --                         config = {
                                        --                             workspaces = {
                                            --                                 notes = "~/Projects/Neorg",
                                            --                             },
                                            --                             default_workspace = "notes"
                                            --                         },
                                            --                     },
                                            --                 },
                                            --             }
                                            --         end,
                                            --     },
                                        })
