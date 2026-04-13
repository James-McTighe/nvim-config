return {
  "iamcco/markdown-preview.nvim",
  init = function()
    vim.g.mkdp_auto_close = 0
  end,
  ft = { "markdown" },
  keys = {
    {
      "<leader>cp",
      "<Cmd>MarkdownPreview<CR>",
      desc = "Open markdown-preview"
    }
  }

}
