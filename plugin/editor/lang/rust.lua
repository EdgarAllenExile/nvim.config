vim.pack.add {
  {
    src = 'https://github.com/mrcjkb/rustaceanvim',
    version = vim.version.range '6.*',
  },
}

-- codelldb comes from mason (:MasonInstall codelldb) and is auto-detected
-- by rustaceanvim — no dap adapter paths needed here.
vim.g.rustaceanvim = {
  -- Clippy-on-save is handled by rustaceanvim's default
  -- `tools.enable_clippy = true`; no `checkOnSave` settings needed.
  server = {
    default_settings = {
      ['rust-analyzer'] = {
        imports = {
          granularity = { group = 'crate' },
          prefix = 'crate',
        },
        completion = {
          autoimport = { enable = true },
          postfix = { enable = true },
        },
      },
    },
  },
}

-- Set up key mappings after LSP attaches
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('RustKeymaps', { clear = true }),
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    
    if client and client.name == 'rust_analyzer' then
      -- Organize imports
      vim.keymap.set('n', '<leader><space>oi', function()
        vim.lsp.buf.code_action({
          context = { only = { 'source.organizeImports' } },
          apply = true,
        })
      end, { buffer = bufnr, desc = 'Organize Imports' })
      
      -- Rust-specific commands (using <leader><space> prefix)
      vim.keymap.set('n', '<leader><space>ca', '<cmd>RustLsp codeAction<cr>', { buffer = bufnr, desc = 'Rust Code Action' })
      vim.keymap.set('n', '<leader><space>ch', '<cmd>RustLsp hover<cr>', { buffer = bufnr, desc = 'Rust Hover' })
      vim.keymap.set('n', '<leader><space>ce', '<cmd>RustLsp explainError<cr>', { buffer = bufnr, desc = 'Explain Error' })
    end
  end,
})
