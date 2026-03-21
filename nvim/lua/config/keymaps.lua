vim.g.mapleader = " "

local map = vim.keymap.set

-- File tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })

-- Window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move left" })
map("n", "<C-l>", "<C-w>l", { desc = "Move right" })
map("n", "<C-j>", "<C-w>j", { desc = "Move down" })
map("n", "<C-k>", "<C-w>k", { desc = "Move up" })

-- Save and quit
map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- Clear search highlight
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear highlights" })

-- System clipboard copy/paste
map("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })
map("n", "<C-v>", '"+p', { desc = "Paste from clipboard" })
map("i", "<C-v>", '<C-r>+', { desc = "Paste from clipboard" })
map("v", "<C-x>", '"+d', { desc = "Cut to clipboard" })
