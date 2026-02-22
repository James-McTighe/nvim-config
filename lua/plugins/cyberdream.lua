return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,    -- Enable transparent background
        italic_comments = true, -- Enable italic comments
        hide_fillchars = true,  -- Hide ~ at the end of the buffer
        borderless_pickers = false, -- Muted borders for Telescope/Fzf-lua
        terminal_colors = true, -- Use theme colors in terminal
    },
    config = function(_, opts)
        require("cyberdream").setup(opts)
        vim.cmd("colorscheme cyberdream")
    end,
}
