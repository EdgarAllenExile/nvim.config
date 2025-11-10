-- Insert ColourScheme Here
vim.pack.add {
  'https://github.com/loctvl842/monokai-pro.nvim',
}

require('monokai-pro').setup {
  filter = 'pro',
  plugins = {},
  override = function()
    return {
      FloatBorder = { fg = '#939293', bg = '#2d2a2e' }, -- This is TelescopeBorder highlight group
      MiniTablineFill = { fg = '#fcfcfa' },
    }
  end,
}

vim.cmd.colorscheme 'monokai-pro'
