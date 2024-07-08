require('nvim-treesitter.configs').setup({
	ensure_installed = {'go', 'python'}, 
	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = false,
	},
})
