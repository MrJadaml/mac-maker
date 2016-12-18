#!/bin/sh

# import helper functions
source ./helpers/main

trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT

set -e

# Make ~/.bin if it does not exsit
if [ ! -d "$HOME/.bin/" ]; then
  mkdir "$HOME/.bin"
fi

source ./run/homebrew/setup

source ./run/zsh/setup
source ./run/vim/setup

source ./run/node/setup
source ./run/python/setup
source ./run/ruby/setup

source ./run/git/setup
source ./run/osx/setup

fancy_echo "All done!"
