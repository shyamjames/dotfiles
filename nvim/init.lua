vim.g.mapleader = " "
vim.cmd [[packadd packer.nvim]]
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'        -- LSP support
  use 'nvim-treesitter/nvim-treesitter' -- Syntax highlighting
  use 'hrsh7th/nvim-cmp'             -- Autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use "windwp/nvim-autopairs"
  use 'nvim-tree/nvim-tree.lua'
end)

require("catppuccin").setup({
    flavour = "mocha", -- Set to Mocha
})
vim.cmd("colorscheme catppuccin")

-- LSP Setup
local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}    -- Python LSP
lspconfig.ts_ls.setup{}      -- JavaScript LSP
lspconfig.sqlls.setup{}      -- SQL LSP

-- Autocomplete Setup
local cmp = require'cmp'
cmp.setup {
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  },
  sources = { { name = 'nvim_lsp' } }
}

-- Telescope Setup
require('telescope').setup{}
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Syntax Highlighting stuff i believe
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python" }, -- Add more languages if needed
  -- ensure_installed = { "python", "javascript", "typescript" }, should be like this!
  highlight = { enable = true },
}

-- Autopairs
require("nvim-autopairs").setup {}

-- FileManager kinda
require("nvim-tree").setup()
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- python autocomplete setup
require'lspconfig'.pyright.setup{
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true
      }
    },
    pythonPath = vim.fn.exepath("python")
  }
}
