vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Explore file tree.
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Move visual selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

