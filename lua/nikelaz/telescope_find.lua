local builtin = require("telescope.builtin")

-- Find git files by file name
vim.keymap.set("n", "<C-f>", builtin.git_files, {})

-- Find all files by file name
vim.keymap.set("n", "<C-r>", builtin.find_files, {})

-- Search file contents
-- Make sure you have ripgrep installed
vim.keymap.set('n', '<C-g>', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
