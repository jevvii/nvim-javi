# nvim-javi: High-Performance Lua-based Neovim Configuration

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Neovim](https://img.shields.io/badge/Neovim-0.10+-blueviolet.svg)](https://neovim.io/)
[![Lua](https://img.shields.io/badge/Lua-JIT-blue.svg)](https://www.lua.org/)

A minimalist, high-performance Neovim environment designed for developers who prioritize transparency, fluid movement, and a "centered" focus. Optimized for C++, Python, Lua, and Web development.

---

## 🖼️ Visual Demo
![Screenshot of nvim-javi showing a clean code buffer with Catppuccin transparency, floating status indicators, and an active file picker](https://via.placeholder.com/800x450.png?text=nvim-javi+Clean+UI+Demo)
*A look at the minimalist UI with transparent background and centered navigation.*

---

## 🌟 Key Highlights
- **Transparency-First Design**: Native Catppuccin transparency support for a seamless desktop experience.
- **Centered Workflow**: Navigation jumps and searches automatically center the screen to maintain focus.
- **Fluid Structural Editing**: "Lift/Grab" functionality to move code blocks intuitively without breaking indentation.
- **Zero-Bloat Performance**: Lazy-loaded plugins for near-instant startup times.

---

## ⚡ Quick Start (3-Step Install)

Ensure you have [Neovim 0.10+](https://github.com/neovim/neovim/releases) and a [Nerd Font](https://www.nerdfonts.com/) installed.

```bash
# 1. Backup current config
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null

# 2. Clone repository
git clone git@github.com:jevvii/nvim-javi.git ~/.config/nvim

# 3. Launch (Plugins & LSPs will auto-install)
nvim
```

---

## 🛠️ Features & Tech Stack

| Feature | Integration | Description |
| :--- | :--- | :--- |
| **LSP** | `nvim-lspconfig` + `Mason` | Robust language support (C++, Python, JS/TS, Lua, Arduino). |
| **Formatting** | `conform.nvim` | High-speed formatting on save for multiple languages. |
| **Search** | `telescope.nvim` | Advanced fuzzy finding and workspace-wide grep. |
| **Syntax** | `nvim-treesitter` | High-fidelity highlighting and intelligent indentation. |
| **UI** | `noice.nvim` + `incline` | Modern command-line and floating buffer indicators. |
| **AI** | `copilot.lua` | Integrated GitHub Copilot for intelligent code assistance. |

---

## ⌨️ Strategic Keybindings

### Global Operations
- `leader pf`: Fuzzy find files
- `leader gr`: Live grep through workspace
- `leader q`: Toggle minimalist file explorer
- `tab` / `S-tab`: Cycle through active buffers
- `sh / sj / sk / sl`: Fluid window navigation

### Pro-Editing & Movement
- **J (Visual)**: **Lift block down** with auto-indentation.
- **K (Visual)**: **Lift block up** with auto-indentation.
- **J (Normal)**: Join lines while **preserving cursor position**.
- **ctrl-d / ctrl-u**: Vertical scroll with **automatic centering**.
- **n / N**: Search result navigation with **automatic centering**.

---

## 📂 Repository Architecture

- `init.lua`: Main entry point and plugin bootstrapping.
- `after/plugin/`: Post-initialization highlights and UI behaviors (e.g., `colors.lua`).
- `lua/config/`: Core settings, standard options, and user keymaps (`remap.lua`).
- `lua/plugins/`: Individual plugin specifications and modular configurations.
- `lua/jdtls/`: Specialized Java development environment setup.

---

## 📋 System Requirements
- **OS**: Linux / macOS (Windows may require path adjustments).
- **Font**: Any [Nerd Font](https://www.nerdfonts.com/) for icons.
- **Tools**: `ripgrep`, `fd`, `gcc`, `make` (standard dev tools).

---

## 🤝 Contributing & License
Contributions are welcome! Please open an issue or submit a pull request for any enhancements.
This project is licensed under the **MIT License**.

*Maintained by [Javvii](https://github.com/jevvii)*
