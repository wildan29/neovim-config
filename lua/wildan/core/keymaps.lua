vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement number
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertical" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontal" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- remap
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("x", "<leader>p", [["_dP]])
keymap.set("n", "}", "}zz", { noremap = true, silent = true })
keymap.set("n", "{", "{zz", { noremap = true, silent = true })
keymap.set("n", "G", "Gzz", { noremap = true, silent = true })

local template_dir = vim.fn.stdpath("config") .. "/templates/"

-- F5: Compile + Run pakai input.txt
keymap.set("n", "<F5>", function()
  local file = vim.fn.expand("%:p")
  local dir = vim.fn.expand("%:p:h")
  local name = vim.fn.expand("%:t:r")
  local inp = dir .. "/input.txt"
  if vim.fn.filereadable(inp) == 0 then
    vim.fn.writefile({}, inp)
  end
  vim.cmd("silent! bdelete! CP_TERM")
  vim.cmd("botright 12split | terminal")
  vim.api.nvim_buf_set_name(0, "CP_TERM")
  vim.fn.chansend(
    vim.b.terminal_job_id,
    ("cd '%s' && javac '%s' && java '%s' < input.txt; echo '[Exit: '$?']'\n"):format(dir, file, name)
  )
  vim.cmd("startinsert")
end, { desc = "CP: Compile & Run" })

-- F7: Buka input.txt
keymap.set("n", "<F7>", function()
  local inp = vim.fn.expand("%:p:h") .. "/input.txt"
  if vim.fn.filereadable(inp) == 0 then
    vim.fn.writefile({}, inp)
  end
  vim.cmd("rightbelow vsplit " .. inp)
end, { desc = "CP: Edit input" })

-- F8: Pilih template lalu buat file baru
keymap.set("n", "<F8>", function()
  local templates = {
    { file = "cp_basic.java", label = "Basic — 1 test case" },
    { file = "cp_multitest.java", label = "Multi test case" },
  }

  -- Buat pilihan untuk vim.ui.select
  local choices = {}
  for _, t in ipairs(templates) do
    table.insert(choices, t.label)
  end

  vim.ui.select(choices, { prompt = "Pilih template:" }, function(choice)
    if not choice then
      return
    end

    -- Cari file template yang dipilih
    local selected
    for _, t in ipairs(templates) do
      if t.label == choice then
        selected = t
        break
      end
    end

    vim.ui.input({ prompt = "Nama kelas (contoh: SolveA): " }, function(name)
      if not name or name == "" then
        return
      end

      local dest = vim.fn.expand("%:p:h") .. "/" .. name .. ".java"
      local lines = vim.fn.readfile(template_dir .. selected.file)

      -- Ganti __CLASSNAME__ dengan nama yang diinput
      for i, line in ipairs(lines) do
        lines[i] = line:gsub("__CLASSNAME__", name)
      end

      vim.fn.writefile(lines, dest)
      vim.cmd("edit " .. dest)

      -- Buat input.txt juga
      local inp = vim.fn.expand("%:p:h") .. "/input.txt"
      if vim.fn.filereadable(inp) == 0 then
        vim.fn.writefile({}, inp)
      end
    end)
  end)
end, { desc = "CP: Pilih template" })
