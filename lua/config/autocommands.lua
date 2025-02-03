vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_set_hl(0, 'WinSeparator', { fg = 'black', bold = true })

vim.api.nvim_create_autocmd('User', {
  pattern = 'MiniFilesWindowOpen',
  callback = function(args)
    local win_id = args.data.win_id

    -- Customize window-local settings
    local config = vim.api.nvim_win_get_config(win_id)
    config.border, config.title_pos = 'single', 'left'
    vim.api.nvim_win_set_config(win_id, config)
  end,
})

vim.api.nvim_create_autocmd({ 'ColorScheme', 'VimEnter' }, {
  group = vim.api.nvim_create_augroup('Color', {}),
  pattern = '*',
  callback = function()
    vim.api.nvim_set_hl(0, 'FloatBorder', { fg = '#fcfcfa' })
    vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = '#fcfcfa', bg = '#fcfcfa' })
    -- vim.api.nvim_set_hl(0, "LspReferenceText", {fg = "#FF0000"})
  end,
})

vim.api.nvim_create_autocmd({ 'BufEnter', 'CursorHold', 'InsertLeave' }, {
  pattern = '*',
  callback = function()
    vim.lsp.codelens.refresh { bufnr = 0 }
  end,
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'MiniFilesWindowUpdate',
  callback = function(args)
    local config = vim.api.nvim_win_get_config(args.data.win_id)

    -- Ensure fixed height
    config.height = 20

    -- Ensure title padding
    if config.title[#config.title][1] ~= ' ' then
      table.insert(config.title, { ' ', 'NormalFloat' })
    end
    if config.title[1][1] ~= ' ' then
      table.insert(config.title, 1, { ' ', 'NormalFloat' })
    end

    vim.api.nvim_win_set_config(args.data.win_id, config)
  end,
})
