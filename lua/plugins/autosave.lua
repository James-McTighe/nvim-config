return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      debounce_delay = 135,
      trigger_events = { "InsertLeave", "TextChanged" },
      execution_message = {
        message = function()
          local filename = vim.fn.expand("%:t")
          if filename == "" then
            filename = "[No Name]"
          end
          return string.format("AutoSave: saved %s at %s", filename, vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
    })
  end,
}
