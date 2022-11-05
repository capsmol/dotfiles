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
      { 'MunifTanjim/nui.nvim', module = 'nui' }
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
  end
}
