vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('BurntSushi/ripgrep')
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = {
          "nvim-lua/plenary.nvim",
          { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      }
  }
  use 'navarasu/onedark.nvim'
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }

  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
--  use('github/copilot.vim')


end)
