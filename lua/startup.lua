function auto_open_tree() 
	local tree_api = require('nvim-tree.api')
	tree_api.tree.open()
end 

function auto_focus()
	vim.cmd('wincmd p')
end

function startup()
	auto_open_tree()

	vim.schedule(function()
		auto_focus()
	end)
end

vim.api.nvim_create_autocmd('VimEnter', {
	callback = startup
})
