echo "reading ~/.bashrc"

# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# Just for funsies: start every term with figlet(hostname)
if [ -f `which figlet` ]; then
    figlet -c $(hostname)
fi

# ============= PROMT ================ 
# Based on http://www-128.ibm.com/developerworks/linux/library/l-tip-prompt/
# And http://networking.ringofsaturn.com/Unix/Bash-prompts.php .
PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w$ \[\e[0m\]"
 
# ============ History ===============
export HISTCONTROL=ignoredups # avoid succesive dupes in bash history
shopt -s histappend # append cmds to bash history instead of overwrite
PROMPT_COMMAND='history -a' # appends cmds to history every time a promt is shown

# ========== Exports ============== 
export EDITOR=vim

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Add bash functions.
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi
