function auto_open_tree() 
	local arg = vim.api.nvim_eval('argv(0)')
	if vim.fn.isdirectory(arg) == 0 then 
		return
	end 

	local tree_api = require('nvim-tree.api')
	vim.cmd.cd(arg)
	tree_api.tree.open()
end 


vim.api.nvim_create_autocmd('VimEnter', {
	callback = auto_open_tree
})
