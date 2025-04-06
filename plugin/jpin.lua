print("jpin loaded!")

vim.api.nvim_set_keymap('n', '<leader>rf', ':JPpin 1 <enter>', {})
vim.api.nvim_set_keymap('n', '<leader>rg', ':JPpin 2 <enter>', {})
vim.api.nvim_set_keymap('n', '<leader>rh', ':JPpin 3 <enter>', {})
vim.api.nvim_set_keymap('n', '<leader>rj', ':JPpin 4 <enter>', {})

vim.api.nvim_set_keymap('n', '<leader>jf', ':JPopen 1 <enter>', {})
vim.api.nvim_set_keymap('n', '<leader>jg', ':JPopen 2 <enter>', {})
vim.api.nvim_set_keymap('n', '<leader>jh', ':JPopen 3 <enter>', {})
vim.api.nvim_set_keymap('n', '<leader>jj', ':JPopen 4 <enter>', {})
