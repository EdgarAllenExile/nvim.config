-- Key Maps

-- Helper Functions
-- From Mini, lazyloads binds to improve startup, also shorter.
local nmap_leader = function(suffix, rhs, desc)
  vim.keymap.set('n', '<Leader>' .. suffix, rhs, { desc = desc })
end
local xmap_leader = function(suffix, rhs, desc)
  vim.keymap.set('x', '<Leader>' .. suffix, rhs, { desc = desc })
end

-- Get away from things
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
