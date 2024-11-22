return {
  {
    "javiorfo/nvim-nyctophilia",
    lazy = true,
    ft = { "plantuml", "puml" }, -- Load saat file PlantUML dibuka
    init = function()
      -- Available themes: nox, umbra, nebula and tenebra
      vim.cmd([[colorscheme umbra]])
    end,
  },
  {
    "weirongxu/plantuml-previewer.vim", -- Plugin untuk pratinjau diagram
    dependencies = { "tyru/open-browser.vim" }, -- Dibutuhkan untuk membuka browser
    lazy = true,
    ft = { "plantuml", "puml" }, -- Load saat file PlantUML dibuka
  },
}
