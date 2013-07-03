# ====================================================================
# Autor: Dana Engel (engeld)
# Descr: This .profile-file is read whenever a login-shell is started
#        It contains mostly environment variable related stuff
# ====================================================================
echo "reading ~/.profile" # for debugging purposes

# PREFIX for local, non-root installations
PREFIX=$HOME/.local

# ============ Customize ALL THE ENVIRONMENT VARIABLES =============
# ZEND
# TODO: check if zend is even installed before setting those variables
#ZEND_BIN_PATH=/usr/local/zend/bin
#ZEND_APACHE_BIN_PATH=/usr/local/zend/apache2/bin
#ZEND_MYSQL_BIN_PATH=/usr/local/zend/mysql/bin

# SYS
#PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig:$PKG_CONFIG_PATH
#LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${PREFIX}/lib
#LD_RUN_PATH=$LD_RUN_PATH:${PREFIX}/lib

# Python
#PYTHONPATH=$PYTHONPATH:${PREFIX}/slippenspythonlib
#PYTHONPATH=$PYTHONPATH:${PREFIX}/lib/python2.5/site-packages

# Ruby / RVM
RUBY_VERSION=ruby-1.9.3-p327
RVM_PATH=${HOME}/.rvm/bin
RUBY_PATH=${HOME}/.rvm/rubies/${RUBY_VERSION}/bin
RUBYGEMS_PATH=${HOME}/.rvm/gems/${RUBY_VERSION}/bin
RUBYGEMS_GLOBAL_PATH=${HOME}/.rvm/gems/${RUBY_VERSION}@global/bin

# Java
# TODO: check for java and its path before setting it here
#CLASSPATH=$CLASSPATH:~/foo/bar.jar
JAVA_HOME=`/usr/libexec/java_home -v 1.7`
#ANT_HOME=
#TOMCAT_HOME=

# BIN
HOME_BIN_PATH=${PREFIX}/bin      # BIN-PATH of myself
LOCAL_BIN_PATH=/usr/local/bin       # BIN-PATH of homebrew
LOCAL_SBIN_PATH=/usr/local/sbin     # SBIN-PATH of homebrew

PATH=$HOME_BIN_PATH:$LOCAL_BIN_PATH:$LOCAL_SBIN_PATH:$RVM_PATH:$RUBY_PATH:$RUBYGEMS_PATH:$RUBYGEMS_GLOBAL_PATH:$PATH
#MANPATH=

# make system more usable :)
EDITOR=vim
VISUAL=vim
#LESSEDIT=
#PAGER=

# ============ Exports (aka activate those customs env variables)  =============
export PATH
export PKG_CONFIG_PATH
export LD_LIBRARY_PATH
export LD_RUN_PATH
export EDITOR
export VISUAL
export JAVA_HOME

# source rvm
# FIXME: is this the correct way/file to do this?
if test -f ~/.rvm/scripts/rvm; then
    [ "$(type -t rvm)" = "function" ] || source ~/.rvm/scripts/rvm
fi
