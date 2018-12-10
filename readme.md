# 🔧 Welcome to My Mac-Maker 💻

This is, yet another, dev environment start-up script.
My goal here is to break down the particular items being installed into individual modules.
Each module is then sourced from the main *install.sh* script with `source ./run/[MODULE]/setup`.
This makes it real easy to remove anything you do not want without worry of breaking other parts of this build.
Likewise, this structure lends itself to being extended with any modules of your own.

<hr>

## Project Ogranization

The *install.sh* script is what will be run upon executing the start-up command listed below.
This script will get Brew up and running on your machine 🍻.
The Brewfile will install a number of binaries, libraries and applications during the Brew install process.
It is recommended that you look over this file and the supporting *brew-casks* and *brew-mas* files to customize the setup to your liking.
Note that Xcode is one of the items included in the `mas` bundle.
It has been isolated to its own *xcode-install* file as a convenience to allow for an optional install during run time,
due to its hell-ishly long install times ⏰.

After the Brew process is finished the *install.sh* script will begin to source the individual system modules to be installed.
If you do not wish to have a particular module installed on your machine simply delete,
or comment out, the line in the *install.sh* script where it is sourced.

All modules are organized together in the **run** directory.
In each of their respective directories lives a *setup* script, which is what is sourced in the main *install.sh* script.
Some of the individual modules have additional dotfiles or supporting scripts files.
These may be files that will be symlinked into your **HOME** directory,
provided as alternative install options, further modularization, or organizational purposes.
For example in the *zsh* module both *antigen* (my personal preference) and *oh-my-zsh* are included (pick your ☠).

<hr>

## Install Instructions

### 💾 Download...

Run the following commands:

```sh
curl -L https://api.github.com/repos/mrjadaml/mac-maker/tarball --create-dirs -o ~/projects/dotfiles.tar.gz
```

Pulls down tar file of this repo onto your machine while creating a */projects* directory.

```sh
tar -zxvf ~/projects/dotfiles.tar.gz -C ~/projects/
```

Moves into */projects* directory and untars the tar downlaoded file.

```sh
cd ~/projects && mv Mrjadaml* dotfiles
```

Changes the name of the untared directory from "Mrjadam-mac-maker-[SHA]" to "dotfiles"

### ❄️ Personalize...

Once the project is copied I suggest you rummage through it and make any modifications to suit your personal preferences.

There is an optional Brew mas setup for Apple Store apps that you will be prompted about during installation.
Please have your email and password for the Apple Store ready.

### 📝 Install...

Be sure you are in the *dotfiles* directory.

```
cd ~/projects/dotfiles
```

Then run the following command into your terminal:

```
source install.sh
```

#### ␛ Vim & Tmux Setup...

##### Plugins Install

For those who are using Vim, once the main install is finished, open up the *.vimrc* file with Vim.

```sh
vim ~/.vimrc
```

And while in vim install all the Vundle packages.

```sh
:PluginInstall
```

##### YouCompleteMe config

