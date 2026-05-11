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
                    -- Optional: auto_show makes the menu appear as you type.
                    auto_show = true,
                },
                ghost_test = { enabled = true },
            },
        },
        -- set style for ghost text
        init = function()
            vim.api.nvim_set_hl(0, "BlinkCmpGhostText", { fg = "#98FB98", italic = true })
        end,
    },
}
