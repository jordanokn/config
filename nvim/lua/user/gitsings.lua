--require('gitsigns').setup({
--  signs = {
--    add          = { hl = 'GitSignsAdd', text = '│', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
--    change       = { hl = 'GitSignsChange', text = '│', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
--    delete       = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
--    topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
--    changedelete = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
--  },
--})
--
--
-- First define all the required highlights
vim.api.nvim_set_hl(0, 'GitSignsAdd', { link = 'GitSignsAdd' })
vim.api.nvim_set_hl(0, 'GitSignsAddLn', { link = 'GitSignsAddLn' })
vim.api.nvim_set_hl(0, 'GitSignsAddNr', { link = 'GitSignsAddNr' })
vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'GitSignsChange' })
vim.api.nvim_set_hl(0, 'GitSignsChangeLn', { link = 'GitSignsChangeLn' })
vim.api.nvim_set_hl(0, 'GitSignsChangeNr', { link = 'GitSignsChangeNr' })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { link = 'GitSignsDelete' })
vim.api.nvim_set_hl(0, 'GitSignsDeleteLn', { link = 'GitSignsDeleteLn' })
vim.api.nvim_set_hl(0, 'GitSignsDeleteNr', { link = 'GitSignsDeleteNr' })
vim.api.nvim_set_hl(0, 'GitSignsChangedelete', { link = 'GitSignsChange' })
vim.api.nvim_set_hl(0, 'GitSignsChangedeleteLn', { link = 'GitSignsChangeLn' })
vim.api.nvim_set_hl(0, 'GitSignsChangedeleteNr', { link = 'GitSignsChangeNr' })
vim.api.nvim_set_hl(0, 'GitSignsTopdelete', { link = 'GitSignsDelete' })
vim.api.nvim_set_hl(0, 'GitSignsTopdeleteLn', { link = 'GitSignsDeleteLn' })
vim.api.nvim_set_hl(0, 'GitSignsTopdeleteNr', { link = 'GitSignsDeleteNr' })

-- Then setup GitSigns with the signs configuration
require('gitsigns').setup({
  signs = {
    add          = { text = '│' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
  },
})
