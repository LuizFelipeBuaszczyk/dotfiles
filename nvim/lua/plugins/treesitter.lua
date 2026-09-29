return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        
        config = function ()
            local treesitter = require('nvim-treesitter')

            treesitter.setup({
                highlight = { enable = true },
                indent = { enable = true }
            })

            local parsers = {
                'lua',
                'python',
                'javascript',
                'typescript',
                'dockerfile',
                'c',
                'cpp',
                'css',
                'rust',
                'html',
            }
            treesitter.install(parsers)

        end,
    }
}
