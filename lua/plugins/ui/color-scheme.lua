return {
  'loctvl842/monokai-pro.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    transparent_background = false,
    devicons = true,
    filter = 'pro', -- classic | octagon | pro | machine | ristretto | spectrum
    plugins = {},
  },

  config = function(_, opts)
    local monokai = require 'monokai-pro'
    monokai.setup(opts)
    monokai.load()
    vim.cmd.hi 'Comment gui=none'
    vim.cmd.colorscheme 'monokai-pro'
  end,
}
