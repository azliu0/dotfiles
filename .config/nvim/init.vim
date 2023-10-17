set relativenumber
set tabstop=4
set shiftwidth=4
set showcmd

filetype plugin on

call plug#begin()

" better wildmenu
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" vimtex
Plug 'lervag/vimtex'
	let g:vimtex_view_method = 'zathura'

call plug#end()

" wildmenu config
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer())
