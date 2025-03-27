-- Вставка: выход из режима вставки с помощью 'jk'
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('v', 'jk', '<Esc>', { noremap = true, silent = true })

-- NERDTree: переключение боковой панели
vim.api.nvim_set_keymap('n', '<C-s>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Автодополнение: настройки клавиш
vim.api.nvim_set_keymap('n', '<C-c>', ':!isort % && black --line-length=79 %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', ':!ruff check % --fix<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':!python3 % --fix<CR>', { noremap = true, silent = true })

-- Telescope: настройки клавиш
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true, silent = true })

-- Смещение выделенных строк вправо при нажатии на Tab
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
