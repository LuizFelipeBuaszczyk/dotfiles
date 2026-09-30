return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',

        config = function () 
            local catppuccin = require('catppuccin')

            catppuccin.setup({
                transparent_background = true
            })
        end,
    }
}
