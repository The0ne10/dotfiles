require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})

vim.api.nvim_set_keymap("n", "<leader>cic", "<Plug>kommentary_line_increase", {})  -- Одиночное комментирование 
vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", {}) -- Множественное комментирование
vim.api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_increase", {}) 
vim.api.nvim_set_keymap("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {})  -- Одиночное разкомментирование
vim.api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {}) -- Множественное разкоментирование
vim.api.nvim_set_keymap("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {})
