--- Configuration options for `markview.nvim`.
---@class markview.config
---
---@field experimental? markview.config.experimental
---@field html? markview.config.html
---@field latex? markview.config.latex
---@field markdown? markview.config.markdown
---@field markdown_inline? markview.config.markdown_inline
---@field preview? markview.config.preview
---@field renderers? table<string, function>
---@field typst? markview.config.typst
---@field yaml? markview.config.yaml

--- Configuration table for latex math blocks.
---@class markview.config.latex.blocks
---
---@field enable boolean Enable rendering of `LaTeX blocks`.
---
---@field hl? string Highlight group for the block.
---@field pad_amount integer Number of `pad_char`s to add before each line.
---@field pad_char string Character to use as padding.
---
---@field text string Label text shown on the top right side.
---@field text_hl? string Highlight group for the label.

return {
    {
        "iamcco/markdown-preview.nvim",
        init = function()
            vim.g.mkdp_auto_close = 0
        end,
        ft = { "markdown" },
        keys = {
            {
                "<leader>mp",
                "<Cmd>MarkdownPreview<CR>",
                desc = "Open markdown-preview",
            },
        },
    },
    {
        "OXY2DEV/markview.nvim",
        lazy = false,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
        keys = {
            { "<leader>mv", "<cmd>Markview toggle<cr>", desc = "Toggle Markview Preview" },
        },
        opts = function()
            local presets = require("markview.presets").headings

            return {
                markdown = {
                    headings = presets.glow,
                },
                latex = {
                    enable = true,
                },
                blocks = {
                    enable = true,

                    hl = "MarkviewCode",
                    pad_char = " ",
                    pad_amount = 3,

                    text = "  LaTeX ",
                    text_hl = "MarkviewCodeInfo",
                },
                preview = {
                    enable = true,
                    enable_hybrid_mode = true,
                    linewise_hybrid_mode = true,
                    icon_provider = "internal",
                },
            }
        end,
    },
}
