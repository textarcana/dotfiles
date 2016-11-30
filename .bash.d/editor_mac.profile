#!/usr/bin/env bash

export EDITOR="open -a /Applications/MacPorts/Emacs.app "
export SVN_EDITOR=$EDITOR

alias emacs=$EDITOR
alias cocoa_emacs="open -a /Applications/MacPorts/Emacs.app "

alias emacas="emacs"

# set up the fuck command
eval $(thefuck --alias)
