vim.g.mapleader = " "

local map = vim.keymap.set

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree<CR>')
vim.keymap.set('n', '<leader>n', ':Neotree close<CR>')

vim.keymap.set('n', '<leader>o', ':Neotree git_status<CR>')

-- nvim
vim.keymap.set('i', 'jj', '<ESC>', opts)
