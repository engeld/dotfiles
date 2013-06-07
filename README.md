Using engeld/dotfiles
======================

## Install ##
On a new computer, simply *clone* the repository.   
`git clone git@bitbucket.org:engeld/dotfiles.git .dotfiles`


Add a new dotfile to the repository: `mv ~/.dotfile ~/.dotfiles/dotfile`  
Link the dotfile from the repo to the homedir: `ln -s ~/.dotfiles/dotfile ~/.dotfile`

### .bashrc? .bash_profile? .profile? WTF, are you kidding me? ###
see [this link for the whole story][1]

To sum this up:
1. `.bash_profile` is executed for *login shells*
2. `.bashrc` is executed for interactive non-login shells
3. `.bash_alias` is invoked by my .bashrc
4. `.bash_functions` is invoked by my .bashrc as well

tl;dr: depending on login-shell/non-login-shell, different rc-files are loaded

## Pitfalls's (AKA 'Things that may or may not work)  ##
* if the repository-folder is moved, the symlinks don't work anymore!
* there could be some pitfalls in regards to rights/permissions..?

[1]: http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
