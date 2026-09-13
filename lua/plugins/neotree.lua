return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        use_libuv_file_watcher = true,
        window = {
            position = "left",
            width = 40,
        },
        default_component_configs = {
            indent = {
                indent_size = 2,
                padding = 1,
                with_markers = true,
                indent_marker = "│",
                last_indent_marker = "└",
                highlight = "NeoTreeIndentMarker",
                with_expanders = true,
                expander_collapsed = "",
                expander_expanded = "",
            },
            --   -- icon = {
            --   --   folder_closed = "󰉋",
            --   --   folder_open = "󰝰",
            --   --   folder_empty = "󰉖",
            --   -- },
            --   git_status = {
            --     symbols = {
            --       added = "A",
            --       modified = "M",
            --       deleted = "D",
            --       renamed = "R",
            --       untracked = "",
            --       ignored = "i",
            --       unstaged = "U",
            --       staged = "S",
            --       conflict = "X",
            --     },
            --   },
        },
    },
}
