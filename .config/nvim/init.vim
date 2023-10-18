set relativenumber
set tabstop=2
set shiftwidth=2
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

" follow latest release and install jsregexp.
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'} " Replace <CurrentMajor> by the latest released major (first number of latest release)

call plug#end()

" wildmenu config
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer())

" load in luasnip
lua require("luasnip.loaders.from_lua").load({paths = os.getenv("NVIM").."/LuaSnip"})

" luasnip keymap
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'

