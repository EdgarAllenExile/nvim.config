vim.pack.add {
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects', version = 'main' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context', version = 'main' },
}

require('nvim-treesitter').setup()

require('nvim-treesitter.configs').setup {
  auto_install = true,
  ensure_installed = {
    'diff',
    'git_config',
    'git_rebase',
    'gitattributes',
    'gitcommit',
    'gitignore',
    'html',
    'javascript',
    'json',
    'lua',
    'markdown',
    'rust',
    'sql',
    'toml',
    'vim',
    'yaml',
  },
  highlight = {
    enable = true,
  },
  sync_install = true,
  ignore_install = {},
  modules = {},
}
