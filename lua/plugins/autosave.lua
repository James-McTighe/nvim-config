return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      -- Your configuration options here
      -- e.g., trigger on specific events, set a debounce delay
      debounce_delay = 135, -- milliseconds
      trigger_events = {"InsertLeave", "TextChanged"}, -- events that trigger the save
      -- add a message when saved
      execution_message = {
        message = function() -- message to print on save
          return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18, -- dim the color of `message`
        cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`
      },
    })
  end,
}

