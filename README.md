# 🚀 Neovim Config: Minimal, Fast, Aesthetic

A modern Neovim configuration focused on speed, transparency, and a seamless developer experience. Built with a focus on a clean UI and intuitive movement.

---

## ✨ Features

- **🎨 Themes:** Beautiful **Catppuccin** integration with native transparency support.
- **⚡ Fast Performance:** Plugin management via **lazy.nvim** for near-instant startup.
- **👁️ Clean UI:**
    - **Noice.nvim** for a modern cmdline and notification experience.
    - **Bufferline** for elegant tab/buffer management.
    - **Incline.nvim** for floating status indicators.
    - **Nvim-Tree** for efficient file exploration.
- **🛠️ Development Power:**
    - **LSP & Mason:** Easy management of language servers.
    - **Conform.nvim:** Fast, reliable formatting on save.
    - **Treesitter:** Superior syntax highlighting and indentation.
    - **Telescope:** Powerful fuzzy finding and navigation.
    - **Copilot:** AI-powered completion ready to go.

---

## ⌨️ Keybindings (Pro Productivity)

### 📦 Movement & Editing
| Shortcut | Action |
| :--- | :--- |
| `<leader>pf` | Find files with Telescope |
| `<leader>gr` | Live Grep across project |
| `J` (Visual) | **Lift/Grab:** Move highlighted block DOWN |
| `K` (Visual) | **Lift/Grab:** Move highlighted block UP |
| `J` (Normal) | Join lines while keeping cursor in place |
| `<C-d>` / `<C-u>` | Scroll down/up and keep screen centered |
| `n` / `N` | Jump to next/prev search result and center screen |
| `>` / `<` | Indent/Unindent while staying in visual selection |

### 📂 Navigation
| Shortcut | Action |
| :--- | :--- |
| `<leader>q` | Toggle Nvim-Tree Explorer |
| `<Tab>` | Cycle to next buffer |
| `<S-Tab>` | Cycle to previous buffer |
| `sh/sj/sk/sl` | Move between splits (h, j, k, l) |
| `<leader>w` | Save all buffers |

---

## 🛠️ Installation

### 1. Backup Existing Config
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

### 2. Clone Repository
```bash
git clone https://github.com/jevvii/nvim-javi ~/.config/nvim
```

### 3. Launch & Auto-Install
```bash
nvim
```
*Plugins and LSPs will install automatically on the first run.*

---

## 📋 Dependencies

- **Neovim v0.10+** (v0.12+ recommended)
- **Nerd Fonts** (required for icons)
- **External Tools:** `ripgrep`, `fd`, `git`, `make`, `gcc` (for treesitter/telescope)

---

## 🌸 Troubleshooting

- **Missing Icons?** Ensure you are using a [Nerd Font](https://www.nerdfonts.com/).
- **Cursor Issues?** The config includes a `VimLeave` reset. Ensure your terminal supports cursor shape escape codes.
- **Formatting not working?** Run `:checkhealth conform` to ensure formatters like `prettier` or `stylua` are installed via Mason or your system.

---

**License:** MIT | **Maintained by:** [Javvii](https://github.com/jevvii)
