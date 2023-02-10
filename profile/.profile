export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_DATA_DIRS="$HOME/.nix-profile/share:$XDG_DATA_DIRS"
export XDG_CURRENT_DESKTOP="sway"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
export ZGEN_DIR="$XDG_DATA_HOME/zgenom"

export PATH="$PATH:$XDG_BIN_HOME"
export PATH="$PATH:$XDG_CONFIG_HOME/emacs/bin"

export _JAVA_AWT_WM_NONREPARENTING=1

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
