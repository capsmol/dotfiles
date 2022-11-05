local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local set = vim.keymap.set

-- Smart Splits
set('n', '<C-h>', require('smart-splits').move_cursor_left)
set('n', '<C-j>', require('smart-splits').move_cursor_down)
set('n', '<C-k>', require('smart-splits').move_cursor_up)
set('n', '<C-l>', require('smart-splits').move_cursor_right)

-- Navigate buffers
set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>')
set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>')

-- Bufdelete
set('n', '<leader>c', function() require("bufdelete").bufdelete(0, false) end)
set('n', '<leader>C', function() require("bufdelete").bufdelete(0, true) end)

-- NeoTree
set('n', '<leader>t', '<cmd>Neotree toggle<cr>')
set('n', '<leader>o', '<cmd>Neotree focus<cr>')
