return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      filetype = {
        java = function()
          local root = vim.fs.root(0, { ".git", ".gitignore", "pom.xml", "build.gradle" }) or vim.fn.getcwd()
          local file_path = vim.api.nvim_buf_get_name(0)
          local name_no_ext = vim.fn.expand("%:t:r")
          local target_out = root .. "/out"

          local package_name = nil
          local lines = vim.fn.readfile(file_path)
          for _, line in ipairs(lines) do
            local pkg = line:match("^package%s+([%w%.]+)%s*;")
            if pkg then
              package_name = pkg
              break
            end
          end

          local run_class = package_name and (package_name .. "." .. name_no_ext) or name_no_ext

          require("code_runner.commands").run_from_fn({
            "mkdir -p " .. target_out .. " &&",
            "javac -d " .. target_out .. " " .. file_path .. " &&",
            "java -cp " .. target_out .. " " .. run_class,
          })
        end,
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
    vim.keymap.set("n", "<leader>RT", ":RunFile tab<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>Rp", ":RunProject<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>Rx", ":RunClose<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>CRF", ":CRFiletype<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>Ri", function()
      local ft = vim.bo.filetype
      local dir = vim.fn.expand("%:p:h")
      local file = vim.fn.expand("%:t")
      local name = vim.fn.expand("%:t:r")
      local input = dir .. "/input.txt"

      if vim.fn.filereadable(input) == 0 then
        vim.fn.writefile({}, input)
      end

      local cmd = ""
      if ft == "java" then
        cmd = "cd " .. dir .. " && javac " .. file .. " && java " .. name .. " < input.txt"
      elseif ft == "python" then
        cmd = "cd " .. dir .. " && python3 " .. file .. " < input.txt"
      elseif ft == "cpp" or ft == "c" then
        cmd = "cd " .. dir .. " && g++ " .. file .. " -o " .. name .. " && ./" .. name .. " < input.txt"
      end

      vim.cmd("split | terminal " .. cmd)
    end, { noremap = true, silent = true, desc = "Run with input.txt (CP mode)" })
    vim.keymap.set("n", "<leader>CRP", ":CRProjects<CR>", { noremap = true, silent = false })
  end,
}
