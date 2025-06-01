--[[return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",  -- Ensure devicons are listed here
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,  -- Show dotfiles if you want
                },
            },
        })
        vim.keymap.set("n", "<leader>q", ":Neotree filesystem reveal left<CR>", {})
    end
}--]]

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            on_attach = function(bufnr)
                local api = require("nvim-tree.api")

                local function opts(desc)
                    return {
                        desc = "nvim-tree: " .. desc,
                        buffer = bufnr,
                        noremap = true,
                        silent = true,
                        nowait = true,
                    }
                end

                api.config.mappings.default_on_attach(bufnr)

                vim.keymap.set("n", "t", api.node.open.tab, opts("Tab"))
            end,
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
                relativenumber = true,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
                custom = {
                    "node_modules/.*",
                },
            },
            log = {
                enable = true,
                truncate = true,
                types = {
                    diagnostics = true,
                    git = true,
                    profile = true,
                    watcher = true,
                },
            },
        })
        require("nvim-web-devicons").set_icon({
            lua = { icon = "", color = "#d3869b", cterm_color = "204", name = "Lua" },
            json = { icon = "", color = "#d3869b", cterm_color = "204", name = "Json" },
            c = { icon = "", color = "#d3869b", cterm_color = "204", name = "C" },
            h = { icon = "", color = "#d3869b", cterm_color = "204", name = "H" },
            py = { icon = "", color = "#d3869b", cterm_color = "204", name = "Python" },
            md = { icon = "", color = "#d3869b", cterm_color = "204", name = "Markdown" },
            cpp = { icon = "", color = "#d3869b", cterm_color = "204", name = "Cpp" },
            java = { icon = "", color = "#d3869b", cterm_color = "204", name = "Java" },
            js = { icon = "", color = "#d3869b", cterm_color = "204", name = "JavaScript" },
            ts = { icon = "", color = "#d3869b", cterm_color = "204", name = "TypeScript" },
            html = { icon = "", color = "#d3869b", cterm_color = "204", name = "Html" },
            css = { icon = "", color = "#d3869b", cterm_color = "204", name = "Css" },
            config = { icon = "", color = "#d3869b", cterm_color = "204", name = "Config" }, -- Generic config icon
            sql = { icon = "", color = "#d3869b", cterm_color = "204", name = "Sql" },
            [""] = { icon = "", color = "#d3869b", cterm_color = "204", name = "Executable" },
        })

        vim.api.nvim_create_autocmd("User", {
            pattern = "AlphaReady",
            callback = function()
                require("nvim-tree.api").tree.open()
            end,
        })
    end,
}
