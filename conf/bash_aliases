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
alias l='clear && pwd && ls -FGl'
alias u='cd .. && l'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias box="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dev="cd ~/Dev"
alias h="history"
alias j="jobs"
alias v="vim"
alias m="mate ."
alias s="subl ."
alias o="open"
alias oo="open ."

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
alias today='date +"%A, %B %-d, %Y"'
alias path='echo -e ${PATH//:/\\n}'

# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep='grep --color=auto --exclude-dir=\.svn'

# Get week number
alias week='date +%V'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"
# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"
# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

####
# Application Aliases
######

alias gist='gist -p'
alias nmap-reachable='nmap -sP'

#####
# MAC OSX Specific's
#####
alias ql="qlmanage -p 2>/dev/null"
