local lsp = require('lspconfig')

lsp.gopls.setup({
	settings = {
		gopls = {
			analyses = {
				unusedparams = true, 
			},
			staticchek = true,
			gofumpt = true,
		}
	}
})


lsp.pyright.setup({
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = 'openFilesOnly',
				useLibraryCodeForTypes = true,
			},
		},
	},
})
