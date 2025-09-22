function ColorKorol(color)
    vim.opt.termguicolors = true
    vim.opt.background = "dark"
    color = color or "rosebones"
    vim.cmd.colorscheme(color)
    vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = false, fg = "#FF0000", bg = "#3B0000" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = false, fg = "#FFA500", bg = "#3B2A00" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = false, fg = "#00FFFF", bg = "#002A2A" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = false, fg = "#00FF00", bg = "#002A00" })
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorKorol()
