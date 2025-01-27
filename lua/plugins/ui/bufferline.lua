return {
  'akinsho/bufferline.nvim',
  version = '*',
  -- dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Neo-tree',
            highlight = 'Directory',
            text_align = 'center',
          },
        },
      },
    }
  end,
}
