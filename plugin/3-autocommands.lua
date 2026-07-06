-- Editor Commands

-- (No plugin build hooks needed currently: blink.cmp is pinned to a release
-- tag via its version range, so it downloads its prebuilt matcher binary
-- automatically. If a plugin needing a build step is added, hook the
-- PackChanged event — see :h vim.pack.)

-- I think this should stop entering comments auto
local f = function()
  vim.cmd 'setlocal formatoptions-=c formatoptions-=o'
end
_G.Config.new_autocmd('FileType', "*", f, "Proper 'formatoptions'")

-- Linting Auto Command
vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    local ok, lint = pcall(require, 'lint')
    if ok then
      lint.try_lint()
    end
  end,
})

-- This turns on Treesitter highlights (and folding where a parser exists)
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('EnableTreesitterHighlighting', { clear = true }),
  desc = 'Try to enable tree-sitter syntax highlighting and folds',
  pattern = '*', -- run on *all* filetypes
  callback = function()
    local ok = pcall(vim.treesitter.start)
    if ok then
      vim.wo[0][0].foldmethod = 'expr'
      vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    end
  end,
})
