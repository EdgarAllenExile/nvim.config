vim.pack.add {
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/igorlfs/nvim-dap-view',
  'https://github.com/mason-org/mason.nvim',
}

-- mason is used only for debug adapters (codelldb via :MasonInstall codelldb);
-- LSPs/formatters/linters are installed with brew/npm — see README.
require('mason').setup()

-- Single-window, tabbed debugger UI; opens/closes with the session
require('dap-view').setup {
  auto_toggle = true,
}

-- Rust debugging (codelldb adapter + configurations) is provided by
-- rustaceanvim; see plugin/editor/lang/rust.lua.

local dap = require 'dap'
local dapview = require 'dap-view'

local nmap_leader = function(suffix, rhs, desc)
  vim.keymap.set('n', '<Leader>' .. suffix, rhs, { desc = desc })
end

nmap_leader('db', dap.toggle_breakpoint, 'Toggle Breakpoint')
nmap_leader('dc', dap.continue, 'Continue / Start')
nmap_leader('di', dap.step_into, 'Step Into')
nmap_leader('do', dap.step_over, 'Step Over')
nmap_leader('dO', dap.step_out, 'Step Out')
nmap_leader('dt', dap.terminate, 'Terminate')
nmap_leader('dv', dapview.toggle, 'Toggle Debug View')
