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
    -- Pull a local-model completion on demand (minuet, configured in ai.lua).
    ['<A-i>'] = require('minuet').make_blink_map(),
  },
  -- Default snippet preset: expansion via native vim.snippet, with
  -- friendly-snippets feeding the `snippets` source. (LuaSnip removed —
  -- only needed for authoring advanced dynamic snippets.)

  appearance = {
    nerd_font_variant = 'mono',
  },
  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 100 },
    -- show_without_menu = false yields the no-menu window to minuet's
    -- virtualtext frontend, which draws in the same screen space.
    ghost_text = { enabled = true, show_without_menu = false },
    trigger = { prefetch_on_insert = false },
  },

  sources = {
    -- minuet is deliberately absent from `default`: it only ever runs when
    -- <A-i> asks for it, so typing never reaches the local model.
    default = { 'lsp', 'path', 'snippets', 'buffer' },
    providers = {
      minuet = {
        name = 'minuet',
        module = 'minuet.blink',
        async = true,
        -- 7B measures ~2.4s warm and ~3.7s cold on this machine, so the usual
        -- 3000 would silently drop real completions. Only <A-i> waits on this.
        timeout_ms = 10000,
        score_offset = 50,
      },
    },
  },

  signature = { enabled = true },
}
