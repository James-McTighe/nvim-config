return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    {
      "<leader>ac",
      "<cmd>CodeCompanionChat Toggle<cr>",
      mode = { "n", "v" },
      desc = " AI Chat Toggle",
    },
    {
      "<leader>ai",
      "<cmd>CodeCompanion<cr>",
      mode = { "n", "v" },
      desc = " AI Inline Prompt",
    },
    {
      "<leader>aa",
      "<cmd>CodeCompanionActions<cr>",
      mode = { "n", "v" },
      desc = " AI Action Palette",
    },
    {
      "<leader>ap",
      "<cmd>CodeCompanionChat Add<cr>",
      mode = "v",
      desc = " Add Selection to AI Chat",
    },
  },
  config = function()
    require("codecompanion").setup({
      strategies = {
        chat = { adapter = "ollama" },
        inline = { adapter = "ollama" },
        cmd = { adapter = "ollama" },
      },
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            schema = {
              model = {
                -- Qwen 2.5 7B fits completely in 8 GB VRAM with fast response times[cite: 1]
                default = "qwen2.5-coder:7b",
              },
              num_ctx = {
                -- Fits comfortably in 8 GB VRAM at 4-bit quantization[cite: 1]
                default = 8192,
              },
            },
          })
        end,
      },
    })
  end,
}
