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
# . ~/.zsh/prompt
. ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export DEFAULT_USER=$USER
POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C6'
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0C7'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs virtualenv time)
. ~/Downloads/powerlevel10k/powerlevel10k.zsh-theme

