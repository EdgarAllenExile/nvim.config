vim.pack.add {
  {
    src = 'https://github.com/mrcjkb/rustaceanvim',
    version = vim.version.range '6.*',
  },
}

vim.g.rustaceanvim = function()
  local function find_lldb_extension()
    local base = vim.env.HOME .. '/.vscode/extensions'

    for name in vim.fs.dir(base) do
      if name:match '^vadimcn%.vscode%-lldb%-' then
        return base .. '/' .. name
      end
    end

    return nil
  end

  local extension_path = find_lldb_extension() or vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.11.8'
  local codelldb_path = extension_path .. '/adapter/codelldb'
  local liblldb_path = extension_path .. '/lldb/lib/liblldb'
  local this_os = vim.uv.os_uname().sysname

  -- The path is different on Windows
  if this_os:find 'Windows' then
    codelldb_path = extension_path .. '/adapter/codelldb.exe'
    liblldb_path = extension_path .. '/lldb/bin/liblldb.dll'
  else
    -- The liblldb extension is .so for Linux and .dylib for MacOS
    liblldb_path = liblldb_path .. (this_os == 'Linux' and '.so' or '.dylib')
  end

  local cfg = require 'rustaceanvim.config'
  return {
    dap = {
      adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
    },
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
end

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
