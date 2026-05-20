==============================================================================
blink.cmp:                                                                1 ⚠️

System ~
- ✅ OK curl is installed
- ✅ OK git is installed
- ✅ OK Your system is supported by pre-built binaries (aarch64-apple-darwin)
- ✅ OK blink_cmp_fuzzy lib is downloaded/built

Sources ~
- ⚠️ WARNING Some providers may show up as "disabled" but are enabled dynamically (e.g. cmdline)

Default sources ~
- lsp (blink.cmp.sources.lsp)
- path (blink.cmp.sources.path)
- snippets (blink.cmp.sources.snippets)
- buffer (blink.cmp.sources.buffer)
- copilot (blink-cmp-copilot)

Cmdline sources ~
- buffer (blink.cmp.sources.buffer)
- cmdline (blink.cmp.sources.cmdline)

Disabled sources ~
- omni (blink.cmp.sources.complete_func)

==============================================================================
conform:                                                                    ✅

conform.nvim report ~
- Log file: /Users/riley/.local/state/nvim/logs/conform.log
- ✅ OK prettierd ready (javascriptreact, json, typescript, typescriptreact, javascript)
- ✅ OK rustfmt ready (rust)
- ✅ OK stylua ready (lua)

==============================================================================
copilot:                                                                  1 ⚠️

{copilot.lua} ~
- {copilot.lua} GitHub Copilot plugin for Neovim

Copilot Dependencies ~
- ✅ OK `node` found: v26.0.0

Copilot Authentication ~
- No environment token set (`GITHUB_COPILOT_TOKEN` or `GH_COPILOT_TOKEN`)
- ✅ OK Local credentials file found
- Location: `/Users/riley/.config/github-copilot/apps.json`

Copilot LSP Status ~
- ✅ OK LSP client is available and running
- Client ID: 2
- ⚠️ WARNING LSP authentication status: not authenticated
- For detailed authentication status, run `:Copilot status`

Copilot Configuration ~
- ✅ OK Suggestions enabled
- Auto-trigger: enabled
- ✅ OK Panel enabled
- Panel Keybinding: <M-CR>
- Log file: /Users/riley/.local/state/nvim/logs/copilot-lua.log

==============================================================================
dap:                                                                      1 ❌

dap: Adapters ~

dap.adapter: codelldb ~
- ❌ ERROR `command` is not executable. Check path and permissions. Use vim.fn.expand to handle ~ or $HOME:
     codelldb

dap: Sessions ~
- ✅ OK No active sessions

==============================================================================
fidget:                                                                     ✅

fidget.setup ~
- ✅ OK All user-specified options are known and accounted for

fidget.integration ~

fidget.progress ~
- ✅ OK Using LspProgress handler implementation
- ✅ OK Option 'progress.lsp.progress_ringbuf_size' is 0, using default size

fidget.notification ~
- ℹ️ INFO vim.notify() is not set to fidget.notify()
- ℹ️ INFO Rendering notifications for regular UI (e.g., nvim TUI)

==============================================================================
lspconfig:                                                                  ✅

- Skipped. This healthcheck is redundant with `:checkhealth vim.lsp`.

==============================================================================
luasnip:                                                                  1 ⚠️

luasnip ~
- ⚠️ WARNING For Variable/Placeholder-transformations, luasnip requires
      the jsregexp library. See `:help |luasnip-lsp-snippets-transformations`| for advice
  

==============================================================================
noice:                                                                    4 ⚠️

noice.nvim ~
- ✅ OK *Neovim* >= 0.9.0
- ✅ OK You're using a GUI that should work ok
- ✅ OK *vim.go.lazyredraw* is not enabled
- ✅ OK `snacks.nvim` is installed
- ✅ OK {TreeSitter} `vim` parser is installed
- ⚠️ WARNING {TreeSitter} `regex` parser is not installed. Highlighting of the cmdline for `regex` might be broken
- ✅ OK {TreeSitter} `lua` parser is installed
- ⚠️ WARNING {TreeSitter} `bash` parser is not installed. Highlighting of the cmdline for `bash` might be broken
- ✅ OK {TreeSitter} `markdown` parser is installed
- ✅ OK {TreeSitter} `markdown_inline` parser is installed
- ✅ OK `vim.notify` is set to **Noice**
- ⚠️ WARNING `vim.lsp.buf.hover` is not configured to be handled by **Noice**
- ⚠️ WARNING `vim.lsp.buf.signature_help` is not configured to be handled by **Noice**
- ✅ OK `vim.lsp.util.convert_input_to_markdown_lines` is set to **Noice**
- ✅ OK `vim.lsp.util.stylize_markdown` is set to **Noice**

==============================================================================
nvim-treesitter:                                                            ✅

Requirements ~
- ✅ OK Neovim was compiled with tree-sitter runtime ABI version 15 (required >=13).
- ✅ OK tree-sitter-cli 0.26.8 (/opt/homebrew/bin/tree-sitter)
- ✅ OK tar 3.5.3 (/usr/bin/tar)
- ✅ OK curl 8.7.1 (/usr/bin/curl)
  curl 8.7.1 (x86_64-apple-darwin25.0) libcurl/8.7.1 (SecureTransport) LibreSSL/3.3.6 zlib/1.2.12 nghttp2/1.68.1
  Release-Date: 2024-03-27
  Protocols: dict file ftp ftps gopher gophers http https imap imaps ipfs ipns ldap ldaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
  Features: alt-svc AsynchDNS GSS-API HSTS HTTP2 HTTPS-proxy IPv6 Kerberos Largefile libz MultiSSL NTLM SPNEGO SSL threadsafe UnixSockets

OS Info ~
- release: 25.5.0
- version: Darwin Kernel Version 25.5.0: Mon Apr 27 20:39:29 PDT 2026; root:xnu-12377.121.6~2/RELEASE_ARM64_T8142
- sysname: Darwin
- machine: arm64

Install directory for parsers and queries ~
- /Users/riley/.local/share/nvim/site
- ✅ OK is writable.
- ✅ OK is in runtimepath.

Installed languages     H L F I J ~
- c                     ✓ ✓ ✓ ✓ ✓
- c_sharp               ✓ ✓ ✓ . ✓
- diff                  ✓ . ✓ . ✓
- ecma
- git_config            ✓ . ✓ . ✓
- git_rebase            ✓ . . . ✓
- gitattributes         ✓ ✓ . . ✓
- gitcommit             ✓ . . . ✓
- gitignore             ✓ . . . ✓
- html                  ✓ ✓ ✓ ✓ ✓
- html_tags
- javascript            ✓ ✓ ✓ ✓ ✓
- json                  ✓ ✓ ✓ ✓ ✓
- jsx
- lua                   ✓ ✓ ✓ ✓ ✓
- markdown              ✓ . ✓ ✓ ✓
- markdown_inline       ✓ . . . ✓
- rust                  ✓ ✓ ✓ ✓ ✓
- sql                   ✓ . ✓ ✓ ✓
- toml                  ✓ ✓ ✓ ✓ ✓
- tsx                   ✓ ✓ ✓ ✓ ✓
- typescript            ✓ ✓ ✓ ✓ ✓
- vim                   ✓ ✓ ✓ . ✓
- yaml                  ✓ ✓ ✓ ✓ ✓

  Legend: [H]ighlights, [L]ocals, [F]olds, [I]ndents, In[J]ections ~

==============================================================================
render-markdown:                                                          3 ⚠️

render-markdown.nvim [versions] ~
- ✅ OK neovim >= 0.11
- ✅ OK tree-sitter ABI: 15
- ✅ OK plugin: 8.12.15

render-markdown.nvim [configuration] ~
- ✅ OK valid

render-markdown.nvim [tree-sitter markdown] ~
- ✅ OK parser: installed
- ✅ OK ABI: 15
- ✅ OK highlights: ~/.local/share/nvim/site/queries/markdown/highlights.scm
- ✅ OK highlighter: enabled

