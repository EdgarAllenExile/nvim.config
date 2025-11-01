vim.pack.add {
  'https://github.com/nvim-mini/mini.nvim',
}

require('mini.ai').setup { n_lines = 500 }
require('mini.icons').setup()
require('mini.notify').setup()
require('mini.starter').setup()
require('mini.surround').setup()
