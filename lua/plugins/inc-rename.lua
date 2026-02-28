return {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = function()
        require("inc_rename").setup()
        require("noice").setup({
            presets = { inc_rename = true },
        })
    end, -- Optional: Map <leader>rn to use inc-rename
    keys = {
        {
            "<leader>r",
            function()
                return ":IncRename " .. vim.fn.expand("<cword>")
            end,
            expr = true,
            desc = "IncRename",
        },
    },
}
