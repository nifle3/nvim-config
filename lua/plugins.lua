local packer = require('packer')

return packer.startup(function(use)
	use 'rebelot/kanagawa.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons'
		}
	}
end)
