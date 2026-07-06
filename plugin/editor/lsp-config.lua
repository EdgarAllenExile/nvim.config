vim.pack.add {
  { src = 'https://github.com/neovim/nvim-lspconfig' },
}
-- See https://github.com/neovim/nvim-lspconfig
vim.lsp.enable {
  'clangd',
  'lua_ls',
  'pyright',
}

-- blink.cmp registers its completion capabilities automatically on 0.11+
-- via vim.lsp.config('*'); no manual get_lsp_capabilities() merge needed.

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
