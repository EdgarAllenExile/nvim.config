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

-- cs.base = {
--   dark = '#19181a',
--   black = '#221f22',
--   red = '#ff6188',
--   green = '#a9dc76',
--   yellow = '#ffd866',
--   blue = '#fc9867',
--   magenta = '#ab9df2',
--   cyan = '#78dce8',
--   white = '#fcfcfa',
--   dimmed1 = '#c1c0c0',
--   dimmed2 = '#939293',
--   dimmed3 = '#727072',
--   dimmed4 = '#5b595c',
--   dimmed5 = '#403e41',
-- }
