vim.pack.add {
  'https://github.com/OXY2DEV/markview.nvim',
}

local presets = require 'markview.presets'

require('markview').setup {
  -- Path to user tips file
  preview = {
    icon_provider = 'internal', -- "mini" or "devicons"
  },
  markdown = {
    headings = presets.headings.glow,
  },
}
