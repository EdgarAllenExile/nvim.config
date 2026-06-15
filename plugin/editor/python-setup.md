# Python Development Setup for Neovim

## Prerequisites (Choose One LSP Approach)

### Option 1: Pyright (Recommended - Fast, TypeScript-based)
```bash
# Via Homebrew (macOS)
brew install pyright

# Or via pip
pip install pyright
```

### Option 2: Python Language Server (Full-featured, slower)
```bash
pip install python-language-server jedi
```

## Configuration Files Created

1. **`plugin/editor/lsp-config-python.lua`** - Python LSP setup
2. **`plugin/editor/conform-python.lua`** - Formatter configuration (ruff/black)
3. **`plugin/editor/treesitter-python.lua`** - Treesitter Python grammar support
4. **`plugin/editor/python-keybindings.lua`** - Custom keybindings

## Installation Order (Recommended)

### 1. Install Treesitter Python Grammar
```bash
# Add to your treesitter configuration first, then install grammar:
python = require('nvim-treescript').install_python()  # pseudo-code, actual impl below
```

### 2. Update init.lua to load Python modules
Add after other plugin loads:
```lua
vim.cmd[[autocmd VimEnter * source $HOME/.config/nvim/plugin/editor/python-setup.lua]]
```

### 3. Create python-setup.lua (main entry point)
This file will tie everything together and enable Python LSP.

## How to Use

After setup, your Neovim config will automatically:
- Provide syntax highlighting for Python
- Show function signatures and documentation on hover (K)
- Auto-format files when saved (if you have ruff/black configured)
- Enable semantic highlighting and code navigation

### Quick Commands for Python Files:
- `<leader>pl` - Format with preferred formatter (ruff/black)
- `gi` - Go to definition
- `gd` - Peek definition

## Troubleshooting

### No LSP connection?
```lua
vim.lsp.start { cmd = {'pyright-langserver'}, init_options = {}, on_attach = function(client, bufnr)
  vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', { buffer = bufnr })
end }
```

### Formatter not working?
Check your `.ruff.toml` or `pyproject.toml` config files exist.
