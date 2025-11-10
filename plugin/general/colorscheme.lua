-- Insert ColourScheme Here
-- vim.pack.add {
--   'https://github.com/loctvl842/monokai-pro.nvim',
-- }

-- require('monokai-pro').setup {
--   filter = 'pro',
--   plugins = {},
--   override = function()
--     return {
--       FloatBorder = { fg = '#939293', bg = '#2d2a2e' }, -- This is TelescopeBorder highlight group
--       MiniTablineFill = { fg = '#fcfcfa' },
--     }
--   end,
-- }
require('onedarkpro').setup {
  colors = {
    black = '#19181a',
    dark1 = '#221f22',
    bg = '#2d2a2e',
    white = '#fcfcfa',
    red = '#ff6188',
    orange = '#fc9867',
    yellow = '#ffd866',
    green = '#a9dc76',
    cyan = '#78dce8',
    purple = '#ab9df2',
    gray = '#c1c0c0',
    gray2 = '#939293', -- border
    comment = '#727072',
    fg = '#5b595c',
    blue = '#61afef',
    highlight = '#e2be7d',
    none = 'NONE',
  },
}

vim.cmd.colorscheme 'onedark'

local monokaipro = {
  black = '#19181a',
  dark1 = '#221f22',
  bg = '#2d2a2e',
  white = '#fcfcfa',
  red = '#ff6188',
  orange = '#fc9867',
  yellow = '#ffd866',
  green = '#a9dc76',
  cyan = '#78dce8',
  purple = '#ab9df2',
  fg = '#c1c0c0',
  -- gray = '#939293', -- border
  comment = '#727072',
  gray = '#5b595c',
  blue = '#61afef',
  highlight = '#e2be7d',
  none = 'NONE',
}
