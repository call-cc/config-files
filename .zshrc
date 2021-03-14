# -*- Mode: zsh -*-
#

. ~/.zsh/environment
. ~/.zsh/completion
. ~/.zsh/aliases
. ~/.zsh/abbreviations
. ~/.zsh/history
. ~/.zsh/bindkeys
. ~/.zsh/functions
. ~/.zsh/settings
# . ~/.zsh/prompt
. ~/Lab/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. ~/.zsh/powerlevel

if [[ $(uname -s) == 'Linux' ]]; then
    . ~/.zsh/ssh_agent
fi
