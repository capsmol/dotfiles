vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use 'onsails/lspkind-nvim'

  -- use 'EdenEast/nightfox.nvim'

  use 'williamboman/mason.nvim'

  use 'williamboman/mason-lspconfig.nvim'

  use 'neovim/nvim-lspconfig'

  use {
    'hrsh7th/nvim-cmp',
    config = function() require "configs.cmp" end,
  }

  use {
    "saadparwaiz1/cmp_luasnip",
    after = "nvim-cmp",
  }

  use {
    'hrsh7th/cmp-buffer',
    after = "nvim-cmp",
  }

  use {
    'hrsh7th/cmp-nvim-lsp',
    after = "nvim-cmp"
  }

  use {
    "hrsh7th/cmp-path",
    after = "nvim-cmp"
  }


  use 'norcalli/nvim-colorizer.lua'

  -- List to help you solve all the troubles in code
  use { "folke/trouble.nvim" }

  -- Highlighting the word under the cursor
  use { "RRethy/vim-illuminate" }

  -- Autoclose tags
  use { "windwp/nvim-ts-autotag" }

  -- use {
  --   'kyazdani42/nvim-tree.lua',
  --   requires = {
  --     'kyazdani42/nvim-web-devicons',
  --   },
  --   tag = 'nightly'
  -- }

  -- File explorer
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    setup = function() vim.g.neo_tree_remove_legacy_commands = true end,
    config = function() require "configs.neo-tree" end,
  }


  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use {
  'rmagatti/auto-session',
  config = function()
    require('auto-session').setup {
      log_level = 'info',
      auto_session_suppress_dirs = {'~/', '~/Projects'}
    }
  end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require'telescope'.setup {} end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    config = function() require "configs.treesitter" end,
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
end)
