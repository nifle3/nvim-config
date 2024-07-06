require('nvim-treesitter.configs').setup({
	ensure_installed = {'go', 'lua', 'javascript', 'python', 'vim'},
	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = false,
	},
})
