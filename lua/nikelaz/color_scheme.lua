vim.o.background = "dark"

-- Transparent background: let the terminal's frosted-glass effect show through.
-- Covers both old (vim.g) and new (setup{transparent_mode}) gruvbox.nvim APIs.
vim.g.gruvbox_transparent_background = 1
pcall(function()
  local gruvbox = require("gruvbox")
  if gruvbox.setup then
    gruvbox.setup({ transparent_mode = true })
  end
end)

vim.cmd([[colorscheme gruvbox]])

-- Floating windows (telescope pickers, etc.) use NormalFloat; make them see-through too
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
