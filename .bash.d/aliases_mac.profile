#!/usr/bin/env bash

alias firefox_profilemanager="/Applications/Firefox.app/Contents/MacOS/firefox-bin -profilemanager"
alias firefox="open -a /Applications/Firefox.app/Contents/MacOS/firefox-bin"

# Mac Finder
#
# toggle Desktop icon visibility

alias hide_desktop_icons="defaults write com.apple.finder CreateDesktop -bool false ; killAll Finder"

alias show_desktop_icons="defaults write com.apple.finder CreateDesktop -bool true ; killAll Finder"

# Cast the i-ching using emacs
alias iching="/opt/local/bin/emacs -batch -l \"~/Documents/secrets/.emacs.d/vendor/i-ching.el\" -l /Users/noahsussman/Documents/secrets/lib/elisp/i-ching.el -f cast-the-i-ching  | egrep --color=always -A6 '(Main Hexagram|Image:)' | grep -v Bigrams | head -n14"
