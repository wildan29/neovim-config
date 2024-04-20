return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      filetype = {
        java = {
          "javac -d . $fullFileName",
        },
        python = "python3 -u",
        typescript = "deno run --allow-read --allow-net",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
        c = function(...)
          c_base = {
            "cd $dir &&",
            "gcc $fileName -o",
            "/tmp/$fileNameWithoutExt",
          }
          local c_exec = {
            "&& /tmp/$fileNameWithoutExt &&",
            "rm /tmp/$fileNameWithoutExt",
          }
          vim.ui.input({ prompt = "Add more args:" }, function(input)
            c_base[4] = input
            vim.print(vim.tbl_extend("force", c_base, c_exec))
            require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
          end)
        end,
        kotlin = {
          "cd $dir &&",
          "kotlinc $fileName -include-runtime -d $fileNameWithoutExt.jar &&",
          "java -jar $fileNameWithoutExt.jar",
        },
        javascript = {
          "node $fileName",
        },
      },
    })
    vim.keymap.set("n", "<leader>Rc", ":RunCode<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>Rf", ":RunFile<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>Rft", ":RunFile tab<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>Rp", ":RunProject<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>Rc", ":RunClose<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>CRF", ":CRFiletype<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>CRP", ":CRProjects<CR>", { noremap = true, silent = false })
  end,
}
