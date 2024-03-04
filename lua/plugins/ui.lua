return {
  --TODO:not needed
  -- {
  --   "sainnhe/sonokai",
  --   priority = 1000,
  --   config = function()
  --     vim.g.sonokai_transparent_background = "1"
  --     vim.g.sonokai_enable_italic = "1"
  --     vim.g.sonokai_style = "andromeda"
  --     vim.cmd.colorscheme("sonokai")
  --   end,
  -- },
  -- notify customization
  -- {
  --   "rcarriga/nvim-notify",
  --   opts = {
  --     stages = "fade_in_slide_out",
  --     timeout = 3000,
  --     render = "compact",
  --   },
  -- },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
        color_icons = false,
        diagnostics = false,
        highlights = {
          buffer_selected = {
            gui = "none",
          },
        },
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
          {
            filetype = "Outline",
            text = "Symbols Outline",
            highlight = "TSType",
            text_align = "left",
          },
        },
      },
    },
  },

  -- scrollbar for Neovim
  {
    "dstein64/nvim-scrollview",
    event = "BufReadPre",
    opts = {
      excluded_filetypes = { "alpha", "dashboard", "neo-tree" },
      current_only = true,
      winblend = 75,
    },
  },

  -- -- dashboard
  -- {
  --   "nvimdev/dashboard-nvim",
  --   optional = true,
  --   opts = function(_, opts)
  --     -- show dashboard when new tab page is opened
  --     vim.api.nvim_create_autocmd("TabNewEntered", { command = "Dashboard" })
  --   end,
  -- },

  -- alpha
  -- {
  --   "goolord/alpha-nvim",
  --   optional = true,
  --   opts = function(_, opts)
  --     opts.config.opts.setup = function()
  --       local alpha_start_group = vim.api.nvim_create_augroup("AlphaStart", { clear = true })
  --       vim.api.nvim_create_autocmd("TabNewEntered", {
  --         callback = function()
  --           require("alpha").start()
  --         end,
  --         group = alpha_start_group,
  --       })
  --       vim.api.nvim_create_autocmd("User", {
  --         pattern = "AlphaReady",
  --         desc = "disable tabline for alpha",
  --         callback = function()
  --           vim.opt.showtabline = 0
  --         end,
  --       })
  --       vim.api.nvim_create_autocmd("BufUnload", {
  --         buffer = 0,
  --         desc = "enable tabline after alpha",
  --         callback = function()
  --           vim.opt.showtabline = 2
  --         end,
  --       })
  --     end
  --   end,
  -- },

  -- project
  -- {
  --   "ahmedkhalf/project.nvim",
  --   optional = true,
  --   opts = function(_, opts)
  --     opts.manual_mode = false
  --     opts.detection_methods = { "lsp", "pattern" }
  --     opts.patterns = {
  --       ".git",
  --       ".hg",
  --       ".svn",
  --     }
  --   end,
  -- },
}
