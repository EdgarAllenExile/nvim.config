-- Editor Commands

local f = function()
  vim.cmd 'setlocal formatoptions-=c formatoptions-=o'
end
vim.api.nvim_create_autocmd('FileType', { nil, f, "Proper 'formatoptions'" })
