return {
  'm4xshen/hardtime.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  opts = {
    max_count = 5,
    ---@type function
    callback = function(text)
      vim.notify(text, vim.log.levels.WARN, { title = 'hardtime' })
      require('precognition').peek()
    end,
  },
}
