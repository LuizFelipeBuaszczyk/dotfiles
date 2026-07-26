

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Neotree
vim.keymap.set('n', '<leader>tl', function()
    vim.cmd("Neotree position=left action=focus")
end, 
{ desc = 'Neotree open Left'}
)
vim.keymap.set('n', '<leader>tc', function()
    vim.cmd("Neotree close")
end,
{ desc = 'Neotree close' }
)


