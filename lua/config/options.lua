-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Add any additional options here
local opt = vim.opt -- for conciseness

-- bypass the warn to import lazyconfig first
vim.g.lazyvim_check_order = false

-- test
vim.g['test#strategy'] = 'dispatch' -- For vim-test

-- vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#000000", nocombine = true })
-- vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#666666", nocombine = true })

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 3
opt.shiftwidth = 3
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- show key input
opt.showcmd = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- Autosave
vim.g.auto_save = 2

-- Others
opt.hidden = true
opt.iskeyword:append("-")
vim.o.mouse = ""
vim.g.autoformat = false
vim.g["test#strategy"] = "dispatch" -- For Vimspec- Add any additional options here
