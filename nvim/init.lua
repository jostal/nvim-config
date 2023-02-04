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
