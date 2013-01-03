echo "reading ~/.bash_alias"


# Make some possibly destructive commands more interactive.
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
 
# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF --color=auto'
alias la='ls -alF --color=auto'
alias ls='ls -F'
 
# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep='grep --color=auto --exclude-dir=\.svn'
