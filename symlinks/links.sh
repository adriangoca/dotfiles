#!/usr/bin/env bash

ln -sf "$HOME/.dotfiles/shell/.bashrc" "$HOME/.bashrc"
ln -sf "$HOME/.dotfiles/shell/.bash_aliases" "$HOME/.bash_aliases"
ln -sf "$HOME/.dotfiles/shell/.profile" "$HOME/.profile"
ln -sf "$HOME/.dotfiles/shell/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$HOME/.dotfiles/git/.gitconfig" "$HOME/.gitconfig"

# navi cheats
ln -sf "$HOME/.dotfiles/doc/navi" "$HOME/.local/share/navi/cheats"
