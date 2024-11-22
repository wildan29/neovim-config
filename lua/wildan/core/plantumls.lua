-- PlantUML previewer settings
vim.g["plantuml_previewer#plantuml_jar_path"] =
  "/Users/mochammadwildanalghifari/Main/Aplikasi/Plantuml/plantuml-gplv2-1.2024.8.jar"
vim.g["plantuml_previewer#plantuml_command"] = "java -jar"
vim.g["plantuml_previewer#save_format"] = "png"

-- File type alias for PlantUML
vim.cmd([[
  autocmd BufRead,BufNewFile *.puml,*.plantuml set filetype=plantuml
]])
