return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    enabled = true,
  },


--  {
--    "nvim-treesitter/nvim-treesitter",
--    build = ":TSUpdate",
--    config = function()
--      require("nvim-treesitter.configs").setup({
--        -- A list of parsers to ensure installed at start up
--        ensure_installed = { "c", "lua", "vim", "javascript", "python", "scala" },
--        -- Install parsers synchronously (only applied when `ensure_installed` is set)
--        sync_install = false,
--        -- Enable syntax highlighting
--        highlight = {
--          enable = true,
--          additional_vim_regex_highlighting = false,
--        },
--        -- Enable indentation
--        indent = { enable = true },
--      })
--    end,
--  },


  -- test new blinka
-- { import = "nvchad.blink.lazyspec" },
--
-- {
-- 	 "nvim-treesitter/nvim-treesitter",
--   opts = {
--     ensure_installed = {
--       "vim", "lua", "vimdoc", "html", "css"
--     },
--   },
--  },
}
