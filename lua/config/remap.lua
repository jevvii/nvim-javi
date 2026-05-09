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
keymap.set("n", "<leader>m", ":wa!<Return>", opts)

--NvimTree
keymap.set("n", "<leader>q", ":NvimTreeToggle<Return>", opts)
keymap.set("n", "<leader>a", ":NvimTreeFindFile<Return>", opts)

--Live Preview
keymap.set("n", "<leader>l", function()
    local filepath = vim.api.nvim_buf_get_name(0)
    if filepath == "" then
        vim.notify("live-preview: no file in current buffer", vim.log.levels.WARN)
        return
    end
    vim.cmd("LivePreview start " .. vim.fn.fnameescape(filepath))
end, opts)
keymap.set("n", "<leader>;", function()
    vim.cmd("LivePreview close")
end, opts)

keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)
keymap.set("n", "tw", ":bd<CR>", opts)

keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Window Splits
keymap.set("n", "<leader>v", ":vsplit<Return>", opts)
keymap.set("n", "<leader>h", ":split<Return>", opts)

keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

keymap.set("n", "<C-j>", function()
    vim.diagnostic.goto_next()
end, opts)

-- Copilot
vim.keymap.set("n", "<leader>cp", ":Copilot toggle<CR>", { desc = "Toggle Copilot" })
vim.keymap.set("n", "<leader>cs", ":Copilot status<CR>", { desc = "Copilot status" })

-- Move highlighted lines (Lift/Grab)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Stay in visual mode after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Keep cursor in place when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep screen centered when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
