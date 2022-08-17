local utils = require('utils');
local modules = { 'plugins', 'options', 'mappings', 'autorun'};

local plugin_settings = {
    'plugins/lualine',
    'plugins/bufferline',
    'plugins/autocomplete',
    'plugins/nvim-colorizer',
    'plugins/indent-blankline',
    'plugins/todo-comments',
    'plugins/treesitter',
    'plugins/gitsigns',
    'plugins/toggleterm',
    'plugins/trouble',
    'plugins/telescope',
    'plugins/presence',
};

for _, module in next, modules do
    utils.load_module(module);
end

for _, setting in next, plugin_settings do
    utils.load_module(setting);
end
