-- persistence.nvim: Session management
vim.pack.add {
  'https://github.com/folke/persistence.nvim',
}

-- Configure persistence.nvim
local status_ok, persistence = pcall(require, "persistence")
if not status_ok then
  return
end

persistence.setup {
  dir = vim.fn.stdpath('state') .. '/sessions/', -- directory where session files are saved
  options = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp' }, -- sessionoptions used for saving
  pre_save = nil, -- a function to call before saving the session
  save_empty = false, -- don't save if there are no open file buffers
}