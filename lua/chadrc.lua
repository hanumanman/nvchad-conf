local M = {}

M.ui = {
	theme = "kanagawa",
	lsp_semantic_tokens = true,
	statusline = {
		theme = "minimal",
	},
	nvdash = {
		load_on_startup = true,
		header = {
			"           ",
			"           ",
			"           ",
			"           ",
			"           ",
			" ⟋|､       ",
			"(°､ ｡ 7    ",
			"|､  ~ヽ    ",
			"じしf_,)〳 ",
		},
		buttons = {
			{ "  Find files", "", "Telescope find_files" },
			{ "󰔟  Recent files", "", "Telescope oldfiles" },
			{ "󱔏  Find by words", "", "Telescope live_grep" },
		},
	},
	hl_override = {
		NvDashAscii = { bg = "NONE", fg = "yellow" },
		NvDashButtons = { bg = "NONE", fg = "red" },
	},
	term = {
		-- hl = "Normal:term,WinSeparator:WinSeparator",
		float = {
			relative = "editor",
			row = 0.05,
			col = 0.1,
			width = 0.8,
			height = 0.8,
			border = "single",
		},
	},
}

return M
