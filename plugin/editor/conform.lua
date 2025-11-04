vim.pack.add { 'https://github.com/stevearc/conform.nvim' }

require('conform').setup {
  lsp_format = 'fallback',
  formatters_by_ft = {
    lua = { 'stylua' },
  },
}
