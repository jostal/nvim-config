return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- [[ Plugins go here ]]
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- [[ Theme ]]
    use { 'mhinz/vim-startify' }
    use { 'DanilaMihailov/beacon.nvim' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons',
                    opt = true}
    }
    use { 'ellisonleao/gruvbox.nvim' }

    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'majutsushi/tagbar' }
    use { 'Yggdroot/indentLine' }
    use { 'windwp/nvim-autopairs' }
    use { 'akinsho/toggleterm.nvim', tag = '*', config = function()
        require('toggleterm').setup()
    end}
    use { 
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
}
    use { 'windwp/nvim-ts-autotag' }
    use { 'maxmellon/vim-jsx-pretty' }
end)
