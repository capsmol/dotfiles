local set = vim.keymap.set
local default_opts = {noremap = true, silent = true}
local default_opts_test = function (desc)
   return {noremap = true, silent = true, desc = desc}
end
local builtin = require('telescope.builtin')

-- Smart Splits
-- set('n', '<C-h>', ":lua require('smart-splits').move_cursor_left<CR>", default_opts)
-- set('n', '<C-j>', require('smart-splits').move_cursor_down, default_opts)
-- set('n', '<C-k>', require('smart-splits').move_cursor_up, default_opts)
-- set('n', '<C-l>', require('smart-splits').move_cursor_right, default_opts)

-- Navigate buffers
set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', default_opts)
set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', default_opts)
set('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

-- Bufdelete
set('n', '<leader>w', '<cmd>bdelete<cr>', default_opts)
-- set('n', '<leader>C', function() require("bufdelete").bufdelete(0, true) end)

-- NeoTree
set('n', '<leader>t', '<cmd>Neotree toggle<cr>', default_opts)
set('n', '<leader>o', '<cmd>Neotree focus<cr>', default_opts)

-- Telescope
set('n', '<leader>ff', builtin.find_files, default_opts_test('find files'))
set('n', '<leader>fg', builtin.live_grep, default_opts)
set('n', '<leader>fb', builtin.buffers, default_opts)
set('n', '<leader>fh', builtin.help_tags, default_opts)
set('n', '<space>fb', '<cmd>Telescope file_browser<cr>', default_opts)

-- Session lens
set('n', '<leader>fs', '<cmd>SearchSession<cr>', default_opts)

-- LSP SAGA
set('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', default_opts)
set('n', '<leader>gr', '<cmd>Lspsaga rename<CR>', default_opts)
set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', default_opts)
set('n', '<leader>sh', '<cmd>Lspsaga signature_help<CR>', default_opts)
set('n', '<leader>gp', '<cmd>Lspsaga preview_definition<CR>', default_opts)

