return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup( {
      options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {{
          -- function()
          --   local filepath = vim.fn.expand('%:p')  -- Get the absolute path of the current file
          --   local home = vim.fn.expand('~')        -- Get the home directory path
          --   return filepath:gsub('^' .. home, '~') -- Replace home directory with '~'
          -- end,
          "filename",
          path = 1,
          icon = '',  -- Optional: file icon
        }},
        lualine_x = {
          {
            require("noice").api.status.command.get,
            cond = require("noice").api.status.command.has,
            -- color = { fg = "#ff9e64" },
          },
          'encoding', 'fileformat',
        },
        lualine_y = {{
          require("noice").api.status.search.get,
          cond = require("noice").api.status.search.has,
          -- color = { fg = "#ff9e64" },
        },
          "filetype"
        },
        lualine_z = {'progress', 'location'}
      },
      inactive_sections = nil,
      tabline = {
        lualine_a = {'buffers'}, -- Display open buffers
        lualine_b = {'tabs'}, -- Display tab pages
      },
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    })
  end,
}
