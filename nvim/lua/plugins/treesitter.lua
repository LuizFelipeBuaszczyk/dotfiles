return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        branch = 'main',
        build = ':TSUpdate',
        
        config = function ()
            local treesitter = require('nvim-treesitter')

            local parsers = {
                'lua',
                'python',
                'c',
                'javascript',
                'typescript',
                'cpp',
                'rust',
                'html',
            }
            treesitter.install(parsers)

            vim.api.nvim_create_autocmd('FileType', {
                pattern = parsers,
                callback = function()
                    -- highlight
                    pcall(vim.treesitter.start)
                    -- indentação
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    }
}
