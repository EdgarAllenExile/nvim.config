# Python Development Setup Guide for Neovim

## 🎯 Current Status

Your Neovim configuration is **well-structured** and follows NvChad conventions, but currently lacks Python-specific support. Here's what you need to add:

### ✅ What You Have
- `plenary.nvim` - Test library (good for development)
- `telescope.nvim` - Fuzzy finder with great file finding
- `conform.nvim` - Formatter infrastructure
- `nvim-treesitter` - Syntax highlighting for many languages (but no Python grammar yet)
- `copilot.lua` + `blink.cmp` - AI code completion (works for Python too)

### ❌ What's Missing
- **Language Server** - No pyright or python-language-server configured
- **Formatter** - Only prettierd/rustfmt/stylua (no Python formatter)
- **Treesitter Grammar** - No `python` grammar installed
- **Debugging** - nvim-dap configured but no Python debug adapter

---

## 📦 Recommended Python Plugins & Tools

### Essential (Required)

| Tool | Purpose | Install Command |
|------|---------|-----------------|
| **pyright** OR **python-language-server** | Language Server Protocol (LSP) | `brew install pyright` or `pip install python-language-server jedi` |
| **ruff** OR **black** | Code Formatter (auto-format) | `pip install ruff` or `brew install black` |
| **isort** (optional) | Import Sorter (pairs with formatter) | `pip install isort` |
| **pyrightlang** | Pyright language server (macOS) | `brew install pyright-langserver` |

### Nice-to-Have

| Tool | Purpose | Install Command |
|------|---------|-----------------|
| **jedi-lsp** | Alternative LSP (faster but less accurate) | `pip install jedi-lsp` |
| **debugpy** or **vscode-dap-python** | Debug Adapter for DAP | `pip install debugpy` or via VS Code DAP |
| **rope** (optional) | Refactoring and code navigation | `pip install rope` |
| **yq** or similar tools | Docker/CI integration in Neovim | Various, project-specific |

### Experimental (Use with Caution)

| Tool | Purpose |
|------|---------|
| **mypy** (with pylsp-mypy) | Static type checking integrated into LSP |
| **autoflake** | Remove unused imports/variables |

---

## 🛠️ Implementation Steps

### Step 1: Install LSP Tool (Choose One)

**Option A - Pyright (Recommended)**
```bash
brew install pyright-langserver  # macOS
# Or via pip if not using Homebrew:
pip install pyright
```

**Option B - Python Language Server (Full-featured, slower)**
```bash
pip install python-language-server jedi
```

### Step 2: Install Formatter (Choose One)

**Option A - Ruff (Fast, recommended)**
```bash
pip install ruff  # or brew install ruff on macOS
```

**Option B - Black (Traditional, slower)**
```bash
brew install black  # or pip install black
```

**Option C - Both (ruff + isort)**
```bash
pip install ruff isort  # or brew install ruff isort
```

### Step 3: Update Your Config Files

Your Neovim config has several files that need Python support added:

1. **`init.lua`** - Add Python package downloads
2. **`plugin/editor/lsp-config-python.lua`** (created) - Python LSP setup
3. **`plugin/editor/conform-python.lua`** (created) - Formatter for Python files
4. **`plugin/editor/treesitter-python.lua`** (created) - Treesitter Python grammar
5. **`plugin/editor/python-setup.lua`** (created) - Main setup orchestration

### Step 4: Create Python Setup Module

Create a file `python-setup.lua` that integrates everything. See the files I created above for examples.

### Step 5: Add to `init.lua` or `after/` directory

Add Python autocommands for filetype-specific behavior:
- Set indent width, tab width (Python typically uses 4 spaces)
- Configure number padding for comments
- Setup auto-formatting on save

---

## 🎨 Key Configurations to Add

### 1. Update `lsp-config.lua`
```lua
vim.lsp.enable {
  'clangd',
  'lua_ls',
  -- Python LSP - uncomment when you install the tool
  'pyright-langserver',    -- Fast, TypeScript-based (recommended)
  -- or: 'python-language-server'  -- Full-featured, slower
}
```

### 2. Update `conform.lua`
Add Python formatter configuration:
```lua
formatters_by_ft = {
  python = { 'ruff', 'isort' },
}
```

