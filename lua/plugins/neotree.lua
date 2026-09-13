return {
    "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
    init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
    end,
    keys = {
        {
            "<leader>e",
            function()
                require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
            end,
            desc = "Explorer NeoTree (Root Dir)",
        },
    },
    opts = {
        filesystem = {
            hijack_netrw_behavior = "open_current", -- or "open_default"
            use_libuv_file_watcher = true,
        },
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
        },
    },
}
