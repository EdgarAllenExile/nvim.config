-- Key Maps

-- Leader Key Helpers
_G.Config.leader_group_clues = {
  { mode = 'n', keys = '<Leader>a', desc = '+[A]I' },
  { mode = 'n', keys = '<Leader>b', desc = '+[B]uffer' },
  { mode = 'n', keys = '<Leader>e', desc = '+[E]xplore/Edit' },
  { mode = 'n', keys = '<Leader>f', desc = '+[F]ind' },
  { mode = 'n', keys = '<Leader>g', desc = '+[G]eneral' },
  { mode = 'n', keys = '<Leader>l', desc = '+Language' },
  { mode = 'n', keys = '<Leader>m', desc = '+Map' },
  { mode = 'n', keys = '<Leader>n', desc = '+Neovim Tips' },
  { mode = 'n', keys = '<Leader>o', desc = '+Other' },
  { mode = 'n', keys = '<Leader>s', desc = '+Session' },
  { mode = 'n', keys = '<Leader>t', desc = '+Terminal' },
  { mode = 'n', keys = '<Leader>v', desc = '+Visits' },

  { mode = 'x', keys = '<Leader>a', desc = '+[A]I' },
  { mode = 'x', keys = '<Leader>g', desc = '+Git' },
  { mode = 'x', keys = '<Leader>l', desc = '+Language' },
}

-- Helper Functions
-- From Mini, lazyloads binds to improve startup, also shorter.
local nmap_leader = function(suffix, rhs, desc)
  vim.keymap.set('n', '<Leader>' .. suffix, rhs, { desc = desc })
end
local xmap_leader = function(suffix, rhs, desc)
  vim.keymap.set('x', '<Leader>' .. suffix, rhs, { desc = desc })
end

-- Get away from things
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Buffer
nmap_leader('bn', '<Cmd>bn<CR>', 'Next Buffer')
nmap_leader('bp', '<Cmd>bp<CR>', 'Previous Buffer')
nmap_leader('ba', '<Cmd>b#<CR>', 'Alternate')

-- General or LSP Commands
--
-- NOTE: most LSP actions use Neovim's built-in default keymaps (no leader):
--   grn = rename, grr = references, gri = implementation, gra = code action,
--   grt = type definition, gO = document symbols, K = hover,
--   <C-s> (insert) = signature help, grx = codelens. See :h lsp-defaults.
local formatting_cmd = '<Cmd>lua require("conform").format({lsp_fallback=true})<CR>'

nmap_leader('gd', '<Cmd>lua vim.diagnostic.open_float()<CR>', 'Diagnostic popup')
nmap_leader('gf', formatting_cmd, 'Format')
nmap_leader('gs', '<Cmd>lua vim.lsp.buf.definition()<CR>', 'Source definition')

xmap_leader('lf', formatting_cmd, 'Format selection')
