#!/usr/bin/env fish

starship init fish | source

set -x PATH $PATH $HOME/go/bin 

set -x nvm_default_version latest

set -x DOTNET_ROOT $HOME/dotnet
set -x PATH $PATH $HOME/dotnet

set -x PATH $PATH $HOME/.cargo/bin

fenv source $HOME/.ghcup/env
