require'nvim-treesitter.configs'.setup {
  ensure_installed = {"vimdoc","vim", "javascript", "typescript", "c", "lua", "rust" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
