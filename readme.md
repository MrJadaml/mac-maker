# 🔧 Welcome to My Mac-Maker 💻

This is, yet another, dev environment start-up script. My goal
here was to break down the particular items being installed into
individual modules. Each module is then sourced in with a single line in
the main *install.sh* script. That makes it real easy to remove anything
you do not want without worry of breaking other parts of this build.
Likewise, if there is anything you think is missing that you want to
add, the structure makes personal customization of this script really
straight forward.

## Project Ogranization

The *install.sh* script is what will be run upon executing the start-up command listed below.
This script will get Brew up and running on your machine 🍻.
Durring the Brew install process the Brewfile will be ran which installs a number of binarys, libraries and applications.
It is recommended that you look over this file and the supporting *brew-casks* and *brew-mas* files to customize the setup to your liking.
Do note that Xcode is one of the items added in the `mas` bundle and can take quite a while to install ⏰.

After the Brew process is finished the *install.sh* script will begin to source the individual system modules/libraries to be installed.
If you do not wish to have a particular module or library installed on your machine simply delete or comment out the line in the *install.sh* script where it is sourced in.

All modules are organized together in the **run** 📂.
In each of their respective directories lives a *setup* script, which is what is sourced in the main *install.sh* script.
Some of the individual modules have additional dotfiles or supporting scripts files.
These may be files that will be symlinked into *your* **HOME** 📂,
or are provided as alternative options or further modularization for organizational purposes.
For example in the *zsh* module both *antigen* (my personal preference) and *oh-my-zsh* are included.

## Install Instructions

The following command will pull down this repo onto your machine, creating a `~/projects/dotfiles/` directory structure.

```sh
curl -L https://api.github.com/repos/mrjadaml/mac-maker/tarball --create-dirs -o ~/projects/dotfiles.tar.gz && tar -zxvf ~/projects/dotfiles.tar.gz -C ~/projects/ -s /MrJadaml-mac-maker-b83e4c7/dotfiles/
```

Once the project is copied down I suggest you peek through it and make any modifications to suit your personal preferences.

*⚠️ Note*
Please have your email and password for the Apple Store ready.

Brew mas will need accees to the App Store in order to download a number of applications.
If you want to install these applications manually, please delete the following "run" line in the *Brewfile*.

```sh
# mas applications install
file ./run/homebrew/brew-mas
```

### Just run the script already!

Be sure you are in the *dotfiles* directory.

```
cd ~/projects/dotfiles
```

Then run the following command into your terminal:

```
source install.sh
```

## The Manifest 📕

- Node
- NVM

- Python 3
- Pyenv
- Virtualenvwrapper

- Ruby
- RVM

- Homebrew
- ctags
- bash | update
- git | update
- git-secrets
- heroku-toolbelt
- httpie
- imagemagick
- mas
- openssl
- phantomjs
- postgresql
- reattach-to-user-namespace
- redis
- tmux
- vim | update
- wget
- zsh

- antigen
- oh-my-zsh

- atom
- alfred
- cloud
- dash
- dropbox
- firefox
- github-desktop
- google chrome
- google chrome canary
- iterm2
- slack

- evernote
- memory
- monodraw
- moom
- pixelmator
- pocket
- sip
- snappyapp
- xcode
