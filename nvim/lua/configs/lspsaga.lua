local lspsaga = require "lspsaga"

lspsaga.init_lsp_saga({
  server_filetype_map = {
    typescript = 'typescript'
  },
  code_action_lightbulb = {
    enable_in_insert = false,
},
})
