require("nvchad.options")

-- add yours here!

vim.wo.relativenumber = true
vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=50})
augroup END
]])
