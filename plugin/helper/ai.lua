-- plenary.nvim is declared in init.lua (early bootstrap)
vim.pack.add {
  { src = 'https://github.com/coder/claudecode.nvim' },
  { src = 'https://github.com/milanglacier/minuet-ai.nvim' },
}

require('claudecode').setup {
  terminal = {
    provider = 'native', -- avoids a snacks.nvim dependency
  },
}

-- Local-model code completion, served by the LM Studio instance on :1234.
--
-- Lives here rather than in its own file because plugin/ sources
-- alphabetically: blink.lua calls require('minuet').make_blink_map(), so
-- minuet has to be on the runtimepath by the time blink.lua runs.
--
-- Nothing is sent to the model unless a key is pressed --- `auto_trigger_ft`
-- is empty, so ghost text is opt-in per buffer via <Leader>ag.
require('minuet').setup {
  provider = 'openai_fim_compatible',
  n_completions = 1, -- local inference: one candidate, not three
  context_window = 2048, -- characters; minuet's own guidance for local models
  -- Measured on this machine (M5, 683-token context, ~63 generated tokens):
  -- 7B ~2.4s warm / ~3.7s cold, 3B ~1.4s warm. Latency is generation-bound and
  -- linear in max_tokens, so that is the dial to turn --- not the context size.
  request_timeout = 10,
  throttle = 1500,
  debounce = 600,
  notify = 'warn', -- 'debug' to watch latency while tuning

  provider_options = {
    openai_fim_compatible = {
      name = 'LMStudio',
      end_point = 'http://localhost:1234/v1/completions',
      -- Identifiers are namespaced once more than one build of a model is
      -- installed. `lms ls` prints the exact key; <Leader>aM lists them live.
      -- mlx-community/qwen2.5-coder-3b is ~2x faster if this drags.
      model = 'mlx-community/qwen2.5-coder-7b',
      -- LM Studio needs no auth; minuet just wants a non-nil env var name.
      api_key = 'TERM',
      stream = true,

      -- Build the FIM prompt by hand. LM Studio has no /infill endpoint, and
      -- its `suffix` parameter is unverified, so nothing here depends on
      -- server-side FIM handling. Requires the *base* model --- an -Instruct
      -- build would apply a chat template and mangle these tokens.
      template = {
        prompt = function(context_before_cursor, context_after_cursor, _)
          return '<|fim_prefix|>' .. context_before_cursor .. '<|fim_suffix|>' .. context_after_cursor .. '<|fim_middle|>'
        end,
        suffix = false,
      },

      optional = {
        -- 64 is the knee of the curve: typical completions stop naturally at
        -- ~60 tokens, so raising this buys little and costs latency directly.
        max_tokens = 64,
        top_p = 0.9,
        stop = {
          '<|endoftext|>',
          '<|fim_prefix|>',
          '<|fim_suffix|>',
          '<|fim_middle|>',
          '<|file_sep|>',
        },
      },
    },
  },

  virtualtext = {
    auto_trigger_ft = {}, -- opt in per buffer with <Leader>ag
    keymap = {
      accept = '<A-y>',
      accept_line = '<A-Y>',
      -- minuet defaults these to <A-]>/<A-[>; <A-[> emits the CSI introducer
      -- and is unreliable in most terminals.
      next = '<A-n>',
      prev = '<A-p>',
      dismiss = '<A-e>',
    },
  },
}

local nmap_leader = function(suffix, rhs, desc)
  vim.keymap.set('n', '<Leader>' .. suffix, rhs, { desc = desc })
end

nmap_leader('ac', '<Cmd>ClaudeCode<CR>', 'Toggle Claude')
nmap_leader('af', '<Cmd>ClaudeCodeFocus<CR>', 'Focus Claude')
nmap_leader('ar', '<Cmd>ClaudeCode --resume<CR>', 'Resume Claude')
nmap_leader('aC', '<Cmd>ClaudeCode --continue<CR>', 'Continue Claude')
nmap_leader('am', '<Cmd>ClaudeCodeSelectModel<CR>', 'Select Claude model')
nmap_leader('ab', '<Cmd>ClaudeCodeAdd %<CR>', 'Add current buffer')
nmap_leader('aa', '<Cmd>ClaudeCodeDiffAccept<CR>', 'Accept diff')
nmap_leader('ad', '<Cmd>ClaudeCodeDiffDeny<CR>', 'Deny diff')

vim.keymap.set('x', '<Leader>as', '<Cmd>ClaudeCodeSend<CR>', { desc = 'Send selection to Claude' })

-- `:Minuet change_model` reads a hardcoded per-provider model list that has no
-- LMStudio entry, so it would offer an empty menu here. Ask the server what it
-- actually has instead.
local function pick_local_model()
  vim.system({ 'curl', '-sS', '-m', '5', 'http://localhost:1234/v1/models' }, { text = true }, function(res)
    local ids = {}
    if res.code == 0 then
      local ok, decoded = pcall(vim.json.decode, res.stdout)
      if ok and decoded.data then
        ids = vim.tbl_map(function(m)
          return m.id
        end, decoded.data)
        table.sort(ids)
      end
    end

    vim.schedule(function()
      if vim.tbl_isempty(ids) then
        vim.notify('No models from LM Studio on :1234 --- is the server running?', vim.log.levels.ERROR)
        return
      end
      vim.ui.select(ids, { prompt = 'Local completion model' }, function(choice)
        if not choice then
          return
        end
        require('minuet').config.provider_options.openai_fim_compatible.model = choice
        vim.notify('minuet model: ' .. choice)
      end)
    end)
  end)
end

-- Local completion (minuet). <Leader>am is taken by Claude, hence aM.
nmap_leader('ag', '<Cmd>Minuet virtualtext toggle<CR>', 'Toggle AI ghost text')
nmap_leader('aM', pick_local_model, 'Select local model')
