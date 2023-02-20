local M = {
    "simrat39/rust-tools.nvim",
    opts = function()
        vim.list_extend(opts.ensure_installed, { "rust" })
    end,
    config = function(_, opts)
        require("rust-tools").setup({
            tools = {
                autoSetHints = true,
                inlay_hints = {
                    show_parameter_hints = true,
                    parameter_hints_prefix = '',
                    other_hints_prefix = '',
                }
            },
        server = {
                settings = {
                    ['rust-analyzer'] = {
                        lens = {
                            enable = true,
                        },
                        checkonsave = {
                            command = "clippy",
                        },
                    },
                }
            }
        })
    end,
}

return M
