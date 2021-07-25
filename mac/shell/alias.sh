#!/usr/bin/env bash
# this shebang deviates from the google style guide in order to support mac os
# for which /bin/bash is stuck on bash 3
#
# Aliases

# MacOS show and hide hidden files
# Credit: https://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
