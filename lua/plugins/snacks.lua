return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        fullscreen = true
      },
      sources = {
        -- Override for teh explorer specifically
        explorer = {
          layout = {
            preset = "sidebar",
            fullscreen = false,
          }
        },
        lines = {
          layout = {
            -- preset = "sidebar",
            preview = true,
          }
        }
      }
    }
  }
}