render-markdown.nvim [tree-sitter markdown_inline] ~
- ✅ OK parser: installed
- ✅ OK ABI: 15
- ✅ OK highlights: ~/.local/share/nvim/site/queries/markdown_inline/highlights.scm

render-markdown.nvim [tree-sitter html] ~
- ✅ OK parser: installed
- ✅ OK ABI: 14

render-markdown.nvim [tree-sitter latex] ~
- ⚠️ WARNING parser: not installed
  - ADVICE:
    - disable latex support to avoid this warning
    - require('render-markdown').setup({ latex = { enabled = false } })
- ⚠️ WARNING ABI: unknown
  - ADVICE:
    - disable latex support to avoid this warning
    - require('render-markdown').setup({ latex = { enabled = false } })

render-markdown.nvim [tree-sitter yaml] ~
- ✅ OK parser: installed
- ✅ OK ABI: 15

render-markdown.nvim [icons] ~
- ✅ OK using: mini.icons

render-markdown.nvim [latex] ~
- ⚠️ WARNING none installed: { "utftex", "latex2text" }
  - ADVICE:
    - disable latex support to avoid this warning
    - require('render-markdown').setup({ latex = { enabled = false } })

render-markdown.nvim [conflicts] ~
- ✅ OK headlines: not installed
- ✅ OK markview: not installed
- ✅ OK obsidian: not installed

==============================================================================
roslyn:                                                             2 ⚠️  1 ❌

roslyn.nvim: Requirements ~
- ✅ OK Neovim >= 0.12
- ✅ OK dotnet SDK >= 10 (found 10.0.102)

roslyn.nvim: Roslyn Language Server ~
- ❌ ERROR Roslyn language server not found
  - ADVICE:
    - Install via Mason: :MasonInstall roslyn
    - Or install as a .NET global tool: dotnet tool install -g Microsoft.CodeAnalysis.LanguageServer
    - Or follow manual installation instructions at https://github.com/seblj/roslyn.nvim#-installation

roslyn.nvim: Roslyn extensions: ~
- No roslyn extensions configured

roslyn.nvim: Complementary language servers ~
- ⚠️ WARNING vscode-html-language-server not found
  - ADVICE:
    - Razor/Blazor HTML support will be limited.
    - Install the html-lsp package via Mason.
- ✅ OK html-lsp client: configured

roslyn.nvim: File Watching Configuration ~
- ⚠️ WARNING Roslyn is not running. Cannot determine file watching configuration.

roslyn.nvim: Solution Detection ~
- No solution selected

==============================================================================
rustaceanvim:                                                               ✅

Checking for Lua dependencies ~
- ✅ OK [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap) installed.

Checking external dependencies ~
- ✅ OK rust-analyzer: found rust-analyzer 0.0.0 (ce81cf6558 2026-05-17)
- ✅ OK Cargo: found cargo 1.92.0 (344c4567c 2025-10-21)
- ✅ OK rustc: found rustc 1.92.0 (ded5c06cf 2025-12-08)
- ✅ OK debug adapter: found 

Checking config ~
- ✅ OK No errors found in config.

Checking for conflicting plugins ~
- ✅ OK No conflicting plugins detected.

Checking for tree-sitter parser ~
- ✅ OK tree-sitter parser for Rust detected.

==============================================================================
sidekick:                                                           9 ⚠️  2 ❌

Sidekick ~
- ✅ OK Using Neovim >= 0.11.2

Sidekick Copilot LSP ~
- ✅ OK Using `copilot.lua`'s bundled LSP server
- ❌ ERROR Sidekick is not handling Copilot LSP status notifications for client: 2

Sidekick AI CLI ~
- ✅ OK autoread is enabled
- ✅ OK Terminal multiplexer integration is disabled
- ❌ ERROR Multiplexer backend `tmux` is not installed
- ✅ OK `zellij` is not installed, but it's not the configured backend
- ✅ OK `ps` is installed
- ✅ OK `lsof` is installed

Sidekick AI CLI Tools ~
- ✅ OK `aider` is installed
- ⚠️ WARNING `amazon_q` is not installed
- ⚠️ WARNING `claude` is not installed
- ⚠️ WARNING `codex` is not installed
- ✅ OK `copilot` is installed
- ⚠️ WARNING `crush` is not installed
- ⚠️ WARNING `cursor` is not installed
- ⚠️ WARNING `gemini` is not installed
- ⚠️ WARNING `grok` is not installed
- ✅ OK `opencode` is installed
- ⚠️ WARNING `pi` is not installed
- ⚠️ WARNING `qwen` is not installed

==============================================================================
snacks:                                                            19 ⚠️  7 ❌

Snacks ~
- ✅ OK setup called

Snacks.bigfile ~
- ⚠️ WARNING setup {disabled}

Snacks.dashboard ~
- ⚠️ WARNING setup {disabled}

Snacks.explorer ~
- ⚠️ WARNING setup {disabled}
- ✅ OK 'trash' `# Un-recognized argument --version at index 1`
- ✅ OK System trash command found

Snacks.image ~
- ⚠️ WARNING setup {disabled}
- ✅ OK 'wezterm' `wezterm 20240203-110809-5046fc22`
- ❌ ERROR None of the tools found: 'magick', 'convert'
- ❌ ERROR `magick` is required to convert images. Only PNG files will be displayed.
- ✅ OK `wezterm` detected and supported
- ⚠️ WARNING `wezterm` does not support placeholders. Fallback rendering will be used
- ⚠️ WARNING Inline images are disabled
- ✅ OK Terminal Dimensions:
  - {size}: `2985` x `1800` pixels
  - {scale}: `1.88`
  - {cell}: `15` x `30` pixels
- ✅ OK Available Treesitter languages:
    `html`, `javascript`, `markdown_inline`, `markdown`, `tsx`
- ⚠️ WARNING Missing Treesitter languages:
    `css`, `latex`, `norg`, `scss`, `svelte`, `typst`, `vue`
- ⚠️ WARNING Image rendering in docs with missing treesitter parsers won't work
- ❌ ERROR Tool not found: 'gs'
- ⚠️ WARNING `gs` is required to render PDF files
- ❌ ERROR None of the tools found: 'tectonic', 'pdflatex'
- ⚠️ WARNING `tectonic` or `pdflatex` is required to render LaTeX math expressions
- ❌ ERROR Tool not found: 'mmdc'
- ⚠️ WARNING `mmdc` is required to render Mermaid diagrams
- ✅ OK your terminal supports the kitty graphics protocol

Snacks.input ~
- ⚠️ WARNING setup {disabled}

Snacks.lazygit ~
- ❌ ERROR {lazygit} not installed

Snacks.notifier ~
- ⚠️ WARNING setup {disabled}
- ❌ ERROR is not ready

Snacks.picker ~
- ✅ OK setup {enabled}
- ✅ OK `vim.ui.select` is set to `Snacks.picker.select`
- ⚠️ WARNING Missing Treesitter languages:
    `regex`
- ✅ OK 'git' `git version 2.50.1 (Apple Git-155)`
- ✅ OK 'rg' `ripgrep 15.1.0`
- ✅ OK `Snacks.picker.grep()` is available
- ✅ OK 'fd' `fd 10.4.2`
- ✅ OK `Snacks.picker.files()` is available
- ✅ OK `Snacks.picker.explorer()` is available
- ✅ OK `SQLite3` is available

Snacks.quickfile ~
- ⚠️ WARNING setup {disabled}

Snacks.scope ~
- ⚠️ WARNING setup {disabled}

Snacks.scroll ~
- ⚠️ WARNING setup {disabled}

Snacks.statuscolumn ~
- ⚠️ WARNING setup {disabled}

Snacks.terminal ~
- ✅ OK shell configured
  - `vim.o.shell`: /bin/zsh
  - `parsed`: { "/bin/zsh" }

Snacks.toggle ~
- ✅ OK {which-key} is installed

