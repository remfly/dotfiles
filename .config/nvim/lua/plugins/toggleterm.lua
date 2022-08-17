require('toggleterm').setup{
    -- can be a number and a function
    size = function(term)
        if term.direction == 'horizontal' then
            return 15;
        elseif term.direction == 'vertical' then
            return vim.o.columns * 0.37;
        end;
    end,

    open_mapping = [[<C-t>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'float', -- 'vertical' | 'horizontal' | 'window' | 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell

    float_opts = {
        border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        width = 125,
        height = 36,
        winblend = 3,

        highlights = {
            border = 'Normal',
            background = 'Normal',
        },
    },
};
