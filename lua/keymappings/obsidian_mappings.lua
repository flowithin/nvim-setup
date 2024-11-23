-- ~/.config/nvim/lua/keymappings/obsidian_mappings.lua

-- Map 'P' to run the :ObsidianPasteImg command in normal mode
vim.keymap.set('n', '<leader>p', ':ObsidianPasteImg<CR>', { noremap = true, silent = true })
