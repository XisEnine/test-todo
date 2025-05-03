-- File: plugin/todo-nvim.lua

-- Prevent loading this plugin multiple times
if vim.g.loaded_todo_nvim == 1 then
  return
end
vim.g.loaded_todo_nvim = 1

-- Create the user command but defer to the main module
vim.api.nvim_create_user_command("OpenTodo", function()
  require('todo-nvim').open_todo_window()
end, {})
