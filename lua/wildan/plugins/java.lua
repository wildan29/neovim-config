return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  config = function()
    local config = {
      cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
      root_dir = vim.fs.root(0, { "gradlew", ".git", "mvnw", "pom.xml", "build.gradle" }),
      settings = {
        java = {
          format = { enabled = true },
          eclipse = { downloadSources = true },
          maven = { downloadSources = true },
          implementationsCodeLens = { enabled = true },
          referencesCodeLens = { enabled = true },
          inlayHints = { parameterNames = { enabled = "all" } },
        },
      },
      init_options = {
        bundles = {},
      },
    }
    require("jdtls").start_or_attach(config)
  end,
}
