My NeoVim Configuration.

# Dependencies

- [`neovim`](https://github.com/neovim/neovim/releases) version > `0.10.0`
- [`fzf`](https://github.com/junegunn/fzf) version > `0.25`



# Cheat Sheet

## Finding keymaps / key bindings:

- `<leader>fk`: Use fzf-lua to search all key bindings.
- `<leader>?`: Use which-key to display key bindings available (Note: global key 
bindings are hidden by default)
- `F1`: In fzf-lua window, show help.

## Fzf-Lua Tricks

- `F1` Show help.
- `F2` Make fullscreen.
- `F4` Toggle preview.
- `F6` Rotate search/preview i.e. cycle horizontal and vertical split.

### Globs

Append `--` after your search term to apply iglobs for filtering. To use this 
for filtering a directory, use `**/dir_name/**`, and prepend `!` to make it a 
negative filter.


## Blink.cmp Tricks

- `C-y`: Accept
- `C-space`: Open menu or open docs if already open
- `C-n`/`C-p` or Up/Down: Select next/previous item
- `C-e`: Hide menu
- `C-k`: Toggle signature help (if signature.enabled = true)
