local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
map('n', '<leader>w', ':bd<CR>', default_opts) 
map('n', '<leader>t', ':Neotree<CR>', default_opts)

-- TELESCOPE --
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', default_opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', default_opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', default_opts)

