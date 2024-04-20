return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      [[ ⣿⣿⣟⡇⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠠⠀⠄⠀⠈⠀⢠⣾⣿⣿⠇⣿⣯⣿⣿⣽⣿⣿⣽⡽⡱⠘⡗ ]],
      [[ ⣿⣿⡟⡇⠇⠀⠀⠀⠄⠀⠀⠀⠀⠢⠀⠀⠀⠠⠀⠀⠀⢀⣼⣿⣿⣿⣷⢾⣿⣽⣿⣳⢿⣿⣄⠀⠁⠀⢀ ]],
      [[ ⣿⣿⣧⠀⢀⠀⠀⣆⠀⠀⠀⠢⠐⠀⠀⠀⡀⠀⠀⠀⢰⣼⣴⡿⡯⠞⠿⣵⢹⡇⣳⡝⣐⢏⢿⠀⠀⠀⠁ ]],
      [[ ⣿⣿⣿⡄⠀⠀⠀⣿⡧⡀⠀⠀⠀⠲⠄⡀⣀⣄⠀⠀⠸⣵⣿⣿⡿⣆⠐⢻⣿⣿⣮⠁⣤⠘⣦⣀⠐⣠⣄ ]],
      [[ ⣿⣿⣿⡇⠈⠁⠀⡿⠟⠻⢟⣬⣔⣲⣆⣷⣐⡯⡂⠀⠀⠿⢿⣿⣷⣲⢶⣾⣿⣿⣿⣮⣶⡵⢧⢷⣂⠙⠙ ]],
      [[ ⣿⣿⣿⣹⠀⠀⠄⠀⢧⡐⡦⣽⣿⣿⣿⣿⣿⣿⣷⡀⠀⣧⠨⣻⣆⠻⣿⣯⣩⣏⣩⣿⡿⠍⠀⠀⠙⢇⢀ ]],
      [[ ⣷⣿⠟⣷⡄⠀⠀⠠⠘⣿⣿⣿⣿⣻⣿⣟⣟⣻⣿⠀⠀⢸⣆⢌⠝⠓⢨⣽⣿⡝⡯⠓⠃⠀⠀⠀⠀⡀⠈ ]],
      [[ ⡽⣏⢨⡟⠁⠀⠃⠀⡠⣹⣿⣿⣿⣧⣽⢿⣿⣿⣿⣸⠀⢸⠿⠎⣭⠷⠿⠟⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⣷⣿⢿⡇⢰⠀⡀⠀⣿⣿⣟⣿⣾⣿⢽⣿⣛⣋⣋⡄⠀⠀⡀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⣿⣿⡟⠃⠀⠀⠀⠀⣿⣻⣿⣿⣿⣯⣿⣎⣟⡉⠁⠀⠁⠀⠀⠀⠀⠀⢀⣀⣤⣤⣶⣶⣿⣿⣆⠀⡀⠀⠀ ]],
      [[ ⣽⣿⡏⠂⠀⠀⠀⠀⢿⣿⣿⣿⣿⣟⣟⣷⣿⣿⣿⡶⣄⡄⠀⢻⣻⣿⣿⣼⣟⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀ ]],
    }

    vim.api.nvim_set_hl(0, "I2A0", { fg = "#d5d1c7" })
    vim.api.nvim_set_hl(0, "I2A1", { fg = "#c7c7ba" })
    vim.api.nvim_set_hl(0, "I2A2", { fg = "#bfa6aa" })
    vim.api.nvim_set_hl(0, "I2A3", { fg = "#b9689c" })
    vim.api.nvim_set_hl(0, "I2A4", { fg = "#894c82" })
    vim.api.nvim_set_hl(0, "I2A5", { fg = "#8d4f88" })
    vim.api.nvim_set_hl(0, "I2A6", { fg = "#894e85" })
    vim.api.nvim_set_hl(0, "I2A7", { fg = "#884986" })
    vim.api.nvim_set_hl(0, "I2A8", { fg = "#804782" })
    vim.api.nvim_set_hl(0, "I2A9", { fg = "#7c4580" })
    vim.api.nvim_set_hl(0, "I2A10", { fg = "#714079" })
    vim.api.nvim_set_hl(0, "I2A11", { fg = "#6d407c" })
    vim.api.nvim_set_hl(0, "I2A12", { fg = "#744b83" })
    vim.api.nvim_set_hl(0, "I2A13", { fg = "#603971" })
    vim.api.nvim_set_hl(0, "I2A14", { fg = "#442355" })
    vim.api.nvim_set_hl(0, "I2A15", { fg = "#513463" })
    vim.api.nvim_set_hl(0, "I2A16", { fg = "#644972" })
    vim.api.nvim_set_hl(0, "I2A17", { fg = "#3a1d41" })
    vim.api.nvim_set_hl(0, "I2A18", { fg = "#523051" })
    vim.api.nvim_set_hl(0, "I2A19", { fg = "#442242" })
    vim.api.nvim_set_hl(0, "I2A20", { fg = "#2b0828" })
    vim.api.nvim_set_hl(0, "I2A21", { fg = "#210a24" })
    vim.api.nvim_set_hl(0, "I2A22", { fg = "#392535" })
    vim.api.nvim_set_hl(0, "I2A23", { fg = "#f5dfb0" })
    vim.api.nvim_set_hl(0, "I2A24", { fg = "#f9c087" })
    vim.api.nvim_set_hl(0, "I2A25", { fg = "#feba7f" })
    vim.api.nvim_set_hl(0, "I2A26", { fg = "#bd7651" })
    vim.api.nvim_set_hl(0, "I2A27", { fg = "#fdb379" })
    vim.api.nvim_set_hl(0, "I2A28", { fg = "#da905e" })
    vim.api.nvim_set_hl(0, "I2A29", { fg = "#ffb578" })
    vim.api.nvim_set_hl(0, "I2A30", { fg = "#fdb37a" })
    vim.api.nvim_set_hl(0, "I2A31", { fg = "#dd9666" })
    vim.api.nvim_set_hl(0, "I2A32", { fg = "#feb273" })
    vim.api.nvim_set_hl(0, "I2A33", { fg = "#fb946d" })
    vim.api.nvim_set_hl(0, "I2A34", { fg = "#df3854" })
    vim.api.nvim_set_hl(0, "I2A35", { fg = "#ee4364" })
    vim.api.nvim_set_hl(0, "I2A36", { fg = "#d94e65" })
    vim.api.nvim_set_hl(0, "I2A37", { fg = "#f13f63" })
    vim.api.nvim_set_hl(0, "I2A38", { fg = "#fb4d6f" })
    vim.api.nvim_set_hl(0, "I2A39", { fg = "#c9bdb1" })
    vim.api.nvim_set_hl(0, "I2A40", { fg = "#beb6ae" })
    vim.api.nvim_set_hl(0, "I2A41", { fg = "#c68a9d" })
    vim.api.nvim_set_hl(0, "I2A42", { fg = "#bd73a2" })
    vim.api.nvim_set_hl(0, "I2A43", { fg = "#c2659f" })
    vim.api.nvim_set_hl(0, "I2A44", { fg = "#884a7f" })
    vim.api.nvim_set_hl(0, "I2A45", { fg = "#6f4073" })
    vim.api.nvim_set_hl(0, "I2A46", { fg = "#714077" })
    vim.api.nvim_set_hl(0, "I2A47", { fg = "#8b407f" })
    vim.api.nvim_set_hl(0, "I2A48", { fg = "#713e74" })
    vim.api.nvim_set_hl(0, "I2A49", { fg = "#59326f" })
    vim.api.nvim_set_hl(0, "I2A50", { fg = "#533266" })
    vim.api.nvim_set_hl(0, "I2A51", { fg = "#583871" })
    vim.api.nvim_set_hl(0, "I2A52", { fg = "#85588e" })
    vim.api.nvim_set_hl(0, "I2A53", { fg = "#4c3467" })
    vim.api.nvim_set_hl(0, "I2A54", { fg = "#453061" })
    vim.api.nvim_set_hl(0, "I2A55", { fg = "#422c5b" })
    vim.api.nvim_set_hl(0, "I2A56", { fg = "#5b466c" })
    vim.api.nvim_set_hl(0, "I2A57", { fg = "#341c46" })
    vim.api.nvim_set_hl(0, "I2A58", { fg = "#270f31" })
    vim.api.nvim_set_hl(0, "I2A59", { fg = "#1a0420" })
    vim.api.nvim_set_hl(0, "I2A60", { fg = "#1a061e" })
    vim.api.nvim_set_hl(0, "I2A61", { fg = "#baa886" })
    vim.api.nvim_set_hl(0, "I2A62", { fg = "#fcb685" })
    vim.api.nvim_set_hl(0, "I2A63", { fg = "#ffb17a" })
    vim.api.nvim_set_hl(0, "I2A64", { fg = "#f09873" })
    vim.api.nvim_set_hl(0, "I2A65", { fg = "#fabbb6" })
    vim.api.nvim_set_hl(0, "I2A66", { fg = "#f6a066" })
    vim.api.nvim_set_hl(0, "I2A67", { fg = "#f09355" })
    vim.api.nvim_set_hl(0, "I2A68", { fg = "#cf764b" })
    vim.api.nvim_set_hl(0, "I2A69", { fg = "#fba064" })
    vim.api.nvim_set_hl(0, "I2A70", { fg = "#f49b6e" })
    vim.api.nvim_set_hl(0, "I2A71", { fg = "#ef9b65" })
    vim.api.nvim_set_hl(0, "I2A72", { fg = "#fca462" })
    vim.api.nvim_set_hl(0, "I2A73", { fg = "#eb4956" })
    vim.api.nvim_set_hl(0, "I2A74", { fg = "#f23a61" })
    vim.api.nvim_set_hl(0, "I2A75", { fg = "#d63652" })
    vim.api.nvim_set_hl(0, "I2A76", { fg = "#df2d51" })
    vim.api.nvim_set_hl(0, "I2A77", { fg = "#f33e61" })
    vim.api.nvim_set_hl(0, "I2A78", { fg = "#c4b6aa" })
    vim.api.nvim_set_hl(0, "I2A79", { fg = "#b1a598" })
    vim.api.nvim_set_hl(0, "I2A80", { fg = "#d98d8e" })
    vim.api.nvim_set_hl(0, "I2A81", { fg = "#764778" })
    vim.api.nvim_set_hl(0, "I2A82", { fg = "#7f568b" })
    vim.api.nvim_set_hl(0, "I2A83", { fg = "#775083" })
    vim.api.nvim_set_hl(0, "I2A84", { fg = "#693e6f" })
    vim.api.nvim_set_hl(0, "I2A85", { fg = "#b25c7c" })
    vim.api.nvim_set_hl(0, "I2A86", { fg = "#593469" })
    vim.api.nvim_set_hl(0, "I2A87", { fg = "#4b2d61" })
    vim.api.nvim_set_hl(0, "I2A88", { fg = "#51366d" })
    vim.api.nvim_set_hl(0, "I2A89", { fg = "#a36b93" })
    vim.api.nvim_set_hl(0, "I2A90", { fg = "#4d3662" })
    vim.api.nvim_set_hl(0, "I2A91", { fg = "#423268" })
    vim.api.nvim_set_hl(0, "I2A92", { fg = "#392858" })
    vim.api.nvim_set_hl(0, "I2A93", { fg = "#562f5e" })
    vim.api.nvim_set_hl(0, "I2A94", { fg = "#4c1e4d" })
    vim.api.nvim_set_hl(0, "I2A95", { fg = "#36234f" })
    vim.api.nvim_set_hl(0, "I2A96", { fg = "#32214d" })
    vim.api.nvim_set_hl(0, "I2A97", { fg = "#29163e" })
    vim.api.nvim_set_hl(0, "I2A98", { fg = "#934863" })
    vim.api.nvim_set_hl(0, "I2A99", { fg = "#ed727f" })
    vim.api.nvim_set_hl(0, "I2A100", { fg = "#b2a269" })
    vim.api.nvim_set_hl(0, "I2A101", { fg = "#ee765f" })
    vim.api.nvim_set_hl(0, "I2A102", { fg = "#e08f58" })
    vim.api.nvim_set_hl(0, "I2A103", { fg = "#d68c8c" })
    vim.api.nvim_set_hl(0, "I2A104", { fg = "#ebc7b7" })
    vim.api.nvim_set_hl(0, "I2A105", { fg = "#c2958c" })
    vim.api.nvim_set_hl(0, "I2A106", { fg = "#b96648" })
    vim.api.nvim_set_hl(0, "I2A107", { fg = "#c86332" })
    vim.api.nvim_set_hl(0, "I2A108", { fg = "#d06867" })
    vim.api.nvim_set_hl(0, "I2A109", { fg = "#b45642" })
    vim.api.nvim_set_hl(0, "I2A110", { fg = "#c65945" })
    vim.api.nvim_set_hl(0, "I2A111", { fg = "#c4624e" })
    vim.api.nvim_set_hl(0, "I2A112", { fg = "#f38367" })
    vim.api.nvim_set_hl(0, "I2A113", { fg = "#e92851" })
    vim.api.nvim_set_hl(0, "I2A114", { fg = "#d7234a" })
    vim.api.nvim_set_hl(0, "I2A115", { fg = "#e63059" })
    vim.api.nvim_set_hl(0, "I2A116", { fg = "#db244b" })
    vim.api.nvim_set_hl(0, "I2A117", { fg = "#b3a394" })
    vim.api.nvim_set_hl(0, "I2A118", { fg = "#b1a192" })
    vim.api.nvim_set_hl(0, "I2A119", { fg = "#d08f93" })
    vim.api.nvim_set_hl(0, "I2A120", { fg = "#9d5185" })
    vim.api.nvim_set_hl(0, "I2A121", { fg = "#7a326a" })
    vim.api.nvim_set_hl(0, "I2A122", { fg = "#694678" })
    vim.api.nvim_set_hl(0, "I2A123", { fg = "#5e4170" })
    vim.api.nvim_set_hl(0, "I2A124", { fg = "#fab2b3" })
    vim.api.nvim_set_hl(0, "I2A125", { fg = "#c58e97" })
    vim.api.nvim_set_hl(0, "I2A126", { fg = "#3d1532" })
    vim.api.nvim_set_hl(0, "I2A127", { fg = "#44285d" })
    vim.api.nvim_set_hl(0, "I2A128", { fg = "#3d2c5e" })
    vim.api.nvim_set_hl(0, "I2A129", { fg = "#32163c" })
    vim.api.nvim_set_hl(0, "I2A130", { fg = "#c6677c" })
    vim.api.nvim_set_hl(0, "I2A131", { fg = "#854e5a" })
    vim.api.nvim_set_hl(0, "I2A132", { fg = "#492f3e" })
    vim.api.nvim_set_hl(0, "I2A133", { fg = "#3c2855" })
    vim.api.nvim_set_hl(0, "I2A134", { fg = "#592f67" })
    vim.api.nvim_set_hl(0, "I2A135", { fg = "#281138" })
    vim.api.nvim_set_hl(0, "I2A136", { fg = "#261b41" })
    vim.api.nvim_set_hl(0, "I2A137", { fg = "#8d4c6d" })
    vim.api.nvim_set_hl(0, "I2A138", { fg = "#e26679" })
    vim.api.nvim_set_hl(0, "I2A139", { fg = "#fdd9b8" })
    vim.api.nvim_set_hl(0, "I2A140", { fg = "#fca974" })
    vim.api.nvim_set_hl(0, "I2A141", { fg = "#f68c91" })
    vim.api.nvim_set_hl(0, "I2A142", { fg = "#bc7e90" })
    vim.api.nvim_set_hl(0, "I2A143", { fg = "#9e2b51" })
    vim.api.nvim_set_hl(0, "I2A144", { fg = "#d6b3b2" })
    vim.api.nvim_set_hl(0, "I2A145", { fg = "#fdd9cd" })
    vim.api.nvim_set_hl(0, "I2A146", { fg = "#f4c7bc" })
    vim.api.nvim_set_hl(0, "I2A147", { fg = "#d49c99" })
    vim.api.nvim_set_hl(0, "I2A148", { fg = "#6a092c" })
    vim.api.nvim_set_hl(0, "I2A149", { fg = "#be668d" })
    vim.api.nvim_set_hl(0, "I2A150", { fg = "#a66c82" })
    vim.api.nvim_set_hl(0, "I2A151", { fg = "#e0b6ab" })
    vim.api.nvim_set_hl(0, "I2A152", { fg = "#d42535" })
    vim.api.nvim_set_hl(0, "I2A153", { fg = "#d03855" })
    vim.api.nvim_set_hl(0, "I2A154", { fg = "#ce2144" })
    vim.api.nvim_set_hl(0, "I2A155", { fg = "#df3054" })
    vim.api.nvim_set_hl(0, "I2A156", { fg = "#ad9a89" })
    vim.api.nvim_set_hl(0, "I2A157", { fg = "#a59381" })
    vim.api.nvim_set_hl(0, "I2A158", { fg = "#cc8288" })
    vim.api.nvim_set_hl(0, "I2A159", { fg = "#b06d89" })
    vim.api.nvim_set_hl(0, "I2A160", { fg = "#6b3a71" })
    vim.api.nvim_set_hl(0, "I2A161", { fg = "#983878" })
    vim.api.nvim_set_hl(0, "I2A162", { fg = "#4d3469" })
    vim.api.nvim_set_hl(0, "I2A163", { fg = "#fab5bb" })
    vim.api.nvim_set_hl(0, "I2A164", { fg = "#c4988e" })
    vim.api.nvim_set_hl(0, "I2A165", { fg = "#c59694" })
    vim.api.nvim_set_hl(0, "I2A166", { fg = "#b5969a" })
    vim.api.nvim_set_hl(0, "I2A167", { fg = "#a17682" })
    vim.api.nvim_set_hl(0, "I2A168", { fg = "#c78395" })
    vim.api.nvim_set_hl(0, "I2A169", { fg = "#de7486" })
    vim.api.nvim_set_hl(0, "I2A170", { fg = "#a8696a" })
    vim.api.nvim_set_hl(0, "I2A171", { fg = "#fdf5f0" })
    vim.api.nvim_set_hl(0, "I2A172", { fg = "#df4ba3" })
    vim.api.nvim_set_hl(0, "I2A173", { fg = "#ce74c1" })
    vim.api.nvim_set_hl(0, "I2A174", { fg = "#8b3a6e" })
    vim.api.nvim_set_hl(0, "I2A175", { fg = "#271d48" })
    vim.api.nvim_set_hl(0, "I2A176", { fg = "#291536" })
    vim.api.nvim_set_hl(0, "I2A177", { fg = "#ed7f93" })
    vim.api.nvim_set_hl(0, "I2A178", { fg = "#ecc1b1" })
    vim.api.nvim_set_hl(0, "I2A179", { fg = "#feab6f" })
    vim.api.nvim_set_hl(0, "I2A180", { fg = "#fdae97" })
    vim.api.nvim_set_hl(0, "I2A181", { fg = "#d2978b" })
    vim.api.nvim_set_hl(0, "I2A182", { fg = "#e8a5af" })
    vim.api.nvim_set_hl(0, "I2A183", { fg = "#fed5ca" })
    vim.api.nvim_set_hl(0, "I2A184", { fg = "#fde3d8" })
    vim.api.nvim_set_hl(0, "I2A185", { fg = "#fed6c9" })
    vim.api.nvim_set_hl(0, "I2A186", { fg = "#fed0c0" })
    vim.api.nvim_set_hl(0, "I2A187", { fg = "#fca1ad" })
    vim.api.nvim_set_hl(0, "I2A188", { fg = "#f59fbd" })
    vim.api.nvim_set_hl(0, "I2A189", { fg = "#f09aa5" })
    vim.api.nvim_set_hl(0, "I2A190", { fg = "#e77066" })
    vim.api.nvim_set_hl(0, "I2A191", { fg = "#f8835d" })
    vim.api.nvim_set_hl(0, "I2A192", { fg = "#d33e38" })
    vim.api.nvim_set_hl(0, "I2A193", { fg = "#cc3757" })
    vim.api.nvim_set_hl(0, "I2A194", { fg = "#d83563" })
    vim.api.nvim_set_hl(0, "I2A195", { fg = "#a88e7d" })
    vim.api.nvim_set_hl(0, "I2A196", { fg = "#a1897a" })
    vim.api.nvim_set_hl(0, "I2A197", { fg = "#c77e82" })
    vim.api.nvim_set_hl(0, "I2A198", { fg = "#cc5e82" })
    vim.api.nvim_set_hl(0, "I2A199", { fg = "#5e427c" })
    vim.api.nvim_set_hl(0, "I2A200", { fg = "#634078" })
    vim.api.nvim_set_hl(0, "I2A201", { fg = "#a44180" })
    vim.api.nvim_set_hl(0, "I2A202", { fg = "#6e3d46" })
    vim.api.nvim_set_hl(0, "I2A203", { fg = "#d1ccd0" })
    vim.api.nvim_set_hl(0, "I2A204", { fg = "#735785" })
    vim.api.nvim_set_hl(0, "I2A205", { fg = "#deb0d5" })
    vim.api.nvim_set_hl(0, "I2A206", { fg = "#d29cba" })
    vim.api.nvim_set_hl(0, "I2A207", { fg = "#fddbcf" })
    vim.api.nvim_set_hl(0, "I2A208", { fg = "#fed9d0" })
    vim.api.nvim_set_hl(0, "I2A209", { fg = "#ffdad1" })
    vim.api.nvim_set_hl(0, "I2A210", { fg = "#fed2ca" })
    vim.api.nvim_set_hl(0, "I2A211", { fg = "#febdb5" })
    vim.api.nvim_set_hl(0, "I2A212", { fg = "#fdb2ad" })
    vim.api.nvim_set_hl(0, "I2A213", { fg = "#e69ca5" })
    vim.api.nvim_set_hl(0, "I2A214", { fg = "#2a1d49" })
    vim.api.nvim_set_hl(0, "I2A215", { fg = "#1f1c42" })
    vim.api.nvim_set_hl(0, "I2A216", { fg = "#c75f78" })
    vim.api.nvim_set_hl(0, "I2A217", { fg = "#433449" })
    vim.api.nvim_set_hl(0, "I2A218", { fg = "#dd9057" })
    vim.api.nvim_set_hl(0, "I2A219", { fg = "#d96462" })
    vim.api.nvim_set_hl(0, "I2A220", { fg = "#c0938f" })
    vim.api.nvim_set_hl(0, "I2A221", { fg = "#fcc8bb" })
    vim.api.nvim_set_hl(0, "I2A222", { fg = "#d5a499" })
    vim.api.nvim_set_hl(0, "I2A223", { fg = "#852f3d" })
    vim.api.nvim_set_hl(0, "I2A224", { fg = "#f14d70" })
    vim.api.nvim_set_hl(0, "I2A225", { fg = "#f8456b" })
    vim.api.nvim_set_hl(0, "I2A226", { fg = "#fec9c0" })
    vim.api.nvim_set_hl(0, "I2A227", { fg = "#f8bcb3" })
    vim.api.nvim_set_hl(0, "I2A228", { fg = "#e13967" })
    vim.api.nvim_set_hl(0, "I2A229", { fg = "#f51264" })
    vim.api.nvim_set_hl(0, "I2A230", { fg = "#ec0251" })
    vim.api.nvim_set_hl(0, "I2A231", { fg = "#e02150" })
    vim.api.nvim_set_hl(0, "I2A232", { fg = "#d45443" })
    vim.api.nvim_set_hl(0, "I2A233", { fg = "#b13a51" })
    vim.api.nvim_set_hl(0, "I2A234", { fg = "#a5876f" })
    vim.api.nvim_set_hl(0, "I2A235", { fg = "#9a806e" })
    vim.api.nvim_set_hl(0, "I2A236", { fg = "#c47879" })
    vim.api.nvim_set_hl(0, "I2A237", { fg = "#c66e80" })
    vim.api.nvim_set_hl(0, "I2A238", { fg = "#924a8c" })
    vim.api.nvim_set_hl(0, "I2A239", { fg = "#5c3c7b" })
    vim.api.nvim_set_hl(0, "I2A240", { fg = "#52396f" })
    vim.api.nvim_set_hl(0, "I2A241", { fg = "#7a356a" })
    vim.api.nvim_set_hl(0, "I2A242", { fg = "#603f5d" })
    vim.api.nvim_set_hl(0, "I2A243", { fg = "#e5bdb7" })
    vim.api.nvim_set_hl(0, "I2A244", { fg = "#f3c8c2" })
    vim.api.nvim_set_hl(0, "I2A245", { fg = "#fbb8b0" })
    vim.api.nvim_set_hl(0, "I2A246", { fg = "#fdcbbf" })
    vim.api.nvim_set_hl(0, "I2A247", { fg = "#dfc3b8" })
    vim.api.nvim_set_hl(0, "I2A248", { fg = "#fed9cf" })
    vim.api.nvim_set_hl(0, "I2A249", { fg = "#debcb4" })
    vim.api.nvim_set_hl(0, "I2A250", { fg = "#cca7a5" })
    vim.api.nvim_set_hl(0, "I2A251", { fg = "#cea098" })
    vim.api.nvim_set_hl(0, "I2A252", { fg = "#ffd5cb" })
    vim.api.nvim_set_hl(0, "I2A253", { fg = "#401947" })
    vim.api.nvim_set_hl(0, "I2A254", { fg = "#241b4a" })
    vim.api.nvim_set_hl(0, "I2A255", { fg = "#9a3b54" })
    vim.api.nvim_set_hl(0, "I2A256", { fg = "#984553" })
    vim.api.nvim_set_hl(0, "I2A257", { fg = "#624c55" })
    vim.api.nvim_set_hl(0, "I2A258", { fg = "#925047" })
    vim.api.nvim_set_hl(0, "I2A259", { fg = "#8d502b" })
    vim.api.nvim_set_hl(0, "I2A260", { fg = "#704244" })
    vim.api.nvim_set_hl(0, "I2A261", { fg = "#c6717a" })
    vim.api.nvim_set_hl(0, "I2A262", { fg = "#eebdb8" })
    vim.api.nvim_set_hl(0, "I2A263", { fg = "#bf686c" })
    vim.api.nvim_set_hl(0, "I2A264", { fg = "#e6517f" })
    vim.api.nvim_set_hl(0, "I2A265", { fg = "#fe3c89" })
    vim.api.nvim_set_hl(0, "I2A266", { fg = "#ff2b7f" })
    vim.api.nvim_set_hl(0, "I2A267", { fg = "#fb0f6c" })
    vim.api.nvim_set_hl(0, "I2A268", { fg = "#fa0a66" })
    vim.api.nvim_set_hl(0, "I2A269", { fg = "#fd076e" })
    vim.api.nvim_set_hl(0, "I2A270", { fg = "#fb0f65" })
    vim.api.nvim_set_hl(0, "I2A271", { fg = "#e41c5d" })
    vim.api.nvim_set_hl(0, "I2A272", { fg = "#c80138" })
    vim.api.nvim_set_hl(0, "I2A273", { fg = "#98795f" })
    vim.api.nvim_set_hl(0, "I2A274", { fg = "#977a68" })
    vim.api.nvim_set_hl(0, "I2A275", { fg = "#a26061" })
    vim.api.nvim_set_hl(0, "I2A276", { fg = "#b86783" })
    vim.api.nvim_set_hl(0, "I2A277", { fg = "#87387a" })
    vim.api.nvim_set_hl(0, "I2A278", { fg = "#613f7b" })
    vim.api.nvim_set_hl(0, "I2A279", { fg = "#844f8a" })
    vim.api.nvim_set_hl(0, "I2A280", { fg = "#492953" })
    vim.api.nvim_set_hl(0, "I2A281", { fg = "#7b6880" })
    vim.api.nvim_set_hl(0, "I2A282", { fg = "#a296a1" })
    vim.api.nvim_set_hl(0, "I2A283", { fg = "#e8c0bc" })
    vim.api.nvim_set_hl(0, "I2A284", { fg = "#fcc8bc" })
    vim.api.nvim_set_hl(0, "I2A285", { fg = "#fdd2c8" })
    vim.api.nvim_set_hl(0, "I2A286", { fg = "#dab9ad" })
    vim.api.nvim_set_hl(0, "I2A287", { fg = "#e2b2b0" })
    vim.api.nvim_set_hl(0, "I2A288", { fg = "#fb7588" })
    vim.api.nvim_set_hl(0, "I2A289", { fg = "#fa7084" })
    vim.api.nvim_set_hl(0, "I2A290", { fg = "#e0cabe" })
    vim.api.nvim_set_hl(0, "I2A291", { fg = "#f0bbb8" })
    vim.api.nvim_set_hl(0, "I2A292", { fg = "#b8537a" })
    vim.api.nvim_set_hl(0, "I2A293", { fg = "#38184c" })
    vim.api.nvim_set_hl(0, "I2A294", { fg = "#924564" })
    vim.api.nvim_set_hl(0, "I2A295", { fg = "#fe7188" })
    vim.api.nvim_set_hl(0, "I2A296", { fg = "#dc5d78" })
    vim.api.nvim_set_hl(0, "I2A297", { fg = "#903048" })
    vim.api.nvim_set_hl(0, "I2A298", { fg = "#f1568d" })
    vim.api.nvim_set_hl(0, "I2A299", { fg = "#fb548d" })
    vim.api.nvim_set_hl(0, "I2A300", { fg = "#f94686" })
    vim.api.nvim_set_hl(0, "I2A301", { fg = "#fd337d" })
    vim.api.nvim_set_hl(0, "I2A302", { fg = "#fd2a79" })
    vim.api.nvim_set_hl(0, "I2A303", { fg = "#ff2378" })
    vim.api.nvim_set_hl(0, "I2A304", { fg = "#fe2f7b" })
    vim.api.nvim_set_hl(0, "I2A305", { fg = "#fa1e6b" })
    vim.api.nvim_set_hl(0, "I2A306", { fg = "#fd156f" })
    vim.api.nvim_set_hl(0, "I2A307", { fg = "#fd066c" })
    vim.api.nvim_set_hl(0, "I2A308", { fg = "#fe0269" })
    vim.api.nvim_set_hl(0, "I2A309", { fg = "#ff0564" })
    vim.api.nvim_set_hl(0, "I2A310", { fg = "#fb0c65" })
    vim.api.nvim_set_hl(0, "I2A311", { fg = "#fc0262" })
    vim.api.nvim_set_hl(0, "I2A312", { fg = "#a17f6a" })
    vim.api.nvim_set_hl(0, "I2A313", { fg = "#dbc5ba" })
    vim.api.nvim_set_hl(0, "I2A314", { fg = "#e5a8a8" })
    vim.api.nvim_set_hl(0, "I2A315", { fg = "#b35983" })
    vim.api.nvim_set_hl(0, "I2A316", { fg = "#a94e89" })
    vim.api.nvim_set_hl(0, "I2A317", { fg = "#653e72" })
    vim.api.nvim_set_hl(0, "I2A318", { fg = "#6b346a" })
    vim.api.nvim_set_hl(0, "I2A319", { fg = "#48294b" })
    vim.api.nvim_set_hl(0, "I2A320", { fg = "#f9f8f6" })
    vim.api.nvim_set_hl(0, "I2A321", { fg = "#f8f7f4" })
    vim.api.nvim_set_hl(0, "I2A322", { fg = "#c5c6c0" })
    vim.api.nvim_set_hl(0, "I2A323", { fg = "#f8bbbe" })
    vim.api.nvim_set_hl(0, "I2A324", { fg = "#feddd0" })
    vim.api.nvim_set_hl(0, "I2A325", { fg = "#dec4ba" })
    vim.api.nvim_set_hl(0, "I2A326", { fg = "#c9aca3" })
    vim.api.nvim_set_hl(0, "I2A327", { fg = "#fbdfd6" })
    vim.api.nvim_set_hl(0, "I2A328", { fg = "#b48d88" })
    vim.api.nvim_set_hl(0, "I2A329", { fg = "#e45d85" })
    vim.api.nvim_set_hl(0, "I2A330", { fg = "#f82872" })
    vim.api.nvim_set_hl(0, "I2A331", { fg = "#bf1b61" })
    vim.api.nvim_set_hl(0, "I2A332", { fg = "#952967" })
    vim.api.nvim_set_hl(0, "I2A333", { fg = "#572356" })
    vim.api.nvim_set_hl(0, "I2A334", { fg = "#fb1870" })
    vim.api.nvim_set_hl(0, "I2A335", { fg = "#fc0a68" })
    vim.api.nvim_set_hl(0, "I2A336", { fg = "#ff397f" })
    vim.api.nvim_set_hl(0, "I2A337", { fg = "#ff3179" })
    vim.api.nvim_set_hl(0, "I2A338", { fg = "#fe2d78" })
    vim.api.nvim_set_hl(0, "I2A339", { fg = "#ff2475" })
    vim.api.nvim_set_hl(0, "I2A340", { fg = "#ff126e" })
    vim.api.nvim_set_hl(0, "I2A341", { fg = "#fc0564" })
    vim.api.nvim_set_hl(0, "I2A342", { fg = "#fe025e" })
    vim.api.nvim_set_hl(0, "I2A343", { fg = "#fa035a" })
    vim.api.nvim_set_hl(0, "I2A344", { fg = "#ef0d56" })
    vim.api.nvim_set_hl(0, "I2A345", { fg = "#ee024f" })
    vim.api.nvim_set_hl(0, "I2A346", { fg = "#ef024d" })
    vim.api.nvim_set_hl(0, "I2A347", { fg = "#f40455" })
    vim.api.nvim_set_hl(0, "I2A348", { fg = "#f90964" })
    vim.api.nvim_set_hl(0, "I2A349", { fg = "#fe0261" })
    vim.api.nvim_set_hl(0, "I2A350", { fg = "#fd0158" })
    vim.api.nvim_set_hl(0, "I2A351", { fg = "#b6937f" })
    vim.api.nvim_set_hl(0, "I2A352", { fg = "#eaddd2" })
    vim.api.nvim_set_hl(0, "I2A353", { fg = "#c68d87" })
    vim.api.nvim_set_hl(0, "I2A354", { fg = "#974c84" })
    vim.api.nvim_set_hl(0, "I2A355", { fg = "#71265f" })
    vim.api.nvim_set_hl(0, "I2A356", { fg = "#623568" })
    vim.api.nvim_set_hl(0, "I2A357", { fg = "#753b72" })
    vim.api.nvim_set_hl(0, "I2A358", { fg = "#4b2147" })
    vim.api.nvim_set_hl(0, "I2A359", { fg = "#f6f5f1" })
    vim.api.nvim_set_hl(0, "I2A360", { fg = "#bebdb9" })
    vim.api.nvim_set_hl(0, "I2A361", { fg = "#f8f7f3" })
    vim.api.nvim_set_hl(0, "I2A362", { fg = "#dbd7d2" })
    vim.api.nvim_set_hl(0, "I2A363", { fg = "#ae988d" })
    vim.api.nvim_set_hl(0, "I2A364", { fg = "#f7d0c9" })
    vim.api.nvim_set_hl(0, "I2A365", { fg = "#9b7270" })
    vim.api.nvim_set_hl(0, "I2A366", { fg = "#e6708d" })
    vim.api.nvim_set_hl(0, "I2A367", { fg = "#fa246e" })
    vim.api.nvim_set_hl(0, "I2A368", { fg = "#f42468" })
    vim.api.nvim_set_hl(0, "I2A369", { fg = "#fd2b77" })
    vim.api.nvim_set_hl(0, "I2A370", { fg = "#d7115a" })
    vim.api.nvim_set_hl(0, "I2A371", { fg = "#502559" })
    vim.api.nvim_set_hl(0, "I2A372", { fg = "#8f1b53" })
    vim.api.nvim_set_hl(0, "I2A373", { fg = "#f4055c" })
    vim.api.nvim_set_hl(0, "I2A374", { fg = "#fb0c67" })
    vim.api.nvim_set_hl(0, "I2A375", { fg = "#fd0462" })
    vim.api.nvim_set_hl(0, "I2A376", { fg = "#fd025c" })
    vim.api.nvim_set_hl(0, "I2A377", { fg = "#ec0a56" })
    vim.api.nvim_set_hl(0, "I2A378", { fg = "#f55c8c" })
    vim.api.nvim_set_hl(0, "I2A379", { fg = "#d45d78" })
    vim.api.nvim_set_hl(0, "I2A380", { fg = "#efb4b7" })
    vim.api.nvim_set_hl(0, "I2A381", { fg = "#ebb2b5" })
    vim.api.nvim_set_hl(0, "I2A382", { fg = "#e4a8aa" })
    vim.api.nvim_set_hl(0, "I2A383", { fg = "#e5a3a5" })
    vim.api.nvim_set_hl(0, "I2A384", { fg = "#b16372" })
    vim.api.nvim_set_hl(0, "I2A385", { fg = "#fa0264" })
    vim.api.nvim_set_hl(0, "I2A386", { fg = "#fd0263" })
    vim.api.nvim_set_hl(0, "I2A387", { fg = "#fe0361" })
    vim.api.nvim_set_hl(0, "I2A388", { fg = "#fd025b" })
    vim.api.nvim_set_hl(0, "I2A389", { fg = "#c0a594" })
    vim.api.nvim_set_hl(0, "I2A390", { fg = "#dbcbb8" })
    vim.api.nvim_set_hl(0, "I2A391", { fg = "#c87193" })
    vim.api.nvim_set_hl(0, "I2A392", { fg = "#a35a8f" })
    vim.api.nvim_set_hl(0, "I2A393", { fg = "#79396d" })
    vim.api.nvim_set_hl(0, "I2A394", { fg = "#76346b" })
    vim.api.nvim_set_hl(0, "I2A395", { fg = "#7e3a73" })
    vim.api.nvim_set_hl(0, "I2A396", { fg = "#5f224f" })
    vim.api.nvim_set_hl(0, "I2A397", { fg = "#e9e3e3" })
    vim.api.nvim_set_hl(0, "I2A398", { fg = "#f8f4ef" })
    vim.api.nvim_set_hl(0, "I2A399", { fg = "#faf2ee" })
    vim.api.nvim_set_hl(0, "I2A400", { fg = "#e0d9d4" })
    vim.api.nvim_set_hl(0, "I2A401", { fg = "#faf6f3" })
    vim.api.nvim_set_hl(0, "I2A402", { fg = "#cab9b4" })
    vim.api.nvim_set_hl(0, "I2A403", { fg = "#ca9a9a" })
    vim.api.nvim_set_hl(0, "I2A404", { fg = "#cecbc4" })
    vim.api.nvim_set_hl(0, "I2A405", { fg = "#f2bec1" })
    vim.api.nvim_set_hl(0, "I2A406", { fg = "#ffd9cf" })
    vim.api.nvim_set_hl(0, "I2A407", { fg = "#fedad0" })
    vim.api.nvim_set_hl(0, "I2A408", { fg = "#f7c6c1" })
    vim.api.nvim_set_hl(0, "I2A409", { fg = "#ac5060" })
    vim.api.nvim_set_hl(0, "I2A410", { fg = "#4d3961" })
    vim.api.nvim_set_hl(0, "I2A411", { fg = "#45285d" })
    vim.api.nvim_set_hl(0, "I2A412", { fg = "#ba858d" })
    vim.api.nvim_set_hl(0, "I2A413", { fg = "#c1c2bd" })
    vim.api.nvim_set_hl(0, "I2A414", { fg = "#f7f6f2" })
    vim.api.nvim_set_hl(0, "I2A415", { fg = "#ccccc8" })
    vim.api.nvim_set_hl(0, "I2A416", { fg = "#dad2d0" })
    vim.api.nvim_set_hl(0, "I2A417", { fg = "#e9cfcf" })
    vim.api.nvim_set_hl(0, "I2A418", { fg = "#faf5f0" })
    vim.api.nvim_set_hl(0, "I2A419", { fg = "#f8f4f1" })
    vim.api.nvim_set_hl(0, "I2A420", { fg = "#eac8c5" })
    vim.api.nvim_set_hl(0, "I2A421", { fg = "#f7f3ec" })
    vim.api.nvim_set_hl(0, "I2A422", { fg = "#e7c9c7" })
    vim.api.nvim_set_hl(0, "I2A423", { fg = "#c7617a" })
    vim.api.nvim_set_hl(0, "I2A424", { fg = "#e5014c" })
    vim.api.nvim_set_hl(0, "I2A425", { fg = "#e8024a" })
    vim.api.nvim_set_hl(0, "I2A426", { fg = "#fa0254" })
    dashboard.section.header.opts.hl = {
      {
        { "I2A0", 0, 3 },
        { "I2A1", 3, 6 },
        { "I2A2", 6, 9 },
        { "I2A3", 9, 12 },
        { "I2A4", 12, 15 },
        { "I2A5", 15, 18 },
        { "I2A6", 18, 21 },
        { "I2A7", 21, 24 },
        { "I2A8", 24, 27 },
        { "I2A9", 27, 30 },
        { "I2A10", 30, 33 },
        { "I2A11", 33, 36 },
        { "I2A12", 36, 39 },
        { "I2A13", 39, 42 },
        { "I2A14", 42, 45 },
        { "I2A15", 45, 48 },
        { "I2A16", 48, 51 },
        { "I2A17", 51, 54 },
        { "I2A18", 54, 57 },
        { "I2A19", 57, 60 },
        { "I2A20", 60, 63 },
        { "I2A21", 63, 66 },
        { "I2A22", 66, 69 },
        { "I2A23", 69, 72 },
        { "I2A24", 72, 75 },
        { "I2A25", 75, 78 },
        { "I2A26", 78, 81 },
        { "I2A27", 81, 84 },
        { "I2A28", 84, 87 },
        { "I2A29", 87, 90 },
        { "I2A30", 90, 93 },
        { "I2A31", 93, 96 },
        { "I2A32", 96, 99 },
        { "I2A33", 99, 102 },
        { "I2A34", 102, 105 },
        { "I2A35", 105, 108 },
        { "I2A36", 108, 111 },
        { "I2A37", 111, 114 },
        { "I2A38", 114, 117 },
      },
      {
        { "I2A39", 0, 3 },
        { "I2A40", 3, 6 },
        { "I2A41", 6, 9 },
        { "I2A42", 9, 12 },
        { "I2A43", 12, 15 },
        { "I2A44", 15, 18 },
        { "I2A45", 18, 21 },
        { "I2A46", 21, 24 },
        { "I2A47", 24, 27 },
        { "I2A48", 27, 30 },
        { "I2A49", 30, 33 },
        { "I2A50", 33, 36 },
        { "I2A51", 36, 39 },
        { "I2A52", 39, 42 },
        { "I2A53", 42, 45 },
        { "I2A54", 45, 48 },
        { "I2A55", 48, 51 },
        { "I2A56", 51, 54 },
        { "I2A57", 54, 57 },
        { "I2A58", 57, 60 },
        { "I2A59", 60, 63 },
        { "I2A60", 63, 66 },
        { "I2A61", 66, 69 },
        { "I2A62", 69, 72 },
        { "I2A63", 72, 75 },
        { "I2A64", 75, 78 },
        { "I2A65", 78, 81 },
        { "I2A66", 81, 84 },
        { "I2A67", 84, 87 },
        { "I2A68", 87, 90 },
        { "I2A69", 90, 93 },
        { "I2A70", 93, 96 },
        { "I2A71", 96, 99 },
        { "I2A72", 99, 102 },
        { "I2A73", 102, 105 },
        { "I2A74", 105, 108 },
        { "I2A75", 108, 111 },
        { "I2A76", 111, 114 },
        { "I2A77", 114, 117 },
      },
      {
        { "I2A78", 0, 3 },
        { "I2A79", 3, 6 },
        { "I2A80", 6, 9 },
        { "I2A81", 9, 12 },
        { "I2A82", 12, 15 },
        { "I2A83", 15, 18 },
        { "I2A84", 18, 21 },
        { "I2A85", 21, 24 },
        { "I2A86", 24, 27 },
        { "I2A87", 27, 30 },
        { "I2A88", 30, 33 },
        { "I2A89", 33, 36 },
        { "I2A90", 36, 39 },
        { "I2A91", 39, 42 },
        { "I2A92", 42, 45 },
        { "I2A93", 45, 48 },
        { "I2A94", 48, 51 },
        { "I2A95", 51, 54 },
        { "I2A96", 54, 57 },
        { "I2A97", 57, 60 },
        { "I2A98", 60, 63 },
        { "I2A99", 63, 66 },
        { "I2A100", 66, 69 },
        { "I2A101", 69, 72 },
        { "I2A102", 72, 75 },
        { "I2A103", 75, 78 },
        { "I2A104", 78, 81 },
        { "I2A105", 81, 84 },
        { "I2A106", 84, 87 },
        { "I2A107", 87, 90 },
        { "I2A108", 90, 93 },
        { "I2A109", 93, 96 },
        { "I2A110", 96, 99 },
        { "I2A111", 99, 102 },
        { "I2A112", 102, 105 },
        { "I2A113", 105, 108 },
        { "I2A114", 108, 111 },
        { "I2A115", 111, 114 },
        { "I2A116", 114, 117 },
      },
      {
        { "I2A117", 0, 3 },
        { "I2A118", 3, 6 },
        { "I2A119", 6, 9 },
        { "I2A120", 9, 12 },
        { "I2A121", 12, 15 },
        { "I2A122", 15, 18 },
        { "I2A123", 18, 21 },
        { "I2A124", 21, 24 },
        { "I2A125", 24, 27 },
        { "I2A126", 27, 30 },
        { "I2A127", 30, 33 },
        { "I2A128", 33, 36 },
        { "I2A129", 36, 39 },
        { "I2A130", 39, 42 },
        { "I2A131", 42, 45 },
        { "I2A132", 45, 48 },
        { "I2A133", 48, 51 },
        { "I2A134", 51, 54 },
        { "I2A135", 54, 57 },
        { "I2A136", 57, 60 },
        { "I2A137", 60, 63 },
        { "I2A138", 63, 66 },
        { "I2A139", 66, 69 },
        { "I2A140", 69, 72 },
        { "I2A141", 72, 75 },
        { "I2A142", 75, 78 },
        { "I2A143", 78, 81 },
        { "I2A144", 81, 84 },
        { "I2A145", 84, 87 },
        { "I2A146", 87, 90 },
        { "I2A147", 90, 93 },
        { "I2A148", 93, 96 },
        { "I2A149", 96, 99 },
        { "I2A150", 99, 102 },
        { "I2A151", 102, 105 },
        { "I2A152", 105, 108 },
        { "I2A153", 108, 111 },
        { "I2A154", 111, 114 },
        { "I2A155", 114, 117 },
      },
      {
        { "I2A156", 0, 3 },
        { "I2A157", 3, 6 },
        { "I2A158", 6, 9 },
        { "I2A159", 9, 12 },
        { "I2A160", 12, 15 },
        { "I2A161", 15, 18 },
        { "I2A162", 18, 21 },
        { "I2A163", 21, 24 },
        { "I2A164", 24, 27 },
        { "I2A165", 27, 30 },
        { "I2A166", 30, 33 },
        { "I2A167", 33, 36 },
        { "I2A168", 36, 39 },
        { "I2A169", 39, 42 },
        { "I2A170", 42, 45 },
        { "I2A171", 45, 48 },
        { "I2A172", 48, 51 },
        { "I2A173", 51, 54 },
        { "I2A174", 54, 57 },
        { "I2A175", 57, 60 },
        { "I2A176", 60, 63 },
        { "I2A177", 63, 66 },
        { "I2A178", 66, 69 },
        { "I2A179", 69, 72 },
        { "I2A180", 72, 75 },
        { "I2A181", 75, 78 },
        { "I2A182", 78, 81 },
        { "I2A183", 81, 84 },
        { "I2A184", 84, 87 },
        { "I2A185", 87, 90 },
        { "I2A186", 90, 93 },
        { "I2A187", 93, 96 },
        { "I2A188", 96, 99 },
        { "I2A189", 99, 102 },
        { "I2A190", 102, 105 },
        { "I2A191", 105, 108 },
        { "I2A192", 108, 111 },
        { "I2A193", 111, 114 },
        { "I2A194", 114, 117 },
      },
      {
        { "I2A195", 0, 3 },
        { "I2A196", 3, 6 },
        { "I2A197", 6, 9 },
        { "I2A198", 9, 12 },
        { "I2A199", 12, 15 },
        { "I2A200", 15, 18 },
        { "I2A201", 18, 21 },
        { "I2A202", 21, 24 },
        { "I2A203", 24, 27 },
        { "I2A204", 27, 30 },
        { "I2A205", 30, 33 },
        { "I2A206", 33, 36 },
        { "I2A207", 36, 39 },
        { "I2A208", 39, 42 },
        { "I2A209", 42, 45 },
        { "I2A210", 45, 48 },
        { "I2A211", 48, 51 },
        { "I2A212", 51, 54 },
        { "I2A213", 54, 57 },
        { "I2A214", 57, 60 },
        { "I2A215", 60, 63 },
        { "I2A216", 63, 66 },
        { "I2A217", 66, 69 },
        { "I2A218", 69, 72 },
        { "I2A219", 72, 75 },
        { "I2A220", 75, 78 },
        { "I2A221", 78, 81 },
        { "I2A222", 81, 84 },
        { "I2A223", 84, 87 },
        { "I2A224", 87, 90 },
        { "I2A225", 90, 93 },
        { "I2A226", 93, 96 },
        { "I2A227", 96, 99 },
        { "I2A228", 99, 102 },
        { "I2A229", 102, 105 },
        { "I2A230", 105, 108 },
        { "I2A231", 108, 111 },
        { "I2A232", 111, 114 },
        { "I2A233", 114, 117 },
      },
      {
        { "I2A234", 0, 3 },
        { "I2A235", 3, 6 },
        { "I2A236", 6, 9 },
        { "I2A237", 9, 12 },
        { "I2A238", 12, 15 },
        { "I2A239", 15, 18 },
        { "I2A240", 18, 21 },
        { "I2A241", 21, 24 },
        { "I2A242", 24, 27 },
        { "I2A243", 27, 30 },
        { "I2A244", 30, 33 },
        { "I2A245", 33, 36 },
        { "I2A246", 36, 39 },
        { "I2A247", 39, 42 },
        { "I2A248", 42, 45 },
        { "I2A249", 45, 48 },
        { "I2A250", 48, 51 },
        { "I2A251", 51, 54 },
        { "I2A252", 54, 57 },
        { "I2A253", 57, 60 },
        { "I2A254", 60, 63 },
        { "I2A255", 63, 66 },
        { "I2A256", 66, 69 },
        { "I2A257", 69, 72 },
        { "I2A258", 72, 75 },
        { "I2A259", 75, 78 },
        { "I2A260", 78, 81 },
        { "I2A261", 81, 84 },
        { "I2A262", 84, 87 },
        { "I2A263", 87, 90 },
        { "I2A264", 90, 93 },
        { "I2A265", 93, 96 },
        { "I2A266", 96, 99 },
        { "I2A267", 99, 102 },
        { "I2A268", 102, 105 },
        { "I2A269", 105, 108 },
        { "I2A270", 108, 111 },
        { "I2A271", 111, 114 },
        { "I2A272", 114, 117 },
      },
      {
        { "I2A273", 0, 3 },
        { "I2A274", 3, 6 },
        { "I2A275", 6, 9 },
        { "I2A276", 9, 12 },
        { "I2A277", 12, 15 },
        { "I2A278", 15, 18 },
        { "I2A279", 18, 21 },
        { "I2A280", 21, 24 },
        { "I2A281", 24, 27 },
        { "I2A282", 27, 30 },
        { "I2A283", 30, 33 },
        { "I2A284", 33, 36 },
        { "I2A285", 36, 39 },
        { "I2A286", 39, 42 },
        { "I2A287", 42, 45 },
        { "I2A288", 45, 48 },
        { "I2A289", 48, 51 },
        { "I2A290", 51, 54 },
        { "I2A291", 54, 57 },
        { "I2A292", 57, 60 },
        { "I2A293", 60, 63 },
        { "I2A294", 63, 66 },
        { "I2A295", 66, 69 },
        { "I2A296", 69, 72 },
        { "I2A297", 72, 75 },
        { "I2A298", 75, 78 },
        { "I2A299", 78, 81 },
        { "I2A300", 81, 84 },
        { "I2A301", 84, 87 },
        { "I2A302", 87, 90 },
        { "I2A303", 90, 93 },
        { "I2A304", 93, 96 },
        { "I2A305", 96, 99 },
        { "I2A306", 99, 102 },
        { "I2A307", 102, 105 },
        { "I2A308", 105, 108 },
        { "I2A309", 108, 111 },
        { "I2A310", 111, 114 },
        { "I2A311", 114, 117 },
      },
      {
        { "I2A312", 0, 3 },
        { "I2A313", 3, 6 },
        { "I2A314", 6, 9 },
        { "I2A315", 9, 12 },
        { "I2A316", 12, 15 },
        { "I2A317", 15, 18 },
        { "I2A318", 18, 21 },
        { "I2A319", 21, 24 },
        { "I2A320", 24, 27 },
        { "I2A321", 27, 30 },
        { "I2A322", 30, 33 },
        { "I2A323", 33, 36 },
        { "I2A324", 36, 39 },
        { "I2A325", 39, 42 },
        { "I2A326", 42, 45 },
        { "I2A327", 45, 48 },
        { "I2A328", 48, 51 },
        { "I2A329", 51, 54 },
        { "I2A330", 54, 57 },
        { "I2A331", 57, 60 },
        { "I2A332", 60, 63 },
        { "I2A333", 63, 66 },
        { "I2A334", 66, 69 },
        { "I2A335", 69, 72 },
        { "I2A336", 72, 75 },
        { "I2A337", 75, 78 },
        { "I2A338", 78, 81 },
        { "I2A339", 81, 84 },
        { "I2A340", 84, 87 },
        { "I2A341", 87, 90 },
        { "I2A342", 90, 93 },
        { "I2A343", 93, 96 },
        { "I2A344", 96, 99 },
        { "I2A345", 99, 102 },
        { "I2A346", 102, 105 },
        { "I2A347", 105, 108 },
        { "I2A348", 108, 111 },
        { "I2A349", 111, 114 },
        { "I2A350", 114, 117 },
      },
      {
        { "I2A351", 0, 3 },
        { "I2A352", 3, 6 },
        { "I2A353", 6, 9 },
        { "I2A354", 9, 12 },
        { "I2A355", 12, 15 },
        { "I2A356", 15, 18 },
        { "I2A357", 18, 21 },
        { "I2A358", 21, 24 },
        { "I2A359", 24, 27 },
        { "I2A360", 27, 30 },
        { "I2A361", 30, 33 },
        { "I2A361", 33, 36 },
        { "I2A362", 36, 39 },
        { "I2A363", 39, 42 },
        { "I2A364", 42, 45 },
        { "I2A365", 45, 48 },
        { "I2A366", 48, 51 },
        { "I2A367", 51, 54 },
        { "I2A368", 54, 57 },
        { "I2A369", 57, 60 },
        { "I2A370", 60, 63 },
        { "I2A371", 63, 66 },
        { "I2A372", 66, 69 },
        { "I2A373", 69, 72 },
        { "I2A374", 72, 75 },
        { "I2A375", 75, 78 },
        { "I2A376", 78, 81 },
        { "I2A377", 81, 84 },
        { "I2A378", 84, 87 },
        { "I2A379", 87, 90 },
        { "I2A380", 90, 93 },
        { "I2A381", 93, 96 },
        { "I2A382", 96, 99 },
        { "I2A383", 99, 102 },
        { "I2A384", 102, 105 },
        { "I2A385", 105, 108 },
        { "I2A386", 108, 111 },
        { "I2A387", 111, 114 },
        { "I2A388", 114, 117 },
      },
      {
        { "I2A389", 0, 3 },
        { "I2A390", 3, 6 },
        { "I2A391", 6, 9 },
        { "I2A392", 9, 12 },
        { "I2A393", 12, 15 },
        { "I2A394", 15, 18 },
        { "I2A395", 18, 21 },
        { "I2A396", 21, 24 },
        { "I2A397", 24, 27 },
        { "I2A398", 27, 30 },
        { "I2A399", 30, 33 },
        { "I2A400", 33, 36 },
        { "I2A401", 36, 39 },
        { "I2A402", 39, 42 },
        { "I2A403", 42, 45 },
        { "I2A404", 45, 48 },
        { "I2A405", 48, 51 },
        { "I2A406", 51, 54 },
        { "I2A407", 54, 57 },
        { "I2A408", 57, 60 },
        { "I2A409", 60, 63 },
        { "I2A410", 63, 66 },
        { "I2A411", 66, 69 },
        { "I2A412", 69, 72 },
        { "I2A413", 72, 75 },
        { "I2A414", 75, 78 },
        { "I2A414", 78, 81 },
        { "I2A415", 81, 84 },
        { "I2A416", 84, 87 },
        { "I2A417", 87, 90 },
        { "I2A418", 90, 93 },
        { "I2A419", 93, 96 },
        { "I2A420", 96, 99 },
        { "I2A421", 99, 102 },
        { "I2A422", 102, 105 },
        { "I2A423", 105, 108 },
        { "I2A424", 108, 111 },
        { "I2A425", 111, 114 },
        { "I2A426", 114, 117 },
      },
    }
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
