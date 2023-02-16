#!/usr/bin/env sh

if [ ! -d ~/.config/emacs ]; then
    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
fi

stow xdg-config
stow local
stow profile
stow cargo

update-desktop-database ~/.local/share/applications/
xdg-mime default org-protocol.desktop x-scheme-handler/org-protocol

eval `ssh-agent -s`
ssh-add
