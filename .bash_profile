# Windows Linux Subsystem (Ubuntu)

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# FZF key bindings

. '/usr/share/doc/fzf/examples/key-bindings.bash'

# h followed by text will be parsed as a git commit.
# Not necessary to quote the text.
make_default_commit () {
    git commit -am "$*"
}

alias h="make_default_commit "
alias g="git "
alias gs="git status "
alias gl="git lllll"
alias gd="git diff "
alias gp="git push "
