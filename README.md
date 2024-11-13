# nvim.config

## Setup

Installation Steps
First, install nvim and all related dependancies. Suggest just using the install recipes in kickstart.nvim
Second, clone this repository into config files section.
This could be in several places:

- In Windows it is: `git clone https://github.com/EdgarAllenExile/nvim.config $HOME/AppData/Local/nvim`
- In Linux use: `git clone https://github.com/EdgarAllenExile/nvim.config "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim`

### Dependancies

There are quite a few dependancies that will need to be installed for proper function:

- Windows Install Recipe:
  - Chocolatey Install Script: `winget install --accept-source-agreements chocolatey.chocolatey`
  - NPM Install Script: `winget install -e --id OpenJS.NodeJS`

## Plugins

| Plugin | Description | Link |
|--------|-------------|--------|
| AutoPairs | Autocompletion of brackets | config/autopairs.lua|
| Confirm |  | config/conform.lua|
| Dap | Debugging | config/dap.lua |
| GitSigns | Git Update Indicators | config/gitsigns.lua |
| Indent_line | Line indentations | config/indent_line.lua |
| LazyDev | ?? | config/lazydev.lua |
| Lint | Configure Linters | config/lint.lua |
| LspConfig | Set up LSPs | config/lspconfig.lua |
| Luvit | ?? | config/luvit-meta.lua |
| Mini.Nvim | Collection of small plugins | config/mini.nvim.lua |
| NeoTree | Tree Plugin | config/neo-tree.lua |
| NvimCmp | Auto-Complete | config/nvim-cmp.lua |
| WindowPicker | Chose windows from tree | config/nvim-window-picker.lua |
| Render-Markdown | .md renderer | config/render-markdown.lua |
| Sonokai | Colourscheme | config/sonokai.lua |
| Telescope | FuzzyFinder | config/telescope.lua |
| Todo Comments | Sign Post and Highlight Comments | config/todo-commends.lua |
| Treesitter | Treesitter | config/treesitter.lua |
| Vim Slueth | Adjusts tab based on current file | config/vim-sleuth.lua |
| Which Key | Display available key combinations | config/which-key.lua |
| Hardtime | Stops inefficient inputs | config/tips/hardtime.lua |
| Prediction | Shows Cursor Movement Inputs | config/tips/prediction/lua |
