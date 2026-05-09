# Neovim Keybindings Cheat Sheet

> Leader key: `<Space>` (Spacebar)
> Source: `lua/config/remap.lua`, `lua/plugins/*.lua`

---

## General

| Key | Mode | Action |
|-----|------|--------|
| `<Space>` | — | **Leader key** |
| `<leader>pv` | n | Open file explorer (`:Ex`) |
| `x` | n | Delete char (no yank) |
| `+` | n | Increment number (`<C-a>`) |
| `-` | n | Decrement number (`<C-x>`) |
| `<C-a>` | n | Select all (`gg<S-v>G`) |
| `J` | n | Join lines, keep cursor position |
| `<C-d>` | n | Scroll half-page down + center |
| `<C-u>` | n | Scroll half-page up + center |
| `n` | n | Next search result + center |
| `N` | n | Previous search result + center |

---

## Buffer / Window Management

| Key | Mode | Action |
|-----|------|--------|
| `<leader>w` | n | Write all (`:wa`) |
| `<leader>c` | n | Quit current window |
| `<leader>s` | n | Write all & quit all (`:wqa`) |
| `<leader>hc` | n | Force quit all (`:qa!`) |
| `<leader>v` | n | Vertical split (`:vsplit`) |
| `<leader>h` | n | Horizontal split (`:split`) |
| `<leader>m` | n | Write all force (`:wa!`) |
| `tw` | n | Close buffer (`:bd`) |
| `te` | n | New tab (`:tabedit`) |
| `<Tab>` | n | Next tab |
| `<S-Tab>` | n | Previous tab |
| `sh` | n | Move to left split |
| `sj` | n | Move to down split |
| `sk` | n | Move to up split |
| `sl` | n | Move to right split |
| `<C-S-h>` | n | Shrink split width |
| `<C-S-l>` | n | Grow split width |
| `<C-S-k>` | n | Grow split height |
| `<C-S-j>` | n | Shrink split height |

---

## File Explorer (NvimTree)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>q` | n | Toggle NvimTree |
| `<leader>a` | n | Find current file in NvimTree |
| `t` | n (tree) | Open file in new tab |
| `a` | n (tree) | Create new file/folder |
| `d` | n (tree) | Delete file/folder |
| `r` | n (tree) | Rename file/folder |
| `y` | n (tree) | Copy file name |
| `Y` | n (tree) | Copy relative path |
| `gy` | n (tree) | Copy absolute path |
| `o` / `<CR>` | n (tree) | Open file |
| `x` | n (tree) | Cut file |
| `c` | n (tree) | Copy file |
| `p` | n (tree) | Paste file |
| `q` | n (tree) | Close tree |
| `g?` | n (tree) | Show help |

---

## Telescope

| Key | Mode | Action |
|-----|------|--------|
| `<leader>pf` | n | **Find files** |
| `<leader>gr` | n | **Live grep** (search text across project) |

**Inside Telescope:**
| Key | Action |
|-----|--------|
| `<C-n>` / `<C-p>` | Move down/up |
| `<C-c>` | Close |
| `<CR>` | Open selected |
| `<C-x>` | Open in split |
| `<C-v>` | Open in vsplit |
| `<C-t>` | Open in tab |
| `<Tab>` | Toggle selection + next |
| `<S-Tab>` | Toggle selection + prev |

---

## LSP (Language Server)

| Key | Mode | Action |
|-----|------|--------|
| `K` | n | Hover documentation |
| `gd` | n | Go to definition |
| `<leader>ca` | n, v | Code actions (fixes, imports, etc.) |
| `<C-j>` | n | Jump to next diagnostic |

**Diagnostics:**
- Shown inline with `virtual_text`
- Signs in gutter
- Sorted by severity

---

## Git (Gitsigns + LazyGit)

### Gitsigns (Inline)
| Key | Mode | Action |
|-----|------|--------|
| `]c` | n | Next git hunk |
| `[c` | n | Previous git hunk |
| `<leader>pr` | n | Preview hunk diff |
| `<leader>bl` | n | Toggle blame line |

### LazyGit (Full TUI)
| Key | Mode | Action |
|-----|------|--------|
| `;c` | n | Open **LazyGit** |

#### How to Use LazyGit

LazyGit is a terminal UI for git. Once inside (`;c`):

| Key | Pane | Action |
|-----|------|--------|
| `?` | Any | Show help |
| `q` | Any | Quit LazyGit |
| `j` / `k` | Any | Navigate up/down |
| `h` / `l` | Any | Switch panes left/right |
| `space` | Files | Stage/unstage file/hunk |
| `a` | Files | Stage all |
| `D` | Files | Discard changes |
| `c` | Files | Commit (opens commit message editor) |
| `C` | Files | Commit with pre-filled message |
| `P` | Files | Push |
| `p` | Files | Pull |
| `b` | Branches | View branches |
| `n` | Branches | New branch |
| `d` | Branches | Delete branch |
| `M` | Branches | Merge into current |
| `o` | Any | Open in browser (GitHub) |
| `e` | Files | Edit file in nvim |
| `v` | Files | View diff in nvim |
| `enter` | Files | Open file |
| `s` | Files | View stash options |
| `r` | Branches | Rebase |

