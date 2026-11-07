vim.diagnostic.config({
  virtual_text = {
    prefix = "■", -- Could be '■', 'u', '>', '●', or ''
    format = function(diagnostic)
      return string.format("%s (%s)", diagnostic.message, diagnostic.source)
    end,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    source = "always",
    wrap = true,
    border = "rounded",
  },
})
