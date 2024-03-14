local M = {}

M.ui = {
	theme = "kanagawa",
	lsp_semantic_tokens = true,
	statusline = {
		theme = "minimal",
	},
	nvdash = {
		load_on_startup = true,
		header = { "                                " },
	},
	cheatsheet = { theme = "simple" }, -- simple/grid
	term = {
		-- hl = "Normal:term,WinSeparator:WinSeparator",
		float = {
			relative = "editor",
			row = 0.1,
			col = 0.1,
			width = 0.8,
			height = 0.8,
			border = "single",
		},
	},
}

return M
