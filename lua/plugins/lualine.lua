return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      -- Change to lualine_y if your clock is on the right
      lualine_z = {
        function()
          return " " .. os.date("%-I:%M %p")
        end,
      },
    },
  },
}
