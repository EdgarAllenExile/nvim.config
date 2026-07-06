-- persistence.nvim: Session management
vim.pack.add {
  'https://github.com/folke/persistence.nvim',
}

local persistence = require 'persistence'

persistence.setup {
  dir = vim.fn.stdpath 'state' .. '/sessions/', -- directory where session files are saved
  options = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp' }, -- sessionoptions used for saving
  pre_save = nil, -- a function to call before saving the session
  save_empty = false, -- don't save if there are no open file buffers
}

vim.keymap.set('n', '<leader>sl', function()
  persistence.load()
end, { desc = 'Load session for cwd' })

vim.keymap.set('n', '<leader>sL', function()
  persistence.load { last = true }
end, { desc = 'Load last session' })

vim.keymap.set('n', '<leader>sS', function()
  persistence.select()
end, { desc = 'Select session to load' })

vim.keymap.set('n', '<leader>ss', function()
  persistence.save()
end, { desc = 'Save session now' })

vim.keymap.set('n', '<leader>sd', function()
  persistence.stop()
end, { desc = "Stop session saving ('d'isable)" })
