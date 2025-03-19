vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('BurntSushi/ripgrep')
  use {
      'nvim-telescope/telescope.nvim',
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
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
  }

  use('neovim/nvim-lspconfig')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')

  use('hrsh7th/cmp-vsnip')
  use('hrsh7th/vim-vsnip')

  use('github/copilot.vim')
  use{'j-hui/fidget.nvim', tag = 'v1.0.0'}
end)
