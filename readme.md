### Project Ogranization

The *install.sh* script is what will be run upon executing the start-up command listed below.
This script will get Brew up and running on your machine 🍻.
Durring the Brew install process the Brewfile will be ran which installs a number of binarys, libraries and applications.
It is recommended that you look over this file and the supporting *brew-casks* and *brew-mas* files to customize the setup to your liking.
Do note that Xcode is one of the items added in the `mas` bundle and can take quite a while to install.

After the Brew process is finished the *install.sh* script will begin to source the individual system modules/libraries to be installed.
If you do not wish to have a particular module or library installed on your machine simply delete or comment out the line in the *install.sh* script where it is sourced in.

All modules are organized together in the **run** 📂.
In each of their respective directories lives a *setup* script, which is what is sourced in the main *install.sh* script.
Some of the individual modules have additional dotfiles or supporting scripts files.
These may be files that will be symlinked into *your* **HOME** 📂,
or are provided as alternative options or further modularization for organizational purposes.
For example in the *zsh* module both *antigen* (my personal preference) and *oh-my-zsh* are included.

## Install

*⚠️ Note*
Please have your email and password for the Apple Store ready.

Brew mas will need accees to the App Store in order to download a number of applications.
If you want to install these applications manually, please delete the following line in the *Brewfile*.

```sh
# mas applications install
file ./run/homebrew/brew-mas
```

### Quick Install Command

Run the following start-up command to kick of the installation if you do not wish to make any changes to this script.

```sh
git clone git@github.com:MrJadaml/grab.git && sh dotfiles/install.sh
```
