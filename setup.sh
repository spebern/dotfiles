#!/usr/bin/env sh

if [ ! -d ~/.config/emacs ]; then
    git clone https://github.com/iyefrat/doom-emacs ~/.config/emacs
    cd ~/.config/emacs && git checkout bump-vertico
fi

stow xdg-config
stow local
stow profile
stow cargo

update-desktop-database ~/.local/share/applications/
xdg-mime default org-protocol.desktop x-scheme-handler/org-protocol

eval `ssh-agent -s`
ssh-add
