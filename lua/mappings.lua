require("nvchad.mappings")

--set keymap
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "-", "@", { desc = "Trigger macro" })

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

map("n", "<leader>fk", ":Telescope keymaps <cr>", { desc = "Telescope Find all keymaps" })
map("n", "<leader>fd", ":Telescope diagnostics <cr>", { desc = "Telescope Find all diagnostics" })
-- disable default mappings
local nomap = vim.keymap.del
-- pressing esc in terminal mode doesnt close the terminal (mostly to use lazygit)
nomap("t", "<ESC>")
