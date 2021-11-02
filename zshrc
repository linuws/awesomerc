export AWESOMERC=$HOME/.awesomerc
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.3
export EDITOR=vim

#autoload -U colors && colors
#setopt PROMPT_SUBST



### OH-MY-ZSH
ZSH=$HOME/.awesomerc/oh-my-zsh
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="true"
plugins=(wd git osx)
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Will be removed sometime later
#source $AWESOMERC/autoenv

#autoload -U promptinit; promptinit
#prompt pure
fpath+=('/Users/linus/.n/lib/node_modules/pure-prompt/functions')
fpath+=$HOME/.zsh/pure

# Source local zshrc
source $HOME/.zshrc.local


autoload -Uz promptinit
promptinit
prompt pure


#for x in $AWESOMERC/zsh/*; do
#  source $x
#done
source $AWESOMERC/zsh/aliases

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
