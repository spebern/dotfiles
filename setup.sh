#!/usr/bin/env sh

if [ ! -d ~/.config/emacs ]; then
    git clone https://github.com/doomemacs/doomemacs ~/.config/emacs
fi

if [ ! -d ~/.intellimacs ]; then
    git clone https://github.com/MarcoIeni/intellimacs ~/.intellimacs
fi

stow xdg-config
stow local
stow profile
stow cargo
stow ssh
stow idea

update-desktop-database ~/.local/share/applications/
xdg-mime default org-protocol.desktop x-scheme-handler/org-protocol

eval `ssh-agent -s`
ssh-add
