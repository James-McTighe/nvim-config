-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- In lua/config/keymaps.lua
-- Force delete the existing mapping if it's already set
vim.keymap.del("n", "<leader>gd")

-- Then set your new one
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Diffview Open" })
