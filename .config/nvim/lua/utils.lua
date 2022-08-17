local utils = {};

utils.load_module = function(module)
    local success, err = pcall(require, module);

    if not success then
        error(string.format('Error loading module `%s`.\n\n%s.', module, err));
    end
end

return utils;