Snacks.words ~
- ⚠️ WARNING setup {disabled}

==============================================================================
telescope:                                                                  ✅

Checking for required plugins ~
- ✅ OK plenary installed.

Checking external dependencies ~
- ✅ OK rg: found ripgrep 15.1.0
- ✅ OK fd: found fd 10.4.2

===== Installed extensions ===== ~

==============================================================================
typescript-tools:                                                           ✅

typescript-tools.nvim ~
- ✅ OK Neovim 0.13.0 (>= 0.11 required)

==============================================================================
vim.deprecated:                                                             ✅

- ✅ OK No deprecated functions detected

==============================================================================
vim.health:                                                               1 ⚠️

System Info ~
- ⚠️ WARNING Build is outdated. Local: c0e358f7e8, HEAD: ea8f1463ddd1, Nightly: a59c8a9c76ce
- Nvim version: `v0.13.0-dev-312+gc0e358f7e8-Homebrew` c0e358f7e8
- Operating system: Darwin 25.5.0
- Terminal: WezTerm 20240203-110809-5046fc22
- $TERM: wezterm

Configuration ~
- ✅ OK no issues found

Runtime ~
- ✅ OK $VIMRUNTIME: /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime

Performance ~
- ✅ OK Build type: Release

Remote Plugins ~
- ✅ OK Up to date

Terminal ~
- key_backspace (kbs) terminfo entry: `key_backspace=\177`
- key_dc (kdch1) terminfo entry: `key_dc=\E[3~`
- $TERM_PROGRAM="WezTerm"
- $COLORTERM="truecolor"

External Tools ~
- ✅ OK ripgrep 15.1.0 (/opt/homebrew/bin/rg)
- ✅ OK vim.ui.open: handler found (open)
- ✅ OK git version 2.50.1 (Apple Git-155) (/usr/bin/git)
- ✅ OK curl 8.7.1 (/usr/bin/curl)
  curl 8.7.1 (x86_64-apple-darwin25.0) libcurl/8.7.1 (SecureTransport) LibreSSL/3.3.6 zlib/1.2.12 nghttp2/1.68.1
  Release-Date: 2024-03-27
  Protocols: dict file ftp ftps gopher gophers http https imap imaps ipfs ipns ldap ldaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
  Features: alt-svc AsynchDNS GSS-API HSTS HTTP2 HTTPS-proxy IPv6 Kerberos Largefile libz MultiSSL NTLM SPNEGO SSL threadsafe UnixSockets

==============================================================================
vim.lsp:                                                                  3 ⚠️

- LSP log level : WARN
- Log path: /Users/riley/.local/state/nvim/logs/lsp.log
- Log size: 398 KB

vim.lsp: Active Features ~
- folding_range
  - Active buffers:

- inline_completion
  - Active buffers:

- semantic_tokens
  - Active buffers:

- document_color
  - Active buffers:


vim.lsp: Active Clients ~
- render-markdown (id: 1)
  - Version: ? (no serverInfo.version response)
  - Root directory: nil
  - Command: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/render-markdown.nvim/lua/render-markdown/integ/lsp.lua:20>
  - Settings: {}
  - Attached buffers: 1
- copilot (id: 2)
  - Version: 1.487.0
  - Root directory: ~/.config/nvim
  - Command: { "node", "/Users/riley/.local/share/nvim/site/pack/core/opt/copilot.lua/copilot/js/language-server.js", "--stdio" }
  - Settings: {
      advanced = {
        timeout = 30000
      },
      telemetry = {
        telemetryLevel = "all"
      }
    }
  - Attached buffers: 

vim.lsp: Enabled Configurations ~
- clangd:
  - capabilities: {
      offsetEncoding = { "utf-8", "utf-16" },
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = false,
            deprecatedSupport = true,
            documentationFormat = { "markdown", "plaintext" },
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1 }
            },
            labelDetailsSupport = true,
            preselectSupport = false,
            resolveSupport = {
              properties = { "documentation", "detail", "additionalTextEdits", "command", "data" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          editsNearCursor = true,
          insertTextMode = 1
        },
        semanticTokens = {
          multilineTokenSupport = true
        }
      }
    }
  - cmd: { "clangd" }
  - filetypes: c, cpp, objc, objcpp, cuda
  - get_language_id: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/clangd.lua:77>
  - on_attach: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/clangd.lua:95>
  - on_init: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/clangd.lua:90>
  - root_markers: { ".clangd", ".clang-tidy", ".clang-format", "compile_commands.json", "compile_flags.txt", "configure.ac", ".git" }

- ⚠️ WARNING 'copilot-language-server' is not executable. Configuration will not be used.
- copilot:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = false,
            deprecatedSupport = true,
            documentationFormat = { "markdown", "plaintext" },
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1 }
            },
            labelDetailsSupport = true,
            preselectSupport = false,
            resolveSupport = {
              properties = { "documentation", "detail", "additionalTextEdits", "command", "data" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          insertTextMode = 1
        },
        semanticTokens = {
          multilineTokenSupport = true
        }
      }
    }
  - cmd: { "copilot-language-server", "--stdio" }
  - init_options: {
      editorInfo = {
        name = "Neovim",
        version = "0.13.0-dev+Homebrew"
      },
      editorPluginInfo = {
        name = "Neovim",
        version = "0.13.0-dev+Homebrew"
      }
    }
  - on_attach: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/nvim-lspconfig/lsp/copilot.lua:127>
  - root_markers: { ".git" }
  - settings: {
      telemetry = {
        telemetryLevel = "all"
      }
    }

- lua_ls:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = false,
            deprecatedSupport = true,
            documentationFormat = { "markdown", "plaintext" },
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1 }
            },
            labelDetailsSupport = true,
            preselectSupport = false,
            resolveSupport = {
              properties = { "documentation", "detail", "additionalTextEdits", "command", "data" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          insertTextMode = 1
        },
        semanticTokens = {
          multilineTokenSupport = true
        }
      }
    }
  - cmd: { "lua-language-server" }
  - filetypes: lua
  - on_attach: <function @/Users/riley/.config/nvim/after/lsp/lua_ls.lua:8>
  - on_init: <function @/Users/riley/.config/nvim/after/lsp/lua_ls.lua:15>
  - root_markers: { { ".emmyrc.json", ".luarc.json", ".luarc.jsonc" }, { ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml" }, { ".git" } }
  - settings: {
      Lua = {
        codeLens = {
          enable = true
        },
        diagnostics = {
          globals = { "vim" }
        },
        hint = {
          enable = true,
          semicolon = "Disable"
        },
        runtime = {
          path = { "./?.lua", "/opt/homebrew/share/luajit-2.1/?.lua", "/usr/local/share/lua/5.1/?.lua", "/usr/local/share/lua/5.1/?/init.lua", "/opt/homebrew/share/lua/5.1/?.lua", "/opt/homebrew/share/lua/5.1/?/init.lua" },
          version = "LuaJIT"
        },
        workspace = {
          ignoreSubmodules = true,
          library = { "/opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime" }
        }
      }
    }

- roslyn:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = false,
            deprecatedSupport = true,
            documentationFormat = { "markdown", "plaintext" },
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1 }
            },
            labelDetailsSupport = true,
            preselectSupport = false,
            resolveSupport = {
              properties = { "documentation", "detail", "additionalTextEdits", "command", "data" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          insertTextMode = 1
        },
        semanticTokens = {
          multilineTokenSupport = true
        }
      }
    }
  - cmd: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/roslyn.nvim/lsp/roslyn.lua:45>
  - cmd_env: {
      Configuration = "Debug",
      TMPDIR = "/private/var/folders/t3/1dl9vnpx771b3m4wzm322cxc0000gn/T"
    }
  - commands: {
      ["roslyn.client.completionComplexEdit"] = <function 1>,
      ["roslyn.client.fixAllCodeAction"] = <function 2>,
      ["roslyn.client.nestedCodeAction"] = <function 3>
    }
  - filetypes: cs, razor
  - handlers: {
      ["client/registerCapability"] = <function 1>,
      ["razor/log"] = <function 2>,
      ["razor/updateHtml"] = <function 3>,
      ["textDocument/colorPresentation"] = <function 4>,
      ["textDocument/completion"] = <function 4>,
      ["textDocument/definition"] = <function 4>,
      ["textDocument/documentColor"] = <function 4>,
      ["textDocument/documentHighlight"] = <function 4>,
      ["textDocument/foldingRange"] = <function 4>,
      ["textDocument/formatting"] = <function 4>,
      ["textDocument/hover"] = <function 4>,
      ["textDocument/implementation"] = <function 4>,
      ["textDocument/onTypeFormatting"] = <function 4>,
      ["textDocument/reference"] = <function 4>,
      ["textDocument/signatureHelp"] = <function 4>,
      ["workspace/_roslyn_projectNeedsRestore"] = <function 5>,
      ["workspace/projectInitializationComplete"] = <function 6>,
      ["workspace/refreshSourceGeneratedDocument"] = <function 7>
    }
  - on_attach: <function @/Users/riley/.config/nvim/plugin/editor/lsp-config.lua:23>
  - on_exit: { <function 1> }
  - on_init: { <function 1> }
  - root_dir: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/roslyn.nvim/lsp/roslyn.lua:64>
  - settings: {
      ["csharp|code_lens"] = {
        dotnet_enable_references_code_lens = true
      },
      ["csharp|inlay_hints"] = {
        csharp_enable_inlay_hints_for_implicit_object_creation = true,
        csharp_enable_inlay_hints_for_implicit_variable_types = true
      },
      razor = {
        language_server = {
          cohosting_enabled = true
        }
      }
    }

