iatest=$(expr index "$-" i)
export PATH="$HOME/.local/bin:$PATH"

# Ignore case on auto-completion  
if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab 
if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous On"; fi
eval "$(starship init bash)"

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# set up XDG folders
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"



# Commands that should be applied only for interactive shells.
[[ $- == *i* ]] || return

HISTFILESIZE=100000
HISTSIZE=10000

shopt -s histappend
shopt -s extglob
shopt -s globstar
shopt -s checkjobs

alias -- add='git add'
alias -- cd..='cd ..'
alias -- chrome=google-chrome
alias -- cmt='git commit'
alias -- emacs='emacs -nw'
alias -- ls='ls -aFh'
alias -- mkdir='mkdir -p'
alias -- nbb='sudo nixos-rebuild boot --flake /home/taku/NixOS/#kernelpanic'
alias -- nbd='sudo nixos-rebuild build --flake /home/taku/NixOS/#kernelpanic'
alias -- nbs='sudo nixos-rebuild switch --flake /home/taku/NixOS/#kernelpanic'
alias -- nbt='sudo nixos-rebuild test --flake /home/taku/NixOS/#kernelpanic'
alias -- psh='git push'
alias -- status='git status'

if [[ ! -v BASH_COMPLETION_VERSINFO ]]; then
  . "/nix/store/sm9x00nj013ws1cic8vbdv7w6iwk7l09-bash-completion-2.18.0/etc/profile.d/bash_completion.sh"
fi

if test -n "$KITTY_INSTALLATION_DIR"; then
  export KITTY_SHELL_INTEGRATION="no-rc"
  source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi

if [[ $TERM != "dumb" ]]; then
  eval "$(/nix/store/94l0pg11snwdqxjc77p82k21xrnrn9rm-starship-1.27.0/bin/starship init bash --print-full-init)"
fi

