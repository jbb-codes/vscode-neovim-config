# VSCode Neovim Configuration

This repository contains Neovim configuration specifically designed for use with the [VSCode Neovim extension](https://github.com/vscode-neovim/vscode-neovim).

## Contents

### `vscode_keymaps.lua`
Custom keybindings and settings optimized for VSCode integration with Neovim.

## Key Features

### Leader Key
- **Leader key**: `Space` (` `)

### General Vim Settings
- **Redo**: `U` - Quick redo functionality
- **Clear search**: `Esc` - Clear search highlighting
- **System clipboard**: Synced with system clipboard
- **Smart case search**: Case-insensitive search with smart case override

### VSCode Integration Keybindings

#### File and Editor Management
- `<leader>,` - Show all open editors in current group
- `<leader>p` - Quick Open file search (Ctrl+P)
- `<leader>q` - Close current focused editor and focus remaining editor
- `<leader>w` - Save current file
- `<leader>W` - Save all files
- `<leader>/` - Split editor vertically

#### Buffer/Tab Management
- `<leader>bd` - Close current buffer/tab
- `<leader>bo` - Close all other buffers/tabs except current
- `<leader>bD` - Close all buffers/tabs
- `<leader>bl` - Close all buffers/tabs to the left
- `<leader>br` - Close all buffers/tabs to the right
- `<leader>bp` - Pin/unpin current buffer/tab
- `<leader>bu` - Reopen recently closed buffer/tab
- `pb` - Previous buffer/tab
- `nb` - Next buffer/tab
- `H` - Move to first buffer/tab
- `L` - Move to last buffer/tab
- `<leader>1-9` - Go to specific buffer/tab by position (1-9)

#### Search and Replace
- `<leader>sr` - Search and replace in current file
- `<leader>sR` - Search and replace in workspace
- `<leader>ss` - Search in current file

#### LSP and Code Actions
- `K` - Show hover information
- `<leader>ca` - Code actions (normal/visual mode)
- `<leader>cr` - Rename symbol
- `<leader>cf` - Format document

#### Window/Split Management
- `<leader>-` - Split window horizontally
- `<leader>|` - Split window vertically
- `<leader>wd` - Close current split/window
- `<leader>ww` - Switch between splits/windows

#### Navigation
- `<leader>h` - Move focus to left editor group
- `<leader>l` - Move focus to right editor group
- `<leader>e` - Show and focus Explorer sidebar

#### Git/Version Control
- `<leader>gg` - Open source control panel
- `<leader>gb` - Git blame toggle
- `<leader>gd` - Git diff current file
- `<leader>gs` - Git status
- `]h` - Next git hunk/change
- `[h` - Previous git hunk/change

#### File Operations
- `<leader>fn` - Create new file
- `<leader>fd` - Create new folder
- `<leader>fr` - Reveal file in Explorer
- `<leader>fc` - Copy file path
- `<leader>fC` - Copy relative file path

#### Quick Symbol Navigation
- `<leader>o` - Go to symbol in file
- `<leader>O` - Go to symbol in workspace
- `<leader>ff` - Find files (fuzzy search)
- `<leader>fg` - Live grep / find in files

#### Text Manipulation
- `J` (visual mode) - Move selected lines down
- `K` (visual mode) - Move selected lines up
- `<leader>j` - Join lines (keep cursor position)
- `<leader>d` - Delete without yanking (normal/visual mode)

#### Interface Controls
- `<leader>a` - Toggle Auxiliary Bar
- `<leader>ab` - Toggle Activity Bar visibility
- `<leader>cp` - Open Command Palette
- `<leader>z` - Toggle Zen Mode

#### Development Tools
- `<leader>wa` - Emmet: Wrap with Abbreviation (normal/visual mode)
- `<leader>cc` - Focus Copilot Chat panel

## Installation

1. **Install VSCode Neovim Extension**:
   - Install the [VSCode Neovim extension](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)

2. **Place Configuration File**:
   ```bash
   # Clone this repository
   git clone https://github.com/jbb-codes/vscode-neovim-config.git

   # Copy to your Neovim config directory
   cp vscode_keymaps.lua ~/.config/nvim/lua/vscode-neovim/
   ```

3. **Load in Neovim Configuration**:
   Add this to your `init.lua` or relevant config file:
   ```lua
   -- Load VSCode-specific configuration when running in VSCode
   if vim.g.vscode then
       require('vscode-neovim.vscode_keymaps')
   end
   ```

## Requirements

- **Neovim** 0.7+ (for lua configuration support)
- **VSCode** with Neovim extension installed
- **vscode-neovim** extension

## Usage Notes

This configuration file is used in conjunction with VSCode `settings.json` and `keybindings.json` for optimal integration and functionality.

**Related Repository**: For the complete VSCode setup, see my [VSCode Configuration](https://github.com/jbb-codes/VSCode-config) repository which contains the corresponding `settings.json` and `keybindings.json` files.

- These keybindings are specifically designed for the VSCode Neovim integration
- All VSCode actions are called through `require('vscode').action()`
- Leader key combinations provide quick access to common VSCode functionality
- Configuration maintains Vim muscle memory while leveraging VSCode features

## Customization

Feel free to modify `vscode_keymaps.lua` to suit your workflow. The file is well-commented to make customization straightforward.

## Contributing

Suggestions and improvements are welcome! Please feel free to open issues or submit pull requests.

## License

Personal configuration - use and modify as needed.
