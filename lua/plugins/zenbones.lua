return {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },     -- Required dependency for zenbones.nvim
    config = function()
        vim.opt.termguicolors = true
        vim.opt.background = "dark"
        vim.cmd("colorscheme rosebones")
    end
}
