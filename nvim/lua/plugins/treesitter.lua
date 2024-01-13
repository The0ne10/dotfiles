require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "php", "typescript", "lua", "go", "tsx", "javascript" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
