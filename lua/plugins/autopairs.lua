return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  config = true,
  opts = function()
    disable_filetype = { "TelescopePrompt", "spectre_panel" }
  end

  -- use opts = {} for passing setup options
  -- this is equalent to setup({}) function
}
