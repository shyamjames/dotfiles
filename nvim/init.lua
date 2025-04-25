require("plugins")
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.opt.clipboard = "unnamedplus"
-- Set the Space key to toggle the NvimTree file manager
require('nvim-tree').setup({
  -- auto_close = true,  -- Closes the file explorer when it’s the last window open
  -- open_on_setup = false,  -- Disable opening automatically when nvim starts
  auto_reload_on_write = true,  -- Reload the file explorer if you modify files externally
  update_cwd = true,  -- Update the current working directory when opening a file
})
vim.api.nvim_set_keymap('n', '<Space>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
