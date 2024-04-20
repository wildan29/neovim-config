return {
  "barrett-ruth/live-server.nvim",
  build = "pnpm add -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = function()
    require("live-server").setup()
  end,
  keys = {
    { "<leader>lst", "<cmd>LiveServerStart<CR>", desc = "Run Live Server" },
    { "<leader>lsp", "<cmd>LiveServerStop<CR>", desc = "Stop Live Server" },
  },
}
