# Nvim.Config

## To Do

### Things to Add:

- Vale / formatter / linter
- Debuggers, how do they work? Do we have a nice fancy GUI? Do we need one..?

### Things to Change:

- Bulk install required plugins
- is it possible to automatically remove unused plugins? 
- Flag when need to delete old lock file

### Things to Investigate:

- Mise En Place CLI Util
- That Nvim Tips plugin
- How good is Clue for actual vim commands
- Have a look at snacks.nvim

## Design Goals

Design Goals as follows:

- Use Native Neovim functionality as much as possible, lsp config, vim.pack etc
- Use Mini functionality as much as possible
- From an Aesthetic point of view, I quite like NvChad so will tend in that direction

## Setup

Installation Steps
First, install nvim and all related dependancies. Suggest just using the install recipes in kickstart.nvim
Second, clone this repository into config files section.
This could be in several places:

- In Windows it is: `git clone https://github.com/EdgarAllenExile/nvim.config $HOME/AppData/Local/nvim`
- In Linux / MacOS use: `git clone https://github.com/EdgarAllenExile/nvim.config "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim`

### Dependancies

### LSPs, Formatters, Linters

| Name | Lang | Type | Command |
| -------------- | -------------- | --------------- | --------------- |
| lua-language-server | lua | LSP | `brew install lua-language-server` |
| stylua | lua | Formatter | `brew install stylua` |
| LuaChecks | lua | Linter | `sudo luarocks install luacheck` |
| clangd | c/c++ | LSP | `brew install llvm` |
| rust-analyzer | rust | LSP | `brew install rust-analyzer` |
| rustfmt | rust | Formatter | `rustup component add rustfmt` |
| codelldb | rust | DAP | `brew install --cask vscode-lldb` |
| Roslyn | csharp | LSP | `dotnet` / Visual Studio |
| prettierd | javascript/typescript | Formatter | `npm install -g prettierd` |
| eslint | javascript/typescript | Linter | `npm install -g eslint` |


## Plugins

| Name | Function | Filepath |
| -------------- | -------------- | --------------- |
| `plenary.nvim` | Lua helper library | `init.lua` |
| `telescope.nvim` | Fuzzy finder | `init.lua` |
| `render-markdown.nvim` | Markdown rendering | `init.lua` |
| `monokai-pro.nvim` | Active colorscheme | `init.lua` / `plugin/general/colorscheme.lua` |
| `catppuccin/nvim` | Alternate colorscheme setup | `init.lua` / `plugin/general/colorscheme.lua` |
| `conform.nvim` | Format on save | `plugin/editor/conform.lua` |
| `nvim-dap` | Debug adapter client | `plugin/editor/dap.lua` |
| `nvim-dap-ui` | DAP UI panes | `plugin/editor/dap.lua` |
| `nvim-nio` | Async primitives for DAP UI | `plugin/editor/dap.lua` |
| `nvim-lint` | Filetype lint runner | `plugin/editor/lint.lua` |
| `nvim-lspconfig` | LSP server configuration | `plugin/editor/lsp-config.lua` |
| `fidget.nvim` | LSP progress UI | `plugin/editor/lsp-config.lua` |
| `nvim-treesitter` | Syntax parsing | `plugin/editor/treesitter.lua` |
| `nvim-treesitter-textobjects` | Syntax textobjects | `plugin/editor/treesitter.lua` |
| `nvim-treesitter-context` | Code context header | `plugin/editor/treesitter.lua` |
| `roslyn.nvim` | C# LSP integration | `plugin/editor/lang/csharp.lua` |
| `rustaceanvim` | Rust LSP and DAP integration | `plugin/editor/lang/rust.lua` |
| `typescript-tools.nvim` | TypeScript LSP integration | `plugin/editor/lang/typescript.lua` |
| `mini.nvim` | Core editing and workflow modules | `plugin/general/mini.nvim.lua` |
| `snacks.nvim` | Picker UI for Sidekick | `plugin/helper/ai.lua` |
| `sidekick.nvim` | AI CLI and NES workflow | `plugin/helper/ai.lua` |
| `nui.nvim` | UI primitives for AI tools | `plugin/helper/ai.lua` |
| `copilot.lua` | Copilot suggestions and panel | `plugin/helper/ai.lua` |
| `blink.cmp` | Completion engine | `plugin/helper/blink.lua` |
| `friendly-snippets` | Snippet collection | `plugin/helper/blink.lua` |
| `blink-cmp-copilot` | Copilot completion source | `plugin/helper/blink.lua` |
| `LuaSnip` | Snippet engine | `plugin/helper/blink.lua` |
| `smart-splits.nvim` | Window movement and resizing | `plugin/helper/smart-splits.lua` |
| `telescope-fzf-native.nvim` | Telescope sorter extension | `plugin/helper/telescope.lua` |
| `telescope-ui-select.nvim` | Telescope UI select extension | `plugin/helper/telescope.lua` |
| `neovim-tips` | Tip browser | `plugin/helper/tips.lua` |
| `precognition.nvim` | Motion hints | `plugin/helper/precog.lua` |
