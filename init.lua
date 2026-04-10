-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local o = vim.opt

-- Pop up menu stuff
o.pumblend = 20
o.updatetime = 500
o.completeopt = { "menu", "menuone", "noinsert", "noselect" }

-- UI stuff
o.cursorline = true
o.whichwrap:append("<,>,h,l,[,]")
