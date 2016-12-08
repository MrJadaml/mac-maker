Please have your email and password for the Apple Store ready.


### Project Ogranization

The *install.sh* script is what will be run upon executing the start up command listed below.
This script will get Brew up and running on your machine 🍻, after which it will source the individual system modules/libraries to be installed.
If you do not which to have a particular module or library installed on your machine simply delete or comment out the line where it is sourced in.

All modules/libraries are organized together in the **run** 📂.
In each of their respective directories lives a *setup* script, which is what is sourced in the main *install.sh* script.
Some of the individual modules have additional dotfiles or supporting scripts files.
These may be files that will be symlinked into your HOME 📂,
or are provided as alternative options or further modularization for cleaner organizational purposes.
For example in the *zsh* module both *antigen* (my personal preference) and *oh-my-zsh* or included.


## Install

Run the following start-up command to kick of the installation.

```sh
git clone git@github.com:MrJadaml/grab.git && sh dotfiles/install.sh
```
