#!/bin/bash

# Usage: link.sh
# Description: this script links dotfiles into a folder called $HOME/Dotfiles/.config,
# essentially generating the git repository. not guaranteed to work (:
#
# System: 
# GNU bash, version 3.2.57(1)-release (arm64-apple-darwin23)
# Copyright (C) 2007 Free Software Foundation, Inc.

BASE_DIR="$HOME/Dotfiles/.config"

mkdir -p "$BASE_DIR"

link_file() {
    local src=$1
    local dest=$2

    mkdir -p "$(dirname "$dest")"

    if [ -e "$dest" ]; then
        echo "File already exists: $dest. Removing it."
        rm -rf "$dest"
    fi

    echo "linking $src to $dest"
    ln "$src" "$dest"
}

link_file "$HOME/.gitconfig" "$BASE_DIR/git/.gitconfig"
link_file "$HOME/.gitignore_global" "$BASE_DIR/git/.gitignore_global"
link_file "$HOME/.config/htop/htoprc" "$BASE_DIR/htop/htoprc"
link_file "$HOME/Library/Preferences/com.googlecode.iterm2.plist" "$BASE_DIR/iterm2/com.googlecode.iterm2.plist"
link_file "$HOME/.latexmkrc" "$BASE_DIR/latexmk/.latexmkrc"
link_file "$HOME/.config/nvim/init.vim" "$BASE_DIR/nvim/init.vim"
link_file "$HOME/.config/nvim/LuaSnip/all.lua" "$BASE_DIR/nvim/LuaSnip/all.lua"
link_file "$HOME/.config/nvim/LuaSnip/tex.lua" "$BASE_DIR/nvim/LuaSnip/tex.lua"
link_file "$HOME/.config/skhd/skhdrc" "$BASE_DIR/skhd/skhdrc"
link_file "$HOME/.config/yabai/yabairc" "$BASE_DIR/yabai/yabairc"
link_file "$HOME/.config/zathura/zathurarc" "$BASE_DIR/zathura/zathurarc"
link_file "$HOME/.p10k.zsh" "$BASE_DIR/zsh/.p10k.zsh"
link_file "$HOME/.zshrc" "$BASE_DIR/zsh/.zshrc"

echo "linking complete!"
