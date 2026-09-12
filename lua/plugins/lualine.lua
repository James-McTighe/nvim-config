return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options.component_separators = ""
    opts.options.section_separators = { left = "", right = "" }
    
    opts.sections.lualine_a = { { "mode", separator = { left = "", right = "" } } }
    opts.sections.lualine_z = { { "location", separator = { left = "", right = "" } } }
  end,
}
