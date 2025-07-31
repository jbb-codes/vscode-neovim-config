local keymap = vim.keymap.set
local opt = vim.opt

-- Set leader key
vim.g.mapleader = ' '

-- General
-- keymap('n', '<leader>c', '<cmd>e ~/.config/nvim/init.lua<cr>') -- Open Neovim config
keymap('n', 'U', '<C-r>') -- Redo
keymap('n', '<Esc>', ':nohlsearch<cr>') -- Clear search highlight
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true }) -- Remap jk to <Esc> in insert mode

-- Option settings
opt.clipboard = 'unnamedplus' -- Sync system clipboard
opt.ignorecase = true -- Ignore case in search
opt.smartcase = true -- Override ignorecase if search has uppercase


-- <leader>, : Show all open editors in the current group
keymap("n", "<leader>,", "<cmd>lua require('vscode').action('workbench.action.showAllEditors')<CR>")

-- <leader>h : Move focus to the editor group to the left
keymap("n", "<leader>h", "<cmd>lua require('vscode').action('workbench.action.navigateLeft')<CR>")

-- <leader>l : Move focus to the editor group to the right
keymap("n", "<leader>l", "<cmd>lua require('vscode').action('workbench.action.navigateRight')<CR>")

-- <leader>p : Open the Quick Open file search (Ctrl+P)
keymap("n", "<leader>p", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")

-- <leader>e : Show and focus the Explorer in the primary sidebar
keymap("n", "<leader>e", "<cmd>lua require('vscode').action('workbench.view.explorer')<CR>")

keymap("n", "<leader>a", "<cmd>lua require('vscode').action('workbench.action.toggleAuxiliaryBar')<CR>")

-- <leader>ab : Toggle the Activity Bar (the vertical icon bar on the far left)
keymap("n", "<leader>ab", "<cmd>lua require('vscode').action('workbench.action.toggleActivityBarVisibility')<CR>")

-- <leader>cp : Open the Command Palette (F1 or Cmd+Shift+P)
keymap("n", "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")

-- <leader>z : Toggle Zen Mode (distraction-free mode)
keymap("n", "<leader>z", "<cmd>lua require('vscode').action('workbench.action.toggleZenMode')<CR>")

-- <leader>wa : Emmet - Wrap with Abbreviation (in normal and visual mode)
keymap({"n", "v"}, "<leader>wa", "<cmd>lua require('vscode').action('editor.emmet.action.wrapWithAbbreviation')<CR>")

-- <leader>/ : Split the current editor vertically
keymap("n", "<leader>/", "<cmd>lua require('vscode').action('workbench.action.splitEditor')<CR>")

-- <leader>q : Close the current focused editor
keymap("n", "<leader>q", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")

-- <leader>cc : Focus the Copilot Chat panel
keymap("n", "<leader>cc", "<cmd>lua require('vscode').action('workbench.panel.chat.view.copilot.focus')<CR>")
