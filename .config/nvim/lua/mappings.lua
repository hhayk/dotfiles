require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- copilot
vim.api.nvim_set_keymap('i', '<C-l>', 'copilot#Accept()', { expr = true, silent = true, noremap = false })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
