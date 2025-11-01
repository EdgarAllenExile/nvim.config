vim.pack.add {
  { src = 'https://github.com/Saghen/blink.cmp', version = '1.*' },
}

vim.pack.add {
  'https://github.com/rafamadriz/friendly-snippets',
  'https://github.com/L3MON4D3/LuaSnip',
}

require('blink.cmp').setup {
  preset = 'default',
  keymap = { preset = 'default' },

  appearance = {
    nerd_font_variant = 'mono',
  },

  documentation = { auto_show = true, auto_show_delay_ms = 500 },

  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

  signature = { enabled = true },
}
