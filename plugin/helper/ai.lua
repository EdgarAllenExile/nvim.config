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
  -- Measured on this machine (M5, ~2k-char context, cache-busted prompts), with
  -- the <|fim_pad|> stop below in place: 7B ~1.2s warm median / ~4.8s worst,
  -- 3B ~0.6s. Latency is generation-bound and linear in max_tokens, so that is
  -- the dial to turn --- not the context size.
  --
  -- Reload cost is separate and bimodal: ~6.5s when the weights are still in the
  -- OS page cache, ~17s genuinely cold from disk. The 10s below therefore covers
  -- the common reload but not a cold one. Raising it is the wrong fix --- the
  -- model is only reloading because something else JIT-evicted it (the
  -- local-llm journal Stop hook loads ministral after every Claude Code
  -- session). Pin it instead: `lms load <model> --ttl 7200`. Models coexist
  -- happily; three fit in 24GB at once.
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
      -- Roughly 2x faster if this drags: 'qwen2.5-coder-3b' (~0.6s, 72% valid).
      -- That bare id is the GGUF build --- the mlx-community 4-bit 3B was
      -- deleted for scoring 17% valid and emitting mangled tokens
      -- ('if   it not i n seen.add(it)'). Deleting it left one 3B, so the id
      -- un-namespaced itself from lmstudio-community/qwen2.5-coder-3b.
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
          -- <|fim_pad|> is load-bearing, not belt-and-braces: this model ends a
          -- completion by emitting it on repeat rather than <|endoftext|>. Left
          -- out, the useful output is followed by ~49 literal '<|fim_pad|>' in
          -- the ghost text and the full max_tokens budget is spent. Measured
          -- over 12 completions, adding these three: 2.43s -> 1.18s median,
          -- 25% -> 91% syntactically valid, 7/12 -> 0/12 sentinel leaks.
          '<|fim_pad|>',
          '<|repo_name|>',
          '<|cursor|>',
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

local LMS = vim.fn.expand '~/.lmstudio/bin/lms'

-- Embedding and reranker models produce garbage rather than an error if handed
-- to a completion request, so they must never reach the picker. LM Studio's own
-- `type` field does not identify them --- it reports bge-m3, two rerankers and
-- three embedding models all as `llm` --- so match on the id as well.
local function is_completion_model(m)
  if m.type == 'embeddings' then
    return false
  end
  local id = m.id:lower()
  return not (id:find 'embed' or id:find 'rerank' or id:find '^bge%-')
end

-- `:Minuet change_model` reads a hardcoded per-provider model list that has no
-- LMStudio entry, so it would offer an empty menu here. Ask the server what it
-- actually has instead. /api/v0/ is LM Studio's native API: same models as
-- /v1/models but with `type` and a load `state` the OpenAI shape omits.
local function pick_local_model()
  vim.system({ 'curl', '-sS', '-m', '5', 'http://localhost:1234/api/v0/models' }, { text = true }, function(res)
    local ids = {}
    if res.code == 0 then
      local ok, decoded = pcall(vim.json.decode, res.stdout)
      if ok and decoded.data then
        for _, m in ipairs(decoded.data) do
          if m.id and is_completion_model(m) then
            -- Surface already-resident models: picking one of those skips a
            -- reload entirely (~6.5s page-cached, ~17s cold).
            table.insert(ids, m.state == 'loaded' and (m.id .. '  [loaded]') or m.id)
          end
        end
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
        choice = (choice:gsub('%s+%[loaded%]$', ''))
        require('minuet').config.provider_options.openai_fim_compatible.model = choice
        vim.notify('minuet model: ' .. choice)
      end)
    end)
  end)
end

-- Pin the completion model in memory so it survives being JIT-evicted.
--
-- The eviction is not the 1h TTL --- it is the local-llm journal Stop hook
-- (~/.claude/local-llm/hooks/session-journal.sh), which loads ministral after
-- every Claude Code session. LM Studio auto-unloads *JIT-loaded* models to make
-- room; a model loaded explicitly with --ttl persists instead, and several
-- coexist happily (three fit in 24GB).
--
-- `lms load` is NOT idempotent: run against an already-resident model it loads a
-- second 4GB copy under a `:2` identifier. So check `state` first and only load
-- when actually absent.
local function pin_local_model(opts)
  opts = opts or {}
  local model = require('minuet').config.provider_options.openai_fim_compatible.model
  vim.system({ 'curl', '-sS', '-m', '5', 'http://localhost:1234/api/v0/models' }, { text = true }, function(res)
    local state
    if res.code == 0 then
      local ok, decoded = pcall(vim.json.decode, res.stdout)
      if ok and decoded.data then
        for _, m in ipairs(decoded.data) do
          if m.id == model then
            state = m.state
          end
        end
      end
    end

    if state == nil then
      if not opts.quiet then
        vim.schedule(function()
          vim.notify('Cannot reach LM Studio on :1234 --- not pinning ' .. model, vim.log.levels.WARN)
        end)
      end
      return
    end

    if state == 'loaded' then
      if not opts.quiet then
        vim.schedule(function()
          vim.notify('Already resident: ' .. model)
        end)
      end
      return
    end

    -- 2h, refreshed on every use, so an active editing session never expires.
    vim.system({ LMS, 'load', model, '--ttl', '7200', '-y' }, { text = true }, function(load)
      vim.schedule(function()
        if load.code == 0 then
          vim.notify('Pinned ' .. model .. ' (ttl 2h)')
        elseif not opts.quiet then
          vim.notify('Failed to pin ' .. model .. ': ' .. (load.stderr or ''), vim.log.levels.ERROR)
        end
      end)
    end)
  end)
end

-- Pin on the clearest "about to use this" signal rather than at startup ---
-- opening nvim to edit a commit message should not drag 4GB into memory.
-- For a machine-wide pin independent of nvim, a LaunchAgent running the same
-- `lms load --ttl` at login would do it.
local function toggle_ghost_text()
  pin_local_model { quiet = true }
  vim.cmd 'Minuet virtualtext toggle'
end

-- Local completion (minuet). <Leader>am is taken by Claude, hence aM.
nmap_leader('ag', toggle_ghost_text, 'Toggle AI ghost text')
nmap_leader('aM', pick_local_model, 'Select local model')
nmap_leader('aP', pin_local_model, 'Pin local model in memory')