For those using the YouCompleteMe plugin with Vim you will need to [run a couple additional commands](https://github.com/Valloric/YouCompleteMe#mac-os-x) after you install your plugins.
Move into the YouCompleteMe binary directory:

```sh
cd ~/.vim/bundle/YouCompleteMe
```

The "tern" flag will provide JS support.

```sh
# for JavaScript support:
./install.py --tern-completer
```

##### Powerline fonts config

In iTerm, move to the Text options by selecting iTerm2 > Preferences > Profile > Text
In the Text preferences pane, enable the "Use a different font for non-ASCII text" option.
Then change the font to one of Powerline options. 13pt Cousine is a good choice.

⚠️ Note: Some of the settings require the system to be logged out and back in before taking effect.

<hr>

## The Manifest 📕

#### Javascript

- [node] - A JavaScript runtime built on Chrome's V8 JavaScript engine.
- [nvm] - Node Version Manager: Simple bash script to manage multiple versions of node.

[node]: https://nodejs.org/en/
[nvm]: https://github.com/creationix/nvm

#### Python

- [Python 3] - An interpreted, object-oriented, high-level programming language.
- [Pyenv] - Simple Python version management.
- [Virtualenvwrapper] - Wrappers for creating virtual environments and isolating dependencies.

[Python 3]: https://www.python.org/download/releases/3.0/
[Pyenv]: https://github.com/yyuu/pyenv
[Virtualenvwrapper]: https://virtualenvwrapper.readthedocs.io/en/latest/

#### Ruby

- [Ruby] - A dynamic, open source programming language with a focus on simplicity and productivity -- MINASWAN
- [rvm] - Ruby Version Manager: Simple script to mange multiple versions of Ruby.

[Ruby]: https://www.ruby-lang.org/en/
[rvm]: https://rvm.io/

#### Homebrew

- [Homebrew] - Homebrew installs the stuff you need that Apple didn’t.
- [ack] - Search tool like grep, but optimized for programmers.
- [awscli] - Official Amazon Web Services command-line interface.
- [ctags] - Indexes language objects in source files so your text editor can quickly reference them.
- [git] - Open source version control system | update.
- [git-secrets] - Prevents you from committing secrets and creds into git repositories.
- [httpie] - Command line HTTP client with an intuitive UI, JSON support, syntax highlighting.
- [mas] - Mac App Store command line interface.
- [openssl] - Open source toolkit for Transport Layer Security (TLS) and Secure Sockets Layer (SSL) protocols.
- [postgresql] - An open source relational database management system (DBMS).
- [reattach-to-user-namespace] - Path to enable access to OSX pasteboard for programs run under tmux.
- [redis] - Open source in-memory data structure store, used as a database, cache and message broker.
- [tmux] - A terminal multiplexer.
- [vim] - Highly configurable text editor built in with most UNIX systems | update.
- [yarn] - A Javascript package manager with caching - replacement for NPM.
- [wget] - A non-interactive CLI for retrieving files using HTTP, HTTPS and FTP.
- [z] - A more convenient `cd` which tracks your most used directories, based on 'frecency'.

[Homebrew]: http://brew.sh/
[ack]: https://linux.die.net/man/1/ack
[awscli]: https://aws.amazon.com/cli/
[ctags]: http://ctags.sourceforge.net/
[git]: https://git-scm.com/
[git-secrets]: https://github.com/awslabs/git-secrets
[httpie]: https://httpie.org/
[mas]: https://github.com/mas-cli/mas
[openssl]: https://www.openssl.org/
[postgresql]: https://www.postgresql.org/
[reattach-to-user-namespace]: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
[redis]: https://redis.io/
[tmux]: https://tmux.github.io/
[vim]: http://www.vim.org/
[yarn]: https://yarnpkg.com/en/
[wget]: https://www.gnu.org/software/wget/
[z]: https://github.com/rupa/z

#### Shell

- [antigen] - A plugin manager for zsh, inspired by oh-my-zsh and vundle.
- [bash] - Built-in shell | update.
- [oh-my-zsh] - Community-driven framework for managing your zsh configuration.
- [zsh] - An interactive UNIX shell.

[antigen]: https://github.com/zsh-users/antigen
[bash]: https://www.gnu.org/software/bash/
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
[zsh]: http://www.zsh.org/

#### Apps - Homebrew Cask

- [Atom] - GitHub's open source text editor
- [Alfred] - Mac Spotlight replacement with more custom and productive actions to control your Mac.
- [Dash] - Offline access to 150+ API documentation sets plus script manager.
- [Firefox] - Mozilla's web browser.
- [Google chrome] - Google's web browser.
- [Google chrome canary] - Google's web browser with beta features.
- [iterm2] - A terminal emulator and replacement for Mac's default Terminal app.
- [Slack] - A messaging app (corporate IRC 👔).
- [Virtualbox] - A virtual machine application.

[Atom]: https://atom.io/
[Alfred]: https://www.alfredapp.com/
[Dash]: https://kapeli.com/dash
[Firefox]: https://www.mozilla.org/en-US/firefox/products/
[Google chrome]: https://www.google.com/chrome/
[Google chrome canary]: https://www.google.com/chrome/browser/canary.html
[iterm2]: https://www.iterm2.com/
[Slack]: https://slack.com/
[Virtualbox]: https://www.virtualbox.org/

#### App Store - Homebrew Mas

- [Evernote] - Note manager app.
- [Memory Clean] - Memory manager for your toolbar.
- [Moom] - Window manager.
- [Pixelmator] - Photo editor.
- [Pocket] - Article saver/offline reader.
- [Sip] - Color picker.
- [SnappyApp] - Screen capture tool that leaves cropped capture ontop of all windows.
- [Xcode] - Integrated dev environment with tools for developing for macOS, iOS, WatchOS and tvOS.

[Evernote]: https://evernote.com/
[Memory Clean]: https://itunes.apple.com/us/app/memory-clean-monitor-free/id451444120?mt=12
[Moom]: https://manytricks.com/moom/
[Pixelmator]: http://www.pixelmator.com/mac/
[Pocket]: https://getpocket.com/
[Sip]: http://sipapp.io/
[SnappyApp]: http://snappy-app.com/
[Xcode]: https://developer.apple.com/xcode/

#### Color Theme 🎨

I am fond of the [NeoDark](https://github.com/KeitaNakamura/neodark.vim) color pallette that can be used across Vim, iTerm, and Tmux to provide a unified theme.

<hr>

#### Quick Reformating Guide. 💾

Obviously, back up all the files you don't want to have blown away before going through this process.

- Restart your computer and hold down `⌘ + r`.
- Once you see the white  logo and a progress bar you can let go of `⌘ + r`
- The "macOS Utilities" menu will pop up. Select the "Disk Utility" option from the list.
- From the sidebar labeled "Internal" click on sub hardive icon labeled "Macintosh HD"
- From the row of icons at the top, click "Erase"
- A popup menu will appear with a field for the "Name" and "Format".
  Just leave the defaults and click the "Erase" button in the bottom right.
- Once it goes through its spiel, click "Done"
- Close the Disk Utility window to get back to the "macOS Utilities" window.
- Now choose the option in the list labeled "Reinstall macOS" and click "Continue"
- From here it will guide you through the steps to a fresh install.
