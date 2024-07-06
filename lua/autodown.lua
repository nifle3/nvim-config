function autodown()
	local tree = require('nvim-tree.view')
	if tree.is_visible() then
		tree.close()
	end
end

function endbuffer()
	local is_nvim_list_wins = vim.api.nvim_list_wins() == 1 
	local is_nvim_tree = vim.api.nvim_buf_get_name(0):match('NvimTree_') ~= nil
	if is_nvim_list_wins and is_nvim_tree then
		vim.cmd('quit')
	end 
end

vim.api.nvim_create_autocmd('QuitPre', {
	callback = autodown
})

vim.api.nvim_create_autocmd('BufEnter', {
	callback = endbuffer,
	nested = true,
})
