local neo_tree = require('neo-tree')

neo_tree.setup({
  close_if_last_window = true,
  enable_diagnostics = false,
  source_selector = {
    winbar = false,
    content_layout = 'center',
  },
  window = {
    width = 30,
    mappings = {
      o = 'open',
      --O = function(state) astronvim.system_open(state.tree:get_node():get_id()) end,
      H = 'prev_source',
      L = 'next_source',
      h = 'toggle_hidden',
    },
  },
  filesystem = {
    follow_current_file = true,
    hijack_netrw_behavior = 'open_current',
    use_libuv_file_watcher = true,
  },
  event_handlers = {
    { event = 'neo_tree_buffer_enter', handler = function(_) vim.opt_local.signcolumn = 'auto' end },
  },
})
