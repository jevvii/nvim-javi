return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local sources = {
            -- null_ls.builtins.formatting.stylua, -- Handled by conform.nvim
            -- null_ls.builtins.formatting.prettier, -- Handled by conform.nvim
            null_ls.builtins.formatting.clang_format,
        }

        -- Formatting for these is also in conform.nvim, but keeping here as backup or if conform fails
        -- Actually, it's better to avoid duplication.
        
        if vim.fn.executable("rubocop") == 1 then
            table.insert(sources, null_ls.builtins.diagnostics.rubocop)
            -- table.insert(sources, null_ls.builtins.formatting.rubocop) -- Move to conform or keep here?
        end

        null_ls.setup({
            sources = sources,
        })
        -- vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- Conform has its own format on save or we can use lsp.buf.format
    end,
}