**Common LazyGit workflow:**
1. `;c` — open LazyGit
2. `j/k` — navigate to changed files
3. `space` — stage hunks/files
4. `c` — type commit message, `<C-s>` to confirm
5. `P` — push
6. `q` — exit back to nvim

---

## Live Preview (HTML)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>l` | n | Start Live Preview of current file |
| `<leader>;` | n | Stop Live Preview |

- Opens in your default browser (`xdg-open`)
- Scroll sync enabled
- Auto-refreshes on file changes

---

## Bufferline (Tab Bar)

| Key | Mode | Action |
|-----|------|--------|
| `<Tab>` | n | Next buffer |
| `<S-Tab>` | n | Previous buffer |

---

## Copilot

| Key | Mode | Action |
|-----|------|--------|
| `<leader>cp` | n | Toggle Copilot on/off |
| `<leader>cs` | n | Check Copilot status |

- Accept: `<Tab>` (when suggestion appears)
- Dismiss: `<C-e>`
- Trigger manually: `<C-Space>` (in insert mode)

---

## Visual Mode

| Key | Mode | Action |
|-----|------|--------|
| `J` | v | Move selection down |
| `K` | v | Move selection up |
| `<` | v | Indent left (stay in visual) |
| `>` | v | Indent right (stay in visual) |

---

## Alpha Dashboard

On startup you see the Neovim dashboard. Press:

| Key | Action |
|-----|--------|
| `f` | Find files (Telescope) |

---

## Emmet (HTML/CSS/JSX)

Leader key: `,` (comma)

| Example | Expands To |
|---------|-----------|
| `div>p*3,` | `<div><p></p><p></p><p></p></div>` |
| `.container>.row>.col*4,` | `<div class="container"><div class="row">...` |
| `ul>li.item$*5,` | `<ul><li class="item1"></li>...` |

Works in: `html`, `css`, `javascript`, `typescriptreact`, `javascriptreact`

---

## Quick Reference by Task

| Want to... | Key |
|------------|-----|
| Find a file | `<leader>pf` |
| Search text in project | `<leader>gr` |
| See git changes inline | `<leader>pr` (preview hunk) |
| Full git workflow | `;c` → LazyGit |
| See file tree | `<leader>q` |
| Format code | Auto on save (conform.nvim) |
| Check LSP info | `K` |
| Go to definition | `gd` |
| Fix with LSP | `<leader>ca` |
| Preview HTML | `<leader>l` |
| Toggle Copilot | `<leader>cp` |
| Switch buffers | `<Tab>` / `<S-Tab>` |
| Move lines in visual | `J` / `K` |
| Save everything | `<leader>w` |
| Quit forcefully | `<leader>hc` |
| Vertical split | `<leader>v` |
| Horizontal split | `<leader>h` |
| Open new tab | `te` |

---

## Standard Vim Keybindings (Still Active)

These core vim bindings are **not overridden** in your config and work as expected.

### Motions (Normal Mode)

| Key | Action |
|-----|--------|
| `h` `j` `k` `l` | Left, down, up, right |
| `w` | Forward to start of next word |
| `b` | Back to start of previous word |
| `e` | Forward to end of word |
| `0` | Start of line |
| `^` | First non-blank character |
| `$` | End of line |
| `gg` | Top of file |
| `G` | Bottom of file |
| `5G` | Go to line 5 |
| `%` | Jump to matching bracket `() [] {}` |
| `f{char}` | Find next `{char}` on line |
| `F{char}` | Find previous `{char}` on line |
| `t{char}` | Till before next `{char}` |
| `;` | Repeat last `f`/`t` search |
| `,` | Repeat last `f`/`t` backward |
| `*` | Search word under cursor forward |
| `#` | Search word under cursor backward |

### Text Objects (with `d`, `c`, `y`, `v`)

| Key | Target |
|-----|--------|
| `iw` / `aw` | Inner / around word |
| `is` / `as` | Inner / around sentence |
| `ip` / `ap` | Inner / around paragraph |
| `i"` / `a"` | Inside / around double quotes |
| `i'` / `a'` | Inside / around single quotes |
| `i(` / `a(` | Inside / around parentheses |
| `i[` / `a[` | Inside / around brackets |
| `i{` / `a{` | Inside / around braces |
| `it` / `at` | Inside / around HTML tag |
| `i>` / `a>` | Inside / around `<>` block |

**Examples:**
- `ciw` — change inner word
- `da"` — delete around double quotes
- `yip` — yank inner paragraph
- `vit` — visual select inside tag
- `ci(` — change inside parentheses

### Insert Mode

