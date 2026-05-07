-- plenary.nvim is declared in init.lua (early bootstrap)
vim.pack.add {
  { src = 'https://github.com/folke/snacks.nvim' },
  { src = 'https://github.com/folke/sidekick.nvim' },
  { src = 'https://github.com/MunifTanjim/nui.nvim' },
  { src = 'https://github.com/zbirenbaum/copilot.lua' },
}

require('snacks').setup {
  picker = { enabled = true },
}

require('sidekick').setup {
  cli = {
    picker = 'snacks',
  },
}

require('copilot').setup {
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = '<A-[>',
      jump_next = '<A-]>',
      accept = '<A-;>',
      refresh = 'gr',
      open = '<M-CR>',
    },
    layout = {
      position = 'bottom', -- | top | left | right | bottom |
      ratio = 0.4,
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    hide_during_completion = true,
    debounce = 15,
    trigger_on_accept = true,
    keymap = {
      accept = '<C-;>',
      accept_word = false,
      accept_line = false,
      next = ']]',
      prev = '[[',
      dismiss = '<C-]>',
      toggle_auto_trigger = false,
    },
  },
}

vim.keymap.set('n', '<Tab>', function()
  local sidekick_nes = require 'sidekick.nes'
  if sidekick_nes.have() then
    if require('sidekick').nes_jump_or_apply() then
      return ''
    end
  end

  return '<Tab>'
end, { expr = true, desc = 'Apply Sidekick NES' })
