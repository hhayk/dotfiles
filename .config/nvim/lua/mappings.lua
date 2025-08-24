require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- copilot
vim.api.nvim_set_keymap('i', '<C-l>', 'copilot#Accept()', { expr = true, silent = true, noremap = false })

-- rust-analizer
map("n", "<C-l>", "<cmd> RustLsp explainError <cr>", { desc = "Explain Error" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
