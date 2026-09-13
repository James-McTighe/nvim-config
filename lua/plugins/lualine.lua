local colors = {
    red = "#f38ba8", -- Red
    grey = "#585b70", -- Surface 2
    black = "#1e1e2e", -- Base
    white = "#cdd6f4", -- Text
    light_green = "#94e2d5", -- Teal (clean pastel tone for insert)
    orange = "#fab387", -- Peach
    green = "#a6e3a1", -- Green
    blue = "#052F5F",
    purple = "#A288E3",
}

local theme = {
    normal = {
        a = { fg = colors.white, bg = colors.blue },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.black, bg = colors.purple },
        z = { fg = colors.white, bg = colors.blue },
    },
    insert = {
        a = { fg = colors.black, bg = colors.light_green },
    },
    visual = {
        a = { fg = colors.black, bg = colors.orange },
    },
    replace = {
        a = { fg = colors.black, bg = colors.red },
    },
}

local function process_sections(sections)
    for name, section in pairs(sections) do
        local left = name:sub(9, 10) < "x"
        for pos = 1, name ~= "lualine_z" and #section or #section - 1 do
            table.insert(section, pos * 2, { " ", color = { fg = colors.white, bg = colors.white } })
        end
        for id, comp in ipairs(section) do
            if type(comp) ~= "table" then
                comp = { comp }
                section[id] = comp
            end
            comp.separator = left and { right = "" } or { left = "" }
        end
    end
    return sections
end

local function modified()
    if vim.bo.modified then
        return "+"
    elseif vim.bo.modifiable == false or vim.bo.readonly == true then
        return "-"
    end
    return ""
end

return {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
            theme = theme,
            component_separators = "",
            section_separators = { left = "", right = "" },
        },
        sections = process_sections({
            lualine_a = { "mode" },
            lualine_b = {
                "branch",
                "diff",
                { "filename", file_status = false, path = 1 },
                {
                    "diagnostics",
                    source = { "nvim" },
                    sections = { "error" },
                    diagnostics_color = { error = { bg = colors.red, fg = colors.black } },
                },
                {
                    "diagnostics",
                    source = { "nvim" },
                    sections = { "warn" },
                    diagnostics_color = { warn = { bg = colors.orange, fg = colors.black } },
                },
                { modified, color = { bg = colors.red } },
                {
                    "%w",
                    cond = function()
                        return vim.wo.previewwindow
                    end,
                },
                {
                    "%r",
                    cond = function()
                        return vim.bo.readonly
                    end,
                },
                {
                    "%q",
                    cond = function()
                        return vim.bo.buftype == "quickfix"
                    end,
                },
            },
            lualine_c = {
                {
                    function()
                        return "%= NVIM brought to you by Boomba Inc."
                    end,
                },
            },
            lualine_x = { "" },
            lualine_y = { "filetype", "%l:%c", "%p%%/%L" },
            lualine_z = { "datetime" },
        }),
        inactive_sections = {
            lualine_c = { "%f %y %m" },
            lualine_x = {},
        },
    },
}
