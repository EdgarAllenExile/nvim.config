vim.pack.add {
  'https://github.com/mfussenegger/nvim-lint',
}

-- Note: Python linting comes from the ruff LSP (see lsp-config.lua) and Lua
-- diagnostics from lua_ls, so neither needs an nvim-lint entry.

-- eslint_d daemonizes eslint, avoiding a Node cold start on every lint run.
-- Tie the daemon's lifetime to this Neovim process:
vim.env.ESLINT_D_PPID = vim.fn.getpid()

require('lint').linters_by_ft = {
  -- markdown = { 'vale' },
  javascript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescript = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
}
