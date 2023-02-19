local M = {
    "akinsho/toggleterm.nvim",
    keys = {
        { "z1", "<cmd>ToggleTerm<cr>" },
        { "z2", "<cmd>ToggleTerm 2<cr>" },
        { "z3", "<cmd>ToggleTerm 3<cr>" },
    },
    config = function ()
        require("toggleterm").setup()
    end,
}

return M
