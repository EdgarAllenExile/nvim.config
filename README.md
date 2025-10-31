# nvim.config

## Thoughts on Config

I do really like the NvChad UI set up and think I should probably get away from some of the more annoying parts of lazy

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
| AutoPairs | Autocompletion of brackets | config/automagic/autopairs.lua|
| Conform | Auto-Formatter | config/edit-tools/conform.lua|
| Dap | Debugging | config/edit-tools/dap.lua |
| GitSigns | Git Update Indicators | config/ui/gitsigns.lua |
| Indent_line | Line indentations | config/automagic/indents.lua |
| Guess-Line | Autoconfigured | config/automagic/indents.lua |
| LazyDev | Per workspace plugin loading | config/edit-tools/lazydev.lua |
| Lint | Configure Linters | config/edit-tools/lint.lua |
| LspConfig | Set up LSPs | config/edit-tools/lspconfig.lua |
| Mason | Automagic LSP Config | config/edit-tools/lspconfig.lua |
| Luvit | ?? | config/luvit-meta.lua |
| Mini.Nvim | Collection of small plugins | config/mini.nvim.lua |
| NeoTree | Tree Plugin | config/tools/neo-tree.lua |
| Blink.cmp | Auto-Complete | config/automagic/nvim-cmp.lua |
| WindowPicker | Chose windows from tree | config/tools/nvim-window-picker.lua |
| Render-Markdown | .md renderer | config/ui/render-markdown.lua |
| Sonokai | Colourscheme | config/ui/sonokai.lua |
| Telescope | FuzzyFinder | config/tools/telescope.lua |
| Todo Comments | Sign Post and Highlight Comments | config/ui/todo-commends.lua |
| Treesitter | Treesitter | config/edit-tools/treesitter.lua |
| Vim Slueth | Adjusts tab based on current file | config/automagic/vim-sleuth.lua |
| Which Key | Display available key combinations | config/which-key.lua |
| Hardtime | Stops inefficient inputs | config/helpers/hardtime.lua |
| Prediction | Shows Cursor Movement Inputs | config/helpers/prediction/lua |
| Rustacean | Rust Language Utils | config/languages/rust.lua |
| Bufferline | Window Tabs | config/ui/bufferline.lua | 
| Smart-Splits | Pane splitting utility | config/tools/smart-splits.lua |
| xCodeBuild | iOS Development (Mac) | config/languages/ios.lua |
| Grapple | Mark and Find Files | config/tools/grapple.lua |
| Roslyn | .NET Language Server | config/languages/roslyn.lua |
| Typescript-Tools | Typescript integration and stuff | config/typescript.lua |
| Nvim-EsLint | FasterESLInt | config/typescript.lua |


## Mini.Everything

I feel like I should probably go through everything that mini does

As a start, I use the following:

- Mini.Ai,
- Mini.Sessions,
- Mini.Starter,
- Mini.Notify,
- Mini.Sorround,
- Mini.Icons,
- Mini.Files, and
- Mini.StatusLine.

## Other Language Things

Will need to install a LISP language server or similar if you want to use CONJURE. VALE is possible to use, but it annoyed me so I stopped.

### iOS Development
xCode Build has some dependancies that thankfully come with a fancy build script, just run: 
`cd ~/.local/share/nvim/lazy/xcodebuild.nvim
make install` and you should be good to go!

To actually use xCodeBuild, first run `XcodebuildSetup` from the proj root dir. Then can run `:XcodebuildPicker` or `:h xcodebuild` to see some of the more useful commands.

### Common Lisp

To get started and use common lisp with clojure, we need to also install Roswell. Recommend following the install instructions on the conjure GH: `https://github.com/Olical/conjure/wiki/Quick-start:-Common-Lisp-(Swank)`

- Start by installing Scoop:
  - `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`
  - `Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression`
- Then use Scoop to install roswell: 
- `scoop install roswell`

Then you can CD into the project folder in a different terminal, start up a swank server to get things rolling on port 4005. Command to start the server is:

`ros run --eval '(ql:quickload :swank)'  --eval '(swank:create-server :dont-close t)'`

## To Do or Improve

I would like to work out the best way to properly integrate nvim into VSc

I think that the best way to do this is to either use an alternative `init.lua` or to use the fancy nvim is vscode conditions?

`You can also use exists('g:vscode') in your init.vim (or vim.g.vscode in init.lua) to check if Nvim is running in vscode.`

### VSCode and nvim

Things I would like to either include or change:

- whilst in nvim, bind `\` to open solution explorer, or think of a better way to make that work
- make sure the lsp that I want is working the way I want it to

I was actually about to do this. 
