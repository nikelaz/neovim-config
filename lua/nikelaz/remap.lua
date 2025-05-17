-- Open file tree
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)

-- Move selection with auto indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste without loosing copied buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Format with LSP
-- vim.keymap.set("n", "<leader>f", function()
--   vim.lsp.buf.format()
-- end)

-- Replace word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- LSP keybinds
local opts = { noremap = true, silent = true }
-- Show warning/error
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<leader>r", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
