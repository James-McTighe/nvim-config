return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Highly recommended to stay on a stable release
    event = "VeryLazy",
    opts = {
      -- Setting this to false prevents the plugin from trying to 
      -- initialize its own default mappings.
      keymaps = false,
    },
    config = function(_, opts)
      require("nvim-surround").setup(opts)

      local set = vim.keymap.set

      -- Normal Mode Mappings
      -- Adds surrounding characters (e.g., <leader>ysiw")
      set("n", "<leader>ys", "<Plug>(nvim-surround-normal)", { desc = "Surround" })
      set("n", "<leader>yl", "<Plug>(nvim-surround-normal-cur)", { desc = "Surround line" })
      
      -- Delete/Change Mappings
      set("n", "<leader>yd", "<Plug>(nvim-surround-delete)", { desc = "Delete surround" })
      set("n", "<leader>yc", "<Plug>(nvim-surround-change)", { desc = "Change surround" })

      -- Visual Mode Mappings
      -- Select text first, then press <leader>ys followed by the character
      set("v", "<leader>ys", "<Plug>(nvim-surround-visual)", { desc = "Add surround" })
      set("v", "<leader>yS", "<Plug>(nvim-surround-visual-line)", { desc = "Add surround (line)" })

      -- Insert Mode Mappings
      set("i", "<C-g>y", "<Plug>(nvim-surround-insert)", { desc = "Add surround" })
      set("i", "<C-g>Y", "<Plug>(nvim-surround-insert-line)", { desc = "Add surround (line)" })
    end,
  },
}
