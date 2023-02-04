local map = vim.api.nvim_set_keymap

map('n', 'n', [[:NvimTreeToggle]], {})
map ('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
map('n', 'v', [[:ToggleTerm size=12 direction=horizontal]], {})

