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
			local has = function(bin)
				return vim.fn.executable(bin) == 1
			end

			local python_formatters = {}
			if has("isort") then
				table.insert(python_formatters, "isort")
			end
			if has("black") then
				table.insert(python_formatters, "black")
			end

			local rust_formatters = {}
			if has("rustfmt") then
				table.insert(rust_formatters, "rustfmt")
			end

			require("conform").setup({
				formatters_by_ft = {
					html = { "prettier" },
					css = { "prettier" },
					javascript = { "prettier" },
					javascriptreact = { "prettier" },
					typescript = { "prettier" },
					typescriptreact = { "prettier" },
					lua = { "stylua" },
					python = python_formatters,
					rust = rust_formatters,
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
			local browser = "default"
			local pid_port = 15000 + (vim.uv.os_getpid() % 20000)
			if vim.fn.executable("xdg-open") == 1 then
				browser = "xdg-open"
			end

			local ok, server = pcall(require, "livepreview.server")
			if ok and server and server.Server and not server._no_block_patch then
				local original_start = server.Server.start
				server.Server.start = function(self, ip, port, opts)
					local original_uv_run = vim.uv.run
					vim.uv.run = function()
						return false
					end
					local started, result = pcall(original_start, self, ip, port, opts)
					vim.uv.run = original_uv_run
					if not started then
						error(result)
					end
					return result
				end
				server._no_block_patch = true
			end

			require('livepreview.config').set({
				port = pid_port,
				browser = browser,
				dynamic_root = true,
				sync_scroll = true,
				picker = "telescope",
			})
		end,
	}
}
