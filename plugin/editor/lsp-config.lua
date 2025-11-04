vim.pack.add {
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/j-hui/fidget.nvim' },
}
-- See https://github.com/neovim/nvim-lspconfig
vim.lsp.enable {
  'lua_ls',
}

vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      },
    },
  },
})
