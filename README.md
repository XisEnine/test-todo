# Todo-nvim

A simple Neovim plugin for managing your todo list in a floating window.

## Features

- Opens a floating window with your todo list
- Automatically loads and saves from `~/todo-nvim.md`
- Press `q` to close the window
- Markdown support for better formatting

## Installation

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'XisEnine/test-todo',
  config = function()
    require('todo-nvim').setup()
  end
}
```

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'XisEnine/test-todo',
  config = function()
    require('todo-nvim').setup()
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'XisEnine/test-todo'
```

Then in your init.lua:
```lua
require('todo-nvim').setup()
```

## Configuration

You can configure the plugin with the setup function:

```lua
require('todo-nvim').setup({
  -- Set a keymap to open the todo window (optional)
  keymap = '<leader>td',
})
```

## Usage

- Use the `:OpenTodo` command to open your todo list
- If you configured a keymap, press it to open the todo list
- Edit your todo list as a regular markdown file
- Changes are automatically saved to `~/todo-nvim.md`
- Press `q` to close the window

## License

MIT
