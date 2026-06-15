-- Python-specific Treesitter configuration
-- Requires: nvim-treesitter with python grammar installed

return function()
  -- Install Python grammar if not already installed
  local treesitter = require('nvim-treesitter')
  
  treesitter.setup {
    ensure_installed = {
      'c',
      'c_sharp',
      'diff',
      'git_config',
      'git_rebase',
      'gitattributes',
      'gitcommit',
      'gitignore',
      'html',
      'javascript',
      'json',
      'lua',
      'markdown',
      'python',  -- Python grammar added here
      'rust',
      'sql',
      'tsx',
      'typescript',
      'toml',
      'vim',
      'yaml',
    },
  }
end
