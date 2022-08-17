require('lualine').setup {
    options = {
        disabled_filetypes = {},
        theme = 'nord'
    },

    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename'},
        lualine_x = {
            {"diagnostics", sources = {"nvim_diagnostic"}},
            "encoding",
            "fileformat",
            "filetype"
        },

        lualine_y = {'progress'},

    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },

    tabline = {},
    extensions = {'nvim-tree', 'toggleterm', 'quickfix'}
};
