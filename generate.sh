#!/bin/bash

# Create Vim Extension Boilerplate in CoffeeScript

# Create project structure
mkdir -p {autoload,plugin,doc}

# Initialize npm project with minimal prompting
npm init -y

# Install only CoffeeScript as a dev dependency
npm install --save-dev coffee-script

# Update package.json with custom scripts
cat > package.json << EOF
{
  "name": "vim-extension-name",
  "version": "1.0.0",
  "description": "A Vim extension written in CoffeeScript",
  "main": "plugin/extension.js",
  "scripts": {
    "build": "coffee -c plugin/*.coffee autoload/*.coffee",
    "watch": "coffee -cw plugin/*.coffee autoload/*.coffee",
    "test": "echo \"No tests specified\""
  },
  "keywords": ["vim", "plugin", "coffeescript"],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "coffee-script": "^2.7.0"
  }
}
EOF

# Create main plugin file
cat > plugin/extension.coffee << EOF
# Main Plugin File

# Vim Extension Initialization
module.exports =
  activate: (context) ->
    # Your plugin logic here
    console.log "CoffeeScript Vim Extension Loaded!"

  # Add more methods as needed
EOF

# Create autoload file
cat > autoload/extension.coffee << EOF
# Autoload Functions

# Example autoload function
vim.register_function 'MyExtensionFunction', () ->
  # Your autoload function logic
  vim.command 'echo "Hello from CoffeeScript!"'
EOF

# Create documentation
cat > doc/extension.txt << EOF
*extension.txt*  Your CoffeeScript Vim Extension Documentation

==============================================================================
INTRODUCTION                                    *extension-intro*

This is a Vim extension written in CoffeeScript.

==============================================================================
USAGE                                           *extension-usage*

Add usage instructions here.

==============================================================================
LICENSE                                         *extension-license*

MIT License
EOF

# Create README
cat > README.md << EOF
# Vim Extension in CoffeeScript

## Installation

Use your favorite Vim plugin manager.

## Development

1. Install dependencies:
   \`\`\`
   npm install
   \`\`\`

2. Build:
   \`\`\`
   npm run build
   \`\`\`

## Usage

Add usage instructions here.
EOF

# Create .gitignore
cat > .gitignore << EOF
node_modules/
*.js
*.map
EOF

# Make build and compilation setup
echo "#!/bin/bash
coffee -c plugin/*.coffee
coffee -c autoload/*.coffee" > build.sh
chmod +x build.sh

# Final instructions
echo "CoffeeScript Vim Extension Boilerplate Created!"
echo "Next steps:"
echo "1. npm install"
echo "2. ./build.sh"
echo "3. Start developing your extension!"

# vim: set ts=2 sw=2 et
