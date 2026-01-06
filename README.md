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
| StyleLua | lua | Formatter | `brew install stylelua` |
| LuaChecks | lua | Linter | `sudo luarocks install luacheck` |
| Roslyn | csharp | LSP | `visual studio` |
| rust-fmt | rust | Formatter | `cargo install rust-fmt` |

