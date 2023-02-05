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
    -- toggleterm powershell setup
    local powershell_options = {
        shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
        shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
        shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
        shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
        shellquote = "",
        shellxquote = "",
      }
      
      for option, value in pairs(powershell_options) do
        vim.opt[option] = value
      end
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
    use { 'williamboman/nvim-lsp-installer' }
    use { 'neovim/nvim-lspconfig' }
    use { 'jose-elias-alvarez/null-ls.nvim' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use {
        "L3MON4D3/LuaSnip",
        tag = "v1.2.1.*",
        run = "make install_jsregexp"
    }
end)