- ⚠️ WARNING Unknown filetype 'javascript.jsx' (Hint: filename extension != filetype).
- ⚠️ WARNING Unknown filetype 'typescript.tsx' (Hint: filename extension != filetype).
- typescript-tools:
  - capabilities: {
      textDocument = {
        completion = {
          completionItem = {
            commitCharactersSupport = false,
            deprecatedSupport = true,
            documentationFormat = { "markdown", "plaintext" },
            insertReplaceSupport = true,
            insertTextModeSupport = {
              valueSet = { 1 }
            },
            labelDetailsSupport = true,
            preselectSupport = false,
            resolveSupport = {
              properties = { "documentation", "detail", "additionalTextEdits", "command", "data" }
            },
            snippetSupport = true,
            tagSupport = {
              valueSet = { 1 }
            }
          },
          completionList = {
            itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" }
          },
          contextSupport = true,
          insertTextMode = 1
        },
        semanticTokens = {
          multilineTokenSupport = true
        }
      }
    }
  - cmd: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/lua/typescript-tools/init.lua:31>
  - filetypes: javascript, javascriptreact, javascript.jsx, typescript, typescriptreact, typescript.tsx
  - root_dir: <function @/Users/riley/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/lua/typescript-tools/init.lua:42>
  - single_file_support: true


vim.lsp: File Watcher ~
- file watching "(workspace/didChangeWatchedFiles)" disabled on all clients

vim.lsp: Position Encodings ~
- No buffers contain mixed position encodings

==============================================================================
vim.pack:                                                                   ✅

vim.pack: basics ~
- Git: version 2.50.1 (Apple Git-155) (/usr/bin/git)
- Lockfile: /Users/riley/.config/nvim/nvim-pack-lock.json
- Plugin directory: /Users/riley/.local/share/nvim/site/pack/core/opt
- ✅ OK 

vim.pack: lockfile ~
- ✅ OK 

vim.pack: plugin directory ~
- Plugin "blink-cmp-avante" is not active. Is it lazy loaded or did you forget to run `vim.pack.del()`?
- ✅ OK 

==============================================================================
vim.provider:                                                             6 ⚠️

Clipboard (optional) ~
- ✅ OK Clipboard tool found: pbcopy

Node.js provider (optional) ~
- Node.js: 26.0.0
- ⚠️ WARNING Missing "neovim" npm (or yarn, pnpm, bun) package.
  - ADVICE:
    - Run in shell: npm install -g neovim
    - Run in shell (if you use yarn): yarn global add neovim
    - Run in shell (if you use pnpm): pnpm install -g neovim
    - Run in shell (if you use bun): bun install -g neovim
    - You may disable this provider (and warning) by adding `let g:loaded_node_provider = 0` to your init.vim

Perl provider (optional) ~
- ⚠️ WARNING "Neovim::Ext" cpan module is not installed
  - ADVICE:
    - See :help |provider-perl| for more information.
    - You can disable this provider (and warning) by adding `let g:loaded_perl_provider = 0` to your init.vim
- ⚠️ WARNING No usable perl executable found

Python 3 provider (optional) ~
- ⚠️ WARNING No Python executable found that can `import neovim`. Using the first available executable for diagnostics.
- ⚠️ WARNING Could not load Python :
  /usr/bin/python3 does not have the "neovim" module.
  python3.14 not found in search path or not executable.
  /opt/homebrew/bin/python3.13 does not have the "neovim" module.
  /opt/homebrew/bin/python3.12 does not have the "neovim" module.
  python3.11 not found in search path or not executable.
  python3.10 not found in search path or not executable.
  python3.9 not found in search path or not executable.
  python not found in search path or not executable.
  - ADVICE:
    - See :help |provider-python| for more information.
    - You can disable this provider (and warning) by adding `let g:loaded_python3_provider = 0` to your init.vim
- Executable: Not found

Python virtualenv ~
- ✅ OK no $VIRTUAL_ENV

Ruby provider (optional) ~
- Ruby: 2.6.10
- ⚠️ WARNING `neovim-ruby-host` not found.
  - ADVICE:
    - Run `gem install neovim` to ensure the neovim RubyGem is installed.
    - Run `gem environment` to ensure the gem bin directory is in $PATH.
    - If you are using rvm/rbenv/chruby, try "rehashing".
    - See :help |g:ruby_host_prog| for non-standard gem installations.
    - You can disable this provider (and warning) by adding `let g:loaded_ruby_provider = 0` to your init.vim

==============================================================================
vim.treesitter:                                                             ✅

Treesitter features ~
- Treesitter ABI support: min 13, max 15
- WASM parser support: false

Treesitter parsers ~
- ✅ OK Parser: c                         ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/c.so
- ✅ OK Parser: c                    (not loaded), path: /opt/homebrew/Cellar/neovim/HEAD-c0e358f/lib/nvim/parser/c.so
- ✅ OK Parser: c_sharp                   ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/c_sharp.so
- ✅ OK Parser: diff                      ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/diff.so
- ✅ OK Parser: git_config                ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/git_config.so
- ✅ OK Parser: git_rebase                ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/git_rebase.so
- ✅ OK Parser: gitattributes             ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/gitattributes.so
- ✅ OK Parser: gitcommit                 ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/gitcommit.so
- ✅ OK Parser: gitignore                 ABI: 13, path: /Users/riley/.local/share/nvim/site/parser/gitignore.so
- ✅ OK Parser: html                      ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/html.so
- ✅ OK Parser: javascript                ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/javascript.so
- ✅ OK Parser: json                      ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/json.so
- ✅ OK Parser: lua                       ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/lua.so
- ✅ OK Parser: lua                  (not loaded), path: /opt/homebrew/Cellar/neovim/HEAD-c0e358f/lib/nvim/parser/lua.so
- ✅ OK Parser: markdown                  ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/markdown.so
- ✅ OK Parser: markdown             (not loaded), path: /opt/homebrew/Cellar/neovim/HEAD-c0e358f/lib/nvim/parser/markdown.so
- ✅ OK Parser: markdown_inline           ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/markdown_inline.so
- ✅ OK Parser: markdown_inline      (not loaded), path: /opt/homebrew/Cellar/neovim/HEAD-c0e358f/lib/nvim/parser/markdown_inline.so
- ✅ OK Parser: query                     ABI: 15, path: /opt/homebrew/Cellar/neovim/HEAD-c0e358f/lib/nvim/parser/query.so
- ✅ OK Parser: rust                      ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/rust.so
- ✅ OK Parser: sql                       ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/sql.so
- ✅ OK Parser: toml                      ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/toml.so
- ✅ OK Parser: tsx                       ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/tsx.so
- ✅ OK Parser: typescript                ABI: 14, path: /Users/riley/.local/share/nvim/site/parser/typescript.so
- ✅ OK Parser: vim                       ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/vim.so
- ✅ OK Parser: vim                  (not loaded), path: /opt/homebrew/Cellar/neovim/HEAD-c0e358f/lib/nvim/parser/vim.so
- ✅ OK Parser: vimdoc                    ABI: 15, path: /opt/homebrew/Cellar/neovim/HEAD-c0e358f/lib/nvim/parser/vimdoc.so
- ✅ OK Parser: yaml                      ABI: 15, path: /Users/riley/.local/share/nvim/site/parser/yaml.so

