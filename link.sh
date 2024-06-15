#!/bin/bash

# Usage: link.sh
# Description: 
# Creates hard symlinks for system dotfiles into $HOME/Dotfiles/.config
#
# System: 
# macOS 14.1.1 23B81 arm64
# GNU bash, version 3.2.57(1)-release (arm64-apple-darwin23)

BASE_DIR="$HOME/Dotfiles/.config"

mkdir -p "$BASE_DIR"

link() {
    local src=$1
    local dest=$2

    mkdir -p "$(dirname "$dest")"

    if [ -e "$dest" ]; then
        echo "Destination already exists: $dest. removing it."
        rm -rf "$dest"
    fi

    echo "linking $src to $dest"
    ln "$src" "$dest"
}

hardlink_directory() {
    local src=$1
    local dest=$2

    mkdir -p "$dest"

    find "$src" -depth -print | while read file; do
        relative_path="${file#$src}"
        if [ -d "$file" ]; then
            mkdir -p "$dest$relative_path"
        else
            link "$file" "$dest$relative_path"
        fi
    done
}

link "$HOME/.gitconfig" "$BASE_DIR/git/.gitconfig"
link "$HOME/.gitignore_global" "$BASE_DIR/git/.gitignore_global"
hardlink_directory "$HOME/.config/htop" "$BASE_DIR/htop"
link "$HOME/Library/Preferences/com.googlecode.iterm2.plist" "$BASE_DIR/iterm2/com.googlecode.iterm2.plist"
link "$HOME/.latexmkrc" "$BASE_DIR/latexmk/.latexmkrc"
hardlink_directory "$HOME/.config/nvim" "$BASE_DIR/nvim"
hardlink_directory "$HOME/.config/skhd" "$BASE_DIR/skhd"
hardlink_directory "$HOME/.config/yabai" "$BASE_DIR/yabai"
hardlink_directory "$HOME/.config/zathura" "$BASE_DIR/zathura"
link "$HOME/.p10k.zsh" "$BASE_DIR/zsh/.p10k.zsh"
link "$HOME/.zshrc" "$BASE_DIR/zsh/.zshrc"

STY_DIR="$HOME/Library/texmf/tex/latex"

# if _andrew.sty is not installed before linking, throw a warning 
if [ -e "$STY_DIR/_andrew.sty" ]; then
    link "$STY_DIR/_andrew.sty" "$BASE_DIR/latex/_andrew.sty"
else
    echo "skipping linking: _andrew.sty is not installed into $STY_DIR."
fi

echo "linking complete!"
