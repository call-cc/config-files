# -*- Mode: zsh -*-
#

. ~/.zsh/environment
. ~/.zsh/completion
. ~/.zsh/aliases
. ~/.zsh/abbreviations
. ~/.zsh/history
. ~/.zsh/bindkeys
. ~/.zsh/functions

if [[ $(uname -s) == 'Linux' ]]; then
    . ~/.zsh/ssh_agent
fi

. ~/.zsh/settings
. ~/.zsh/prompt
. ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

