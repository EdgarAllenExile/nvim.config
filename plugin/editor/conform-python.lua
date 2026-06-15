-- Python-specific formatter configuration for conform.nvim
-- Requires: ruff, black, or isort installed

return function()
  require('conform').setup {
    default_format_opts = {
      lsp_format = 'fallback',
      timeout_ms = 1000,
    },
    format_on_save = {
      lsp_format = 'fallback',
      timeout_ms = 1000,
    },
    formatters_by_ft = {
      javascript = { 'prettierd' },
      javascriptreact = { 'prettierd' },
      json = { 'prettierd' },
      lua = { 'stylua' },
      rust = { 'rustfmt' },
      typescript = { 'prettierd' },
      python = {
        -- Fast formatting with Ruff
        'ruff',
        -- Sort imports with isort (optional)
        { cmd = 'isort', args = {} }
      },
    },
  }

  -- Reload formatters list if needed
  local opts = {
    timeout_ms = 1000,
  }

  require('conform').format({ 'python' }, opts)
end
