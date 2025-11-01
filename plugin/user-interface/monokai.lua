-- Insert ColourScheme Here
vim.pack.add {
  'https://github.com/loctvl842/monokai-pro.nvim',
}

require('monokai-pro').setup {
  filter = 'pro',
}

vim.cmd.colorscheme 'monokai-pro'
