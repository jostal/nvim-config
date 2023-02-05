--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ','
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS
require('nvim-tree').setup{}
require('lualine').setup {
    options = {
        theme = 'auto'
    }
}
require('nvim-autopairs').setup{}
require('toggleterm').setup{}
require('nvim-treesitter.configs').setup {
    highlight = {
        enabled = true
    },
    autotag = {
        enable = true,
    }
}
require('nvim-lsp-installer').setup({
    -- List of servers to automatically install
    ensure_installed = { 'pyright', 'tsserver', 'eslint', 'bashls', 'cssls', 'html', 'sumneko_lua', 'jsonls', 'clangd', 'lemminx', 'rust-analyzer', 'svelte', 'toml' },
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

require('lsp-setup')
