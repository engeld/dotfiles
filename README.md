Using engeld/dotfiles
======================
In this repository are my dotfiles; pretty standard stuff I guess.
This file outlines some instructions about setting them up, and shines 
light on some of the pitfalls and special files which I use.


## Installation ##
On a new computer, simply *clone* the repository.   

    $ cd ~
    $ git clone git@bitbucket.org:engeld/dotfiles.git .dotfiles
    $ ln -s ~/.dotfiles/bashrc ~/.bashrc
    $ ln -s ~/.dotfiles/profile ~/.profile
    $ ln -s ~/.dotfiles/bash_profile ~/.bash_profile
    //and so on..//

Add a new dotfile to the repository: `mv ~/.dotfile ~/.dotfiles/dotfile`  
Link the dotfile from the repo to the homedir: `ln -s ~/.dotfiles/dotfile ~/.dotfile`

### My current promt
![Current Promt](http://i.imgur.com/UDXdZds.png)

### .bashrc? .bash_profile? .profile? WTF, are you kidding me? ###
see [this link for the whole story][1]

To sum this up:  
 - `.bash_profile` is executed for *login shells*  
 - `.bashrc` is executed for interactive non-login shells  
 - `.bash_alias` is invoked by my .bashrc  
 - `.bash_functions` is invoked by my .bashrc as well

tl;dr: depending on login-shell/non-login-shell, different rc-files are loaded

## Pitfalls's (AKA 'Things that may or may not work)  ##
* if the repository-folder is moved, the symlinks don't work anymore!
 * Solution: don't move the repo-folder!
* there could be some pitfalls in regards to rights/permissions..?

[1]: http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
