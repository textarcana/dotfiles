#!/usr/bin/env bash

alias reload="source $HOME/.profile"

alias mkproject="mkdir -p new_project/{doc,lib,src,html/{css,js,images}}"

# This hack enables passing aliases into cd, eg: cd .....
alias cd="cd "

# support cd .... syntax from MS-DOS /ht Kastner + James Socol
alias ...="../../"
alias ....="../../../"
alias .....="../../../../"
alias ......="../../../../../"
alias .......="../../../../../../"
alias ........="../../../../../../../"

#    __________  __    ____  ____     ___    __    __
#   / ____/ __ \/ /   / __ \/ __ \   /   |  / /   / /
#  / /   / / / / /   / / / / /_/ /  / /| | / /   / /
# / /___/ /_/ / /___/ /_/ / _, _/  / ___ |/ /___/ /___
# \____/\____/_____/\____/_/ |_|  /_/  |_/_____/_____/

#   ________  ________   ________  _______   _____________
#  /_  __/ / / / ____/  /_  __/ / / /  _/ | / / ____/ ___/
#   / / / /_/ / __/      / / / /_/ // //  |/ / / __ \__ \
#  / / / __  / /___     / / / __  // // /|  / /_/ /___/ /
# /_/ /_/ /_/_____/    /_/ /_/ /_/___/_/ |_/\____//____/

# see http://kassiopeia.juls.savba.sk/~garabik/software/grc/README.txt

alias less='less -R '
alias ls='ls -v -C --color --human-readable --group-directories-first '
alias grep='grep --color=always '
alias ps='grc ps '
alias tail='grc tail '
alias diff='grc diff '
alias ping='grc ping '
alias netstat='grc netstat '
alias tree='tree -C '
alias jq='jq -C '
