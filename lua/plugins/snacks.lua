return {
    "folke/snacks.nvim",
    event = "VeryLazy",
    priority = 11,
    keys = {
        { "<leader>e", false },
        { "<leader>E", false },
        { "<leader>fe", false },
        { "<leader>fE", false },
    },
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        explorer = { enabled = false },
        indent = { enabled = true },
        input = { enabled = true },
        notifier = {
            enabled = true,
            timeout = 4000,
            border = "rounded",
        },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = false },

        -- 1. Apply dimming globally to all floating windows in Snacks
        styles = {
            float = {
                backdrop = 60,
            },
        },

        terminal = {
            win = {
                style = "float",
                width = 0.9,
                height = 0.9,
                border = "double",
            },
        },

        picker = {
            ui_select = true,
            border = "rounded",
            layout = {
                preset = "vertical",
                cycle = false,
                backdrop = 60,
            },
            -- 2. Move layouts inside opts.picker.layouts
            layouts = {
                default = {
                    layout = {
                        box = "horizontal",
                        backdrop = 60,
                        width = 0.85,
                        min_width = 120,
                        height = 0.80,
                        {
                            box = "vertical",
                            border = "rounded",
                            title = "{source} {live}",
                            title_pos = "center",
                            { win = "input", height = 1, border = "bottom" },
                            { win = "list", border = "none" },
                        },
                        {
                            win = "preview",
                            title = "{preview}",
                            width = 0.55,
                            border = "rounded",
                            title_pos = "center",
                        },
                    },
                },
                vertical = {
                    layout = {
                        box = "vertical",
                        backdrop = 60,
                        width = 0.7,
                        min_width = 80,
                        height = 0.85,
                        border = "rounded",
                        title = "{source} {live}",
                        title_pos = "center",
                        { win = "input", height = 1, border = "bottom" },
                        { win = "list", border = "none" },
                        { win = "preview", title = "{preview}", height = 0.45, border = "top" },
                    },
                },
            },
            sources = {
                lines = {
                    layout = {
                        preview = true,
                    },
                },
            },
        },
    },
}
