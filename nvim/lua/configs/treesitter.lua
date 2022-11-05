local treesitter = require "nvim-treesitter.configs"

treesitter.setup({
  ensure_installed = { 'c', 'cpp', 'html', 'css', 'scss', 'javascript', 'typescript', 'lua'},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    disable = { 'html' },
    extended_mode = false,
    max_file_lines = nil,
  },
  autotag = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = false },
})