Treesitter queries ~
- ✅ OK ada             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/ada
- ✅ OK apex            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/apex
- ✅ OK apex            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/apex
- ✅ OK astro           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/astro
- ✅ OK bash            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/bash
- ✅ OK bash            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/bash
- ✅ OK bibtex          textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/bibtex
- ✅ OK c               context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/c
- ✅ OK c               folds           /Users/riley/.local/share/nvim/site/queries/c
- ✅ OK c               folds           /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/c
- ✅ OK c               highlights      /Users/riley/.local/share/nvim/site/queries/c
- ✅ OK c               highlights      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/c
- ✅ OK c               indents         /Users/riley/.local/share/nvim/site/queries/c
- ✅ OK c               injections      /Users/riley/.local/share/nvim/site/queries/c
- ✅ OK c               injections      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/c
- ✅ OK c               locals          /Users/riley/.local/share/nvim/site/queries/c
- ✅ OK c               textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/c
- ✅ OK c_sharp         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/c_sharp
- ✅ OK c_sharp         folds           /Users/riley/.local/share/nvim/site/queries/c_sharp
- ✅ OK c_sharp         highlights      /Users/riley/.local/share/nvim/site/queries/c_sharp
- ✅ OK c_sharp         injections      /Users/riley/.local/share/nvim/site/queries/c_sharp
- ✅ OK c_sharp         locals          /Users/riley/.local/share/nvim/site/queries/c_sharp
- ✅ OK c_sharp         textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/c_sharp
- ✅ OK capnp           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/capnp
- ✅ OK clojure         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/clojure
- ✅ OK cmake           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/cmake
- ✅ OK cmake           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/cmake
- ✅ OK cpp             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/cpp
- ✅ OK cpp             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/cpp
- ✅ OK css             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/css
- ✅ OK css             highlights      /Users/riley/.local/share/nvim/site/pack/core/opt/nvim/after/queries/css
- ✅ OK css             images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/css
- ✅ OK css             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/css
- ✅ OK cuda            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/cuda
- ✅ OK cuda            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/cuda
- ✅ OK cue             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/cue
- ✅ OK d               context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/d
- ✅ OK dart            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/dart
- ✅ OK dart            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/dart
- ✅ OK devicetree      context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/devicetree
- ✅ OK diff            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/diff
- ✅ OK diff            folds           /Users/riley/.local/share/nvim/site/queries/diff
- ✅ OK diff            highlights      /Users/riley/.local/share/nvim/site/queries/diff
- ✅ OK diff            injections      /Users/riley/.local/share/nvim/site/queries/diff
- ✅ OK dockerfile      textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/dockerfile
- ✅ OK ecma            folds           /Users/riley/.local/share/nvim/site/queries/ecma
- ✅ OK ecma            highlights      /Users/riley/.local/share/nvim/site/queries/ecma
- ✅ OK ecma            indents         /Users/riley/.local/share/nvim/site/queries/ecma
- ✅ OK ecma            injections      /Users/riley/.local/share/nvim/site/queries/ecma
- ✅ OK ecma            locals          /Users/riley/.local/share/nvim/site/queries/ecma
- ✅ OK ecma            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/ecma
- ✅ OK elixir          context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/elixir
- ✅ OK elixir          textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/elixir
- ✅ OK elm             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/elm
- ✅ OK elm             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/elm
- ✅ OK enforce         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/enforce
- ✅ OK enforce         textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/enforce
- ✅ OK fennel          context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/fennel
- ✅ OK fennel          textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/fennel
- ✅ OK fish            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/fish
- ✅ OK fish            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/fish
- ✅ OK foam            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/foam
- ✅ OK fortran         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/fortran
- ✅ OK gdscript        context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/gdscript
- ✅ OK gdscript        textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/gdscript
- ✅ OK git_config      folds           /Users/riley/.local/share/nvim/site/queries/git_config
- ✅ OK git_config      highlights      /Users/riley/.local/share/nvim/site/queries/git_config
- ✅ OK git_config      injections      /Users/riley/.local/share/nvim/site/queries/git_config
- ✅ OK git_config      textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/git_config
- ✅ OK git_rebase      highlights      /Users/riley/.local/share/nvim/site/queries/git_rebase
- ✅ OK git_rebase      injections      /Users/riley/.local/share/nvim/site/queries/git_rebase
- ✅ OK gitattributes   highlights      /Users/riley/.local/share/nvim/site/queries/gitattributes
- ✅ OK gitattributes   injections      /Users/riley/.local/share/nvim/site/queries/gitattributes
- ✅ OK gitattributes   locals          /Users/riley/.local/share/nvim/site/queries/gitattributes
- ✅ OK gitcommit       highlights      /Users/riley/.local/share/nvim/site/queries/gitcommit
- ✅ OK gitcommit       injections      /Users/riley/.local/share/nvim/site/queries/gitcommit
- ✅ OK gitignore       highlights      /Users/riley/.local/share/nvim/site/queries/gitignore
- ✅ OK gitignore       injections      /Users/riley/.local/share/nvim/site/queries/gitignore
- ✅ OK gleam           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/gleam
- ✅ OK glimmer         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/glimmer
- ✅ OK glimmer         textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/glimmer
- ✅ OK glsl            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/glsl
- ✅ OK glsl            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/glsl
- ✅ OK go              context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/go
- ✅ OK go              textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/go
- ✅ OK graphql         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/graphql
- ✅ OK groovy          context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/groovy
- ✅ OK hack            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/hack
- ✅ OK haskell         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/haskell
- ✅ OK haskell         textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/haskell
- ✅ OK hcl             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/hcl
- ✅ OK heex            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/heex
- ✅ OK hlsl            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/hlsl
- ✅ OK html            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/html
- ✅ OK html            folds           /Users/riley/.local/share/nvim/site/queries/html
- ✅ OK html            highlights      /Users/riley/.local/share/nvim/site/queries/html
- ✅ OK html            images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/html
- ✅ OK html            indents         /Users/riley/.local/share/nvim/site/queries/html
- ✅ OK html            injections      /Users/riley/.local/share/nvim/site/queries/html
- ✅ OK html            locals          /Users/riley/.local/share/nvim/site/queries/html
- ✅ OK html            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/html
- ✅ OK html_tags       highlights      /Users/riley/.local/share/nvim/site/queries/html_tags
- ✅ OK html_tags       indents         /Users/riley/.local/share/nvim/site/queries/html_tags
- ✅ OK html_tags       injections      /Users/riley/.local/share/nvim/site/queries/html_tags
- ✅ OK ini             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/ini
- ✅ OK inko            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/inko
- ✅ OK janet_simple    context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/janet_simple
- ✅ OK java            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/java
- ✅ OK java            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/java
- ✅ OK javascript      context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/javascript
- ✅ OK javascript      folds           /Users/riley/.local/share/nvim/site/queries/javascript
- ✅ OK javascript      highlights      /Users/riley/.local/share/nvim/site/queries/javascript
- ✅ OK javascript      highlights      /Users/riley/.local/share/nvim/site/pack/core/opt/nvim/after/queries/javascript
- ✅ OK javascript      images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/javascript
- ✅ OK javascript      implementations /Users/riley/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/queries/javascript
- ✅ OK javascript      indents         /Users/riley/.local/share/nvim/site/queries/javascript
- ✅ OK javascript      injections      /Users/riley/.local/share/nvim/site/queries/javascript
- ✅ OK javascript      locals          /Users/riley/.local/share/nvim/site/queries/javascript
- ✅ OK javascript      references      /Users/riley/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/queries/javascript
- ✅ OK javascript      textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/javascript
- ✅ OK json            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/json
- ✅ OK json            folds           /Users/riley/.local/share/nvim/site/queries/json
- ✅ OK json            highlights      /Users/riley/.local/share/nvim/site/queries/json
- ✅ OK json            indents         /Users/riley/.local/share/nvim/site/queries/json
- ✅ OK json            injections      /Users/riley/.local/share/nvim/site/queries/json
- ✅ OK json            locals          /Users/riley/.local/share/nvim/site/queries/json
- ✅ OK json            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/json
- ✅ OK jsonnet         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/jsonnet
- ✅ OK jsx             folds           /Users/riley/.local/share/nvim/site/queries/jsx
- ✅ OK jsx             highlights      /Users/riley/.local/share/nvim/site/queries/jsx
- ✅ OK jsx             indents         /Users/riley/.local/share/nvim/site/queries/jsx
- ✅ OK jsx             injections      /Users/riley/.local/share/nvim/site/queries/jsx
- ✅ OK jsx             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/jsx
- ✅ OK julia           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/julia
- ✅ OK julia           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/julia
- ✅ OK kdl             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/kdl
- ✅ OK kotlin          context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/kotlin
- ✅ OK kotlin          textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/kotlin
- ✅ OK latex           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/latex
- ✅ OK latex           images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/latex
- ✅ OK latex           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/latex
- ✅ OK liquidsoap      context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/liquidsoap
- ✅ OK lua             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/lua
- ✅ OK lua             folds           /Users/riley/.local/share/nvim/site/queries/lua
- ✅ OK lua             folds           /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/lua
- ✅ OK lua             highlights      /Users/riley/.local/share/nvim/site/queries/lua
- ✅ OK lua             highlights      /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/lua
- ✅ OK lua             highlights      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/lua
- ✅ OK lua             indents         /Users/riley/.local/share/nvim/site/queries/lua
- ✅ OK lua             injections      /Users/riley/.local/share/nvim/site/queries/lua
- ✅ OK lua             injections      /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/lua
- ✅ OK lua             injections      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/lua
- ✅ OK lua             locals          /Users/riley/.local/share/nvim/site/queries/lua
- ✅ OK lua             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/lua
- ✅ OK make            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/make
- ✅ OK markdown        context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/markdown
- ✅ OK markdown        folds           /Users/riley/.local/share/nvim/site/queries/markdown
- ✅ OK markdown        folds           /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/markdown
- ✅ OK markdown        highlights      /Users/riley/.local/share/nvim/site/queries/markdown
- ✅ OK markdown        highlights      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/markdown
- ✅ OK markdown        images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/markdown
- ✅ OK markdown        indents         /Users/riley/.local/share/nvim/site/queries/markdown
- ✅ OK markdown        injections      /Users/riley/.local/share/nvim/site/queries/markdown
- ✅ OK markdown        injections      /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/markdown
- ✅ OK markdown        injections      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/markdown
- ✅ OK markdown        textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/markdown
- ✅ OK markdown_inline highlights      /Users/riley/.local/share/nvim/site/queries/markdown_inline
- ✅ OK markdown_inline highlights      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/markdown_inline
- ✅ OK markdown_inline images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/markdown_inline
- ✅ OK markdown_inline injections      /Users/riley/.local/share/nvim/site/queries/markdown_inline
- ✅ OK markdown_inline injections      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/markdown_inline
- ✅ OK matlab          context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/matlab
- ✅ OK matlab          textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/matlab
- ✅ OK nasm            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/nasm
- ✅ OK nim             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/nim
- ✅ OK nim             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/nim
- ✅ OK nix             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/nix
- ✅ OK nix             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/nix
- ✅ OK norg            images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/norg
- ✅ OK nu              context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/nu
- ✅ OK objdump         context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/objdump
- ✅ OK ocaml           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/ocaml
- ✅ OK ocaml           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/ocaml
- ✅ OK ocaml_interface context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/ocaml_interface
- ✅ OK odin            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/odin
- ✅ OK odin            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/odin
- ✅ OK perl            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/perl
- ✅ OK php             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/php
- ✅ OK php             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/php
- ✅ OK php_only        context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/php_only
- ✅ OK php_only        textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/php_only
- ✅ OK prisma          context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/prisma
- ✅ OK proto           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/proto
- ✅ OK python          context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/python
- ✅ OK python          textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/python
- ✅ OK ql              textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/ql
- ✅ OK query           folds           /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/query
- ✅ OK query           highlights      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/query
- ✅ OK query           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/query
- ✅ OK r               context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/r
- ✅ OK r               textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/r
- ✅ OK readline        textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/readline
- ✅ OK rst             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/rst
- ✅ OK ruby            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/ruby
- ✅ OK ruby            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/ruby
- ✅ OK rust            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/rust
- ✅ OK rust            folds           /Users/riley/.local/share/nvim/site/queries/rust
- ✅ OK rust            highlights      /Users/riley/.local/share/nvim/site/queries/rust
- ✅ OK rust            indents         /Users/riley/.local/share/nvim/site/queries/rust
- ✅ OK rust            injections      /Users/riley/.local/share/nvim/site/queries/rust
- ✅ OK rust            locals          /Users/riley/.local/share/nvim/site/queries/rust
- ✅ OK rust            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/rust
- ✅ OK scala           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/scala
- ✅ OK scala           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/scala
- ✅ OK scss            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/scss
- ✅ OK scss            images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/scss
- ✅ OK scss            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/scss
- ✅ OK slang           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/slang
- ✅ OK smali           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/smali
- ✅ OK solidity        context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/solidity
- ✅ OK sql             folds           /Users/riley/.local/share/nvim/site/queries/sql
- ✅ OK sql             highlights      /Users/riley/.local/share/nvim/site/queries/sql
- ✅ OK sql             indents         /Users/riley/.local/share/nvim/site/queries/sql
- ✅ OK sql             injections      /Users/riley/.local/share/nvim/site/queries/sql
- ✅ OK starlark        context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/starlark
- ✅ OK supercollider   textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/supercollider
- ✅ OK svelte          context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/svelte
- ✅ OK svelte          images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/svelte
- ✅ OK svelte          textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/svelte
- ✅ OK swift           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/swift
- ✅ OK swift           textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/swift
- ✅ OK systemverilog   context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/systemverilog
- ✅ OK systemverilog   textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/systemverilog
- ✅ OK tact            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/tact
- ✅ OK tact            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/tact
- ✅ OK tcl             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/tcl
- ✅ OK teal            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/teal
- ✅ OK templ           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/templ
- ✅ OK terraform       context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/terraform
- ✅ OK terraform       textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/terraform
- ✅ OK toml            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/toml
- ✅ OK toml            folds           /Users/riley/.local/share/nvim/site/queries/toml
- ✅ OK toml            highlights      /Users/riley/.local/share/nvim/site/queries/toml
- ✅ OK toml            indents         /Users/riley/.local/share/nvim/site/queries/toml
- ✅ OK toml            injections      /Users/riley/.local/share/nvim/site/queries/toml
- ✅ OK toml            locals          /Users/riley/.local/share/nvim/site/queries/toml
- ✅ OK toml            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/toml
- ✅ OK tsx             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/tsx
- ✅ OK tsx             folds           /Users/riley/.local/share/nvim/site/queries/tsx
- ✅ OK tsx             highlights      /Users/riley/.local/share/nvim/site/queries/tsx
- ✅ OK tsx             images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/tsx
- ✅ OK tsx             implementations /Users/riley/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/queries/tsx
- ✅ OK tsx             indents         /Users/riley/.local/share/nvim/site/queries/tsx
- ✅ OK tsx             injections      /Users/riley/.local/share/nvim/site/queries/tsx
- ✅ OK tsx             locals          /Users/riley/.local/share/nvim/site/queries/tsx
- ✅ OK tsx             references      /Users/riley/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/queries/tsx
- ✅ OK tsx             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/tsx
- ✅ OK twig            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/twig
- ✅ OK typescript      context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/typescript
- ✅ OK typescript      folds           /Users/riley/.local/share/nvim/site/queries/typescript
- ✅ OK typescript      highlights      /Users/riley/.local/share/nvim/site/queries/typescript
- ✅ OK typescript      highlights      /Users/riley/.local/share/nvim/site/pack/core/opt/nvim/after/queries/typescript
- ✅ OK typescript      implementations /Users/riley/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/queries/typescript
- ✅ OK typescript      indents         /Users/riley/.local/share/nvim/site/queries/typescript
- ✅ OK typescript      injections      /Users/riley/.local/share/nvim/site/queries/typescript
- ✅ OK typescript      locals          /Users/riley/.local/share/nvim/site/queries/typescript
- ✅ OK typescript      references      /Users/riley/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/queries/typescript
- ✅ OK typescript      textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/typescript
- ✅ OK typoscript      context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/typoscript
- ✅ OK typst           context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/typst
- ✅ OK typst           images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/typst
- ✅ OK usd             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/usd
- ✅ OK v               textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/v
- ✅ OK vhdl            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/vhdl
- ✅ OK vim             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/vim
- ✅ OK vim             folds           /Users/riley/.local/share/nvim/site/queries/vim
- ✅ OK vim             folds           /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/vim
- ✅ OK vim             highlights      /Users/riley/.local/share/nvim/site/queries/vim
- ✅ OK vim             highlights      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/vim
- ✅ OK vim             injections      /Users/riley/.local/share/nvim/site/queries/vim
- ✅ OK vim             injections      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/vim
- ✅ OK vim             locals          /Users/riley/.local/share/nvim/site/queries/vim
- ✅ OK vim             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/vim
- ✅ OK vimdoc          highlights      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/vimdoc
- ✅ OK vimdoc          injections      /opt/homebrew/Cellar/neovim/HEAD-c0e358f/share/nvim/runtime/queries/vimdoc
- ✅ OK vue             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/vue
- ✅ OK vue             images          /Users/riley/.local/share/nvim/site/pack/core/opt/snacks.nvim/queries/vue
- ✅ OK vue             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/vue
- ✅ OK wgsl            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/wgsl
- ✅ OK wgsl_bevy       textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/wgsl_bevy
- ✅ OK xml             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/xml
- ✅ OK yaml            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/yaml
- ✅ OK yaml            folds           /Users/riley/.local/share/nvim/site/queries/yaml
- ✅ OK yaml            highlights      /Users/riley/.local/share/nvim/site/queries/yaml
- ✅ OK yaml            indents         /Users/riley/.local/share/nvim/site/queries/yaml
- ✅ OK yaml            injections      /Users/riley/.local/share/nvim/site/queries/yaml
- ✅ OK yaml            locals          /Users/riley/.local/share/nvim/site/queries/yaml
- ✅ OK yaml            textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/yaml
- ✅ OK yang            context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/yang
- ✅ OK zig             context         /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-context/queries/zig
- ✅ OK zig             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/zig
- ✅ OK zsh             textobjects     /Users/riley/.local/share/nvim/site/pack/core/opt/nvim-treesitter-textobjects/queries/zsh

