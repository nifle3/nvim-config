require('nvim-tree').setup({
	renderer = {
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
		},
	},
})

require('nvim-web-devicons').setup({
	default = true,
})