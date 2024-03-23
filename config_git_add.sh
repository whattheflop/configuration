#!/bin/bash

configuration_files=(
    "$HOME/.gitignore"
    "$HOME/.gitconfig"
    "$HOME/.config/alacritty/.alacritty.yml"
    "$HOME/.p10k.zsh"
    "$HOME/.zshrc"
    "$HOME/.tmux.conf"
    "$HOME/config_git_add.sh"
)

for file in "${configuration_files[@]}"; do
    git add "$file" -f
done

git status
