#!/bin/sh

# default programs
export EDITOR="nvim"

# follow XDG base dir specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# bootstrap .zshrc to ~/.config/zsh/.zshrc
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export PATH="$HOME/.local/bin:$PATH"    
