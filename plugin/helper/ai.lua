-- plenary.nvim is declared in init.lua (early bootstrap)
vim.pack.add {
  { src = 'https://github.com/coder/claudecode.nvim' },
}

require('claudecode').setup {
  terminal = {
    provider = 'native', -- avoids a snacks.nvim dependency
  },
}

local nmap_leader = function(suffix, rhs, desc)
  vim.keymap.set('n', '<Leader>' .. suffix, rhs, { desc = desc })
end

nmap_leader('ac', '<Cmd>ClaudeCode<CR>', 'Toggle Claude')
nmap_leader('af', '<Cmd>ClaudeCodeFocus<CR>', 'Focus Claude')
nmap_leader('ar', '<Cmd>ClaudeCode --resume<CR>', 'Resume Claude')
nmap_leader('aC', '<Cmd>ClaudeCode --continue<CR>', 'Continue Claude')
nmap_leader('am', '<Cmd>ClaudeCodeSelectModel<CR>', 'Select Claude model')
nmap_leader('ab', '<Cmd>ClaudeCodeAdd %<CR>', 'Add current buffer')
nmap_leader('aa', '<Cmd>ClaudeCodeDiffAccept<CR>', 'Accept diff')
nmap_leader('ad', '<Cmd>ClaudeCodeDiffDeny<CR>', 'Deny diff')

vim.keymap.set('x', '<Leader>as', '<Cmd>ClaudeCodeSend<CR>', { desc = 'Send selection to Claude' })
