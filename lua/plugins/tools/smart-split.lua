return {
  {
    'mrjones2014/smart-splits.nvim',
    lazy = false,
    config = function()
      require('smart-splits').setup()

      vim.keymap.set('n', '<C-w><C-r>', function()
        require('smart-splits').start_resize_mode()
      end, { desc = 'Enter Resize Mode' })

      -- resizing splits
      -- these keymaps will also accept a range,
      -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
      -- vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
      -- vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
      -- vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
      -- vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
      -- moving between splits
      vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left, { desc = 'Move frame left' })
      vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down, { desc = 'Move frame down' })
      vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up, { desc = 'Move frame up' })
      vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right, { desc = 'Move frame right' })
      vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous, { desc = 'Move previous frame' })
      -- swapping buffers between windows
      vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left, { desc = 'Move window left' })
      vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down, { desc = 'Move window down' })
      vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up, { desc = 'Move window up' })
      vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right, { desc = 'Moev window right' })
    end,
  },
}
