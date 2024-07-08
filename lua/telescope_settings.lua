local tele = require('telescope')

tele.setup({
	defaults = {
		file_ignore_patterns = {
			'.git', 'node_modules', '__pycache__'
		},
		hidden = false,
	},
	pickers = {
		find_files = {
			hidden = false,
		}
	},
})
