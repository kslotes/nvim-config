require('nvim-treesitter.install').compilers = { "gcc" }
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "lua", "vim", "c", "go", "templ"},

  sync_install = false,

  auto_install = true,


  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

vim.filetype.add({
    extension = {
        templ = "templ",
    },
})
