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
- `<leader>q` - Close current focused editor
- `<leader>/` - Split editor vertically

#### Navigation
- `<leader>h` - Move focus to left editor group
- `<leader>l` - Move focus to right editor group
- `<leader>e` - Show and focus Explorer sidebar

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
