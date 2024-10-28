return {
  -- disable notification
  { 'nvim-notify',                    enabled = false },


  -- auto-save
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
    --     callbacks = {
    --       -- Run :FixWhitespace before saving
    --       before_saving = function()
    --         vim.cmd('FixWhitespace')
    --       end,
    --       after_saving = function()
    --         vim.cmd('FixWhitespace')
    --       end,
    --     },
    }
    end,
  },

  -- handle trailing whitespace
  -- { 'bronson/vim-trailing-whitespace' },
  {
    'ntpeters/vim-better-whitespace',
    config = function ()
      vim.g.better_whitespace_enabled = 1
      -- vim.g.strip_whitespace_on_save = 1
      -- vim.g.strip_whitespace_confirm = 0
      -- vim.g.strip_only_modified_lines = 1   
    end
  },   

  -- research how to use
  { 'mg979/vim-visual-multi' },

  -- use for git,hub
  { 'tpope/vim-fugitive',             enabled = false },
  { 'tpope/vim-rhubarb',              enabled = false },
  { 'f-person/git-blame.nvim' }, -- display the commit author

  -- handle surround like XML tags, parentheses, brackets, quotes,...
  { 'tpope/vim-surround' },

  -- learn to use!
  { 'tpope/vim-dispatch',             enabled = false },

}
