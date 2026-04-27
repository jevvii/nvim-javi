# nvim-javi
*A minimalist, high-performance Neovim environment designed for transparency and fluid movement.*

---

## Design Philosophy
This configuration is built for developers who prioritize a clean workspace without sacrificing modern power. It leverages Neovim's native capabilities alongside a curated selection of tools to provide a responsive, aesthetically consistent environment.

### Core Components
- **Interface**: Transparent Catppuccin integration with floating status indicators (Incline) and a modern command-line (Noice).
- **Navigation**: Intelligent fuzzy finding via Telescope and a minimalist tree explorer.
- **Development**: Native LSP management, high-performance formatting via Conform, and AI-assisted completion with Copilot.
- **Productivity**: Specialized movement keybindings designed for a "centered" focus.

---

## Strategic Keybindings

### Global Operations
| Mapping | Description |
| :--- | :--- |
| `leader pf` | Fuzzy find files |
| `leader gr` | Live grep through workspace |
| `leader q` | Toggle file explorer |
| `tab` / `S-tab` | Cycle through active buffers |
| `sh / sj / sk / sl` | Navigate split windows |

### Structural Editing
| Mapping | Description |
| :--- | :--- |
| `J` (Visual) | **Lift**: Move selected block down (auto-indent) |
| `K` (Visual) | **Lift**: Move selected block up (auto-indent) |
| `>` / `<` (Visual) | Persistent indentation (keeps selection) |
| `J` (Normal) | In-place line joining (preserves cursor position) |

### Focused Navigation
| Mapping | Description |
| :--- | :--- |
| `ctrl-d` / `ctrl-u` | Vertical scroll with screen centering |
| `n` / `N` | Search navigation with screen centering |

---

## Quick Installation

```bash
# 1. Prepare environment
mv ~/.config/nvim ~/.config/nvim.bak

# 2. Deploy configuration
git clone git@github.com:jevvii/nvim-javi.git ~/.config/nvim

# 3. Initialize
nvim
```
*Plugins and language servers will bootstrap automatically upon first launch.*

---

## Technical Requirements
- **Neovim 0.10+** (0.12 recommended)
- **Nerd Font** (e.g., JetBrainsMono, Iosevka)
- **System Dependencies**: `ripgrep`, `fd`, `gcc`, `make`

---

*MIT License | [Javvii](https://github.com/jevvii)*
