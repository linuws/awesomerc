export LINUSRC=$HOME/.linusrc
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.3
export EDITOR=vim

autoload -U colors && colors
setopt PROMPT_SUBST

### OH-MY-ZSH
ZSH=$HOME/.linusrc/.oh-my-zsh
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="true"
plugins=(git osx pip github)

#source $ZSH/oh-my-zsh.sh

source $LINUSRC/autoenv

for x in $LINUSRC/zsh/*; do
    source $x
done

