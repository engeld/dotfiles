Using engeld/dotfiles
======================
In this repository are my dotfiles; pretty standard stuff I guess.
This file outlines some instructions about setting them up, and shines 
light on some of the pitfalls and special files which I use.

(I currently use those dotfiles on my Mac, it may not work on other OS'es)

## Installation ##
On a new computer, simply *clone* the repository and run the ''bin/link.sh''.

    $ cd ~
    $ git clone git@github.com:engeld/dotfiles.git .dotfiles
    $ ~/.dotfiles/bin/link.sh

Add a new dotfile to the repository: `mv ~/.dotfile ~/.dotfiles/dotfile`  
Link the dotfile from the repo to the homedir: `ln -s ~/.dotfiles/dotfile ~/.dotfile`

### Installation of Sublime-Config ###
*Make sure you have your old config backed up because this will replace it*

    $ cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
    $ rm -r User
    $ ln -s ~/.dotfiles/Sublime/User

### My current promt
![Current Promt](http://i.imgur.com/UDXdZds.png)

### .bashrc? .bash_profile? .profile? WTF, are you kidding me? ###
see [this link for the whole story][1]

To sum this up:  
 - `.bash_profile` is executed for *login shells*  
 - `.bashrc` is executed for interactive non-login shells  
 - `.bash_alias` is invoked by my .bashrc and contains all my aliases
 - `.bash_functions` is invoked by my .bashrc as well and contains all my funky functions

tl;dr: depending on login-shell/non-login-shell, different config-files are loaded

## TODO's
* Add script to add all symlinks automatically
* Add script to prepare a setup automatically
 * add homebrew & homebrew-cask

## Pitfalls's (AKA 'Things that may or may not work)  ##
* if the repository-folder is moved, the symlinks don't work anymore!
 * Solution: don't move the repo-folder!
* there could be some pitfalls in regards to rights/permissions..?

[1]: http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/engeld/dotfiles/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

