# Keybinds

This file lists the active custom keybinds in this Neovim config.

## Leader Groups

- `<Leader>a` AI
- `<Leader>b` Buffer
- `<Leader>e` Explore/Edit
- `<Leader>f` Find
- `<Leader>g` General, Git, and language actions
- `<Leader>l` Language
- `<Leader>m` Map
- `<Leader>o` Other
- `<Leader>s` Session
- `<Leader>t` Terminal
- `<Leader>v` Visits

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

## Telescope

- `<leader>fh` help tags
- `<leader>fk` keymaps
- `<leader>ff` files
- `<leader>fs` telescope picker selector
- `<leader>fw` current word
- `<leader>fg` live grep
- `<leader>fd` diagnostics
- `<leader>fr` resume
- `<leader>f.` recent files
- `<leader><leader>` buffers
- `<leader>/` current buffer search
- `<leader>f/` live grep open files
- `<leader>sn` Neovim config files

## AI and Copilot

- `<Leader>aa` toggle Sidekick CLI
- `<Leader>ac` focus Sidekick CLI
- `<Leader>ad` close Sidekick CLI
- `<Leader>af` send current file to Sidekick CLI
- `<Leader>ap` open Sidekick prompt picker
- `<Leader>as` select Sidekick CLI
- `<Leader>at` send current text to Sidekick CLI
- `<Leader>av` send visual selection to Sidekick CLI
- `[[` previous Copilot suggestion
- `]]` next Copilot suggestion
- `gr` refresh Copilot panel
- `<Tab>` in blink.cmp tries Sidekick NES, then snippets, then fallback
- `<A-;>` accept Copilot suggestion
- `<A-]>` next Copilot panel item
- `<A-[>` previous Copilot panel item
- `<C-]>` dismiss Copilot suggestion
- `<CR>` accept Copilot panel suggestion
- `<M-CR>` open Copilot panel

## Rust

- `<leader>gra` code action / rust action
- `K` rust hover actions

## Tips

- `<leader>nto` open Neovim tips
- `<leader>nte` edit Neovim tips
- `<leader>nta` add Neovim tip
- `<leader>nth` tips help
- `<leader>ntr` random tip
- `<leader>ntp` tips PDF
