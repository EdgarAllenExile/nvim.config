-- Colour schemes (monokai-pro active; catppuccin available as alternative).
-- Plugins are declared in init.lua so they are on the runtimepath early.

require('monokai-pro').setup {
  filter = 'pro',
  plugins = {},
  override = function()
    return {
      FloatBorder = { fg = '#939293', bg = '#2d2a2e' },
      MiniTablineFill = { fg = '#fcfcfa' },
    }
  end,
}

require('catppuccin').setup {}

vim.cmd.colorscheme 'monokai-pro'
