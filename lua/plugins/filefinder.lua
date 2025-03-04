return {
   {
      "nvim-telescope/telescope.nvim",
      enabled = false,
      keys = {
         -- add a keymap to browse plugin files
         -- stylua: ignore
         {
            "<leader>fp",
            function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
            desc = "Find Plugin File",
         },
      },
      -- change some options
      opts = {
         defaults = {
            layout_strategy = "horizontal",
            layout_config = { prompt_position = "top" },
            sorting_strategy = "ascending",
            winblend = 1,
         },
      },
   },

   --install fzf
   {
      'junegunn/fzf',
      run = function()
         vim.fn['fzf#install']() -- Installs fzf binaries
      end,
   },
   -- {
   --    'junegunn/fzf.vim',
   -- },

   -- config options: https://gitee.com/yesuu/fzf-lua
   {
      "ibhagwan/fzf-lua",
      -- optional for icon support
      dependencies = { "nvim-tree/nvim-web-devicons" },
      -- or if using mini.icons/mini.nvim
      -- dependencies = { "echasnovski/mini.icons" },
      opts = {
         winopts = {
            height           = 0.65,            -- window height
            width            = 0.90,            -- window width
            preview = {
               border = "border",
               layout = "horizontal",
               horizontal = "right:50%",
            },
         },
      },
   }
}


