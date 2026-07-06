vim.pack.add {
  'https://github.com/seblyng/roslyn.nvim',
}

require('roslyn').setup {}

-- roslyn.nvim manages its own LSP client via a FileType autocmd, so it isn't
-- listed in vim.lsp.enable; server settings still go through vim.lsp.config.
vim.lsp.config('roslyn', {
  settings = {
    ['csharp|inlay_hints'] = {
      csharp_enable_inlay_hints_for_implicit_object_creation = true,
      csharp_enable_inlay_hints_for_implicit_variable_types = true,
    },
    ['csharp|code_lens'] = {
      dotnet_enable_references_code_lens = true,
    },
  },
})
