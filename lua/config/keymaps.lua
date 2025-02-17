vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<C-w><C-b>', ':bd<CR>', { desc = 'Close buffer' })

vim.keymap.set('n', '<A-h>', '<A-w><A-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-l>', '<A-w><A-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<A-j>', '<A-w><A-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<A-k>', '<A-w><A-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<Leader><S-Tab>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Move Previous Buffer' })
vim.keymap.set('n', '<Leader><Tab>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Move Next Buffer' })
vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', { desc = 'Move to Buffer [#]' })
vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>$', '<Cmd>BufferLineGoToBuffer $<CR>', { desc = 'which_key_ignore' })
