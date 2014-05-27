# ====================================================================
# Autor: Dana Engel (engeld)
# Descr: This .bashrc-file is read whenever a sub-shell is started
# ====================================================================
echo "reading ~/.bashrc" # for debugging purposes

# Enable programmable completion features.
if [ -f $(brew --prefix)/Library/Contributions/brew_bash_completion.sh ]; then
    source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi
if [ -f `brew --prefix`/etc/bash_completion.d/rails.bash ]; then
    source `brew --prefix`/etc/bash_completion.d/rails.bash
fi
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
if [ -f `brew --prefix`/etc/bash_completion.d/tmux ]; then 
    source `brew --prefix`/etc/bash_completion.d/tmux
fi

# ============ History ===============
export HISTCONTROL=ignoredups # avoid succesive dupes in bash history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export HISTIGNORE="&:ls:bg:fg:cd"

shopt -s histappend # append cmds to bash history instead of overwrite

#PROMPT_COMMAND='prompt_command; history -a' # appends cmds to history every time a promt is shown

# -----
# Load other stuff™
# (Don't forget to link them from ~/.dotfiles/some_bash_file to ~/.some_bash_file)
# -----

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Add bash functions.
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

# Add my funky bash-promt 
if [ -f ~/.bash_promt ]; then
    source ~/.bash_promt
fi

## Load Autojump.sh
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

### add Heroku and RVM's Ruby to the path
export PATH="/usr/local/heroku/bin:$PATH:$HOME/.rvm/bin"
