-- NEED REFACTOR
local which_key = require 'which-key'

which_key.setup({
  window = {
    border = 'rounded',
    padding = { 2, 2, 2, 2 },
  },
  disable = {
    filetypes = { 'TelescopePrompt', 'neo-tree' },
  },
})

local mapping = {
  f = {
    name = 'file',
    f = { '<cmd>Telescope find_files<cr>'},
  }
}

local opts = {
  prefix = '<leader>'
}

which_key.register(mapping, opts)
