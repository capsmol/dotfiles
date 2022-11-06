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
