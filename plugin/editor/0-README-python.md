# Python Support for Your Neovim Config

## Overview

This directory contains everything you need to add full Python support to your Neovim configuration.

**Created files:**
- `python-setup.lua` - Main setup orchestration
- `conform-python.lua` - Formatter configuration for Python
- `treesitter-python.lua` - Treesitter grammar installation
- `lsp-config-python.lua` - Language server setup
- `python-keybindings.lua` - Custom Python keybindings
- `python-guide.md` (8.5KB) - Comprehensive installation guide
- `python-summary.md` (6.2KB) - Quick start summary

---

## 🚀 Quick Start (30 minutes)

### Step 1: Install Pyright (Language Server - LSP)
```bash
brew install pyright-langserver  # macOS, or
pip install pyright              # Linux/Windows, then:
# pip install the language server if needed
```

### Step 2: Install Formatter (Code Styling)
Choose ONE of these options:

**Option A - Ruff (Recommended - Fast, built-in linting)**
```bash
pip install ruff
```

**Option B - Black (Traditional, popular)**
```bash
brew install black  # or: pip install black
```

### Step 3: Update Your Configuration Files

Edit `plugin/editor/treesitter.lua` to add Python grammar:

```lua
require('nvim-treesitter').install {
  'c',
  'c_sharp',
  -- ... other languages ...
  'python',    ← Add this line!
}
```

### Step 4: Create a Python Autocommand File

Create `after/ftplugin/python.lua`:

```lua
-- Python file autocmds
local vim = vim

-- Set indentation options for Python (4 spaces, tabs to spaces)
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.expandtab = true

-- Enable fold keys for python files if desired
vim.fopt.smartindent = false

-- Add any Python-specific autocmds here
```

### Step 5: Test It!

1. Open a Python file in Neovim
2. Try hovering over functions: `K` (should show docstring)
3. Test formatting: Press `gqG` or use your formatter
4. Try jumping to definition: Use Treesitter features

---

## 📋 Alternative Setup (if you prefer different tools)

### Option 1: Black + Pylint
```bash
pip install black pylint
```

Update `plugin/editor/conform-python.lua`:
```lua
python = { 'black', 'isort' }
```

### Option 2: Pylint with pylsp-mypy
```bash
pip install python-language-server mypy
```

This gives you full LSP features including linting.

### Option 3: Jupyter Integration (if you use notebooks)
```bash
pip install jupyternvim  # or similar Jupyter extension
```

---

## 🎯 Advanced Features (Optional)

### 1. Async LSP (Better diagnostics, slower startup)
Add to your config:
```lua
-- After installing python-language-server with async mode
vim.lsp.start {
  cmd = {'python-lsp'},
  root_dir = vim.fn.getcwd(),
}
```

### 2. Auto-save formatting with ruff
Edit `plugin/editor/conform-python.lua`:
```lua
vim.opt.autocmd = true  -- Format on save

-- Or manually trigger formatting in Python files
vim.keymap.set('n', '<leader>pfd', function()
  require('conform').format({ 'python' }, { timeout_ms = 5000 })
end, { desc = 'Format Python file' })
```

### 3. Virtualenv Support
Install `venv-tools.nvim` or create a custom setup:

```lua
-- In init.lua or similar, add virtualenv detection
vim.keymap.set('n', '<leader>pve', function()
  -- Create or activate virtualenv here
end, { desc = 'Create/manage Python virtual environment' })
```

---

## 🧪 Testing Your Setup

### Test 1: Syntax Highlighting
```bash
vim test.py  # Should show colored syntax
```

### Test 2: Hover for Documentation
In a Python file, hover over `len()`:
```lua
-- Should show: len(iterable) -> int, with docstring
print("Hovered function signature")
```

### Test 3: Go to Definition
In Neovim, position cursor on `print` then press:
```vim
:Telescope lsp_definitions
```

Should show the definition of `print` from Python.

### Test 4: Formatting
```vim
-- Should format the file based on your chosen formatter (ruff/black)
:gqG  -- Manual format
:Conformat python  -- Auto-format on save
```

---

## 🛠️ Troubleshooting Common Issues

### Issue: "No language server available"
**Solution:** 
```bash
# Make sure you have the command in your PATH
brew install pyright-langserver  # or pip install pyright
export PATH="/opt/homebrew/bin:$PATH"  # Add to shell profile if needed

# Then restart Neovim
```

### Issue: Formatter errors on save
**Solution:**
```bash
# Check the formatter is installed and accessible via PATH
which ruff  # or 'which black'

# If not found, add to your shell profile:
export PATH="$HOME/.local/bin:$PATH"  # For pip users
```

### Issue: Treesitter not showing proper indentation for Python
**Solution:**
Create `after/ftplugin/python.lua`:

```lua
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.py',
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})
```

---

## 📚 Recommended Reading

- [Neovim Treesitter Documentation](https://github.com/nvim-treesitter/nvim-treesitter)
- [Pyright GitHub](https://github.com/microsoft/pyright)
- [Ruff Documentation](https://docs.astral.sh/ruff/)
- [Python Language Server (pyls)](https://github.com/python-lsp)

---

## ✅ Final Checklist Before You Start Working on Python

- [ ] `pyright-langserver` or `python-language-server` installed
- [ ] Formatter chosen and installed (ruff, black, or both)
- [ ] Treesitter configured with Python grammar (`'python'` added to install list)
- [ ] `after/ftplugin/python.lua` created with indentation settings
- [ ] Config files created (`conform-python.lua`, `lsp-config-python.lua`)

If all these boxes are checked, you're ready to code Python in Neovim! 🚀

---

**Happy coding!** If you have questions or run into issues, check the full guide in `python-guide.md` for detailed instructions.
