require("nvchad.options")

vim.o.cursorlineopt = "both"
vim.wo.relativenumber = true
-- Highlight on yank, duration = 50ms
vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=50})
augroup END
]])
