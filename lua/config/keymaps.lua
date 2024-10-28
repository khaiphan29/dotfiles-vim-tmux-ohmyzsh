-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap -- for conciseness
-- vim.keymap.del('n', '<C-F>')

-- Delete some default keymaps of LazyVim
-- keymap.del('n', '<leader>/')
-- keymap.del('n', '<leader><space>')
-- keymap.del('n', '<C-_>')
-- keymap.del('v', '<C-_>')

-- Map 0 to move to the first non-blank character of the line
keymap.set('n', '0', '^', { noremap = true, silent = true })
-- keymap.set('n', '$', 'g_', { noremap = true, silent = true })


--Neotree
keymap.set('n', '<C-t>', '<cmd>Neotree toggle<cr>')
keymap.set('n', '<C-f>', '<cmd>Neotree reveal<cr>')

-- Fzf
keymap.set('n', '<C-q>', ':Rg<CR>', { noremap = true, silent = true })
keymap.set('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })

-- Select all
keymap.set('n', '<C-a>', 'gg0vG$')

-- window management
keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tabvim.
keymap.set("n", "<leader>tp", ":tabp<CR>")     --  go to previous tab
keymap.set("n", "Z", ":tab split<CR>")         -- zoom in
keymap.set("n", "zz", ":tabclose<CR>")         -- zoom out
-- buffer management
keymap.set("n", "<leader>bw", ":bw<CR>")

-- Place debugger
keymap.set("n", "<leader>dr", "odebugger<ESC>")

-- Comment codes
keymap.set("n", "<C-_>", 'gcc', { remap = true })
keymap.set("v", "<C-_>", "gc", { remap = true })

-- Auto format using nvim-lsp
keymap.set('n', '<space>f', function()
  vim.lsp.buf.format { async = true }
end)
-- Strip trailing white space
keymap.set('n', '<leader>sw', ':s/\\s\\+$//<CR>', { noremap = true, silent = true })

-- Vim-spec
keymap.set('n', '<Leader>t', ':TestFile<CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>s', ':TestNearest<CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>l', ':TestLast<CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>a', ':TestSuite<CR>', { noremap = true, silent = true })

-- Vim rails
keymap.set("n", "<leader>vc", ":Vcontroller<CR>")
keymap.set("n", "<leader>C", ":Vcontroller ")
keymap.set("n", "<leader>vv", ":Vview<CR>")
keymap.set("n", "<leader>V", ":Vview ")
keymap.set("n", "<leader>vm", ":Vmodel<CR>")
keymap.set("n", "<leader>M", ":Vmodel ")

-- Folding
keymap.set("n", "<leader>f1", ":set foldmethod=syntax<CR>:set foldlevel=1<CR> ")
keymap.set("n", "<leader>f2", ":set foldmethod=syntax<CR>:set foldlevel=2<CR> ")
keymap.set("n", "<leader>f3", ":set foldmethod=syntax<CR>:set foldlevel=3<CR> ")
keymap.set("n", "<leader>f0", ":set foldlevel=99<CR> ")

-- Copilot
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-i>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
keymap.set("i", "<C-h>", 'copilot#Previous()', { silent = true, expr = true })
keymap.set("i", "<C-l>", 'copilot#Next()', { silent = true, expr = true })

-- Dispatch kill rspec port
-- Function to run the kill command using Dispatch
-- Define the function globally
_G.kill_port = function()
  local cmd = "kill -9 $(lsof -n -i4TCP:10001 | grep LISTEN | awk '{ print $2 }')"
  vim.cmd("Dispatch! " .. cmd)
end

-- Setting up a keymap to run the above function
vim.api.nvim_set_keymap('n', '<leader>rs', ':lua kill_port()<CR>', { noremap = true, silent = true })

-- Disable arrow keys in normal mode
vim.api.nvim_set_keymap('n', '<Up>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<NOP>', { noremap = true, silent = true })

-- Disable arrow keys in insert mode
-- vim.api.nvim_set_keymap('i', '<Up>', '<NOP>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<Down>', '<NOP>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<Left>', '<NOP>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<Right>', '<NOP>', { noremap = true, silent = true })

-- Disable arrow keys in visual mode
vim.api.nvim_set_keymap('v', '<Up>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Down>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Left>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Right>', '<NOP>', { noremap = true, silent = true })