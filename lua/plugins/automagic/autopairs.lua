-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  config = function()
    require('nvim-autopairs').setup { disable_filetype = { 'TelescopePrompt', 'spectre_panel', 'scheme', 'lisp' } }
    -- If you want to automatically add `(` after selecting a function or method
  end,
}
