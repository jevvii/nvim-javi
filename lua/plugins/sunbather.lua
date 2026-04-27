return {
    "nikolvs/vim-sunbather",
    lazy = false,
    priority = 1000,
    config = function()
        -- Load the colorscheme
        vim.cmd([[colorscheme sunbather]])

        -- Define a soft pastel green for folder names
        local pastel_green = "#A3D9A5" -- minty and soft; tweak if needed

        -- Override NvimTree folder highlights
        vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = pastel_green })
        vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = pastel_green, bold = true })
        vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = pastel_green })
        vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = pastel_green, bold = true })
        vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = pastel_green })
        vim.api.nvim_set_hl(0, "Directory", { fg = pastel_green })
    end,
}
