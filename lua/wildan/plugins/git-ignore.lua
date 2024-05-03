return {
  "wintermute-cell/gitignore.nvim",
  config = function()
    local gitignore = require("gitignore")
    vim.keymap.set("n", "<leader>GI", gitignore.generate)
  end,
}
