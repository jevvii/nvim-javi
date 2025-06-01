--Keymaps
--#region
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "<leader>w", ":wa<Return>", opts)
keymap.set("n", "<leader>c", ":quit<Return>", opts)
keymap.set("n", "<leader>s", ":wqa<Return>", opts)
keymap.set("n", "<leader>hc", ":qa!<Return>", opts)

--NvimTree
keymap.set("n", "<leader>q", ":NvimTreeToggle<Return>", opts)
keymap.set("n", "<leader>a", ":NvimTreeFindFile<Return>", opts)

--Live Preview
keymap.set("n", "<leader>l", ":LivePreview start<Return>", opts)
keymap.set("n", "<leader>;", ":LivePreview close<Return>", opts)


keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)
