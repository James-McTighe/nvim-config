return {
  "folke/snacks.nvim",
  event = "VeryLazy",
  priority = 11,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 4000,
    },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = false },
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
