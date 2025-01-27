return {
  'loctvl842/monokai-pro.nvim',
  lazy = false,
  priority = 1000,

  config = function()
    require('monokai-pro').setup {
      transparent_background = false,
      devicons = true,
      filter = 'pro',
      background_clear = {
        -- 'neo-tree',
        -- 'bufferline',
      },
    }
    -- vim.cmd.hi 'Comment gui=none'
    vim.cmd.colorscheme 'monokai-pro'
  end,
}