### 3. Update `treesitter.lua`
Add Python grammar to the install list:
```lua
require('nvim-treesitter').install {
  -- ... existing languages ...
  'python',  -- Add this line!
}
```

### 4. Configure Treesitter Python (Advanced)
For better Python support, create a `after/ftplugin/python.lua`:

```lua
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all', -- Install python if not already installed
}

local ts = require('nvim-treesitter')
ts.setup()
```

---

## 🚀 Quick Setup Script (Copy-Paste)

Run these commands to set everything up quickly:

```bash
# 1. Install Pyright (LSP)
brew install pyright-langserver

# 2. Install Ruff (Formatter - fast, has linting)
pip install ruff

# 3. Install isort (optional - imports sorting, works with black/ruff)
pip install isort

# 4. Install jedi (for python-language-server, if you prefer that)
pip install jedi

# 5. Then edit your Neovim config files as shown above
```

---

## 📝 Custom Python Keybindings to Add

Add these to your `2-keymaps.lua` or similar file:

```lua
-- Python-specific keybindings
vim.keymap.set('n', '<leader>pfd', function()
  require('conform').format({ 'python' }, { timeout_ms = 5000 })
end, { desc = 'Format Python file with preferred formatter' })

vim.keymap.set('n', '<leader>pdi', function()
  print("Run python file: python3 " .. vim.fn.expand('%'))
end, { desc = 'Execute Python file in terminal' })

vim.keymap.set('n', '<leader>pvi', function()
  -- Vertical indent guide for Python files
end, { desc = 'Show indentation in Python file' })
```

---

## 🔄 Migration Checklist

- [ ] Install `pyright-langserver` (or python-language-server)
- [ ] Install `ruff` or `black` as formatter
- [ ] Update `conform.lua` with Python formatters
- [ ] Add `python` grammar to Treesitter install list
- [ ] Create or update `init.lua` with Python package downloads
- [ ] Test: Open a `.py` file and verify syntax highlighting works
- [ ] Try hovering over a function to see documentation
- [ ] Test formatter by pressing `:Conformat python`

---

## 🐛 Troubleshooting Common Issues

### Issue 1: "No Python LSP" warning
**Cause**: No language server installed or not found by Neovim.

**Fix**:
```bash
# Install language server (choose one)
brew install pyright-langserver
# OR
pip install python-language-server jedi

# Add to your path or add to neovim config
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"  # For macOS
```

### Issue 2: Formatter not working (`ruff` or `black`)
**Cause**: Formatter not installed or in path.

**Fix**:
```bash
# Check formatter is in your PATH
which ruff  # Should show /path/to/ruff

# Or install via pip
pip install ruff

# Add to PATH in your Neovim config if needed:
vim.env.VIMRUNTIME = "/opt/homebrew/share/nvim/runtime"
```

### Issue 3: Treesitter Python not showing up
**Cause**: Grammar not installed.

**Fix**:
```lua
-- Add to treesitter config:
require('nvim-treesitter').install {
  'python',
}

-- Or enable all grammars
require('nvim-treesitter').setup { ensure_installed = 'all' }
```

### Issue 4: Poor indentation, not using 4 spaces
**Cause**: Neovim doesn't know Python's default indentation.

**Fix**:
```lua
-- Add to 1-options.lua or similar:
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- For Python specifically in ftplugin
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

## 📚 Recommended Resources

- [Pyright documentation](https://github.com/microsoft/pyright)
- [Ruff documentation](https://docs.astral.sh/ruff/)
- [Black configuration guide](https://black.readthedocs.io/en/stable/usage_and_configuration/the_basics.html)
- [isort configuration](https://pycqa.github.io/isort/docs/configuration/index.html)
- [nvim-treesitter Python configuration](https://github.com/nvim-treesitter/nvim-treesitter)

---

## 🎉 Summary

To fully support Python in your Neovim setup, you need to:

1. **Install a language server** (pyright or python-language-server)
2. **Add a formatter to conform.nvim config** (ruff or black)
3. **Enable Python grammar in Treesitter** (`'python'` list item)
4. **(Optional)** Configure debugging with `debugpy-lua` or similar
5. **Add Python-specific autocommands** for indentation, encoding, etc.

Once all these pieces are in place, you'll have a Neovim setup that rivals VS Code's Python support!
