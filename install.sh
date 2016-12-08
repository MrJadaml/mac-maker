#!/bin/sh

# import helper functions
source ./helpers/main

# Welcome to the laptop script!

trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT

set -e

# Make ~/.bin if it does not exsit
if [ ! -d "$HOME/.bin/" ]; then
  mkdir "$HOME/.bin"
fi

source ./run/zsh/setup

# Install brew if not already installed
if ! command -v brew >/dev/null; then
  fancy_echo "Installing Homebrew ..."
    curl -fsS \
      'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby

    append_to_file "$HOME/.zshrc" 'export PATH="/usr/local/bin:$PATH"'
fi

fancy_echo "Updating Homebrew formulas ..."
brew update --verbose

fancy_echo "Brew doctor is verifying the Homebrew installation 🚑..."
if brew doctor; then
  fancy_echo "Your Homebrew installation is good to go."
else
  fancy_echo "Your Homebrew installation reported some errors or warnings."
  echo "If the warnings are related to Python, you can ignore them."
  echo "Otherwise, review the Homebrew messages to see if any action is needed."
fi

fancy_echo "Installing formulas and casks from the Brewfile 🍺..."
brew bundle --file=/run/homebrew/Brewfile

source ./run/node/setup
source ./run/python/setup
source ./run/ruby/setup

source ./run/osx/setup

fancy_echo 'All done!'
