
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

-- Numeração das linhas
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab config
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Estilo do Background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
--vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

