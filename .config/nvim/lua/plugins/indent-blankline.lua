require('indent_blankline').setup {
    char = '│';
    space_char = ' ';
    show_trailing_blankline_indent = false;
    show_current_context = false;
    show_first_indent_level = true;
    filetype_exclude = { 'NvimTree', 'txt', 'json', 'git', 'gitcommit', 'log', 'markdown', 'packer', 'ini' };
    buftype_exclude = {'terminal', 'nofile'};
    context_patterns = {
        'class', 'function', 'method', 'block', 'list_literal',
        'selector', '^if', '^table', 'if_statement', 'while', 'for'
    };
};
