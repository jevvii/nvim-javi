--[[
--vim.diagnostic.config({
    virtual_text = true,  -- Show inline diagnostic messages
    signs = true,         -- Show signs in the gutter
    update_in_insert = true, -- Update diagnostics while in insert mode
    underline = false,    -- Underline problematic text
    severity_sort = true, -- Sort diagnostics by severity
})
--]]
vim.diagnostic.config({
    virtual_text = {
        line_hl = {
            ["Error"] = "#000000",
            ["Info"] = "#000000",
        },
    },
    signs = true,
    severity_sort = true,
})

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            automatic_enable = false,
        },
    },
    {
        "mfussenegger/nvim-jdtls",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            local function get_fqbn()
                local handle = io.popen("arduino-fqbn")
                if not handle then
                    return "arduino:avr:uno"
                end
                local result = handle:read("*a")
                handle:close()
                return (result:gsub("%s+", ""))
            end

            -- Standard setup function
            local function setup(server, opts)
                lspconfig[server].setup(vim.tbl_deep_extend("force", {
                    capabilities = capabilities,
                }, opts or {}))
            end

            setup("lua_ls")
            setup("ts_ls", {
                filetypes = {
                    "javascript",
                    "javascriptreact",
                    "typescript",
                    "typescriptreact",
                },
            })
            setup("pylsp", {
                settings = {
                    pylsp = {
                        plugins = {
                            autopep8 = { enabled = true },
                            yapf = { enabled = false },
                            black = { enabled = false },
                        },
                    },
                },
            })
            setup("pyright")
            setup("clangd", {
                cmd = { "clangd", "--background-index" },
                root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
            })
            setup("arduino_language_server", {
                cmd = {
                    "arduino-language-server",
                    "-cli-config",
                    "/home/javvii/.arduino15/arduino-cli.yaml",
                    "-cli",
                    "/usr/bin/arduino-cli",
                    "-clangd",
                    "/usr/bin/clangd",
                    "-fqbn",
                    get_fqbn(),
                },
                filetypes = { "arduino" },
                root_dir = lspconfig.util.root_pattern(".git"),
            })
            setup("html")

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