==============================================================================
which-key:                                                               23 ⚠️

- ✅ OK Most of these checks are for informational purposes only.
  WARNINGS should be treated as a warning, and don't necessarily indicate a problem with your config.
  Please |DON'T| report these warnings as an issue.

Checking your config ~
- ⚠️ WARNING There are issues with your config:
  - `opts.hidden`: option is deprecated.
  - `opts.key_labels`: option is deprecated. see `opts.replace`
  - `opts.operators`: option is deprecated. see `opts.defer`
  - `opts.popup_mappings`: option is deprecated. see `opts.keys`
  - `opts.window`: option is deprecated. see `opts.win`
  - `opts.ignore_missing`: option is deprecated. see `opts.filter`
  - `opts.triggers_blacklist`: option is deprecated. see `opts.triggers`
  - `opts.triggers_nowait`: option is deprecated. see `opts.delay`
  - `opts.triggers`: triggers must be a table
  Please refer to the docs for more info.
- ✅ OK |mini.icons| is installed
- ⚠️ WARNING |nvim-web-devicons| is not installed

Checking for issues with your mappings ~
- ✅ OK No issues reported

checking for overlapping keymaps ~
- ⚠️ WARNING In mode `n`, <<C-W>> overlaps with <<C-W>d>, <<C-W><C-R>>, <<C-W><C-D>>:
  - <<C-W>>: Query keys after "<C-W>"
  - <<C-W>d>: Show diagnostics under the cursor
  - <<C-W><C-R>>: Enter Resize Mode
  - <<C-W><C-D>>: Show diagnostics under the cursor
