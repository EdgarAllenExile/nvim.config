vim.pack.add {
  'https://github.com/tris203/precognition.nvim',
}

require('precognition').setup()
require('precognition').toggle()

vim.api.nvim_create_autocmd('ModeChanged', {
  pattern = '*:[vV\\x16]',
  callback = function()
    require('precognition').peek()
  end,
})
