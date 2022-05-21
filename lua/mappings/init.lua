local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<C-e>', '<cmd>NvimTreeToggle<CR>', opts)


-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)

-- Bufferline
map('n', '[b', '<cmd>BufferLineCycleNext<CR>', opts)
map('n', 'b]', '<cmd>BufferLineCyclePrev<CR>', opts)

-- Barbar
-- map('n', '<A-,>', '<cmd>BufferPrevious<CR>', opts)
-- map('n', '<A-.>', '<cmd>BufferNext<CR>', opts)
--
-- map('n', '<A-1>', '<cmd>BufferGoto 1<CR>', opts)
-- map('n', '<A-2>', '<cmd>BufferGoto 2<CR>', opts)
-- map('n', '<A-3>', '<cmd>BufferGoto 3<CR>', opts)
-- map('n', '<A-4>', '<cmd>BufferGoto 4<CR>', opts)
-- map('n', '<A-5>', '<cmd>BufferGoto 5<CR>', opts)
-- map('n', '<A-6>', '<cmd>BufferGoto 6<CR>', opts)
-- map('n', '<A-7>', '<cmd>BufferGoto 7<CR>', opts)
-- map('n', '<A-8>', '<cmd>BufferGoto 8<CR>', opts)
-- map('n', '<A-9>', '<cmd>BufferGoto 9<CR>', opts)
-- map('n', '<A-0>', '<cmd>BufferLast<CR>', opts)
