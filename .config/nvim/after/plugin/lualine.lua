require('lualine').setup({
  options = {
    theme = "catppuccin-latte",
    icons_enabled = true,
    -- section_separators = '',
    always_divide_middle = true,
    -- component_separators = '|',
    globalstatus = true,
  },
  sections = {
    -- left
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = {
      {
        'filename',
        path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
      },
    },

    -- right
    lualine_x = {'encoding', 'fileformat'},
    lualine_y = { {'filetype', colored = true} },
    lualine_z = {'filesize'},
  },
  extensions = { 'quickfix', 'fugitive', 'fzf' },
})

vim.o.laststatus = 3
