return {
  "quentingruber/pomodoro.nvim",
  lazy = false, -- needed so the pomodoro can start at launch
  keys = {
    {
      "<leader>Ps",
      "<cmd>PomodoroStart<cr>",
      desc = "Start Pomodoro"
    },
    {
      "<leader>Pe",
      "<cmd>PomodoroStop<cr>",
      desc = "End Pomodoro"
    },
    {
      "<leader>Pu",
      "<cmd>PomodoroUI<cr>",
      desc = "Pomodoro UI"
    }
  },
  opts = {
    start_at_launch = true,
    work_duration = 25,
    break_duration = 5,
    delay_duration = 1, -- The additionnal work time you get when you delay a break
    long_break_duration = 15,
    breaks_before_long = 4,
    display_ui_on_break = true, -- Disable it if you only want to see the lualine
  },
}
