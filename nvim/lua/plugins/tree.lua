local M = {
    "nvim-tree/nvim-tree.lua",
    keys = {
        { "n", "<cmd>lua require('nvim-tree.api').tree.focus()<cr>" },
    },
    config = function()
        require("nvim-tree").setup{}
    end,
}

return M
