return {
  -- 1. LSP hover and signature help rounded borders
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        float = { border = "rounded" },
      },
    },
    init = function()
      local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or "rounded"
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
      end
    end,
  },

  -- 2. Persistent border highlights (runs whenever colorscheme loads)
  {
    "LazyVim/LazyVim",
    opts = function()
      local function set_border_hl()
        local border_color = "#89b4fa" -- Light blue / lavender
        vim.api.nvim_set_hl(0, "FloatBorder", { fg = border_color, bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = border_color, bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = border_color, bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksPickerBoxBorder", { fg = border_color, bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksNormalNC", { bg = "NONE" })
      end

      set_border_hl()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = set_border_hl,
      })
    end,
  },
}
