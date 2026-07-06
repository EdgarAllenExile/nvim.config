vim.pack.add {
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/j-hui/fidget.nvim' },
}
-- See https://github.com/neovim/nvim-lspconfig
vim.lsp.enable {
  'clangd',
  'lua_ls',
  'pyright',
}

-- Deferred: plugin/helper/blink.lua sources after this file (alphabetical
-- load order), so blink.cmp isn't on the runtimepath yet at this point.
vim.schedule(function()
  vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities {
      textDocument = {
        semanticTokens = {
          multilineTokenSupport = true,
        },
      },
    },
  })
end)

-- Render inlay hints for any attached client that supports them (e.g.
-- roslyn's csharp|inlay_hints and typescript-tools' includeInlay* settings).
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client:supports_method 'textDocument/inlayHint' then
      vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
    end
  end,
})