- ⚠️ WARNING In mode `n`, <g> overlaps with <grt>, <grx>, <gra>, <gri>, <grn>, <grr>, <g[>, <g]>, <g%>, <gc>, <gcc>, <gh>, <gO>, <gH>, <gx>:
  - <g>: Query keys after "g"
  - <grt>: vim.lsp.buf.type_definition()
  - <grx>: vim.lsp.codelens.run()
  - <gra>: vim.lsp.buf.code_action()
  - <gri>: vim.lsp.buf.implementation()
  - <grn>: vim.lsp.buf.rename()
  - <grr>: vim.lsp.buf.references()
  - <g[>: Move to left "around"
  - <g]>: Move to right "around"
  - <g%>: Cycle backwards through results
  - <gc>: Toggle comment
  - <gcc>: Toggle comment line
  - <gh>: Apply hunks
  - <gO>: Show an Outline of the current buffer
  - <gH>: Reset hunks
  - <gx>: Opens filepath or URI under cursor with the system handler (file explorer, web browser, …)
- ⚠️ WARNING In mode `n`, <]> overlaps with <]t>, <]D>, <]A>, <]<C-Q>>, <]<Space>>, <]<C-T>>, <]%>, <]<C-L>>, <]b>, <]B>, <]h>, <]d>, <]]>, <]L>, <]l>, <]T>, <]H>, <]q>, <]a>, <]Q>:
  - <]>: Query keys after "]"
  - <]t>: :tnext
  - <]D>: Jump to the last diagnostic in the current buffer
  - <]A>: :last
  - <]<C-Q>>: :cnfile
  - <]<Space>>: Add empty line below cursor
  - <]<C-T>>: :ptnext
  - <]%>: Next unmatched group
  - <]<C-L>>: :lnfile
  - <]b>: :bnext
  - <]B>: :blast
  - <]h>: Next hunk
  - <]d>: Jump to the next diagnostic in the current buffer
  - <]]>: Jump to next section
  - <]L>: :llast
  - <]l>: :lnext
  - <]T>: :tlast
  - <]H>: Last hunk
  - <]q>: :cnext
  - <]a>: :next
  - <]Q>: :clast