| Key | Action |
|-----|--------|
| `i` | Insert before cursor |
| `I` | Insert at start of line |
| `a` | Insert after cursor |
| `A` | Insert at end of line |
| `o` | Open new line below |
| `O` | Open new line above |
| `s` | Delete char and insert |
| `S` | Delete line and insert |
| `C` | Change to end of line |
| `cc` | Change entire line |
| `<Esc>` / `<C-[>` | Exit insert mode |
| `<C-h>` | Delete previous char |
| `<C-w>` | Delete previous word |
| `<C-u>` | Delete to start of line |

### Normal Mode Editing

| Key | Action |
|-----|--------|
| `yy` | Yank line |
| `dd` | Delete line |
| `p` | Put after cursor |
| `P` | Put before cursor |
| `>` `>>` | Indent line / motion |
| `<` `<<` | Un-indent line / motion |
| `=` `==` | Auto-indent line / motion |
| `~` | Toggle case |
| `gu` / `gU` | Lower / upper case |
| `r{char}` | Replace single char |
| `R` | Replace mode |
| `u` | Undo |
| `<C-r>` | Redo |
| `.` | Repeat last change |

### Search & Replace

| Key | Action |
|-----|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` | Next result (centered) |
| `N` | Previous result (centered) |
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace with confirm |
| `:s/old/new/g` | Replace in current line |

### Visual Mode

| Key | Action |
|-----|--------|
| `v` | Character-wise visual |
| `V` | Line-wise visual |
| `<C-v>` | Block-wise visual |
| `o` | Move cursor to other end of selection |
| `gv` | Reselect last visual selection |
| `>` / `<` | Indent / un-indent selection |
| `=` | Auto-indent selection |
| `y` | Yank selection |
| `d` | Delete selection |
| `c` | Change selection |
| `U` / `u` | Upper / lower case selection |
| `J` | Join selected lines (keep cursor) |
| `K` | Move selection up |

### Command Mode (`:`)

| Command | Action |
|---------|--------|
| `:w` | Write (save) |
| `:q` | Quit |
| `:wq` / `ZZ` | Write and quit |
| `:q!` / `ZQ` | Force quit without saving |
| `:e file` | Edit file |
| `:bn` / `:bp` | Next / previous buffer |
| `:bd` | Delete buffer |
| `:ls` | List buffers |
| `:sp file` | Horizontal split |
| `:vsp file` | Vertical split |
| `:only` | Close other windows |
| `%` | Current file name (in commands) |
| `:cd %:h` | Change to file's directory |

### Registers

| Key | Action |
|-----|--------|
| `"ayy` | Yank line into register `a` |
| `"ap` | Put from register `a` |
| `"+yy` | Yank to system clipboard |
| `"+p` | Put from system clipboard |
| `"_dd` | Delete to black hole register |

### Marks

| Key | Action |
|-----|--------|
| `ma` | Set mark `a` |
| `` `a `` | Jump to mark `a` exact position |
| `'a` | Jump to mark `a` line |
| `` `. `` | Jump to last edit position |
| `` `^ `` | Jump to last insert position |

### Jumps

| Key | Action |
|-----|--------|
| `<C-o>` | Jump backward in jumplist |
| `<C-i>` | Jump forward in jumplist |
| ``` | Toggle between last two positions |

> **Note:** `<C-i>` is the same keycode as `<Tab>` in the terminal. Your config maps `<Tab>` to `:tabnext`, so `<C-i>` also goes to the next tab instead of jumping forward.

### Macros

| Key | Action |
|-----|--------|
| `qa` | Record macro into register `a` |
| `q` | Stop recording |
| `@a` | Play macro `a` |
| `@@` | Replay last macro |
| `5@a` | Play macro `a` 5 times |

> **Note:** Your noice.nvim config shows a notification when recording starts/stops.

### Folding

| Key | Action |
|-----|--------|
| `zc` | Close fold |
| `zo` | Open fold |
| `za` | Toggle fold |
| `zM` | Close all folds |
| `zR` | Open all folds |

### Scrolling

| Key | Action |
|-----|--------|
| `<C-e>` | Scroll down one line |
| `<C-y>` | Scroll up one line |
| `<C-f>` | Scroll down one page |
| `<C-b>` | Scroll up one page |
| `zz` | Center cursor on screen |
| `zt` | Move cursor to top |
| `zb` | Move cursor to bottom |

---

## Notes on Overridden Bindings

| Standard Vim | Your Mapping | Conflict? |
|-------------|-------------|-----------|
| `x` (delete char) | `"_x` (no yank) | No — enhanced |
| `+` (next line) | `<C-a>` (increment) | Minor — use `j` |
| `-` (prev line) | `<C-x>` (decrement) | Minor — use `k` |
| `<C-a>` (increment) | Select all | Use `<C-x>` then `u` |
| `J` (join) | Keep cursor position | Enhanced |
| `K` (man page) | LSP hover | Only in LSP buffers |
| `<Tab>` | Next tab/buffer | `<C-i>` also affected |
| `;` | Repeat `f`/`t` | Use `,` for repeat |

> **Tip:** If you ever need the original binding temporarily, use `vim.keymap.del` or prefix with `:normal!`.

---

*Last updated: 2026-05-05*
