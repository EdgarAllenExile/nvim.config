# Keybinds

This file lists the active custom keybinds in this Neovim config.

## Leader Groups

- `<Leader>a` AI
- `<Leader>b` Buffer
- `<Leader>d` Debug
- `<Leader>f` Find
- `<Leader>g` General and language actions
- `<Leader>l` Language (visual mode)
- `<Leader>n` Neovim Tips
- `<Leader>s` Session

## Global Mappings

- `<Esc>` clear search highlighting
- `<A-h>` move to left window
- `<A-j>` move to lower window
- `<A-k>` move to upper window
- `<A-l>` move to right window
- `<A-\>` move to previous window
- `<leader><A-h>` swap buffer left
- `<leader><A-j>` swap buffer down
- `<leader><A-k>` swap buffer up
- `<leader><A-l>` swap buffer right

## Buffer and Window

- `<C-w><C-r>` enter resize mode
- `<C-S>` split below/right in mini.files
- `<C-s>` split vertically in mini.files
- `g.` toggle dotfiles in mini.files
- `\` toggle mini.files in CWD

## Picker (snacks.picker)

- `<leader>fh` help tags
- `<leader>fk` keymaps
- `<leader>ff` files
- `<leader>fs` picker selector
- `<leader>fw` current word (normal or visual)
- `<leader>fg` live grep
- `<leader>fd` diagnostics
- `<leader>fr` resume
- `<leader>f.` recent files
- `<leader>fu` undo history
- `<leader>fn` Neovim config files
- `<leader><leader>` buffers
- `<leader>/` current buffer search
- `<leader>f/` live grep open files

## Session (persistence.nvim)

- `<leader>sl` load session for cwd
- `<leader>sL` load last session
- `<leader>sS` select session to load
- `<leader>ss` save session now
- `<leader>sd` stop session saving (disable)

## Debug (nvim-dap + dap-view)

- `<leader>db` toggle breakpoint
- `<leader>dc` continue / start
- `<leader>di` step into
- `<leader>do` step over
- `<leader>dO` step out
- `<leader>dt` terminate
- `<leader>dv` toggle debug view

## AI (Claude Code)

- `<Leader>ac` toggle Claude Code terminal
- `<Leader>af` focus Claude Code terminal
- `<Leader>ar` resume last Claude Code session
- `<Leader>aC` continue Claude Code session
- `<Leader>am` select Claude model
- `<Leader>ab` add current buffer to Claude context
- `<Leader>as` (visual) send selection to Claude
- `<Leader>aa` accept Claude diff
- `<Leader>ad` deny Claude diff

## AI completion (minuet + LM Studio)

Local FIM completion against the LM Studio server on `:1234`. Nothing is sent
to the model unless one of these keys is pressed --- auto-trigger is off.

- `<Leader>ag` toggle ghost text (auto-suggest) for the current buffer; also
  pins the model in memory, since that is a clear signal you are about to use it
- `<Leader>aM` select the local model (e.g. swap 7B for 3B). Embedding and
  reranker models are filtered out; resident ones are marked `[loaded]`
- `<Leader>aP` pin the model in memory so a background JIT load cannot evict it
- `<A-i>` (insert) request a completion into the blink menu

Ghost text keys, live once `<Leader>ag` is on:

- `<A-y>` (insert) accept the whole suggestion
- `<A-Y>` (insert) accept one line
- `<A-n>` / `<A-p>` (insert) next / previous suggestion
- `<A-e>` (insert) dismiss

## LSP

Built-in Neovim defaults (see `:h lsp-defaults`): `grn` rename, `grr`
references, `gri` implementation, `gra` code action, `grt` type definition,
`gO` document symbols, `K` hover, `<C-s>` (insert) signature help.

Custom additions:

- `<leader>gd` diagnostic popup
- `<leader>gf` format buffer
- `<leader>gs` go to definition
- `<leader>lf` (visual) format selection

## Rust

- `gra` code action with rust-analyzer grouping (overrides built-in)
- `K` rust hover actions

## Treesitter Textobjects

Selection (via mini.ai, work with any operator — `y`, `d`, `c`, `v`, ...):

- `aF` / `iF` around/inside function definition
- `ac` / `ic` around/inside class
- `ao` / `io` around/inside block, conditional, or loop
- (mini.ai defaults still apply: `f` function call, `a` argument, `q` quotes, `b` brackets, `t` tags)

Movement:

- `]f` / `[f` next/previous function start
- `]F` / `[F` next/previous function end
- `]c` / `[c` next/previous class start

Folding is treesitter-driven (`zc`/`zo`/`za` etc.); buffers open fully expanded.

## Tips

- `<leader>nto` open Neovim tips
- `<leader>nte` edit Neovim tips
- `<leader>nta` add Neovim tip
- `<leader>nth` tips help
- `<leader>ntr` random tip
- `<leader>ntp` tips PDF