- ⚠️ WARNING In mode `n`, <[> overlaps with <[t>, <[D>, <[A>, <[<C-Q>>, <[<Space>>, <[<C-T>>, <[%>, <[<C-L>>, <[b>, <[B>, <[h>, <[d>, <[[>, <[L>, <[l>, <[T>, <[H>, <[q>, <[a>, <[Q>:
  - <[>: Query keys after "["
  - <[t>: :tprevious
  - <[D>: Jump to the first diagnostic in the current buffer
  - <[A>: :rewind
  - <[<C-Q>>: :cpfile
  - <[<Space>>: Add empty line above cursor
  - <[<C-T>>: :ptprevious
  - <[%>: Previous unmatched group
  - <[<C-L>>: :lpfile
  - <[b>: :bprevious
  - <[B>: :brewind
  - <[h>: Previous hunk
  - <[d>: Jump to the previous diagnostic in the current buffer
  - <[[>: Jump to previous section
  - <[L>: :lrewind
  - <[l>: :lprevious
  - <[T>: :trewind
  - <[H>: First hunk
  - <[q>: :cprevious
  - <[a>: :previous
  - <[Q>: :crewind
- ⚠️ WARNING In mode `n`, <<Space>> overlaps with <<Space><M-j>>, <<Space><Space>>, <<Space><M-h>>, <<Space>sn>, <<Space><M-k>>, <<Space>gd>, <<Space>gs>, <<Space>gh>, <<Space>gf>, <<Space>gri>, <<Space>grt>, <<Space>gra>, <<Space>grn>, <<Space>grr>, <<Space>bp>, <<Space>bn>, <<Space>ba>, <<Space><M-l>>, <<Space>/>, <<Space>ac>, <<Space>ad>, <<Space>aa>, <<Space>as>, <<Space>ap>, <<Space>af>, <<Space>ntp>, <<Space>nte>, <<Space>nta>, <<Space>nto>, <<Space>nth>, <<Space>ntr>, <<Space>fk>, <<Space>fd>, <<Space>fs>, <<Space>fr>, <<Space>f/>, <<Space>fg>, <<Space>fw>, <<Space>fh>, <<Space>ff>, <<Space>f.>:
  - <<Space>>: Query keys after "<Space>"
  - <<Space><M-j>>: Move window down
  - <<Space><Space>>: [F]ind existing buffers
  - <<Space><M-h>>: Move window left
  - <<Space>sn>: [F]find [N]eovim files
  - <<Space><M-k>>: Move window up
  - <<Space>gd>: Diagnostic popup
  - <<Space>gs>: Source definition
  - <<Space>gh>: Hover
  - <<Space>gf>: Format
  - <<Space>gri>: Implementation
  - <<Space>grt>: Type definition
  - <<Space>gra>: Code Actions
  - <<Space>grn>: Rename
  - <<Space>grr>: References
  - <<Space>bp>: Previous Buffer
  - <<Space>bn>: Next Buffer
  - <<Space>ba>: Alternate
  - <<Space><M-l>>: Move window right
  - <<Space>/>: [/] Fuzzily search in current buffer
  - <<Space>ac>: AI Focus CLI
  - <<Space>ad>: AI Close CLI
  - <<Space>aa>: AI Toggle CLI
  - <<Space>as>: AI Select CLI
  - <<Space>ap>: AI Prompt
  - <<Space>af>: AI Send File
  - <<Space>ntp>: Open Neovim tips PDF
  - <<Space>nte>: Edit your Neovim tips
  - <<Space>nta>: Add your Neovim tip
  - <<Space>nto>: Neovim tips
  - <<Space>nth>: Neovim tips help
  - <<Space>ntr>: Show random tip
  - <<Space>fk>: [F]ind [K]eymaps
  - <<Space>fd>: [F]ind [D]iagnostics
  - <<Space>fs>: [F]ind [S]elect Telescope
  - <<Space>fr>: [F]ind [R]esume
  - <<Space>f/>: [F]ind [/] in Open Files
  - <<Space>fg>: [F]ind by [G]rep
  - <<Space>fw>: [F]ind current [W]ord
  - <<Space>fh>: [F]ind [H]elp
  - <<Space>ff>: [F]ind [F]iles
  - <<Space>f.>: [F]ind Recent Files ("." for repeat)
- ⚠️ WARNING In mode `n`, <sr> overlaps with <srn>, <srl>:
  - <sr>: Replace surrounding
  - <srn>: Replace next surrounding
  - <srl>: Replace previous surrounding
- ⚠️ WARNING In mode `n`, <sF> overlaps with <sFn>, <sFl>:
  - <sF>: Find left surrounding
  - <sFn>: Find next left surrounding
  - <sFl>: Find previous left surrounding
- ⚠️ WARNING In mode `n`, <sf> overlaps with <sfn>, <sfl>:
  - <sf>: Find right surrounding
  - <sfn>: Find next right surrounding
  - <sfl>: Find previous right surrounding
- ⚠️ WARNING In mode `n`, <sh> overlaps with <shn>, <shl>:
  - <sh>: Highlight surrounding
  - <shn>: Highlight next surrounding
  - <shl>: Highlight previous surrounding
- ⚠️ WARNING In mode `n`, <sd> overlaps with <sdn>, <sdl>:
  - <sd>: Delete surrounding
  - <sdn>: Delete next surrounding
  - <sdl>: Delete previous surrounding
- ⚠️ WARNING In mode `x`, <a> overlaps with <an>, <al>, <a%>:
  - <a>: Around textobject
  - <an>: Around next textobject
  - <al>: Around last textobject
- ⚠️ WARNING In mode `x`, <g> overlaps with <gh>, <gH>, <g[>, <gc>, <g]>, <gra>, <gx>, <g%>:
  - <g>: Query keys after "g"
  - <gh>: Apply hunks
  - <gH>: Reset hunks
  - <g[>: Move to left "around"
  - <gc>: Toggle comment
  - <g]>: Move to right "around"
  - <gra>: vim.lsp.buf.code_action()
  - <gx>: Opens filepath or URI under cursor with the system handler (file explorer, web browser, …)
- ⚠️ WARNING In mode `x`, <<Space>> overlaps with <<Space>av>, <<Space>at>, <<Space>lf>:
  - <<Space>>: Query keys after "<Space>"
  - <<Space>av>: AI Send Selection
  - <<Space>at>: AI Send This
  - <<Space>lf>: Format selection
- ⚠️ WARNING In mode `x`, <i> overlaps with <in>, <il>:
  - <i>: Inside textobject
  - <in>: Inside next textobject
  - <il>: Inside last textobject
- ⚠️ WARNING In mode `x`, <sF> overlaps with <sFn>, <sFl>:
  - <sF>: Find left surrounding
  - <sFn>: Find next left surrounding
  - <sFl>: Find previous left surrounding
- ⚠️ WARNING In mode `x`, <sf> overlaps with <sfn>, <sfl>:
  - <sf>: Find right surrounding
  - <sfn>: Find next right surrounding
  - <sfl>: Find previous right surrounding
- ⚠️ WARNING In mode `o`, <a> overlaps with <an>, <al>:
  - <a>: Around textobject
  - <an>: Around next textobject
  - <al>: Around last textobject
- ⚠️ WARNING In mode `o`, <i> overlaps with <in>, <il>:
  - <i>: Inside textobject
  - <in>: Inside next textobject
  - <il>: Inside last textobject
- ⚠️ WARNING In mode `o`, <sf> overlaps with <sfn>, <sfl>:
  - <sf>: Find right surrounding
  - <sfn>: Find next right surrounding
  - <sfl>: Find previous right surrounding
- ⚠️ WARNING In mode `o`, <sF> overlaps with <sFn>, <sFl>:
  - <sF>: Find left surrounding
  - <sFn>: Find next left surrounding
  - <sFl>: Find previous left surrounding
- ⚠️ WARNING In mode `n`, <gc> overlaps with <gcc>:
  - <gc>: Toggle comment
  - <gcc>: Toggle comment line
- ✅ OK Overlapping keymaps are only reported for informational purposes.
  This doesn't necessarily mean there is a problem with your config.

Checking for duplicate mappings ~
- ✅ OK No duplicate mappings found

