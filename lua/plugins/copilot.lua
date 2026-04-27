return {
    {
        "zbirenbaum/copilot.lua",
        lazy = false,
        cmd = "Copilot",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
            require("copilot.client").ensure_client_started()
        end,
    },
    {
        "zbirenbaum/copilot-cmp",
        dependencies = { "zbirenbaum/copilot.lua", "hrsh7th/nvim-cmp" },
        config = function()
            require("copilot_cmp").setup()
        end,
    },
}
