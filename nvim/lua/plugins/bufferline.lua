vim.opt.termguicolors = true
require("bufferline").setup{}
vim.g.mapleader = " "

-- nnoremap <leader>gt :BufferLineCycleNext<CR>
-- nnoremap <leader>gT :BufferLineCyclePrev<CR>
vim.keymap.set('n', 'gt',':BufferLineCycleNext<CR>')
vim.keymap.set('n', 'gT',':BufferLineCyclePrev<CR>')
