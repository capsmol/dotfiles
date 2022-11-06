local packer = require 'packer'

packer.startup {
  function(use)
  --plugin manager
  use {'wbthomason/packer.nvim'}
  -- Improve startup time for Neovim
  use {'lewis6991/impatient.nvim'}
  -- Colortheme
  use {'folke/tokyonight.nvim'}
  -- Lua functions
  use {
    'nvim-lua/plenary.nvim',
    module = 'plenary',
  }
  -- Smarter Splits
  use {
    'mrjones2014/smart-splits.nvim',
    module = 'smart-splits',
    config = function() require 'configs.smart-splits' end,
  }
  -- Icons
  use {
    'nvim-tree/nvim-web-devicons',
    module = 'nvim-web-devicons',
    config = function() require 'configs.nvim-web-devicons' end,
  }
  -- LSP Icons
  use {
    'onsails/lspkind.nvim',
    module = 'lspkind',
    config = function() require 'configs.lspkind' end,
  }
  -- Bufferline
  use {
    'akinsho/bufferline.nvim',
    module = 'bufferline',
    event = 'UIEnter',
    config = function() require 'configs.bufferline' end,
  }
  -- Better buffer closing
  use {
    'famiu/bufdelete.nvim',
    module = 'bufdelete',
    cmd = { 'Bdelete', 'Bwipeout' }
  }
  -- Window picker
  use {
    's1n7ax/nvim-window-picker',
    tag = 'v1.*',
    module = 'window-picker',
    config = function() require 'configs.window-picker' end,
  }
  -- File explorer
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    module = 'neo-tree',
    cmd = 'Neotree',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    },
    setup = function() vim.g.neo_tree_remove_legacy_commands = true end,
    config = function() require 'configs.neo-tree' end,
  }
  -- Statusline
  use{
    'rebelot/heirline.nvim',
    config = function() require 'configs.heirline' end
  }
  -- Parenthesis highlighting
  use {
    'p00f/nvim-ts-rainbow',
    after = 'nvim-treesitter'
  }
  -- Autoclose tags
  use {
    'windwp/nvim-ts-autotag',
    after = 'nvim-treesitter'
  }
  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }
  -- Context based commenting
  use {
    'numToStr/Comment.nvim',
    config = function() require 'configs.comment' end
  }
   -- Syntax highlighting
   use {
     'nvim-treesitter/nvim-treesitter',
     run = function() require('nvim-treesitter.install').update { with_sync = true } end,
     event = 'BufEnter',
     config = function() require 'configs.treesitter' end,
   }
   -- Snippet collection
   use {
     'rafamadriz/friendly-snippets',
     opt = true
   }
   -- Snippet engine
   use {
     'L3MON4D3/LuaSnip',
     module = 'luasnip',
     wants = 'friendly-snippets',
     config = function() require 'configs.luasnip' end,
   }
   -- Completion engine
   use {
     'hrsh7th/nvim-cmp',
     event = 'InsertEnter',
     config = function() require 'configs.cmp' end,
   }
   -- Snippet completion source
   use {
     'saadparwaiz1/cmp_luasnip',
     after = 'nvim-cmp',
   }
   -- Buffer completion source
   use {
     'hrsh7th/cmp-buffer',
     after = 'nvim-cmp',
   }
   -- Path completion source
   use {
     'hrsh7th/cmp-path',
     after = 'nvim-cmp',
   }
   -- LSP completion source
   use {
     'hrsh7th/cmp-nvim-lsp',
     after = 'nvim-cmp'
   }
   -- Built-in LSP
   use {
     'neovim/nvim-lspconfig',
     config = function() require 'configs.lspconfig' end,
   }
   -- Package Manager
   use {
     'williamboman/mason.nvim',
     config = function() require 'configs.mason' end,
   }
   -- LSP manager
   use {
    'williamboman/mason-lspconfig.nvim',
    after = {'mason.nvim', 'nvim-lspconfig'},
    config = function() require 'configs.mason-lspconfig' end,
   }
   -- Formatting and linting
   use {
     'jose-elias-alvarez/null-ls.nvim',
     event = 'BufEnter',
     config = function() require 'configs.null-ls' end,
   }
   -- null-ls manager
   use {
     'jayp0521/mason-null-ls.nvim',
     after = {'mason.nvim', 'null-ls.nvim'},
     config = function() require 'configs.mason-null-ls' end,
   }
   -- LSP symbols
   use {
     'stevearc/aerial.nvim',
     module = 'aerial',
     config = function() require 'configs.aerial' end,
   }
   -- Fuzzy finder
   use {
    'nvim-telescope/telescope.nvim',
    module = 'telescope',
    config = function() require 'configs.telescope' end,
    requires = { {'nvim-lua/plenary.nvim'} }
   }
   -- Fuzzy finder syntax support
   use {
     'nvim-telescope/telescope-fzf-native.nvim',
     after = 'telescope.nvim',
     run = 'make',
     config = function() require('telescope').load_extension 'fzf' end,
   }
   -- Color highlighting
   use {
     'NvChad/nvim-colorizer.lua',
     event = 'BufEnter',
     config = function() require 'configs.colorizer' end,
   }
   -- Indentation
   use {
     'lukas-reineke/indent-blankline.nvim',
     event = 'BufEnter',
     config = function() require 'configs.indent-line' end,
   }
   -- Keymaps popup
   -- use {
   --   'folke/which-key.nvim',
   --   config = function() require 'configs.which-key' end,
   -- }
   -- Smooth escaping
   use {
     'max397574/better-escape.nvim',
     event = 'InsertCharPre',
     config = function() require 'configs.better_escape' end,
   }
   -- Session manager
   use {
     'rmagatti/auto-session',
     config = function() require 'configs.auto-session' end,
   }
   -- Session-switcher
   use {
     'rmagatti/session-lens',
     requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
     config = function () require 'configs.session-lens' end
   }
   -- Telescope-file-browser
   use {
     'nvim-telescope/telescope-file-browser.nvim',
   }
   -- LSP Saga
   use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function() require 'configs.lspsaga' end
  })
  -- ts-autotag
  use {
    'windwp/nvim-ts-autotag',
    config = function() require 'configs.ts-autotag' end
  }
  end
}
