-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope 
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate',
  }

  -- Treesitter playground
  use { 'nvim-treesitter/playground' }

  -- harpoon 
  use { 'theprimeagen/harpoon' }

  -- undotree
  use { 'mbbill/undotree' }

  -- vim-fugitive
  use { 'tpope/vim-fugitive' }

  -- side and bottom bars
  use { 'nvim-tree/nvim-tree.lua' }
  use { 'nvim-tree/nvim-web-devicons' }
  use { 'nvim-lualine/lualine.nvim' }

  -- theme
  use { 'catppuccin/nvim', as = 'catppuccin' }

  -- lsp
  use {
	  'williamboman/mason.nvim',
	  'williamboman/mason-lspconfig.nvim',
	  'neovim/nvim-lspconfig',
  }

  -- copilot
  use { 'github/copilot.vim' }

end)
