return {
  "toppair/peek.nvim",
  event = { "VeryLazy" },
  build = "deno task --quiet build:fast",
  config = function()
    require("peek").setup()
    local peek = require("peek")

    vim.keymap.set("n", "<leader>mdo", function()
      peek.open()
    end, { desc = "Markdown Preview Open" })

    vim.keymap.set("n", "<leader>mdc", function()
      peek.close()
    end, { desc = "Markdown Preview Close" })
  end,
}
