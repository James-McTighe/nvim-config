return {
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    ft = "python",
    config = function()
      -- Use Mason's installed debugpy executable:
      local debugpy_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"

      -- Fallback to system python3 if Mason package is missing
      if vim.fn.executable(debugpy_path) ~= 1 then
        debugpy_path = "python3"
      end

      require("dap-python").setup(debugpy_path)
    end,
  },
}
