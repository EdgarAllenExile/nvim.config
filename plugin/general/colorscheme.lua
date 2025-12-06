-- Insert ColourScheme Here
-- vim.pack.add {
--   'https://github.com/loctvl842/monokai-pro.nvim',
-- }

require('monokai-v2').setup {
  -- Treesitter settings
  treesitter = {
    italic = true,
  },

  -- Filter selection (default: classic for dark, light for light background)
  filter = 'pro', -- classic | light | machine | octagon | pro | ristretto | spectrum
}

require('monokai-pro').setup {
  filter = 'pro',
  plugins = {},
  override = function()
    return {
      FloatBorder = { fg = '#939293', bg = '#2d2a2e' }, -- This is TelescopeBorder highlight group
      MiniTablineFill = { fg = '#fcfcfa' },
      -- MarkviewPalette1 = { fg = '#ff6188' },
      -- MarkviewPalette2 = { fg = '#ab9df2' },
      -- MarkviewPalette3 = { fg = '#78dce8' },
      -- MarkviewPalette4 = { fg = '#a9dc76' },
    }
  end,
}
require('catppuccin').setup {
  color_overrides = {
    latte = {
      base = '#ff0000',
      mantle = '#242424',
      crust = '#474747',
    },
  },
}

-- require('sonokai').setup {
--   sonokai_style = 'atlantis',
-- }

-- require('sonokai').setup{
--  let g:sonokai_style = 'maia'
--  let g:sonokai_better_performance = 1
-- }

vim.cmd.colorscheme 'monokai-pro'
-- vim.cmd.colorscheme 'sonokai'

-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = 'markdown',
--   callback = function()
--     vim.cmd.colorscheme 'sonokai'
--   end,
-- })

-- Optional: Autocommand to return to default colorscheme when leaving specific filetypes
-- This is useful if you have a default colorscheme and only want specific ones for certain filetypes.
-- vim.api.nvim_create_autocmd('BufLeave', {
--   pattern = { '*.md' }, -- Adjust patterns as needed
--   callback = function()
--     -- Only set back to default if the new buffer is not one of the special filetypes
--     -- This prevents flickering if you switch between two special filetypes
--     if vim.bo.filetype ~= 'markdown' then
--       vim.cmd.colorscheme 'monokai-pro'
--     end
--   end,
-- })

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
