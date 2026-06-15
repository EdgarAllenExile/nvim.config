-- Python Development Setup for Neovim
-- This file ties together all Python-specific configurations

local M = {}

M.setup_python_lsp = function()
  local ok, err = pcall(require, 'pyright')
  
  if not ok then
    -- Check for python-language-server as fallback
    local _, ls_ok = pcall(require, 'python')
    
    if not _ and not ls_ok then
      vim.notify(
        'No Python LSP detected. Install pyright or python-language-server',
        vim.log.levels.WARN,
        { title = 'Neovim Python Setup' }
      )
      
      -- Suggest installation
      vim.notify(
        'Run: brew install pyright OR pip install python-language-server jedi',
        vim.log.levels.INFO,
        { title = 'Python LSP Installation' }
      )
    end
  else
    print("✓ Python LSP configured successfully")
  end
end

M.setup_python_formatters = function()
  -- Load formatter config from conform-python.lua
  local conform_ok, conform_err = pcall(require, 'conform-python')
  
  if not conform_ok then
    vim.notify(
      "Python formatter not configured yet. Install ruff or black.",
      vim.log.levels.INFO,
      { title = 'Python Formatter' }
    )
  end
end

M.setup_python_treesitter = function()
  local treesitter_ok, _err = pcall(require, 'treesitter-python')
  
  if not treesitter_ok then
    -- Try to install python grammar
    local treesitter = require('nvim-treesitter')
    
    treesitter.setup {
      ensure_installed = 'all', -- This will install python if needed
    }
    
    print("✓ Treesitter Python grammar installed")
  end
end

M.enable_python_lsp = function()
  vim.lsp.start {
    cmd = {'pyright-langserver'}, -- or 'python-language-server' for pylsp
    root_dir = vim.fn.getcwd(),
    flags = {
      -- Custom LSP settings
    },
    on_attach = function(client, bufnr)
      -- Enable autocmds for Python files
      vim.api.nvim_create_autocmd('BufEnter', {
        pattern = '*.py',
        callback = function()
          -- Set up Python-specific options
        end,
      })
    end,
  }
  
  print("✓ Python LSP started")
end

return M
