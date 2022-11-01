local status_ok, neotree = pcall(require, "neo-tree")
if not status_ok then return end

neotree.setup({
  close_if_last_window = true,
  enable_diagnostics = false,
  event_handlers = {
    { event = "neo_tree_buffer_enter", handler = function(_) vim.opt_local.signcolumn = "auto" end },
  }
})
