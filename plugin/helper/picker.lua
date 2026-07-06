-- snacks.nvim: only the picker module is enabled — everything else snacks
-- offers (statusline, notify, explorer, git, ...) is covered by mini.nvim.
vim.pack.add {
  'https://github.com/folke/snacks.nvim',
}

require('snacks').setup {
  picker = {
    enabled = true,
    ui_select = true, -- replace vim.ui.select
  },
}

local picker = Snacks.picker

vim.keymap.set('n', '<leader>fh', function() picker.help() end, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fk', function() picker.keymaps() end, { desc = '[F]ind [K]eymaps' })
vim.keymap.set('n', '<leader>ff', function() picker.files() end, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fs', function() picker.pickers() end, { desc = '[F]ind [S]elect Picker' })
vim.keymap.set({ 'n', 'x' }, '<leader>fw', function() picker.grep_word() end, { desc = '[F]ind current [W]ord' })
vim.keymap.set('n', '<leader>fg', function() picker.grep() end, { desc = '[F]ind by [G]rep' })
vim.keymap.set('n', '<leader>fd', function() picker.diagnostics() end, { desc = '[F]ind [D]iagnostics' })
vim.keymap.set('n', '<leader>fr', function() picker.resume() end, { desc = '[F]ind [R]esume' })
vim.keymap.set('n', '<leader>f.', function() picker.recent() end, { desc = '[F]ind Recent Files' })
vim.keymap.set('n', '<leader>fu', function() picker.undo() end, { desc = '[F]ind [U]ndo history' })
vim.keymap.set('n', '<leader><leader>', function() picker.buffers() end, { desc = 'Find existing buffers' })
vim.keymap.set('n', '<leader>/', function() picker.lines() end, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>f/', function() picker.grep_buffers() end, { desc = '[F]ind [/] in Open Files' })

-- Shortcut for searching your Neovim configuration files
vim.keymap.set('n', '<leader>fn', function()
  picker.files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[F]ind [N]eovim config files' })
