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
                require("neo-tree.command").execute({
                    toggle = true,
                    dir = LazyVim.root(),
                    position = "float",
                })
            end,
            desc = "Explorer NeoTree (Root Dir)",
        },
        {
            "<leader>be",
            function()
                require("neo-tree.command").execute({
                    source = "buffers",
                    position = "float",
                    toggle = true,
                })
            end,
            desc = "Open Buffer Explorer",
        },
        {
            "<leader>ge",
            function()
                require("neo-tree.command").execute({
                    source = "git_status",
                    position = "float",
                    toggle = true,
                })
            end,
            desc = "Open Git Status Explorer",
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
            mappings = {
                ["h"] = function(state)
                    local node = state.tree:get_node()
                    if node.type == "directory" and node:is_expanded() then
                        require("neo-tree.sources.filesystem").toggle_directory(state, node)
                    else
                        require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
                    end
                end,
                ["l"] = "open",
            },
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
