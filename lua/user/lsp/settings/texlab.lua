return {
	settings = {
	
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
		texlab = {
		   enabled = {"latex", "tex", "bib", "md"},
		   chktex.onEdit = true,
		   chktex.onOpenAndSave = true,
		   diagnosticsDelay = 300,
		   --latexFormatter = 'latexindent',
		},
	},
}

