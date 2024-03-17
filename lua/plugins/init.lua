return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { enable = true },
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = { "html", "javascript", "css", "fish", "typescript", "tsx", "vim", "lua", "vimdoc" },
			textobjects = {
				select = {
					enable = true,
					lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["aa"] = { query = "@parameter.outer", desc = "parameter" },
						["ia"] = { query = "@parameter.inner", desc = "parameter" },
						["af"] = { query = "@function.outer", desc = "function" },
						["if"] = { query = "@function.inner", desc = "function" },
						["ac"] = { query = "@class.outer", desc = "class" },
						["ic"] = { query = "@class.inner", desc = "class" },
					},
				},
			},
			autotag = { enable = true },
		},
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"JoosepAlviste/nvim-ts-context-commentstring",
			"windwp/nvim-ts-autotag",
		},
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"html-lsp",
				"prettierd",
				"typescript-language-server",
				"eslint-lsp",
				"tailwindcss-language-server",
				"stylua",
				"lua-language-server",
			},
		},
	},
}
