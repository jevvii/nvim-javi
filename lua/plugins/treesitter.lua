return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
       config.setup({
            auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false, -- Avoid issues with both highlighting methods
            },
            indent = {
                enable = true,
            },
            ensure_installed = { "c", "cpp", "python", "lua", "html", "javascript" },  -- List parsers you want
        })
    end
}

