-- Insert ColourScheme Here
vim.pack.add {
  'https://github.com/loctvl842/monokai-pro.nvim',
}

require('monokai-pro').setup {
  filter = 'pro',
  -- background_clear = { 'float_win' },
  --
  override = function()
    return {
      FloatBorder = { fg = '#fcfcfa' },
    }
  end,
}

vim.cmd.colorscheme 'monokai-pro'
