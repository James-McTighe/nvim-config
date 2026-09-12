return {
    -- Modern rounded borders for LSP floating windows
    {
        "neovim/nvim-lspconfig",
        opts = function()
            local ui = require("lspconfig.ui.windows")
            ui.default_options.border = "rounded"
            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
            vim.lsp.handlers["textDocument/signatureHelp"] =
                vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = function()
            -- Subtle background for float elements with soft borders
            vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#585b70", bg = "none" })
            vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#45475a", fg = "none", bold = true })
            vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#585b70" })
            vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#585b70", bg = "none" })
            vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = "#89b4fa", bg = "none" })
            vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = "#89b4fa", bold = true })
        end,
    },
}
