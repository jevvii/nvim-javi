#Nvim Config: Simple, Fast, Beautiful
Get a delightful Neovim experience with this minimal and modern configuration, built to be both fast and a joy to use.

# 🌸 What's Inside?

### A Splash of Color: The beautiful Rosebones colorscheme from the Zenbones collection to make your code pop.

### Speed is Key: A super lightweight setup with lazy.nvim handling all your plugins with incredible speed.

### No Clutter: An organized configuration structure that's simple to navigate and customize.

### Zero-fuss Setup: A ready-to-use environment that gets you editing in seconds.

## Dependencies

Neovim v0.8+

lazy.nvim (installed automatically)

> **Note: Some plugins may require external tools like ripgrep, fd, or LSP servers.**

## Installation

### Backup: If you have an existing Neovim config, back it up first:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

### Clone: Clone this repository into your Neovim config directory:

```bash
git clone https://github.com/<your-username>/nvim-config.git ~/.config/nvim
```

### Launch: Open Neovim, and lazy.nvim will handle the rest:

```bash
nvim
```

## Usage

Simply launch Neovim with nvim. Plugins will be synced automatically.

> **Customize your configuration in the ~/.config/nvim/lua/ directory.**

## Troubleshooting

Plugins not installing? Run :Lazy sync inside Neovim.

Colors not applying? Ensure your terminal supports true colors by setting termguicolors.

Conflicts with old config? Make sure you've deleted or moved any existing Neovim config before cloning this one.

#License
This configuration is open-source under the MIT License.
