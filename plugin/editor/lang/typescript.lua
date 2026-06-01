vim.pack.add {
  'https://github.com/pmizio/typescript-tools.nvim',
}

require('typescript-tools').setup {
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
    },
  },
}
