local telescope = require "telescope"

telescope.setup({
  extensions = {
    file_browser = {
      theme = 'dropdown'
    }
  }
})

telescope.load_extension 'file_browser'
