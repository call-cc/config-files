# -*- Mode: zsh -*-
#

. ~/.zsh/environment
. ~/.zsh/completion
. ~/.zsh/aliases
. ~/.zsh/abbreviations
. ~/.zsh/history
. ~/.zsh/bindkeys

if [[ $(uname -s) == 'Linux' ]]; then
    . ~/.zsh/ssh_agent
fi

. ~/.zsh/settings
. ~/.zsh/prompt
# . /usr/share/virtualenvwrapper/virtualenvwrapper.sh


