local noice = require 'noice'

return {
    ---@type NoiceConfig
  noice.setup({
        ---@type NoiceCmdline
    cmdline = {
      view = 'cmdline_popup',
        format = {
          cmdline = {
            opts = {
              win_options = {
                winhighlight = {
                  FloatBorder = 'DevIconJpegXl', FloatTitle = 'TSParameter'
                }
              }
            }
          },
        help = {
          icon = ' 󰺅 ̫', title = ' Help? ', icon_hl_group = 'LzFlag6',
          opts = {
            win_options = {
              winhighlight = {
                FloatBorder = 'LzFlag6', FloatTitle = 'LzFlag4'
              },
            },
          },
        },
        lua = {
          icon = ' ̫', title = ' Lua Cmd ', icon_hl_group = 'DevIconLua',
            opts = {
              win_options = {
                winhighlight = {
                  FloatBorder = 'DevIconLua', FloatTitle = 'DevIconLuau'
                },
              },
            },
          },
        filter = {
          icon = '', title = ' Shell Cmd ', icon_hl_group = 'DevIconBash',
            opts = {
              win_options = {
                winhighlight = {
                  FloatBorder = 'DevIconBash', FloatTitle = 'RainbowDelimiterGreen',
                },
              },
            },
          },
        },
      },
    lsp_progress = {
      format = {
        {
          '{progress} ',
          key = '',
          contents = {
              { '{data.progress.message} ' },
          },
        },
        { '{spinner} ', hl_group = 'LzFlag1' },
        { '{data.progress.title} ', hl_group = 'LzFlag3' },
        { '{data.progress.client} ', hl_group = 'LzFlag4' },
      },
    },
    lsp_progress_done = {
      { '  ', hl_group = 'LzFlag1' },
      { '{data.progress.title} ', hl_group = 'LzFlag3' },
      { '{data.progress.client} ', hl_group = 'LzFlag4' },
    },
    format = {
      spinner = { name = 'aesthetic' },
      progress = { width = 20 },
    },

        ---@type NoiceConfigViews
      views = {
        popup = {
          scrollbar = false,
          win_options = {
            winhighlight = {
              Normal = 'Normal',
              FloatBorder = 'LzFlag4',
            },
          },
        },
--╞═════════ commandline options ═════════════════════════════════════════════════╡
            cmdline = {
                win_options = {
                    winhighlight = {
                        Normal = 'Normal',
                    },
                },
            },

            cmdline_popup = {
                position = {
                    row = '45%',
                    col = '50%',
                },
                size = {
                    width = 60,
                    height = 'auto',
                },
                win_options = {
                    winhighlight = {
                        Normal = 'Normal',
                        FloatTitle = 'Function',
                    },
                },
            },

            popupmenu = {
                border = {
                    style = 'rounded',
                    padding = { 0, 1 },
                },
                relative = 'editor',
                position = {
                    row = '61%',
                    col = '50%',
                },
                size = {
                    width = 60,
                    height = 12,
                },
                win_options = {
                    winblend = 0,
                    winhighlight = {
                        Normal = 'Normal',
                        FloatBorder = 'Function',
                        PmenuMatch = 'PmenuSel',
                    },
                },
            },
--  ╞══════════════════════════════════════════════════════════════════════════════════╡
            mini = {
                border = {
                    style = 'rounded',
                },
                reverse = false,
                win_options = {
                    winblend = 30,
                    winhighlight = {
                        Normal = 'Normal',
                    },
                },
            },
--  ╞══════════════════════════════════════════════════════════════════════════════════╡
            split = {
                enter = true,
            },

            virtualtext = {
                hl_group = 'NonText',
            },
        },
        ---@type NoiceRoute
        routes = {
            {
                filter = {
                    event = 'lsp',
                    kind = 'progress',
                    find = 'Diagnosing',
                },
                opts = { skip = true },
            }, {
                filter = {
                    event = 'lsp',
                    kind = 'progress',
                    find = 'semantic',
                },
                opts = { skip = true },
            }, {
                filter = {
                    event = 'lsp',
                    kind = 'progress',
                    find = 'completion',
                },
                opts = { skip = true },
            },
        },
    }),
}
