-- Key Maps

-- Leader Key Helpers
_G.Config.leader_group_clues = {
  { mode = 'n', keys = '<Leader>b', desc = '+[B]uffer' },
  { mode = 'n', keys = '<Leader>a', desc = '+[A]I' },
  { mode = 'n', keys = '<Leader>e', desc = '+[E]xplore/Edit' },
  { mode = 'n', keys = '<Leader>f', desc = '+[F]ind' },
  { mode = 'n', keys = '<Leader>g', desc = '+[G]eneral' },
  { mode = 'n', keys = '<Leader>l', desc = '+Language' },
  { mode = 'n', keys = '<Leader>m', desc = '+Map' },
  { mode = 'n', keys = '<Leader>o', desc = '+Other' },
  { mode = 'n', keys = '<Leader>s', desc = '+Session' },
  { mode = 'n', keys = '<Leader>t', desc = '+Terminal' },
  { mode = 'n', keys = '<Leader>v', desc = '+Visits' },

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
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Buffer
nmap_leader('bn', '<Cmd>bn<CR>', 'Next Buffer')
nmap_leader('bp', '<Cmd>bp<CR>', 'Previous Buffer')
nmap_leader('ba', '<Cmd>b#<CR>', 'Alternate')

-- General or LSP Commands
local formatting_cmd = '<Cmd>lua require("conform").format({lsp_fallback=true})<CR>'

nmap_leader('gra', '<Cmd>lua vim.lsp.buf.code_action()<CR>', 'Code Actions')
nmap_leader('gd', '<Cmd>lua vim.diagnostic.open_float()<CR>', 'Diagnostic popup')
nmap_leader('gf', formatting_cmd, 'Format')
nmap_leader('gri', '<Cmd>lua vim.lsp.buf.implementation()<CR>', 'Implementation')
nmap_leader('gh', '<Cmd>lua vim.lsp.buf.hover()<CR>', 'Hover')
nmap_leader('grn', '<Cmd>lua vim.lsp.buf.rename()<CR>', 'Rename')
nmap_leader('grr', '<Cmd>lua vim.lsp.buf.references()<CR>', 'References')
nmap_leader('gs', '<Cmd>lua vim.lsp.buf.definition()<CR>', 'Source definition')
nmap_leader('grt', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', 'Type definition')

xmap_leader('lf', formatting_cmd, 'Format selection')

local sidekick_cli = function()
  return require('sidekick.cli')
end

nmap_leader('aa', function()
  sidekick_cli().toggle()
end, 'AI Toggle CLI')

nmap_leader('ac', function()
  sidekick_cli().focus()
end, 'AI Focus CLI')

nmap_leader('ad', function()
  sidekick_cli().close()
end, 'AI Close CLI')

nmap_leader('af', function()
  sidekick_cli().send({ msg = '{file}' })
end, 'AI Send File')

nmap_leader('ap', function()
  sidekick_cli().prompt()
end, 'AI Prompt')

nmap_leader('as', function()
  sidekick_cli().select()
end, 'AI Select CLI')

xmap_leader('at', function()
  sidekick_cli().send({ msg = '{this}' })
end, 'AI Send This')

xmap_leader('av', function()
  sidekick_cli().send({ msg = '{selection}' })
end, 'AI Send Selection')
