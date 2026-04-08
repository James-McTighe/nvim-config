local prefix = "<Leader>g"
return {
  {
    "sindrets/diffview.nvim",
    lazy = true,
    cmd = { "DiffviewOpen" },
    opts = {
      enhanced_diff_hl = true,
      view = {
        default = { winbar_info = true },
        file_history = { winbar_info = true },
      },
      hooks = {
        diff_buf_read = function(bufnr)
          vim.b[bufnr].view_activated = false
        end,
      },
    },
    keys = {
      {
        prefix .. "d",
        "<Cmd>DiffviewOpen<CR>",
        desc = "Open DiffView",
        mode = "n"
      },
      {
        prefix .. "D",
        function ()
          vim.ui.input({prompt = "Compare with branch: "}, function(input)
            if input then
              vim.cmd("DiffviewOpen " .. input)
            end
          end)
        end,
        desc = "DiffView a branch",
        mode = "n",
      },
      {
        prefix .. "c",
        "<Cmd>DiffviewClose<CR>",
        desc = "Close DiffView",
        mode = "n",

      }
    },
    specs = {
      {
        "NeogitOrg/neogit",
        optional = true,
        opts = { integrations = { diffview = true } },
      },
    },
  },
  {
    "wintermute-cell/gitignore.nvim",
    lazy = true,
    dependencies = {
      "folke/snacks.nvim",
    },
    config = function()
      local gitignore = require("gitignore")

      gitignore.generate = function(opts)
        Snacks.picker({
          items = vim.tbl_map(function(name)
            return {
              id = name,
              text = name,
              file = name,
            }
          end, gitignore.templateNames),
          preview = "text",
          title = "Select templates for .gitignore file",
          layout = {
            preview = false,
          },
          confirm = function(picker)
            local selected = picker:selected({ fallback = true })
            if selected and #selected > 0 then
              local templates = vim.tbl_map(function(item)
                return item.id
              end, selected)
              picker:close()
              gitignore.createGitignoreBuffer(opts.args, templates)
            end
            picker:close()
          end,
        })
      end

      vim.api.nvim_create_user_command("Gitignore", gitignore.generate, {
        nargs = "?",
        complete = "file",
      })
    end,
    keys = {
      { "<leader>ga", mode = "n", desc = "Generate .gitignore", "<cmd>Gitignore<cr>" },
    },
  },
}
