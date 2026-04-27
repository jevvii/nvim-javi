vim.diagnostic.config({
    virtual_text = {
        line_hl = {
            [vim.diagnostic.severity.ERROR] = "DiagnosticVirtualTextError",
            [vim.diagnostic.severity.INFO] = "DiagnosticVirtualTextInfo",
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

            local function get_fqbn()
                local handle = io.popen("arduino-fqbn")
                if not handle then
                    return "arduino:avr:uno"
                end
                local result = handle:read("*a")
                handle:close()
                return (result:gsub("%s+", ""))
            end

            -- Configure servers using vim.lsp.config (Neovim 0.11+)
            -- lspconfig[server].setup() is deprecated and will be removed in v3.0.0
            vim.lsp.config["lua_ls"] = {
                cmd = { "lua-language-server" },
                capabilities = capabilities,
            }

            vim.lsp.config["ts_ls"] = {
                cmd = { "typescript-language-server", "--stdio" },
                capabilities = capabilities,
                filetypes = {
                    "javascript",
                    "javascriptreact",
                    "typescript",
                    "typescriptreact",
                },
            }

            vim.lsp.config["pylsp"] = {
                cmd = { "pylsp" },
                capabilities = capabilities,
                settings = {
                    pylsp = {
                        plugins = {
                            autopep8 = { enabled = true },
                            yapf = { enabled = false },
                            black = { enabled = false },
                        },
                    },
                },
            }

            vim.lsp.config["pyright"] = {
                cmd = { "pyright-langserver", "--stdio" },
                capabilities = capabilities,
            }

            vim.lsp.config["clangd"] = {
                cmd = { "clangd", "--background-index" },
                capabilities = capabilities,
                root_markers = { "compile_commands.json", ".git" },
            }

            vim.lsp.config["arduino_language_server"] = {
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
                capabilities = capabilities,
                filetypes = { "arduino" },
                root_markers = { ".git" },
            }

            vim.lsp.config["html"] = {
                cmd = { "vscode-html-language-server", "--stdio" },
                capabilities = capabilities,
                filetypes = { "html", "htmldjango" },
            }

            -- Enable all configured servers
            vim.lsp.enable({
                "lua_ls",
                "ts_ls",
                "pylsp",
                "pyright",
                "clangd",
                "arduino_language_server",
                "html",
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
