# This is a basic config that I could drop on any Mac or Linux host
# and use to ensure baseline good behavior from my terminal!

export EDITOR=emacs
export SVN_EDITOR=emacs
export GIT_EDITOR=emacs

export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTIGNORE="exit:cd ~:pwd:clear"

export PROMPT_COMMAND="$PROMPT_COMMAND; history -a;"

# work around Windows line ending problems
export LC_ALL='C'

# set default behavior when connecting with screen
if [ "$SSH_TTY" ]; then
  # If this is a remote session, then start screen
  if [ "$TERM" != "screen" ]; then
    screen -xRRU
    if [ "$?" = "0" ]; then
      reset
      exit
    fi
  fi
fi

# These are optional configuration overrides and extensions which you
# can use or not use as you prefer.

export CONFIG="${HOME}/.bash.d"

source "${CONFIG}/prompt.profile"
source "${CONFIG}/aliases.profile"

# Advanced toolset
#
# These will probably work on any Mac except you might have to edit
# some paths. Patches welcome!
#
# source "${CONFIG}/editor_mac.profile"
# source "${CONFIG}/iterm2.profile"
# source "${CONFIG}/aliases_mac.profile"
