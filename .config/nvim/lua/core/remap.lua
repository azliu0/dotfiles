vim.g.mapleader = " "

vim.opt.showcmd=true
vim.opt.autowrite=true
vim.opt.autoread=true
vim.opt.cursorline=false

-- default tab width
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.shiftround=true
vim.opt.expandtab=true

-- numbering
vim.opt.number=true
vim.opt.relativenumber=true

-- number highlighting gray
vim.cmd('highlight LineNr ctermfg=gray guifg=gray')
vim.cmd('highlight CursorLineNr ctermfg=lightgray guifg=lightgray')

-- set error column bg
vim.cmd('highlight SignColumn guibg=NONE ctermbg=NONE')

-- may change later
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>pv', '<C-w>h')
vim.keymap.set('n', '<leader>pc', '<C-w>l')

-- load shell profile
vim.opt.shell = "/bin/zsh"
vim.opt.shellcmdflag = "-ic"
vim.env.INSIDE_NVIM = "1" -- required to handle interactive shell properly

-- quit tree and file at the same time
function SaveAndQuit()
  vim.cmd('w')
  local nvim_tree = require'nvim-tree.view'
  if nvim_tree.is_visible() then
    vim.cmd('NvimTreeClose')
  end
  vim.cmd('q')
end

vim.api.nvim_set_keymap('n', '<leader>wq', ':lua SaveAndQuit()<CR>', { noremap = true, silent = true })
