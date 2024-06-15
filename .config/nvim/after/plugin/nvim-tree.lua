vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_respect_buf_cwd = 1

require("nvim-tree").setup({
  open_on_tab = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    indent_markers = {
      enable = true,
    }
  }
})

vim.keymap.set('n', '<C-b>', ':NvimTreeFindFileToggle<CR>')
