-- remove all trailing whitespace on save
vim.api.nvim_exec([[
    augroup Formatting
        au!
        autocmd BufWritePre * :%s/\s\+$//e
    augroup END
]], false);

-- prevent new line to also start with a comment
vim.api.nvim_exec([[
    augroup Commenting
        au!
        au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    augroup END
]], false);
