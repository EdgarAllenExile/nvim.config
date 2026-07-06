-- vtsls: wraps the VS Code TypeScript extension as an LSP server.
-- Server definition (cmd/filetypes/root markers) comes from nvim-lspconfig's
-- lsp/vtsls.lua; install the binary with `npm install -g @vtsls/language-server`.
local inlay_hints = {
  parameterNames = { enabled = 'all' },
  variableTypes = { enabled = true },
  functionLikeReturnTypes = { enabled = true },
}

vim.lsp.config('vtsls', {
  settings = {
    typescript = {
      inlayHints = inlay_hints,
      preferences = {
        includePackageJsonAutoImports = 'auto',
      },
    },
    javascript = {
      inlayHints = inlay_hints,
    },
  },
})

vim.lsp.enable 'vtsls'
