export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/usr/local/share/:/usr/local/:$HOME/.local/share"
export XDG_CURRENT_DESKTOP="sway"
export GTK_USE_PORTAL=0

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
export ZGEN_DIR="$XDG_DATA_HOME/zgenom"

export PATH="$PATH:$XDG_BIN_HOME"
export PATH="$PATH:$XDG_CONFIG_HOME/emacs/bin"
export PATH="$PATH:$PYENV_ROOT/bin"

export KUBECONFIG="$HOME/.kube/config"

export _JAVA_AWT_WM_NONREPARENTING=1

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export PYENV_ROOT="$HOME/.pyenv"
