#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# When I use ls, use ls -F instead (append a forward slash to the end of the names that represent directories
# color option needed because colours will not be shown when running ls now that I have this alias
alias ls='ls -F --color=auto'
