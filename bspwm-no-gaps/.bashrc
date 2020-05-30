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


export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"

export PATH="$PATH:$HOME/go/bin"

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
