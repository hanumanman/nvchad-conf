-- In order to modify the `lspconfig` configuration:
return {
	"neovim/nvim-lspconfig",
	config = function()
		require("nvchad.configs.lspconfig").defaults()
		require("configs.lspconfig")
	end,
}
