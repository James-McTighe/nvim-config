-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.opt.hlsearch = false

-- Add to lua/config/options.lua or lua/plugins/ui.lua
local colors = {
  "#1e1e2e", -- 0: Black
  "#f38ba8", -- 1: Red
  "#a6e3a1", -- 2: Green
  "#f9e2af", -- 3: Yellow
  "#89b4fa", -- 4: Blue (bright enough to read)
  "#f5c2e7", -- 5: Magenta
  "#94e2d5", -- 6: Cyan
  "#cdd6f4", -- 7: White
  "#585b70", -- 8: Bright Black
  "#f38ba8", -- 9: Bright Red
  "#a6e3a1", -- 10: Bright Green
  "#f9e2af", -- 11: Bright Yellow
  "#b4befe", -- 12: Bright Blue
  "#f5c2e7", -- 13: Bright Magenta
  "#94e2d5", -- 14: Bright Cyan
  "#a6adc8", -- 15: Bright White
}

for i, col in ipairs(colors) do
  vim.g["terminal_color_" .. (i - 1)] = col
end
