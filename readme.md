# CoffeeScript Vim Extension

## Overview

This is a Vim extension written in CoffeeScript, providing a modern and expressive approach to plugin development.

## Prerequisites

- Vim 8.0+ or Neovim
- Node.js
- npm
- CoffeeScript

## Local Development and Testing

### Quick Setup

```bash
# Clone the repository
git clone https://github.com/oeo/coffee-vim.git
cd coffee-vim

# Install dependencies
npm install

# Build the extension
npm run build
```

### Testing Locally in Vim

1. Temporary Installation for Testing:
```bash
# Create a symbolic link to your local plugin directory
ln -s $(pwd) ~/.vim/bundle/your-extension-name
```

2. Reload Vim Configuration:
```vim
" In Vim, reload runtime path
:source $MYVIMRC
```

### Development Workflow

- `npm run build`: Compile CoffeeScript to JavaScript
- `npm run watch`: Watch and automatically compile CoffeeScript files

### Debugging

1. Check compilation errors
```bash
npm run build
```

2. Verify Vim loads the plugin
```vim
" In Vim, check plugin status
:scriptnames
```

## Configuration

Add configuration options in your `.vimrc`:

```vim
" Example configuration
let g:your_extension_enabled = 1
let g:your_extension_setting = 'value'
```

## Commands

List the commands provided by your extension:

- `:YourExtensionCommand` - Description of what the command does

## Functions

List any exposed functions:

- `YourExtensionFunction()` - Description of the function

## Troubleshooting

- Ensure CoffeeScript is properly installed
- Check Vim/Neovim version compatibility
- Verify all dependencies are installed

