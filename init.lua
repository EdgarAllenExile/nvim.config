_G.Config = {}

-- Define custom autocommand group and helper to create an autocommand.
-- Autocommands are Neovim's way to define actions that are executed on events
-- (like creating a buffer, setting an option, etc.).
--
-- See also:
-- - `:h autocommand`
-- - `:h nvim_create_augroup()`
-- - `:h nvim_create_autocmd()`
local gr = vim.api.nvim_create_augroup('custom-config', {})
_G.Config.new_autocmd = function(event, pattern, callback, desc)
  local opts = { group = gr, pattern = pattern, callback = callback, desc = desc }
  vim.api.nvim_create_autocmd(event, opts)
end

-- These want to be loaded early because of some weirdness with the current build of nightly nvim / vim.pack
vim.pack.add {
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
  -- { src = 'https://github.com/OXY2DEV/markview.nvim' },
}
-- Insert ColourScheme Here
vim.pack.add {
  { src = 'https://github.com/OXY2DEV/markview.nvim' },
  { src = 'https://github.com/loctvl842/monokai-pro.nvim' },
  { src = 'https://github.com/catppuccin/nvim' },
  { src = 'https://github.com/sainnhe/sonokai' },
  { src = 'https://github.com/rebelot/kanagawa.nvim' },
}

-- vim.pack.add {https://github.com/catppuccin/nvi
-- -- vim.cmd.colorscheme 'evening'
--
-- vim.pack.add {
--   'https://github.com/oxy2dev/markview.nvim',
-- }
--
-- local presets = require 'markview.presets'
--
-- require('markview').setup {
--   -- path to user tips file
--   preview = {
--     icon_provider = 'internal', -- "mini" or "devicons"
--   },
--   markdown = {
--     headings = presets.headings.glow,
--   },
-- }
