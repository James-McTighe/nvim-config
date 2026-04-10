return {
    -- add dracula
    {
        "Mofiqul/dracula.nvim",
        config = function()
            local dracula = require("dracula")
            dracula.setup({
                italic_comment = true,
            })
        end,
    },

    -- Configure LazyVim to load dracula
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "dracula",
        },
    },
}
