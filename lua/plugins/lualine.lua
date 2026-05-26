local function python_env()
    -- Check for standard venv or virtualenv
    local venv = os.getenv("VIRTUAL_ENV")
    if venv then
        return string.match(venv, "[^/]+$")
    end

    -- Check for Conda environment
    local conda = os.getenv("CONDA_DEFAULT_ENV")
    if conda then
        return conda
    end

    return ""
end

local icons = LazyVim.config.icons

return {
    "nvim-lualine/lualine.nvim",
    opts = {
        sections = {
            lualine_b = { "branch", "diff" },
            lualine_c = {
                python_env,
            },
            lualine_x = {
                "filetype",
                {
                    "diagnostics",
                    symbols = {
                        error = icons.diagnostics.Error,
                        warn = icons.diagnostics.Warn,
                        info = icons.diagnostics.Info,
                        hint = icons.diagnostics.Hint,
                    },
                },
            },
            lualine_z = {
                { "datetime", style = "%I:%M %p" }, -- %I is 12hr, %p is AM/PM
            },
        },
    },
}
