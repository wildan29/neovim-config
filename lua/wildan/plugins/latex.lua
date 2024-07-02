return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- Set the default tex file format
    vim.g.tex_flavor = "latex"

    -- Choose which program to use to view PDF file
    vim.g.vimtex_view_method = "skim"

    -- Value 1 allows forward search after every successful compilation
    vim.g.vimtex_view_skim_sync = 1

    -- Value 1 allows change focus to skim after command `:VimtexView` is given
    vim.g.vimtex_view_skim_activate = 1
  end,
}
