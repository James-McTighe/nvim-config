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

return {
    "nvim-lualine/lualine.nvim",
    opts = {
        sections = {
            lualine_c = { "branch", "diff", "diagnostics" },
            lualine_x = { python_env },
            lualine_z = {
                { "datetime", style = "%I:%M %p" }, -- %I is 12hr, %p is AM/PM
            },
        },
    },
}
