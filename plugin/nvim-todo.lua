-- File: plugin/nvim-todo.lua

-- Prevent loading this plugin multiple times
if vim.g.loaded_nvim_todo == 1 then
	return
end
vim.g.loaded_nvim_todo = 1

-- Create the user command but defer to the main module
vim.api.nvim_create_user_command("OpenTodo", function()
	require('nvim-todo').open_todo_window()
end, {})
