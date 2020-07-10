Using engeld/dotfiles
======================
In this repository are my dotfiles; configuration files for my shell and other terminal applications.
This file outlines some instructions about setting them up, and shines light on some of the pitfalls and special files which I use.

(I currently use those dotfiles on my Mac, it may not work on other OS'es)

## Installation ##
On a new computer, simply *clone* the repository and run the ''bin/link.sh''.

    $ cd ~
    $ git clone git@github.com:engeld/dotfiles.git .dotfiles
    $ ~/.dotfiles/bin/link.sh

Add a new dotfile to the repository: `mv ~/.dotfile ~/.dotfiles/conf/dotfile`  
Link the dotfile from the repo to the homedir: `ln -s ~/.dotfiles/conf/dotfile ~/.dotfile`

### SSH-Keys
If you encounter the following error message:

    $ git clone git@github.com:engeld/dotfiles.git .dotfiles
    git@github.com: Permission denied (publickey).
    fatal: Could not read from remote repository.
    Please make sure you have the correct access rights and the repository exists.
    
Then you don't have the ssh-keys configured. [Check out Github's guide to generating SSH keys or troubleshoot common SSH Problems](https://help.github.com/articles/generating-an-ssh-key/).

### Installation of Sublime-Config ###
*Make sure you have your old config backed up because this will replace it*

    $ cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
    $ rm -r User
    $ ln -s ~/.dotfiles/conf/Sublime/User

### Installation of the iTerm Profile
*Make sure to follow the step outlined here: http://apple.stackexchange.com/questions/111534/iterm2-doesnt-read-com-googlecode-iterm2-plist*

TL;DL:

    1) Quit iTerm & open the Mac Terminal
    2) Enter the following commands
    $ defaults delete com.googlecode.iterm2
    $ mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist.bak
    $ ln -s ~/.dotfiles/conf/iTerm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
    $ defaults read com.googlecode.iterm2
    3) Open iTerm again and enjoy my customized configuration :)

### Synchronization of installed homebrew-packages
Run `$ brew brewdle ~/.dotfiles/conf/Brewfile`

### My current promt
![My Current Prompt](https://i.imgur.com/eST972f.png)

#### Thanks
Thank you so much, Armin Briegel, for [your article series on migrating from bash to zsh](https://scriptingosx.com/2019/06/moving-to-zsh/).

## TODO's
* Add script to add all symlinks automatically
* Add script to prepare a setup automatically
 * add homebrew & homebrew-cask

## Pitfalls's (AKA 'Things that may or may not work)  ##
* if the repository-folder is moved, the symlinks don't work anymore!
 * Solution: don't move the repo-folder!
* there could be some pitfalls in regards to rights/permissions..?

[1]: http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html

