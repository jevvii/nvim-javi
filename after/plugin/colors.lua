function ColorKorol()
    vim.opt.termguicolors = true

    -- Ask Caelestia for current mode
    local handle = io.popen("caelestia scheme get | grep 'Mode:' | awk '{print $2}'")
    local mode = handle:read("*a"):gsub("%s+", "")
    handle:close()

    if mode == "dark" then
        vim.opt.background = "dark"
        vim.cmd.colorscheme("oxocarbon") -- your dark theme
    else
        vim.opt.background = "light"
        vim.cmd.colorscheme("oxocarbon") -- your light theme
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

    -- Make line numbers and gutter transparent
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLineSign", { bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLineFold", { bg = "none" })

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

    -- Transparent Telescope (code actions, ui-select, etc.)
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })

    -- Transparent floating windows (code action floats, hover, etc.)
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatFooter", { bg = "none" })

    -- Transparent popup menu (native completion, some UI selects)
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "none" })
    vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "none" })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "none" })

    -- Transparent noice popups (cmdline, notifications)
    vim.api.nvim_set_hl(0, "NoicePopup", { bg = "none" })
    vim.api.nvim_set_hl(0, "NoicePopupBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NoicePopupmenu", { bg = "none" })
    vim.api.nvim_set_hl(0, "NoicePopupmenuBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = "none" })
    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NoiceConfirm", { bg = "none" })
    vim.api.nvim_set_hl(0, "NoiceConfirmBorder", { bg = "none" })

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
        -- Re-apply transparent line numbers and gutter on scheme change
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
        vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
        vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLineSign", { bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLineFold", { bg = "none" })
        -- Re-apply transparent Telescope / floats / popups
        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
        vim.api.nvim_set_hl(0, "FloatFooter", { bg = "none" })
        vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
        vim.api.nvim_set_hl(0, "PmenuSel", { bg = "none" })
        vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "none" })
        vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoicePopup", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoicePopupBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoicePopupmenu", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoicePopupmenuBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoiceConfirm", { bg = "none" })
        vim.api.nvim_set_hl(0, "NoiceConfirmBorder", { bg = "none" })
    end,
})

-- Reset cursor shape on exit for terminals like foot
vim.api.nvim_create_autocmd("VimLeave", {
    callback = function()
        vim.opt.guicursor = "a:block-blinkon0"
    end,
})
