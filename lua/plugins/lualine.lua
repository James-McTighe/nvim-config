return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_z = {
        { "datetime", style = "%I:%M %p" }, -- %I is 12hr, %p is AM/PM
      },
    },
  },
}
