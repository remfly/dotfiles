local options = { noremap = true, silent = true };

local function map(keybind, bind_to)
    vim.api.nvim_set_keymap('n', keybind, bind_to, options);
end;

map('<C-q>', ':q!<CR>');
map('<C-s>', ':w<CR>');
map('<C-b>', ':set hlsearch!<CR>');

map('<C-h>', ':BufferLineCyclePrev<CR>');
map('<C-l>', ':BufferLineCycleNext<CR>');
map('<C-u>', ':BufferLineCloseLeft<CR>');
map('<C-p>', ':BufferLineCloseRight<CR>');

map('<C-k>', ':Telescope find_files<CR>');
