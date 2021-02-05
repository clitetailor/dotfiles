#=================#
#                 #
#    ~/.bashrc    #
#                 #
#=================#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.config/helpers/git-prompt


alias  ls='ls --color=auto'

normal="\e[0m"
green="\e[32m"
orange="\e[33m"
red="\e[31m"
blue="\e[34m"
magenta="\e[35m"
cyan="\e[36m"

export PS1="\n user $red\u$normal dir $orange\w$normal\`__git_ps1 \"    {{ $magenta%s$normal }}\"\` \n$blue→$normal "
export XDG_CONFIG_HOME="$HOME/.config"
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"

export PATH="$PATH:$HOME/go/bin"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

[ -f "/home/clitetailor/.ghcup/env" ] && source "/home/clitetailor/.ghcup/env" # ghcup-env
