return {
    "amrbashir/nvim-docs-view",
    lazy = true,
    cmd = "DocsViewToggle",
    opts = {
        position = "right",
        width = 60,
    },
    keys = {
        {
            "<leader>cD",
            "<Cmd>DocsViewToggle<CR>",
            desc = "Open Docs in side panel",
        },
    },
}
