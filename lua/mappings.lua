require("nvchad.mappings")

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

map("n", "<leader>gg", function()
	require("nvchad.term").runner({
		pos = "float",
		cmd = "lazygit",
		id = "float_lazygit",
	})
end, { desc = "Open Lazygit in float terminal" })

-- disable default mappings
local nomap = vim.keymap.del
nomap("t", "<ESC>")
