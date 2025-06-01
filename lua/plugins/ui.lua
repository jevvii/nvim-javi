return {
	{
		"nvimdev/dashboard-nvim",
		enabled = false,
	},
	{
		"nvim-lualine/lualine.nvim",
		enabled = false,
	},
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			opts.routes = opts.routes or {}

			table.insert(opts.routes, {
				filter = {
					event = "notify",
					find = "no information available",
				},
				opts = { skip = true },
			})
			local focused = true
			vim.api.nvim_create_autocmd("FocusGained", {
				callback = function()
					focused = true
				end,
			})
			vim.api.nvim_create_autocmd("FocusLost", {
				callback = function()
					focused = false
				end,
			})
			table.insert(opts.routes, 1, {
				filter = {
					cond = function()
						return not focused
					end,
				},
				view = "notify_send",
				opts = { stop = false },
			})

			opts.commands = {
				all = {
					view = "split",
					opts = { enter = true, format = "details" },
					filter = {},
				},
			}

			opts.presets = opts.presets or {}
			opts.presets.lsp_doc_border = true
			opts.presets = opts.presets or {}
			opts.presets.lsp_doc_border = true

			local is_recording = false

			vim.api.nvim_create_autocmd("RecordingEnter", {
				callback = function()
					if not is_recording then
						is_recording = true
						require("noice").notify("Recording macro @" .. vim.fn.reg_recording(), "info",
							{ timeout = 1000 })
					end
				end,
			})

			vim.api.nvim_create_autocmd("RecordingLeave", {
				callback = function()
					if is_recording then
						is_recording = false
						require("noice").notify("Macro recording stopped", "info", { timeout = 1000 })
					end
				end,
			})
		end,
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 5000,
			background_colour = "#000000",
			render = "wrapped-compact",
		},
	},
	{
		{
			"akinsho/bufferline.nvim",
			version = "*",
			event = "VeryLazy",
			dependencies = { "nvim-tree/nvim-web-devicons" },
			keys = {
				{ "<Tab>",   "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
				{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
			},
			config = function()
				require("bufferline").setup({
					options = {
						mode = "buffers", -- can be "tabs" or "buffers"
						numbers = "ordinal", -- or "none", "buffer_id", "both"
						close_command = "bdelete! %d",
						right_mouse_command = "bdelete! %d",
						left_mouse_command = "buffer %d",
						middle_mouse_command = nil,
						indicator = {
							icon = '▎', -- this should be a unicode character
							style = 'icon', -- 'icon' | 'underline' | 'none'
						},
						buffer_close_icon = '',
						modified_icon = '●',
						close_icon = '',
						show_close_icon = true,
						show_tab_indicators = true,
						diagnostics = "nvim_lsp",
						diagnostics_update_in_insert = false,
						offsets = {
							{
								filetype = "NvimTree",
								text = "File Explorer",
								highlight = "Directory",
								text_align = "left",
							}
						},
						show_buffer_icons = true,
						show_buffer_close_icons = true,
						persist_buffer_sort = true,
						separator_style = "thin", -- "slant" | "thick" | "thin" | { 'left', 'right' }
						enforce_regular_tabs = false,
						always_show_bufferline = true,
					},
				})
			end,
		} },
	opts = {
		options = {
			mode = "tab",
			show_buffer_close_icons = false,
			show_close_icon = false,
		},
	},
	{
		"b0o/incline.nvim",
		dependencies = {},
		event = "BufReadPre",
		priority = 1200,
		config = function()
			local helpers = require("incline.helpers")
			require("incline").setup({
				window = {
					padding = 0,
					margin = { horizontal = 0 },
				},
				render = function(props)
					local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
					local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
					local modified = vim.bo[props.buf].modified
					local buffer = {
						ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) },
						" ",
						{ filename, gui = modified and "bold,italic" or "bold" },
						" ",
						guibg = "#363944",
					}
					return buffer
				end,
			})
		end,
	},
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{
				";c",
				":LazyGit<Return>",
				silent = true,
				noremap = true,
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
}
