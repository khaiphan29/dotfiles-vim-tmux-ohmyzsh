return {
  -- {
  --   "aserowy/tmux.nvim",
  --   config = function() return require("tmux").setup() end
  -- },
  -- {
  --   "vimpostor/vim-tpipeline",
  --   config = function ()
  --     -- disable statusline when entering vim
  --     vim.g.tpipeline_autoembed = 0
  --     --clear duplicate statusline when there are split window
  --     vim.g.tpipeline_clearstl = 1
  --   end
  -- },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
