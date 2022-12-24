local status, telescope = pcall(require, "telescope") 
if (not status) then return end

telescope.setup({
  extensions = {
    file_browser = {
      theme = 'dropdown'
    }
  }
})

telescope.load_extension 'file_browser'
