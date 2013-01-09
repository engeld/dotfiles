Using engeld/dotfiles
======================

## Install ##
On a new computer, simply *clone* the repository.
`git clone git@bitbucket.org:engeld/dotfiles.git .dotfiles`


Add a new dotfile to the repository: `mv ~/.dotfile ~/.dotfiles/dotfile`  
Link the dotfile from the repo to the homedir: `ln -s ~/.dotfiles/dotfile ~/.dotfile`

### .bashrc? .bash_profile? .profile? WTF, are you kidding me? ###
tl;dr: depending on login-shell/non-login-shell, different rc-files are loaded

## Pitfalls's (AKA 'Things that may or may not work)  ##
* if the repository-folder is moved, the symlinks may not work anymore?
* there could be some pitfalls in regards to rights/permissions..?
