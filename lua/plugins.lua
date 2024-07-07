local packer = require('packer')

return packer.startup(function(use)
	use 'rebelot/kanagawa.nvim'
	use 'neovim/nvim-lspconfig'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() 
			local ts = require('nvim-treesitter.install')
			local ts_update = ts.update({ with_sync = true })
			ts_update()
		end
	}
	use 'nvim-tree/nvim-web-devicons'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons' }	
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'nvim-tree/nvim-web-devicons', opt = true }
	}
end)
