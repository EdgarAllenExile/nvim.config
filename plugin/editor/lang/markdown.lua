vim.pack.add {
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
}

-- local presets = require 'markview.presets'
require('render-markdown').setup {
  completions = { lsp = { enabled = true } },
}
-- require('markview').setup {
--   -- Path to user tips file
--   preview = {
--     icon_provider = 'internal', -- "mini" or "devicons"
--   },
--   markdown = {
--     headings = presets.headings.glow,
--   },
-- }
