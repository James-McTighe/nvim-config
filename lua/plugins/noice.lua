return {
    "folke/noice.nvim",
    opts = {
        presets = {
            bottom_search = true,
            command_palette = true,
            long_message_to_split = true,
            inc_rename = true,
            lsp_doc_border = true,
        },
        views = {
            cmdline_popup = {
                border = {
                    style = "rounded",
                    padding = { 0, 1 },
                },
                position = {
                    row = "35%",
                    col = "50%",
                },
                size = {
                    width = 60,
                    height = 4,
                },
            },
            popupmenu = {
                relative = "editor",
                position = {
                    row = "43%",
                    col = "50%",
                },
                size = {
                    width = 60,
                    height = 10,
                },
                border = {
                    style = "rounded",
                    padding = { 0, 1 },
                },
                win_options = {
                    winhighlight = { Normal = "NormalFloat", FloatBorder = "FloatBorder" },
                },
            },
        },
    },
}
