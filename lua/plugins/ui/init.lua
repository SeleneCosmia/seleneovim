return {
    {
        'lukas-reineke/indent-blankline.nvim',
        event = 'ColorScheme',
        main = 'ibl',
        config = function()
            require('plugins.ui.ibl')
        end,
    },

    { 'MunifTanjim/nui.nvim', event = 'VeryLazy' },

    {
        'rcarriga/nvim-notify',
        event = 'VeryLazy'
    },

    {
        'folke/noice.nvim',
        event = 'VeryLazy',
        dependencies = {
            'MunifTanjim/nui.nvim',
            'rcarriga/nvim-notify',
        },
        config = function()
            local notify = require('notify')
            notify.setup({ background_colour = '#170f0d' })

            require 'plugins.ui.noice'
        end,
    },

    {
        'tamton-aquib/flirt.nvim',
        event = 'VeryLazy',
        config = function()
            require('flirt').setup {
                close_command = 'Q',
                exclude_fts = { 'notify', 'cmp_menu', 'lazy' },
            }
        end,
    },

    {
        'willothy/nvim-cokeline',
        event = 'VeryLazy',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        opts = {},
    },

    {
        'SeleneCosmia/rainbow-delimiters.nvim',
        config = function()
            local g = vim.g
            local rd = require 'rainbow-delimiters'

            g.rainbow_delimiters = {
                strategy = {
                    [''] = rd.strategy['global'],
                    vim = rd.strategy['local']
                },
                query = {
                    [''] = 'rainbow-delimiters',
                },
                priority = {
                    [''] = 110,
                },
            }
        end
    },

    {
        'gorbit99/codewindow.nvim',
        config = function()
            require 'plugins.ui.codewindow'
        end,
    },

    {
        'gen740/SmoothCursor.nvim',
        event = 'BufEnter',
        config = function()
            require 'ui.eyecandy.smooth_cursor'.config()
        end,
    },

    {
        'nvimdev/3danimation.nvim',
        version = 'false',
        cmd = { 'Cube', 'Dounts' },
        enabled = false,
    },

    {
        'mvllow/modes.nvim',
        event = 'VeryLazy',
        enabled = false,
        config = function()
            require 'modes'.setup({
                ignore_filetypes = {
                    'neo-tree',
                    'TelescopePrompt',
                    'notify',
                    'lazy'
                }
            })
        end
    },
}