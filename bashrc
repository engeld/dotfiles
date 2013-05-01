# ====================================================================
# Autor: Dana Engel (engeld)
# Descr: This .bashrc-file is read whenever a sub-shell is started
# ====================================================================
echo "reading ~/.bashrc" # for debugging purposes

# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
    if [ -f $(brew --prefix)/Library/Contributions/brew_bash_completion.sh ]; then
        source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
    fi
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

# Just for funsies: start every term with a quote
#if [ -f `which fortune` ]; then
    #fortune
#fi

# ==================== PROMT ================================= 
function prompt_command {
  TERMWIDTH=${COLUMNS}  # Find the width of the prompt

  # calculate how much space (in terms of term-width) the calculated/constant parts need
  TERMWIDTH_FIXED_USED_WIDTH=`echo "┌--[ ${whoami}@${hostname}:ttysXXXX ] ---- ---- [ xx:xx:xx ] --┐\n└->" | wc -c | xargs`
  let fillsize=${TERMWIDTH}-${TERMWIDTH_FIXED_USED_WIDTH}

  if [ "$fillsize" -gt "0" ]; then
    fill="--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
    #   It's theoretically possible someone could need more dashes than above, but very unlikely!
    #   The above should be ONE LINE, it may not cut and paste properly
    fill="${fill:0:${fillsize}}"
    newPWD="${PWD}"
  fi

  if [ "$fillsize" -lt "0" ]; then
    fill=""
    let cut=3-${fillsize}
    newPWD="...${PWD:${cut}}"
  fi
}
# Define some prompt colours -------------------------------------------------
# see http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html as reference
DARK_GREY='\[\033[1;30m\]'
LIGHT_GREY='\[\033[0;37m\]'
GREEN='\[\033[0;32m\]'
RED='\[\033[0;31m\]'
LIGHT_GREEN='\[\033[01;32m\]'
LIGHT_RED='\[\033[01;31m\]'
NO_COLOURS='\[\033[0m\]'

# And now change PS1 & PS2 to it ---------------------------------------------
if [ ! -n "$SSH_TTY" ]; then                # local login
    PS1="${DARK_GREY}┌--[${LIGHT_GREY} \u@\H:\l ${DARK_GREY}] \${fill} [${LIGHT_GREY} \T ${DARK_GREY}] --┐\n└->[${LIGHT_RED} \w ${DARK_GREY}] \\$ ${NO_COLOURS}" 
    export PS1
else                                        #ssh login
    export PS1="\u@\h:\W "
fi

# ============ History ===============
export HISTCONTROL=ignoredups # avoid succesive dupes in bash history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export HISTIGNORE="&:ls:bg:fg:cd"

shopt -s histappend # append cmds to bash history instead of overwrite

PROMPT_COMMAND='prompt_command; history -a' # appends cmds to history every time a promt is shown

# -----

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Add bash functions.
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

