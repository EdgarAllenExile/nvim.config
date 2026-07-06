vim.pack.add {
  'https://github.com/pmizio/typescript-tools.nvim',
}

-- Deferred: plugin/helper/blink.lua sources after this file (alphabetical
-- load order), so blink.cmp isn't on the runtimepath yet at this point.
vim.schedule(function()
  require('typescript-tools').setup {
    capabilities = require('blink.cmp').get_lsp_capabilities(),
    settings = {
      expose_as_code_action = 'all',
      jsx_close_tag = {
        enable = true,
      },
      tsserver_format_options = {
        allowIncompleteCompletions = false,
        allowRenameOfImportPath = false,
      },
      tsserver_file_preferences = {
        includeCompletionsForModuleExports = true,
        includeCompletionsWithInsertText = true,
        includePackageJsonAutoImports = 'auto',
        includeInlayParameterNameHints = 'all',
        includeInlayVariableTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
      },
    },
  }
end)
