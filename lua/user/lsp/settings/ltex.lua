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
		ltex = {
		   enabled = {"latex", "tex", "bib", "md"},
		   checkFrequency = "edit",
		   language = "es-ES",
		   diagnosticSeverity = "information",
		   completionEnabled = "true",
		   setenceCacheSize = 5000,
		   additionalRules = {
			   enablePickyRules = false,
			   motherTongue = "es-ES",
			},
		   statusBarItem = false,
		},
	},
}

