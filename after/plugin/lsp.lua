-- jdtls
--[[
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("java_lsp_group", {}),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client.name == "jdtls" then
			-- Optional: disable semantic highlights if you prefer
			client.server_capabilities.semanticTokensProvider = nil

			local opts = { buffer = args.buf }
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "gh", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gd", builtin.lsp_definitions, opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gi", builtin.lsp_implementations, opts)
			vim.keymap.set("n", "gr", builtin.lsp_references, opts)
			vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
			vim.keymap.set({ "n", "x" }, "=", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
			vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "g]", "<cmd>lua vim.diagnostic.jump({count=1, float=ture})<cr>", opts)
			vim.keymap.set("n", "g[", "<cmd>lua vim.diagnostic.jump({count=-1, float=ture})<cr>", opts)
		end
	end,
})
]]

vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function(args)
		require("jdtls.jdtls_setup").setup()
	end,
})
