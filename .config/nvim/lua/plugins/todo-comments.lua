require('todo-comments').setup {
        signs = true,
        sign_priority = 8,
        keywords = {
            FIX = {
                icon = ' ',
                color = 'error',
                alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' },
            },
            TODO = { icon = ' ', color = 'info' },
            HACK = { icon = ' ', color = 'warning' },
            WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
            PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
            NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
        },
        merge_keywords = true,
        before = '', -- 'fg' or 'bg' or empty
        keyword = 'wide', -- 'fg', 'bg', 'wide' or empty. (wide is the same as bg, but will also highlight surrounding characters)
        after = 'fg', -- 'fg' or 'bg' or empty
        pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
        comments_only = true, -- uses treesitter to match keywords in comments only
        max_line_len = 400, -- ignore lines longer than this
        exclude = {}, -- list of file types to exclude highlighting

        colors = {
            error = { 'LspDiagnosticsDefaultError', 'ErrorMsg', '#BF616A' },
            warning = { 'LspDiagnosticsDefaultWarning', 'WarningMsg', '#EBCB8B' },
            info = { 'LspDiagnosticsDefaultInformation', '#5E81AC' },
            hint = { 'LspDiagnosticsDefaultHint', '#A3BE8C' },
            default = { 'Identifier', '#B48EAD' },
        },

        search = {
            command = 'rg',
            args = {
                '--color=never',
                '--no-heading',
                '--with-filename',
                '--line-number',
                '--column',
        },

        pattern = [[\b(KEYWORDS):]], -- ripgrep regex
        -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
    },
};
