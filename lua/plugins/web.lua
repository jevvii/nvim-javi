return {
	-- Emmet for fast HTML & CSS
	{
		"mattn/emmet-vim",
		ft = { "html", "css", "javascript", "typescriptreact", "javascriptreact" },
		config = function()
			vim.g.user_emmet_leader_key = "," -- Change this key if needed
		end,
	},

	-- Conform.nvim for formatting
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					html = { "prettier" },
					css = { "prettier" },
					javascript = { "prettier" },
					javascriptreact = { "prettier" },
					typescript = { "prettier" },
					typescriptreact = { "prettier" },
					lua = { "stylua" },
					python = { "isort", "black" },
					rust = { "rustfmt", lsp_format = "fallback" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
				formatters = {
					prettier = {
						prepend_args = { "--tab-width", "4" }, -- Set indent size to 4 spaces
					},
					stylua = {
						prepend_args = { "--indent-type", "Spaces", "--indent-width", "4" }, -- For Lua files
					},
				},
			})
		end,
	},

	--Live preview
	{
		"brianhuster/live-preview.nvim",
		config = function()
			require('livepreview.config').set({
				port = 5500,
				browser = 'default',
				dynamic_root = false,
				sync_scroll = true,
				picker = "telescope",
			})
		end,
	}
}
