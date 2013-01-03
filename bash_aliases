echo "reading ~/.bash_alias"


# Make some possibly destructive commands more interactive.
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
 
# Add some easy shortcuts for formatted directory listings.
alias ll='ls -lhF'
alias la='ls -ahlF'
alias ls='ls -hF'
alias l.='ls -hdF .[a-zA-Z0-9]*' #only show dotfiles
alias lt='ls -lhaptr' #oldest first sort
alias labc='ls -lhap' #alphabetical sort

# Add some fixes for common typos.
alias cd..='cd ..'
alias ..='cd ..'

# Add some abbreviations because I'm lazy.
alias :q='exit'
alias q='exit'
alias c='clear'
alias g='git'
alias gs='git status'
alias gd='git diff'

# Add some general usage shortcuts
alias pgrep='pgrep -fl'
alias mount='mount |column -t'
alias screen='screen -T xterm-256color -xR'
alias screen-retach='screen -raAd'
alias lsscr='screen -list'
alias cal='cal -m3'
alias today='date +"%A, %B %-d, %Y"'
alias path='echo -e ${PATH//:/\\n}'

# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep='grep --color=auto --exclude-dir=\.svn'
