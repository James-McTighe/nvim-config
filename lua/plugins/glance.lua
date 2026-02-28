local prefix = "gl"
return {
    "dnlhc/glance.nvim",
    cmd = "Glance",
    opts = {
        border = {
            enable = true,
        },
    },
  keys = {
    {
      prefix,
      desc = "Glance",
      mode = "n"
    },
    {
      prefix .. "r",
      "<Cmd>Glance references<CR>",
      desc = "Glance references",
      mode = "n"
    },
    {
      prefix .. "d",
      "<Cmd>Glance definitions<CR>",
      desc = "Glance definitions",
      mode = "n"
    },
    {
      prefix .. "i",
      "<Cmd>Glance implementations<CR>",
      desc = "Glance implementations",
      mode = "n"
    },
    {
      prefix .. "t",
      "<Cmd>Glance type_definitions<CR>",
      desc = "Glance type_definitions",
      mode = "n"
    },
    {
      prefix .. "e",
      "<Cmd>Glance resume<CR>",
      desc = "Glance resume",
      mode = "n"
    },
  }
}
