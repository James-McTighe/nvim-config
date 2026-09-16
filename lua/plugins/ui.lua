return {
    -- 1. LSP Floating Hover & Signature Help Rounded Borders
    {
        "neovim/nvim-lspconfig",
        opts = {
            diagnostics = {
                float = { border = "rounded" },
            },
        },
        init = function()
            local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
            function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
                opts = opts or {}
                opts.border = opts.border or "rounded"
                return orig_util_open_floating_preview(contents, syntax, opts, ...)
            end
        end,
    },

    -- 2. Floating rounded borders for snacks.nvim (pickers, notifications, inputs, terminals)
    {
        "folke/snacks.nvim",
        opts = {
            styles = {
                float = {
                    border = "rounded",
                },
                notification = {
                    border = "rounded",
                },
                picker = {
                    border = "rounded",
                },
            },
        },
    },

    -- 3. Restore visible border highlight colors
    {
        "LazyVim/LazyVim",
        opts = function()
            -- Distinct lavender/light gray border so floating boxes stand out
            vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#89b4fa", bg = "NONE" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#89b4fa", bg = "NONE" })
            vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = "#89b4fa", bg = "NONE" })
        end,
    },
}
