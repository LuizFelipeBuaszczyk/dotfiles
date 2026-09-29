return {
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },

        config = function ()
            local telescope = require('telescope')

            telescope.setup({
                defaults = {
                    file_ignore_patterns = { "node_modules", ".venv", "__pycache__", ".git" }
                }
            })

        end,
    }
}


