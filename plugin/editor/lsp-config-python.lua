-- Python LSP Configuration
-- Requires: pyright (or python-language-server) installed via pip/brew

local M = {}

M.setup_python_lsp = function()
  -- Check if we have the Python LSP available
  local ok, err = pcall(require, 'pyright')
  if not ok then
    -- Try python-language-server
    local _, ls_err = pcall(require, 'python')
    if not _ then
      vim.notify('No Python LSP configured. Install pyright or python-language-server:', 'warning')
    end
  end
end

return M
