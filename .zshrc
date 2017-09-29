#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context virtualenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_PYTHON_ICON=''

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='gray'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='cyan'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='white'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

DEFAULT_USER="chochoe"
KEYTIMEOUT=1


export PIP_DOWNLOAD_CACHE=$HOME/.pip-download-cache

export WORKON_HOME=~/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
source /usr/bin/virtualenvwrapper.sh
if [ -n "$VIRTUAL_ENV" ]; then
    . "$VIRTUAL_ENV/bin/activate"
else
    workon default
fi

export EDITOR=vim
export VISUAL=vim

alias gst='git status'
source <(kubectl completion zsh)