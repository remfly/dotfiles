require('colorizer').setup()
    local success, colorizer = pcall(require, 'colorizer');
    if not success then
        return;
    end;

    colorizer.setup({ '*' }, {
        RGB = true,
        RRGGBB = true,
        RRGGBBAA = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
        namess = true,
    }
);
