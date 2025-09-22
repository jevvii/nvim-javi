Nvim Config

A minimal and modern Neovim configuration powered by lazy.nvim
, featuring the Rosebones colorscheme from zenbones
.

✨ Features

🌸 Beautiful Rosebones colorscheme from zenbones

⚡ Fast and lightweight setup with lazy.nvim

📂 Organized configuration structure for easy customization

🔧 Ready-to-use Neovim environment out of the box

📦 Dependencies

Neovim
v0.8+

lazy.nvim
(installed automatically)

⚠️ Some plugins may require external tools depending on your extensions (e.g., ripgrep, fd, LSP servers).

🚀 Installation

Backup your existing config (if any):

mv ~/.config/nvim ~/.config/nvim.bak

Clone this repository into your Neovim config directory:

git clone https://github.com/<your-username>/nvim-config.git ~/.config/nvim

Launch Neovim, and lazy.nvim will handle the rest:

nvim

🎨 Colorscheme

This config uses Rosebones from the zenbones
collection.
To switch to another theme, update the colorscheme setting in your config files.

🛠️ Usage

Open Neovim:

nvim

Plugins will sync automatically via lazy.nvim.

Customize your configuration in ~/.config/nvim/lua/.

🐛 Troubleshooting

Plugins not installing? Run :Lazy sync inside Neovim.

Colors not applying? Make sure your terminal supports true colors (set termguicolors).

Conflicts with old config? Delete or move any existing Neovim config before cloning.

📜 License

This configuration is open-source under the MIT License.
