return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        -- LSP servers
        "lua-language-server",
        "pyright",
        "typescript-language-server",
        "clangd",
        "tailwindcss-language-server",

        -- Linters & Formatters
        "stylua",
        "prettier",
        "black",
        "eslint_d",
      },
      auto_update = false,
      run_on_start = true,
      start_delay = 3000, -- 3-second delay after startup so it doesn't block UI load
    },
  },
}
