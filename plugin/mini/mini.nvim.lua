vim.pack.add {
  'https://github.com/nvim-mini/mini.nvim', -- also provides below headings
}

-- Text editing
require('mini.ai').setup { n_lines = 500 }
require('mini.pairs').setup()
require('mini.surround').setup()

-- General workflow
require('mini.clue').setup()
require('mini.diff').setup()
require('mini.extra').setup()
require('mini.files').setup {
  windows = { preview = true },
  content = {
    -- Predicate for which file system entries to show
    filter = function(fs_entry)
      return not vim.startswith(fs_entry.name, '.')
    end,
    prefix = nil,
    sort = nil,
  },
}

  -- Make new window and set it as target
local map_split = function(buf_id, lhs, direction)
  local rhs = function()
    local cur_target = MiniFiles.get_explorer_state().target_window
    local new_target = vim.api.nvim_win_call(cur_target, function()
      vim.cmd(direction .. ' split')
      return vim.api.nvim_get_current_win()
    end)
    MiniFiles.set_target_window(new_target)
  end

  -- Adding `desc` will result into `show_help` entries
  local desc = 'Split ' .. direction
  vim.keymap.set('n', lhs, rhs, { buffer = buf_id, desc = desc })
end

vim.api.nvim_create_autocmd('User', {
  pattern = 'MiniFilesBufferCreate',
  callback = function(args)
    local buf_id = args.data.buf_id
    map_split(buf_id, '<C-S>', 'belowright horizontal')
    map_split(buf_id, '<C-s>', 'belowright vertical')
  end,
})

  -- Auto Command to Show / Hide Dot Files
local show_dotfiles = false

local filter_show = function()
  return true
end

local filter_hide = function(fs_entry)
  return not vim.startswith(fs_entry.name, '.')
end

local toggle_dotfiles = function()
  show_dotfiles = not show_dotfiles
  local new_filter = show_dotfiles and filter_show or filter_hide
  MiniFiles.refresh { content = { filter = new_filter } }
end

vim.api.nvim_create_autocmd('User', {
  pattern = 'MiniFilesBufferCreate',
  callback = function(args)
    local buf_id = args.data.buf_id
    vim.keymap.set('n', 'g.', toggle_dotfiles, { buffer = buf_id, desc = 'Toggle DotFiles' })
  end,
})

vim.keymap.set('n', '\\', function()
  local MiniFiles = require 'mini.files'
  local _ = MiniFiles.close() or MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
  vim.defer_fn(function()
    MiniFiles.reveal_cwd()
  end, 30)
end, { desc = 'Toggle MiniFiles in CWD' })


require('mini.git').setup()


-- Simple and easy statusline.
--  You could remove this setup call if you don't like it,
--  and try some other statusline plugin
local statusline = require 'mini.statusline'
statusline.setup { use_icons = vim.g.have_nerd_font }

-- You can configure sections in the statusline by overriding their
-- default behavior. For example, here we set the section for
-- cursor location to LINE:COLUMN
-- ---@diagnostic disable-next-line: duplicate-set-field
-- statusline.section_location = function()
--   return '%2l/%L:%-2v'
-- end
--
-- end,
-- init = function()
--   package.preload['nvim-web-devicons'] = function()
--     require('mini.icons').mock_nvim_web_devicons()
--     return package.loaded['nvim-web-devicons']
--   end
-- end,

-- Appearance
require('mini.colors').setup()
require('mini.icons').setup()
require('mini.notify').setup()
require('mini.starter').setup()
require('mini.statusline').setup()
require('mini.tabline').setup()
