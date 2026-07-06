vim.pack.add {
  {
    src = 'https://github.com/Saghen/blink.cmp',
    version = vim.version.range '1.*',
  },
  'https://github.com/rafamadriz/friendly-snippets',
}

require('blink.cmp').setup {
  keymap = {
    preset = 'default',
    ['<Tab>'] = { 'snippet_forward', 'fallback' },
  },
  -- Default snippet preset: expansion via native vim.snippet, with
  -- friendly-snippets feeding the `snippets` source. (LuaSnip removed —
  -- only needed for authoring advanced dynamic snippets.)

  appearance = {
    nerd_font_variant = 'mono',
  },
  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 100 },
    ghost_text = { enabled = true },
  },

  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

  signature = { enabled = true },
}
