# Autoload Functions

# Example autoload function
vim.register_function 'MyExtensionFunction', () ->
  # Your autoload function logic
  vim.command 'echo "Hello from CoffeeScript!"'

