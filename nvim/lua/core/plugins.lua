local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {'nvim-lua/plenary.nvim'}
		}, {'neovim/nvim-lspconfig'},
		{
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        }
    }, { 'nvim-treesitter/nvim-treesitter' },
    { 'neovim/nvim-lspconfig' }, { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' }, { 'saadparwaiz1/cmp_luasnip' }, 
    { 'L3MON4D3/LuaSnip' },
    {
      'williamboman/mason.nvim',
      opts = {
        ensure_installer = {
            "clang",
            "clang-format",
        }
      },
      build = ":MasonUpdate" 
    }, { 'jose-elias-alvares/null-ls.nvim' },
    { 'm4xshen/autoclose.nvim' }, 
    {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
    }, { 'b3nj5m1n/kommentary' },

})
