return {
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    init = function()
      -- Configure rustaceanvim here
      vim.g.rustaceanvim = {
        -- Plugin configuration
        tools = {
        },
        -- LSP configuration
        server = {
          on_attach = function(client, bufnr)
            -- you can also put keymaps in here
            --
            -- Enable inlay hints for the current buffer
            vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
          end,
          default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
              inlayHints = {
                -- typeHints = { enable = true },
                -- parameterHints = { enable = true },
                -- Other inlay hint settings can be added here
              },
            },
          },
        },
        -- DAP configuration
        dap = {
        },
      }
    end,
    lazy = false, -- This plugin is already lazy
  },
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    lazy = false,
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}
