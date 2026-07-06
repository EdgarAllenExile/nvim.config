vim.pack.add {
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/nvim-neotest/nvim-nio',
}

require('dapui').setup()

-- Rust debugging (codelldb adapter + configurations) is provided by
-- rustaceanvim; see plugin/editor/lang/rust.lua.
