-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope 
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
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
  use {
    'catppuccin/nvim',
    as = 'catppuccin', 
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
      vim.cmd("colorscheme catppuccin-latte")
    end
  }

  -- lsp
  -- use {
	--  'williamboman/mason.nvim',
	--  'williamboman/mason-lspconfig.nvim',
	--  'neovim/nvim-lspconfig',
  -- }

  -- vimtex
  use {
   "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
    end
  }

  -- copilot
  -- use { 'github/copilot.vim' }

end)
