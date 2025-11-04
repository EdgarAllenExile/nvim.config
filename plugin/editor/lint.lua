vim.pack.add {
  'https://github.com/mfussenegger/nvim-lint',
}

require('lint').linters_by_ft = {
  markdown = { 'vale' },
  lua = { 'luacheck' },
}
