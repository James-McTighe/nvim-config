return {
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                -- 'preset' is usually 'default'. We'll override specific keys.
                preset = "default",

                ["<Tab>"] = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },

                -- Use ['<CR>'] to only accept if an item is selected.
                -- 'fallback' allows Enter to behave normally if no item is highlighted.
                ["<CR>"] = { "accept", "fallback" },
            },

            completion = {
                keyword = {
                    range = "full",
                },
                list = {
                    selection = {
                        -- Set to false so the first item isn't automatically highlighted.
                        -- This forces you to press Tab at least once before Enter will work.
                        preselect = false,
                        -- Ensures text isn't previewed in the buffer until you select it.
                        auto_insert = false,
                    },
                },
                menu = {
                    auto_show = true,
                    border = "rounded",
                    winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
                    draw = {
                        treesitter = { "lsp" },
                        columns = {
                            { "kind_icon" },
                            { "label", "label_description", gap = 1 },
                            { "source_name" },
                        },
                    },
                },
                documentation = {
                    window = { border = "rounded" },
                    winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
                },
                ghost_text = { enabled = true },
            },
        },
        -- set style for ghost text
        init = function()
            vim.api.nvim_set_hl(0, "BlinkCmpGhostText", { fg = "#98FB98", italic = true })
        end,
    },
}
