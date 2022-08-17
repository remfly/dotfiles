local opt = vim.opt;
local wo = vim.wo;

opt.number = true;
opt.cursorline = true;
opt.showtabline = 2;
opt.guicursor = '';
opt.wrap = false;
opt.hlsearch = true;
opt.shiftwidth = 4;
opt.tabstop = 4;
opt.expandtab = true;
opt.completeopt = {'menuone', 'noselect', 'noinsert'};
opt.termguicolors = true;
opt.ignorecase = true;
opt.smartcase = true;
opt.hidden = true;
opt.updatetime = 300 ;
opt.timeoutlen = 400;
wo.colorcolumn = '99999';

vim.cmd [[ set clipboard+=unnamedplus ]]
vim.cmd [[ syntax enable ]];
vim.cmd [[ filetype indent plugin on ]];
vim.cmd [[ colorscheme nord ]];
