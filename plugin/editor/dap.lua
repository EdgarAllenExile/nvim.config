vim.pack.add {
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/nvim-neotest/nvim-nio',
}

require('dapui').setup()
-- require('dap').setup()

local dap = require 'dap'
dap.adapters.codelldb = {
  type = 'executable',
  command = 'codelldb', -- or if not in $PATH: "/absolute/path/to/codelldb"

  -- On windows you may have to uncomment this:
  -- detached = false,
}
dap.configurations.rust = {
  {
    name = 'Launch file',
    type = 'codelldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}
