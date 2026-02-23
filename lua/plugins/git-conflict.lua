return {
  "akinsho/git-conflict.nvim",
  version = "*",
  -- This replaces the complex autocmd; it only loads when it detects conflict markers
  event = "BufReadPost", 
  opts = {
    default_mappings = false, -- We will define our own below
    default_commands = true,
  },
  keys = {
    { "<leader>mo", "<cmd>GitConflictChooseOurs<cr>", desc = "Conflict: Choose Ours" },
    { "<leader>mt", "<cmd>GitConflictChooseTheirs<cr>", desc = "Conflict: Choose Theirs" },
    { "<leader>mb", "<cmd>GitConflictChooseBoth<cr>", desc = "Conflict: Choose Both" },
    { "<leader>m0", "<cmd>GitConflictChooseNone<cr>", desc = "Conflict: Choose None" },
    { "[x", "<cmd>GitConflictPrevConflict<cr>", desc = "Prev Conflict" },
    { "]x", "<cmd>GitConflictNextConflict<cr>", desc = "Next Conflict" },
  },
}

