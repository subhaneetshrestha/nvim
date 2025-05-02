-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Move 5 lines down
map("n", "<C-j>", "5j", opts)

-- Move 5 lines up
map("n", "<C-k>", "5k", opts)

-- Move 5 words forward
map("n", "<C-l>", "5w", opts)

--Move 5 words back
map("n", "<C-h>", "5b", opts)
