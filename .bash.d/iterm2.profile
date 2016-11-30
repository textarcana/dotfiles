#!/usr/bin/env bash

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

# Set the window title / iTerm2
#
# Note the use of a function instead of an alias but functionally both
# do the same thing in this context!

function title {
    echo -ne "\033]0;"$*"\007"
}
