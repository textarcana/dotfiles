RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
GREEN="\[\033[32;1m\]"
WHITE="\[\033[37;1m\]"
SMILEY="${GREEN}:)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
EMOTE="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"
git_status_color="if [[ \$(git status -s 2> /dev/null) == '' ]]; then echo \"${GREEN}\"; else echo \"${YELLOW}\"; fi"

function parse_git_hash {
    git log --format="%h" -n1 2> /dev/null
}

function parse_git_branch {
    git branch  2> /dev/null | egrep '^\*\s+' | cut -c3-
}

export PS1="${RESET}\n\`${EMOTE}\` \
\u@\h \
\`${git_status_color}\`\$(parse_git_branch) \$(parse_git_hash)${NORMAL} \
\w \
\n\t \D{%b %d %Y %z %Z} \
\n\$ "
