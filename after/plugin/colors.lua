function ColorKorol()
    vim.opt.termguicolors = true

    -- Ask Caelestia for current mode
    local handle = io.popen("caelestia scheme get | grep 'Mode:' | awk '{print $2}'")
    local mode = handle:read("*a"):gsub("%s+", "")
    handle:close()

    if mode == "dark" then
        vim.opt.background = "dark"
        vim.cmd.colorscheme("catppuccin-mocha") -- your dark theme
    else
        vim.opt.background = "light"
        vim.cmd.colorscheme("catppuccin-mocha") -- your light theme
    end

    -- Diagnostic highlights
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = false, fg = "#FF0000", bg = "#3B0000" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = false, fg = "#FFA500", bg = "#3B2A00" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = false, fg = "#00FFFF", bg = "#002A2A" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = false, fg = "#00FF00", bg = "#002A00" })

    -- Extra: keep floats transparent
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- Make NvimTree transparent
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "none" })
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    vim.api.nvim_set_hl(0, "InclineNormal", { fg = normal.fg, bg = "none" })
    vim.api.nvim_set_hl(0, "InclineNormalNC", { fg = normal.fg, bg = "none" })
    -- Transparent Bufferline
    vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineTab", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineTabSelected", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineTabClose", { bg = "none" })
    -- Transparent Bufferline fill
    vim.api.nvim_set_hl(0, "BufferLineFill", { fg = "none", bg = "none" })

    -- Transparent statusline
    vim.api.nvim_set_hl(0, "StatusLine", { fg = "none", bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "none", bg = "none" }) -- for inactive windows

    -- Ensure cursor is visible
    vim.api.nvim_set_hl(0, "Cursor", { reverse = true })
    vim.api.nvim_set_hl(0, "lCursor", { reverse = true })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2a2a" }) -- Give it a subtle background
end

-- Run once on startup
ColorKorol()

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
        vim.api.nvim_set_hl(0, "InclineNormal", { fg = normal.fg, bg = "none" })
        vim.api.nvim_set_hl(0, "InclineNormalNC", { fg = normal.fg, bg = "none" })
        vim.api.nvim_set_hl(0, "BufferLineFill", { fg = "none", bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLine", { fg = "none", bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "none", bg = "none" })
        vim.api.nvim_set_hl(0, "Cursor", { reverse = true })
        vim.api.nvim_set_hl(0, "lCursor", { reverse = true })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2a2a" })
    end,
})

-- Reset cursor shape on exit for terminals like foot
vim.api.nvim_create_autocmd("VimLeave", {
    callback = function()
        vim.opt.guicursor = "a:block-blinkon0"
    end,
})
