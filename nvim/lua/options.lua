local cmd = vim.cmd
local exec = vim.api.nvim_exec
local g = vim.g
local opt = vim.opt

opt.cursorline = true -- Highlight the text line of the cursor
opt.expandtab = true -- Enable the use of space in tab
opt.tabstop = 2 -- Number of space in a tab
opt.fileencoding = "utf-8" -- File content encoding for the buffer
opt.fillchars = { eob = " " } -- Disable `~` on nonexistent lines
opt.ignorecase = true -- Case insensitive searching
opt.lazyredraw = true -- lazily redraw screen
opt.number = true -- Show numberline
opt.preserveindent = true -- Preserve indent structure as much as possible
opt.relativenumber = true -- Show relative numberline
opt.scrolloff = 10 -- Number of lines to keep above and below the cursor
opt.shiftwidth = 2 -- Number of space inserted for indentation
opt.showmode = false -- Disable showing modes in command line
opt.showtabline = 2 -- always display tabline
opt.signcolumn = "yes" -- Always show the sign column
opt.smartcase = true -- Case sensitivie searching
opt.splitbelow = true -- Splitting a new window below the current one
opt.splitright = true -- Splitting a new window at the right of the current one
opt.swapfile = false -- Disable use of swapfile for the buffer
opt.termguicolors = true -- Enable 24-bit RGB color in the TUI
opt.timeoutlen = 300 -- Length of time to wait for a mapped sequence
opt.undofile = true -- Enable persistent undo
opt.updatetime = 300 -- Length of time to wait before triggering the plugin
opt.wrap = false -- Disable wrapping of lines longer than the width of window
opt.writebackup = false -- Disable making a backup before overwriting a file

g.highlighturl_enabled = true -- highlight URLs by default
g.mapleader = ";" -- set leader key

cmd('colorscheme tokyonight-night') -- set colorscheme
