return {
  "iamcco/markdown-preview.nvim",
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function()
    -- Set to 0 to prevent auto-clsing the preview window when changing buffers
    vim.g.mkdp_auto_close = 0
  end,
}
