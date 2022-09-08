-- NEED REFACTORING --
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local g = vim.g
local opt = vim.opt

g.translate_source = 'ru'
g.translate_target = 'en'

g.mapleader = ';'

opt.termguicolors = true
cmd('colorscheme nightfox')

opt.cursorline = true
opt.spelllang= { 'en_us', 'ru' }
opt.number = true
opt.hidden = true

opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.expandtab = true
opt.smartindent = true

opt.scrolloff = 15
opt.shell = 'fish'

vim.o.sessionoptions='blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal'

require("nvim-tree").setup({
  open_on_setup = false,
  open_on_setup_file = false,
})

require('nvim-treesitter.configs').setup {
  ensure_installed = {'lua', 'javaScript'},
  sync_install = false,
  auto_install = true,
  ignore_install = { 'phpdoc' },
  highlight = { enable = true }
}

require('lualine').setup()

require("bufferline").setup{
  options = {
    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
    close_command = "bdelete! %d",
  }
}

require('Comment').setup()

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

require('mason').setup()
require('mason-lspconfig').setup()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup {
	sources = {
    { name = 'nvim_lsp' }
  },
  mapping = {
          ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
          ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
          ['<Tab>'] = cmp.mapping.confirm({ select = true }),
  },
} 

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
}

require'lspconfig'.sumneko_lua.setup{
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require('lspkind')
