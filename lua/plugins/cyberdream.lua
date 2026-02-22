return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = false,    -- Enable transparent background
        italic_comments = true, -- Enable italic comments
        hide_fillchars = true,  -- Hide ~ at the end of the buffer
        borderless_pickers = false, -- Muted borders for Telescope/Fzf-lua
        terminal_colors = true, -- Use theme colors in terminal
        saturation = 0.9,
        colors = {
          bg = "#222135"
        }
    },
    config = function(_, opts)
        require("cyberdream").setup(opts)
        vim.cmd("colorscheme cyberdream")
    end,
}
