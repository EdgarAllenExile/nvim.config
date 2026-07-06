vim.pack.add {
  'https://github.com/nvim-mini/mini.nvim', -- also provides below headings
}

-- Text editing
local ai = require 'mini.ai'
ai.setup {
  n_lines = 500,
  custom_textobjects = {
    -- Treesitter textobjects (queries provided by nvim-treesitter-textobjects).
    -- Defaults still apply: f = function *call*, a = argument, q = quotes, ...
    F = ai.gen_spec.treesitter { a = '@function.outer', i = '@function.inner' },
    c = ai.gen_spec.treesitter { a = '@class.outer', i = '@class.inner' },
    o = ai.gen_spec.treesitter {
      a = { '@block.outer', '@conditional.outer', '@loop.outer' },
      i = { '@block.inner', '@conditional.inner', '@loop.inner' },
    },
  },
}
require('mini.pairs').setup()
require('mini.surround').setup()

-- General workflow
local miniclue = require 'mini.clue'
miniclue.setup {
  clues = {
    -- This is defined in 'plugin/20_keymaps.lua' with Leader group descriptions
    Config.leader_group_clues,
    miniclue.gen_clues.square_brackets(),
    { mode = 'n', keys = '<C-w><C-r>', desc = 'Enter Resize Mode' },
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    -- This creates a submode for window resize mappings. Try the following:
    -- - Press `<C-w>s` to make a window split.
    -- - Press `<C-w>+` to increase height. Clue window still shows clues as if
    --   `<C-w>` is pressed again. Keep pressing just `+` to increase height.
    --   Try pressing `-` to decrease height.
    -- - Stop submode either by `<Esc>` or by any key that is not in submode.
    miniclue.gen_clues.windows {
      submode_move = true,
      submode_navigate = true,
      submode_resize = true,
    },
    miniclue.gen_clues.z(),
  },
  -- Explicitly opt-in for set of common keys to trigger clue window
  triggers = {
    { mode = 'n', keys = '<Leader>' }, -- Leader triggers
    { mode = 'x', keys = '<Leader>' },
    -- { mode = 'n', keys = '\\' },       -- mini.basics
    { mode = 'n', keys = '[' },
    { mode = 'n', keys = ']' },
    { mode = 'i', keys = '<C-x>' }, -- Built-in completion
    { mode = 'n', keys = 'g' }, -- `g` key
    { mode = 'x', keys = 'g' },
    { mode = 'n', keys = "'" }, -- Marks
    { mode = 'n', keys = '`' },
    { mode = 'x', keys = "'" },
    { mode = 'x', keys = '`' },
    { mode = 'n', keys = '"' }, -- Registers
    { mode = 'x', keys = '"' },
    { mode = 'i', keys = '<C-r>' },
    { mode = 'c', keys = '<C-r>' },
    { mode = 'n', keys = '<C-w>' }, -- Window commands
    { mode = 'n', keys = 'z' }, -- `z` key
    { mode = 'x', keys = 'z' },
  },
}

require('mini.diff').setup()
require('mini.extra').setup()
require('mini.files').setup {
  options = {
    use_as_default_explorer = false,
  },
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
    MiniClue.ensure_buf_triggers(buf_id)
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
    MiniClue.ensure_buf_triggers(buf_id)
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

-- Appearance
-- (mini.colors is an interactive tool; require it on demand rather than at startup)
require('mini.icons').setup { mock_nvim_web_devicons = true }
require('mini.notify').setup()
require('mini.starter').setup()
require('mini.statusline').setup { use_icons = vim.g.have_nerd_font }
require('mini.tabline').setup()
