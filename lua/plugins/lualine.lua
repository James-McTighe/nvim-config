return {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
            theme = "auto",
            section_separators = { left = "", right = "" },
            component_separators = { left = "", right = "" },
            globalstatus = true,
        },
        sections = {
            lualine_a = { { "branch", icon = "" }, "mode" },
            lualine_b = {
                { "filetype", icon_only = false, separator = "", padding = { left = 1, right = 0 } },
            },
            lualine_c = { "selectioncount" },

            lualine_x = { "diagnostics", "diff" },
            lualine_y = { "progress" },
            lualine_z = { "lsp_status" },
        },
    },
}
