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
		line_hl = { -- new
			["Error"] = "#000000",
			["Info"] = "#000000",
		}
	},
	signs = true,      -- Show signs in the gutter
	severity_sort = true, -- Sort diagnostics by severity

})

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "emmet_ls", "lua_ls", "ts_ls", "pylyzer", "pylsp", "clangd" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
				cmd = { "clangd", "--background-index" },
				root_dir = function(fname)
					-- Ensure it finds compile_commands.json
					return lspconfig.util.root_pattern("compile_commands.json", ".git")(fname)
				end,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.emmet_ls.setup({
				capabilities = capabilities,
				filetypes = {
					"html",
					"css",
					"javascript",
					"javascriptreact",
					"typescriptreact",
					"svelte",
					"vue",
					"astro",
				},
				init_options = {
					html = {
						options = {
							["bem.enabled"] = true, -- Optional: enable BEM-style class suggestions
						},
					},
				},
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end
	}
}
